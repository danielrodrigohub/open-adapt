package com.newrelic.agent.android;

import a0.b;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.location.Address;
import android.location.Geocoder;
import android.location.Location;
import android.os.Build;
import android.os.Environment;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.analytics.AnalyticsEvent;
import com.newrelic.agent.android.analytics.EventManager;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.api.v1.ConnectionEvent;
import com.newrelic.agent.android.api.v1.ConnectionListener;
import com.newrelic.agent.android.api.v1.DeviceForm;
import com.newrelic.agent.android.api.v2.TraceMachineInterface;
import com.newrelic.agent.android.background.ApplicationStateEvent;
import com.newrelic.agent.android.background.ApplicationStateListener;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.distributedtracing.UserActionFacade;
import com.newrelic.agent.android.distributedtracing.UserActionType;
import com.newrelic.agent.android.harvest.AgentHealth;
import com.newrelic.agent.android.harvest.ApplicationInformation;
import com.newrelic.agent.android.harvest.ConnectInformation;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.harvest.EnvironmentInformation;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestData;
import com.newrelic.agent.android.instrumentation.MetricCategory;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.MetricNames;
import com.newrelic.agent.android.metric.MetricUnit;
import com.newrelic.agent.android.ndk.NativeReporting;
import com.newrelic.agent.android.payload.PayloadController;
import com.newrelic.agent.android.sample.MachineMeasurementConsumer;
import com.newrelic.agent.android.sample.Sampler;
import com.newrelic.agent.android.stats.StatsEngine;
import com.newrelic.agent.android.stores.SharedPrefsAnalyticsAttributeStore;
import com.newrelic.agent.android.stores.SharedPrefsCrashStore;
import com.newrelic.agent.android.stores.SharedPrefsPayloadStore;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.newrelic.agent.android.util.ActivityLifecycleBackgroundListener;
import com.newrelic.agent.android.util.AndroidEncoder;
import com.newrelic.agent.android.util.Connectivity;
import com.newrelic.agent.android.util.Encoder;
import com.newrelic.agent.android.util.PersistentUUID;
import com.newrelic.agent.android.util.Reachability;
import com.newrelic.agent.android.util.UiBackgroundListener;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class AndroidAgentImpl implements AgentImpl, ConnectionListener, ApplicationStateListener, TraceMachineInterface {
    private final AgentConfiguration agentConfiguration;
    private ApplicationInformation applicationInformation;
    private final Context context;
    public DeviceInformation deviceInformation;
    private MachineMeasurementConsumer machineMeasurementConsumer;
    private SavedState savedState;
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final Comparator<TransactionData> cmp = new Comparator<TransactionData>() { // from class: com.newrelic.agent.android.AndroidAgentImpl.1
        @Override // java.util.Comparator
        public int compare(TransactionData transactionData, TransactionData transactionData2) {
            if (transactionData.getTimestamp() > transactionData2.getTimestamp()) {
                return -1;
            }
            return transactionData.getTimestamp() < transactionData2.getTimestamp() ? 1 : 0;
        }
    };
    private final Lock lock = new ReentrantLock();
    private final Encoder encoder = new AndroidEncoder();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [android.app.Application] */
    /* JADX WARN: Type inference failed for: r3v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.newrelic.agent.android.util.UiBackgroundListener] */
    /* JADX WARN: Type inference failed for: r4v6, types: [android.content.ComponentCallbacks] */
    /* JADX WARN: Type inference failed for: r4v7, types: [android.app.Application$ActivityLifecycleCallbacks, com.newrelic.agent.android.util.ActivityLifecycleBackgroundListener] */
    public AndroidAgentImpl(Context context, AgentConfiguration agentConfiguration) throws AgentInitializationException {
        ?? uiBackgroundListener;
        Context contextAppContext = appContext(context);
        this.context = contextAppContext;
        this.agentConfiguration = agentConfiguration;
        this.savedState = new SavedState(contextAppContext);
        if (isDisabled()) {
            throw new AgentInitializationException("This version of the agent has been disabled");
        }
        initApplicationInformation();
        TraceMachine.setTraceMachineInterface(this);
        agentConfiguration.setCrashStore(new SharedPrefsCrashStore(context));
        agentConfiguration.setPayloadStore(new SharedPrefsPayloadStore(context));
        agentConfiguration.setAnalyticsAttributeStore(new SharedPrefsAnalyticsAttributeStore(context));
        ApplicationStateMonitor.getInstance().addApplicationStateListener(this);
        if (Agent.getUnityInstrumentationFlag().equals("YES")) {
            uiBackgroundListener = new ActivityLifecycleBackgroundListener();
            try {
                if (context.getApplicationContext() instanceof Application) {
                    ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(uiBackgroundListener);
                }
            } catch (Exception unused) {
            }
        } else {
            uiBackgroundListener = new UiBackgroundListener();
        }
        context.registerComponentCallbacks(uiBackgroundListener);
        setupSession();
    }

    private static Context appContext(Context context) {
        return !(context instanceof Application) ? context.getApplicationContext() : context;
    }

    private static DeviceForm deviceForm(Context context) {
        int i10 = context.getResources().getConfiguration().screenLayout & 15;
        if (i10 == 1) {
            return DeviceForm.SMALL;
        }
        if (i10 == 2) {
            return DeviceForm.NORMAL;
        }
        if (i10 != 3) {
            return i10 > 3 ? DeviceForm.XLARGE : DeviceForm.UNKNOWN;
        }
        return DeviceForm.LARGE;
    }

    private String getUnhandledExceptionHandlerName() {
        try {
            return Thread.getDefaultUncaughtExceptionHandler().getClass().getName();
        } catch (Exception unused) {
            return "unknown";
        }
    }

    public static void init(Context context, AgentConfiguration agentConfiguration) {
        try {
            Agent.setImpl(new AndroidAgentImpl(context, agentConfiguration));
            Agent.start();
        } catch (AgentInitializationException e10) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Failed to initialize the agent: ");
            sbC.append(e10.toString());
            agentLog.error(sbC.toString());
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    @Deprecated
    public void addTransactionData(TransactionData transactionData) {
    }

    @Override // com.newrelic.agent.android.background.ApplicationStateListener
    public void applicationBackgrounded(ApplicationStateEvent applicationStateEvent) {
        log.info("AndroidAgentImpl: application backgrounded");
        stop();
    }

    @Override // com.newrelic.agent.android.background.ApplicationStateListener
    public void applicationForegrounded(ApplicationStateEvent applicationStateEvent) {
        log.info("AndroidAgentImpl: application foregrounded");
        start();
    }

    @Override // com.newrelic.agent.android.api.v1.ConnectionListener
    @Deprecated
    public void connected(ConnectionEvent connectionEvent) {
        log.error("AndroidAgentImpl: connected ");
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void disable() {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("PERMANENTLY DISABLING AGENT v");
        sbC.append(Agent.getVersion());
        agentLog.warning(sbC.toString());
        try {
            this.savedState.saveDisabledVersion(Agent.getVersion());
            try {
                stop(false);
            } finally {
                Agent.setImpl(NullAgentImpl.instance);
            }
        } catch (Throwable th) {
            try {
                stop(false);
                throw th;
            } finally {
                Agent.setImpl(NullAgentImpl.instance);
            }
        }
    }

    @Override // com.newrelic.agent.android.api.v1.ConnectionListener
    @Deprecated
    public void disconnected(ConnectionEvent connectionEvent) {
        this.savedState.clear();
    }

    public void finalizeSession() {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    @Deprecated
    public List<TransactionData> getAndClearTransactionData() {
        return null;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public ApplicationInformation getApplicationInformation() {
        return this.applicationInformation;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getCrossProcessId() {
        this.lock.lock();
        try {
            return this.savedState.getCrossProcessId();
        } finally {
            this.lock.unlock();
        }
    }

    @Override // com.newrelic.agent.android.api.v2.TraceMachineInterface
    public long getCurrentThreadId() {
        return Thread.currentThread().getId();
    }

    @Override // com.newrelic.agent.android.api.v2.TraceMachineInterface
    public String getCurrentThreadName() {
        return Thread.currentThread().getName();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public DeviceInformation getDeviceInformation() {
        if (this.deviceInformation == null) {
            DeviceInformation deviceInformation = new DeviceInformation();
            deviceInformation.setOsName("Android");
            deviceInformation.setOsVersion(Build.VERSION.RELEASE);
            deviceInformation.setOsBuild(Build.VERSION.INCREMENTAL);
            deviceInformation.setModel(Build.MODEL);
            deviceInformation.setAgentName("AndroidAgent");
            deviceInformation.setAgentVersion(Agent.getVersion());
            deviceInformation.setManufacturer(Build.MANUFACTURER);
            deviceInformation.setDeviceId(getUUID());
            deviceInformation.setArchitecture(System.getProperty("os.arch"));
            deviceInformation.setRunTime(System.getProperty("java.vm.version"));
            deviceInformation.setSize(deviceForm(this.context).name().toLowerCase(Locale.getDefault()));
            deviceInformation.setApplicationFramework(this.agentConfiguration.getApplicationFramework());
            deviceInformation.setApplicationFrameworkVersion(this.agentConfiguration.getApplicationFrameworkVersion());
            this.deviceInformation = deviceInformation;
        }
        return this.deviceInformation;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public Encoder getEncoder() {
        return this.encoder;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public EnvironmentInformation getEnvironmentInformation() {
        EnvironmentInformation environmentInformation = new EnvironmentInformation();
        ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
        long[] jArr = new long[2];
        try {
            try {
                StatFs statFs = new StatFs(Environment.getRootDirectory().getAbsolutePath());
                StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
                jArr[0] = statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
                jArr[1] = statFs2.getAvailableBlocksLong() * statFs.getBlockSizeLong();
                if (jArr[0] < 0) {
                    jArr[0] = 0;
                }
                if (jArr[1] < 0) {
                    jArr[1] = 0;
                }
            } catch (Exception e10) {
                AgentHealth.noticeException(e10);
                if (jArr[0] < 0) {
                    jArr[0] = 0;
                }
                if (jArr[1] < 0) {
                    jArr[1] = 0;
                }
            }
            environmentInformation.setDiskAvailable(jArr);
            environmentInformation.setMemoryUsage(Sampler.sampleMemory(activityManager).getSampleValue().asLong().longValue());
            environmentInformation.setOrientation(this.context.getResources().getConfiguration().orientation);
            environmentInformation.setNetworkStatus(getNetworkCarrier());
            environmentInformation.setNetworkWanType(getNetworkWanType());
            return environmentInformation;
        } catch (Throwable th) {
            if (jArr[0] < 0) {
                jArr[0] = 0;
            }
            if (jArr[1] < 0) {
                jArr[1] = 0;
            }
            environmentInformation.setDiskAvailable(jArr);
            throw th;
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getNetworkCarrier() {
        return Connectivity.carrierNameFromContext(this.context);
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public String getNetworkWanType() {
        return Connectivity.wanType(this.context);
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public int getResponseBodyLimit() {
        this.lock.lock();
        try {
            return this.savedState.getHarvestConfiguration().getResponse_body_limit();
        } finally {
            this.lock.unlock();
        }
    }

    public SavedState getSavedState() {
        return this.savedState;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public long getSessionDurationMillis() {
        return Harvest.getMillisSinceStart();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public int getStackTraceLimit() {
        this.lock.lock();
        try {
            return this.savedState.getStackTraceLimit();
        } finally {
            this.lock.unlock();
        }
    }

    public String getUUID() {
        String deviceId = this.savedState.getConnectInformation().getDeviceInformation().getDeviceId();
        if (TextUtils.isEmpty(deviceId)) {
            deviceId = new PersistentUUID(this.context).getPersistentUUID();
            this.savedState.saveDeviceId(deviceId);
            StatsEngine.get().inc(MetricNames.METRIC_UUID_CREATED);
        }
        String deviceID = this.agentConfiguration.getDeviceID();
        if (deviceID == null) {
            return deviceId;
        }
        StatsEngine.get().inc(MetricNames.METRIC_UUID_OVERRIDDEN);
        return deviceID;
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean hasReachableNetworkConnection(String str) {
        return Reachability.hasReachableNetworkConnection(this.context, str);
    }

    public void initApplicationInformation() throws AgentInitializationException {
        String string;
        String str;
        if (this.applicationInformation != null) {
            log.debug("attempted to reinitialize ApplicationInformation.");
            return;
        }
        String packageName = this.context.getPackageName();
        PackageManager packageManager = this.context.getPackageManager();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            String customApplicationVersion = this.agentConfiguration.getCustomApplicationVersion();
            if (TextUtils.isEmpty(customApplicationVersion)) {
                if (packageInfo == null || (str = packageInfo.versionName) == null || str.length() <= 0) {
                    throw new AgentInitializationException("Your app doesn't appear to have a version defined. Ensure you have defined 'versionName' in your manifest.");
                }
                customApplicationVersion = packageInfo.versionName;
            }
            log.debug("Using application version " + customApplicationVersion);
            try {
                ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 0);
                string = applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo).toString() : packageName;
            } catch (PackageManager.NameNotFoundException e10) {
                log.warning(e10.toString());
            } catch (SecurityException e11) {
                log.warning(e11.toString());
            }
            AgentLog agentLog = log;
            agentLog.debug("Using application name " + string);
            String customBuildIdentifier = this.agentConfiguration.getCustomBuildIdentifier();
            if (TextUtils.isEmpty(customBuildIdentifier)) {
                if (packageInfo != null) {
                    customBuildIdentifier = String.valueOf(packageInfo.versionCode);
                } else {
                    agentLog.warning("Your app doesn't appear to have a version code defined. Ensure you have defined 'versionCode' in your manifest.");
                    customBuildIdentifier = "";
                }
            }
            agentLog.debug("Using build " + customBuildIdentifier);
            ApplicationInformation applicationInformation = new ApplicationInformation(string, customApplicationVersion, packageName, customBuildIdentifier);
            this.applicationInformation = applicationInformation;
            applicationInformation.setVersionCode(packageInfo.versionCode);
        } catch (PackageManager.NameNotFoundException e12) {
            StringBuilder sbC = b.c("Could not determine package version: ");
            sbC.append(e12.getMessage());
            throw new AgentInitializationException(sbC.toString());
        }
    }

    public void initialize() {
        setupSession();
        AnalyticsControllerImpl.initialize(this.agentConfiguration, this);
        Harvest.addHarvestListener(this.savedState);
        Harvest.initialize(this.agentConfiguration);
        Harvest.setHarvestConfiguration(this.savedState.getHarvestConfiguration());
        Harvest.setHarvestConnectInformation(this.savedState.getConnectInformation());
        Measurements.initialize();
        AgentLog agentLog = log;
        agentLog.info(MessageFormat.format("New Relic Agent v{0}", Agent.getVersion()));
        agentLog.verbose(MessageFormat.format("Application token: {0}", this.agentConfiguration.getApplicationToken()));
        MachineMeasurementConsumer machineMeasurementConsumer = new MachineMeasurementConsumer();
        this.machineMeasurementConsumer = machineMeasurementConsumer;
        Measurements.addMeasurementConsumer(machineMeasurementConsumer);
        StatsEngine.get().inc(MetricNames.SUPPORTABILITY_CRASH_UNCAUGHT_HANDLER.replace(MetricNames.TAG_NAME, getUnhandledExceptionHandlerName()));
        PayloadController.initialize(this.agentConfiguration);
        Sampler.init(this.context);
        if (isInstantApp()) {
            agentLog.info("This appears to be an Instant App");
            AnalyticsControllerImpl.getInstance().addAttributeUnchecked(new AnalyticsAttribute(AnalyticsAttribute.INSTANT_APP_ATTRIBUTE, true), false);
        }
        if (FeatureFlag.featureEnabled(FeatureFlag.NativeReporting)) {
            try {
                NativeReporting.initialize(this.context, this.agentConfiguration);
            } catch (NoClassDefFoundError unused) {
                AgentLog agentLog2 = log;
                agentLog2.error("NativeReporting feature is enabled, but agent-ndk was not found (probably missing as a dependency).");
                agentLog2.error("Native reporting will not be enabled");
            }
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean isDisabled() {
        return Agent.getVersion().equals(this.savedState.getDisabledVersion());
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean isInstantApp() {
        return InstantApps.isInstantApp(this.context);
    }

    @Override // com.newrelic.agent.android.api.v2.TraceMachineInterface
    public boolean isUIThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    @Deprecated
    public void mergeTransactionData(List<TransactionData> list) {
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void setLocation(String str, String str2) {
        if (str == null || str2 == null) {
            throw new IllegalArgumentException("Country code and administrative region are required.");
        }
    }

    public void setSavedState(SavedState savedState) {
        this.savedState = savedState;
    }

    public void setupSession() {
        TraceMachine.clearActivityHistory();
        this.agentConfiguration.provideSessionId();
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void start() {
        if (isDisabled()) {
            stop(false);
            return;
        }
        initialize();
        Harvest.start();
        if (FeatureFlag.featureEnabled(FeatureFlag.NativeReporting)) {
            try {
                if (NativeReporting.isInitialized()) {
                    NativeReporting.getInstance().start();
                }
            } catch (NoClassDefFoundError unused) {
                log.error("Native reporting is not enabled");
            }
        }
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            UserActionFacade.getInstance().recordUserAction(UserActionType.AppLaunch);
        }
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public void stop() {
        stop(true);
    }

    @Override // com.newrelic.agent.android.AgentImpl
    public boolean updateSavedConnectInformation() {
        ConnectInformation connectInformation = this.savedState.getConnectInformation();
        ConnectInformation connectInformation2 = new ConnectInformation(getApplicationInformation(), getDeviceInformation());
        if (connectInformation2.equals(connectInformation) && this.savedState.hasConnectionToken(this.agentConfiguration.getApplicationToken())) {
            return false;
        }
        if (connectInformation2.getApplicationInformation().isAppUpgrade(connectInformation.getApplicationInformation())) {
            StatsEngine.get().inc(MetricNames.MOBILE_APP_UPGRADE);
            AnalyticsControllerImpl.getInstance().addAttributeUnchecked(new AnalyticsAttribute(AnalyticsAttribute.APP_UPGRADE_ATTRIBUTE, connectInformation.getApplicationInformation().getAppVersion()), false);
        }
        this.savedState.clear();
        this.savedState.saveConnectInformation(connectInformation2);
        this.savedState.saveConnectionToken(this.agentConfiguration.getApplicationToken());
        return true;
    }

    public void setLocation(Location location) {
        Address address;
        if (location == null) {
            throw new IllegalArgumentException("Location must not be null.");
        }
        List<Address> fromLocation = null;
        try {
            fromLocation = new Geocoder(this.context).getFromLocation(location.getLatitude(), location.getLongitude(), 1);
        } catch (IOException e10) {
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("Unable to geocode location: ");
            sbC.append(e10.toString());
            agentLog.error(sbC.toString());
        }
        if (fromLocation == null || fromLocation.size() == 0 || (address = fromLocation.get(0)) == null) {
            return;
        }
        String countryCode = address.getCountryCode();
        String adminArea = address.getAdminArea();
        if (countryCode == null || adminArea == null) {
            return;
        }
        setLocation(countryCode, adminArea);
    }

    public void stop(boolean z10) {
        if (FeatureFlag.featureEnabled(FeatureFlag.DistributedTracing)) {
            UserActionFacade.getInstance().recordUserAction(UserActionType.AppBackground);
        }
        finalizeSession();
        Sampler.shutdown();
        TraceMachine.haltTracing();
        EventManager eventManager = AnalyticsControllerImpl.getInstance().getEventManager();
        int eventsRecorded = eventManager.getEventsRecorded();
        int eventsEjected = eventManager.getEventsEjected();
        String strName = MetricCategory.NONE.name();
        double d10 = eventsEjected;
        MetricUnit metricUnit = MetricUnit.OPERATIONS;
        Measurements.addCustomMetric("Supportability/Events/Recorded", strName, eventsRecorded, d10, d10, metricUnit, metricUnit);
        if (z10) {
            if (isUIThread()) {
                StatsEngine.get().inc(MetricNames.SUPPORTABILITY_HARVEST_ON_MAIN_THREAD);
            }
            Harvest.harvestNow(true);
            HarvestData harvestData = Harvest.getInstance().getHarvestData();
            AgentLog agentLog = log;
            StringBuilder sbC = b.c("EventManager: recorded[");
            sbC.append(eventManager.getEventsRecorded());
            sbC.append("] ejected[");
            sbC.append(eventManager.getEventsEjected());
            sbC.append("]");
            agentLog.debug(sbC.toString());
            if (harvestData != null && harvestData.isValid()) {
                Collection<AnalyticsEvent> analyticsEvents = harvestData.getAnalyticsEvents();
                if (!analyticsEvents.isEmpty()) {
                    StringBuilder sbC2 = b.c("Agent stopped with ");
                    sbC2.append(analyticsEvents.size());
                    sbC2.append(" events dropped from failed harvest.");
                    agentLog.warning(sbC2.toString());
                }
                if (eventManager.size() > 0) {
                    StringBuilder sbC3 = b.c("Agent stopped with ");
                    sbC3.append(eventManager.size());
                    sbC3.append(" events left in event pool.");
                    agentLog.warning(sbC3.toString());
                }
            }
        }
        if (FeatureFlag.featureEnabled(FeatureFlag.NativeReporting)) {
            try {
                NativeReporting.shutdown();
            } catch (NoClassDefFoundError unused) {
            }
        }
        AnalyticsControllerImpl.shutdown();
        TraceMachine.clearActivityHistory();
        Harvest.shutdown();
        Measurements.shutdown();
        PayloadController.shutdown();
    }
}
