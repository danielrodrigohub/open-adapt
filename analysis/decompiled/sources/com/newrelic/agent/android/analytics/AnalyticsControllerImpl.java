package com.newrelic.agent.android.analytics;

import a0.b;
import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.AgentConfiguration;
import com.newrelic.agent.android.AgentImpl;
import com.newrelic.agent.android.FeatureFlag;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.harvest.EnvironmentInformation;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HarvestAdapter;
import com.newrelic.agent.android.harvest.HarvestData;
import com.newrelic.agent.android.harvest.HttpTransaction;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.TraceLifecycleAware;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import k1.a;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsControllerImpl extends HarvestAdapter implements AnalyticsController {
    public static final int MAX_ATTRIBUTES = 128;
    private AgentImpl agentImpl;
    private AnalyticsAttributeStore attributeStore;
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final AnalyticsControllerImpl instance = new AnalyticsControllerImpl();
    private static final AtomicBoolean initialized = new AtomicBoolean(false);
    private static final AnalyticsValidator validator = new AnalyticsValidator();
    private final AtomicBoolean isEnabled = new AtomicBoolean(false);
    private final EventManagerImpl eventManager = new EventManagerImpl();
    private final ConcurrentLinkedQueue<AnalyticsAttribute> systemAttributes = new ConcurrentLinkedQueue<>();
    private final ConcurrentLinkedQueue<AnalyticsAttribute> userAttributes = new ConcurrentLinkedQueue<>();
    private final InteractionCompleteListener interactionListener = new InteractionCompleteListener();

    /* JADX INFO: renamed from: com.newrelic.agent.android.analytics.AnalyticsControllerImpl$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType;

        static {
            int[] iArr = new int[AnalyticsAttribute.AttributeDataType.values().length];
            $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType = iArr;
            try {
                iArr[AnalyticsAttribute.AttributeDataType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[AnalyticsAttribute.AttributeDataType.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[AnalyticsAttribute.AttributeDataType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class InteractionCompleteListener implements TraceLifecycleAware {
        public InteractionCompleteListener() {
        }

        private AnalyticsEvent createTraceEvent(ActivityTrace activityTrace) {
            float durationAsSeconds = activityTrace.rootTrace.getDurationAsSeconds();
            HashSet hashSet = new HashSet();
            hashSet.add(new AnalyticsAttribute(AnalyticsAttribute.INTERACTION_DURATION_ATTRIBUTE, durationAsSeconds));
            return AnalyticsEventFactory.createEvent(activityTrace.rootTrace.displayName, AnalyticsEventCategory.Interaction, "Mobile", hashSet);
        }

        @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
        public void onEnterMethod() {
        }

        @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
        public void onExitMethod() {
        }

        @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
        public void onTraceComplete(ActivityTrace activityTrace) {
            AnalyticsControllerImpl.log.audit("AnalyticsControllerImpl.InteractionCompleteListener.onTraceComplete()");
            AnalyticsControllerImpl.getInstance().addEvent(createTraceEvent(activityTrace));
        }

        @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
        public void onTraceRename(ActivityTrace activityTrace) {
            AnalyticsControllerImpl.this.addAttributeUnchecked(new AnalyticsAttribute(AnalyticsAttribute.LAST_INTERACTION_ATTRIBUTE, activityTrace.getActivityName()), true);
        }

        @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
        public void onTraceStart(ActivityTrace activityTrace) {
            AnalyticsControllerImpl.this.addAttributeUnchecked(new AnalyticsAttribute(AnalyticsAttribute.LAST_INTERACTION_ATTRIBUTE, activityTrace.getActivityName()), true);
        }
    }

    private AnalyticsControllerImpl() {
    }

    private boolean addNewUserAttribute(AnalyticsAttribute analyticsAttribute) {
        if (this.userAttributes.size() >= 128) {
            AgentLog agentLog = log;
            agentLog.warning("Attribute limit exceeded: 128 are allowed.");
            if (agentLog.getLevel() < 6) {
                return true;
            }
            agentLog.audit("Currently defined attributes:");
            for (AnalyticsAttribute analyticsAttribute2 : this.userAttributes) {
                AgentLog agentLog2 = log;
                StringBuilder sbC = b.c("\t");
                sbC.append(analyticsAttribute2.getName());
                sbC.append(": ");
                sbC.append(analyticsAttribute2.valueAsString());
                agentLog2.audit(sbC.toString());
            }
            return true;
        }
        if (!validator.isValidAttribute(analyticsAttribute)) {
            AgentLog agentLog3 = log;
            StringBuilder sbC2 = b.c("Refused to add invalid attribute: ");
            sbC2.append(analyticsAttribute.getName());
            agentLog3.error(sbC2.toString());
            return true;
        }
        this.userAttributes.add(analyticsAttribute);
        if (!analyticsAttribute.isPersistent() || this.attributeStore.store(analyticsAttribute)) {
            return true;
        }
        log.error("Failed to store attribute [" + analyticsAttribute + "] to attribute store.");
        return false;
    }

    private void clear() {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("AnalyticsControllerImpl.clear(): system[");
        sbC.append(this.systemAttributes.size());
        sbC.append("] user[");
        sbC.append(this.userAttributes.size());
        sbC.append("] events[");
        sbC.append(this.eventManager.size());
        sbC.append("]");
        agentLog.audit(sbC.toString());
        this.systemAttributes.clear();
        this.userAttributes.clear();
        this.eventManager.empty();
    }

    public static AnalyticsControllerImpl getInstance() {
        return instance;
    }

    private AnalyticsAttribute getSystemAttribute(String str) {
        for (AnalyticsAttribute analyticsAttribute : this.systemAttributes) {
            if (analyticsAttribute.getName().equals(str)) {
                return analyticsAttribute;
            }
        }
        return null;
    }

    private AnalyticsAttribute getUserAttribute(String str) {
        for (AnalyticsAttribute analyticsAttribute : this.userAttributes) {
            if (analyticsAttribute.getName().equals(str)) {
                return analyticsAttribute;
            }
        }
        return null;
    }

    public static void initialize(AgentConfiguration agentConfiguration, AgentImpl agentImpl) {
        if (agentConfiguration == null || agentImpl == null) {
            log.error("AnalyticsControllerImpl.initialize(): Can't initialize with a null agent configuration or implementation.");
            return;
        }
        AgentLog agentLog = log;
        agentLog.audit("AnalyticsControllerImpl.initialize(" + agentConfiguration + ", " + agentImpl.toString() + ")");
        if (!initialized.compareAndSet(false, true)) {
            agentLog.warning("AnalyticsControllerImpl.initialize(): Has already been initialized. Bypassing..");
            return;
        }
        AnalyticsControllerImpl analyticsControllerImpl = instance;
        analyticsControllerImpl.clear();
        analyticsControllerImpl.reinitialize(agentConfiguration, agentImpl);
        TraceMachine.addTraceListener(analyticsControllerImpl.interactionListener);
        Harvest.addHarvestListener(analyticsControllerImpl);
        agentLog.info("Analytics Controller initialized: enabled[" + analyticsControllerImpl.isEnabled + "]");
    }

    private boolean isHttpError(HttpTransaction httpTransaction) {
        return ((long) httpTransaction.getStatusCode()) >= 400;
    }

    private boolean isInitializedAndEnabled() {
        if (!initialized.get()) {
            log.warning("Analytics controller is not initialized!");
            return false;
        }
        if (this.isEnabled.get()) {
            return true;
        }
        log.warning("Analytics controller is not enabled!");
        return false;
    }

    private boolean isNetworkFailure(HttpTransaction httpTransaction) {
        return httpTransaction.getErrorCode() != 0;
    }

    private boolean isSuccessfulRequest(HttpTransaction httpTransaction) {
        return httpTransaction.getStatusCode() > 0 && httpTransaction.getStatusCode() < 400;
    }

    public static void shutdown() {
        AnalyticsControllerImpl analyticsControllerImpl = instance;
        TraceMachine.removeTraceListener(analyticsControllerImpl.interactionListener);
        Harvest.removeHarvestListener(analyticsControllerImpl);
        analyticsControllerImpl.getEventManager().shutdown();
        initialized.compareAndSet(true, false);
        log.info("Analytics Controller shutdown");
    }

    public boolean addAttributeUnchecked(AnalyticsAttribute analyticsAttribute, boolean z10) {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("AnalyticsControllerImpl.setAttributeUnchecked(");
        sbC.append(analyticsAttribute.getName());
        sbC.append(")");
        sbC.append(analyticsAttribute.getStringValue());
        sbC.append(z10 ? " (persistent)" : " (transient)");
        agentLog.audit(sbC.toString());
        if (!initialized.get()) {
            agentLog.warning("Analytics controller is not initialized!");
            return false;
        }
        if (!this.isEnabled.get()) {
            agentLog.warning("Analytics controller is not enabled!");
            return false;
        }
        String name = analyticsAttribute.getName();
        AnalyticsValidator analyticsValidator = validator;
        if (!analyticsValidator.isValidKeyName(name)) {
            return false;
        }
        if (analyticsAttribute.isStringAttribute() && !analyticsValidator.isValidAttributeValue(name, analyticsAttribute.getStringValue())) {
            return false;
        }
        AnalyticsAttribute systemAttribute = getSystemAttribute(name);
        if (systemAttribute == null) {
            this.systemAttributes.add(analyticsAttribute);
            if (analyticsAttribute.isPersistent() && !this.attributeStore.store(analyticsAttribute)) {
                agentLog.error("Failed to store attribute " + analyticsAttribute + " to attribute store.");
                return false;
            }
        } else {
            int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$analytics$AnalyticsAttribute$AttributeDataType[analyticsAttribute.getAttributeDataType().ordinal()];
            if (i10 == 1) {
                systemAttribute.setStringValue(analyticsAttribute.getStringValue());
            } else if (i10 == 2) {
                systemAttribute.setDoubleValue(analyticsAttribute.getDoubleValue());
            } else if (i10 != 3) {
                StringBuilder sbC2 = b.c("Attribute data type [");
                sbC2.append(analyticsAttribute.getAttributeDataType());
                sbC2.append("] is invalid");
                agentLog.error(sbC2.toString());
            } else {
                systemAttribute.setBooleanValue(analyticsAttribute.getBooleanValue());
            }
            systemAttribute.setPersistent(z10);
            if (!systemAttribute.isPersistent()) {
                this.attributeStore.delete(systemAttribute);
            } else if (!this.attributeStore.store(systemAttribute)) {
                agentLog.error("Failed to store attribute [" + systemAttribute + "] to attribute store.");
                return false;
            }
        }
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean addEvent(String str, Set<AnalyticsAttribute> set) {
        return addEvent(str, AnalyticsEventCategory.Custom, "Mobile", set);
    }

    public void createHttpErrorEvent(HttpTransaction httpTransaction) {
        if (isInitializedAndEnabled()) {
            NetworkEventController.createHttpErrorEvent(httpTransaction);
        }
    }

    public void createNetworkFailureEvent(HttpTransaction httpTransaction) {
        if (isInitializedAndEnabled()) {
            NetworkEventController.createNetworkFailureEvent(httpTransaction);
        }
    }

    public void createNetworkRequestEvent(HttpTransaction httpTransaction) {
        if (isInitializedAndEnabled()) {
            NetworkEventController.createNetworkRequestEvent(httpTransaction);
        }
    }

    public void createNetworkRequestEvents(HttpTransaction httpTransaction) {
        if (isInitializedAndEnabled()) {
            if (isHttpError(httpTransaction)) {
                NetworkEventController.createHttpErrorEvent(httpTransaction);
            } else if (isNetworkFailure(httpTransaction)) {
                NetworkEventController.createNetworkFailureEvent(httpTransaction);
            } else if (isSuccessfulRequest(httpTransaction)) {
                NetworkEventController.createNetworkRequestEvent(httpTransaction);
            }
        }
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public AnalyticsAttribute getAttribute(String str) {
        log.audit("AnalyticsControllerImpl.getAttribute(" + str + ")");
        AnalyticsAttribute userAttribute = getUserAttribute(str);
        return userAttribute == null ? getSystemAttribute(str) : userAttribute;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public EventManager getEventManager() {
        return this.eventManager;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getMaxEventBufferTime() {
        return this.eventManager.getMaxEventBufferTime();
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getMaxEventPoolSize() {
        return this.eventManager.getMaxEventPoolSize();
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getSessionAttributeCount() {
        return this.userAttributes.size() + this.systemAttributes.size();
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public Set<AnalyticsAttribute> getSessionAttributes() {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("AnalyticsControllerImpl.getSessionAttributes(): ");
        sbC.append(getSessionAttributeCount());
        agentLog.audit(sbC.toString());
        HashSet hashSet = new HashSet(getSessionAttributeCount());
        hashSet.addAll(getSystemAttributes());
        hashSet.addAll(getUserAttributes());
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getSystemAttributeCount() {
        return this.systemAttributes.size();
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public Set<AnalyticsAttribute> getSystemAttributes() {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("AnalyticsControllerImpl.getSystemAttributes(): ");
        sbC.append(this.systemAttributes.size());
        agentLog.audit(sbC.toString());
        HashSet hashSet = new HashSet(this.systemAttributes.size());
        Iterator<AnalyticsAttribute> it = this.systemAttributes.iterator();
        while (it.hasNext()) {
            hashSet.add(new AnalyticsAttribute(it.next()));
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public int getUserAttributeCount() {
        return Math.min(this.userAttributes.size(), 128);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public Set<AnalyticsAttribute> getUserAttributes() {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("AnalyticsControllerImpl.getUserAttributes(): ");
        sbC.append(this.userAttributes.size());
        agentLog.audit(sbC.toString());
        HashSet hashSet = new HashSet(this.userAttributes.size());
        Iterator<AnalyticsAttribute> it = this.userAttributes.iterator();
        while (it.hasNext()) {
            hashSet.add(new AnalyticsAttribute(it.next()));
            if (hashSet.size() == 128) {
                break;
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean incrementAttribute(String str, double d10) {
        return incrementAttribute(str, d10, true);
    }

    public boolean internalRecordEvent(String str, AnalyticsEventCategory analyticsEventCategory, String str2, Map<String, Object> map) {
        try {
            log.audit("AnalyticsControllerImpl.internalRecordEvent(" + str + ", " + analyticsEventCategory.toString() + ", " + str2 + ", " + map + ")");
            if (!isInitializedAndEnabled()) {
                return false;
            }
            AnalyticsValidator analyticsValidator = validator;
            if (analyticsValidator.isValidEventType(str2)) {
                return addEvent(str, analyticsEventCategory, str2, analyticsValidator.toValidatedAnalyticsAttributes(map));
            }
            return false;
        } catch (Exception e10) {
            log.error(String.format("Error occurred while recording event [%s]: ", str), e10);
            return false;
        }
    }

    public void loadPersistentAttributes() {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("AnalyticsControllerImpl.loadPersistentAttributes(): ");
        sbC.append(this.attributeStore.count());
        agentLog.audit(sbC.toString());
        List<AnalyticsAttribute> listFetchAll = this.attributeStore.fetchAll();
        StringBuilder sbC2 = b.c("AnalyticsControllerImpl.loadPersistentAttributes(): found ");
        sbC2.append(listFetchAll.size());
        sbC2.append(" userAttributes in the attribute store");
        agentLog.debug(sbC2.toString());
        int size = this.userAttributes.size();
        for (AnalyticsAttribute analyticsAttribute : listFetchAll) {
            if (!this.userAttributes.contains(analyticsAttribute) && size <= 128) {
                this.userAttributes.add(analyticsAttribute);
                size++;
            }
        }
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
        HarvestData harvestData = Harvest.getInstance().getHarvestData();
        if (harvestData != null) {
            harvestData.setAnalyticsEnabled(this.isEnabled.get());
            if (this.isEnabled.get() && FeatureFlag.featureEnabled(FeatureFlag.AnalyticsEvents) && this.eventManager.isTransmitRequired()) {
                HashSet hashSet = new HashSet();
                hashSet.addAll(getSystemAttributes());
                hashSet.addAll(getUserAttributes());
                harvestData.setSessionAttributes(hashSet);
                Collection<AnalyticsEvent> queuedEventsSnapshot = this.eventManager.getQueuedEventsSnapshot();
                if (queuedEventsSnapshot.size() > 0) {
                    harvestData.getAnalyticsEvents().addAll(queuedEventsSnapshot);
                    AgentLog agentLog = log;
                    StringBuilder sbC = b.c("EventManager: [");
                    sbC.append(queuedEventsSnapshot.size());
                    sbC.append("] events moved from buffer to HarvestData");
                    agentLog.debug(sbC.toString());
                }
                if (this.eventManager.getQueuedEvents().size() > 0) {
                    AgentLog agentLog2 = log;
                    StringBuilder sbC2 = b.c("EventManager: [");
                    sbC2.append(this.eventManager.getQueuedEvents().size());
                    sbC2.append("] events remain in buffer after hand-off");
                    agentLog2.error(sbC2.toString());
                }
            }
        }
    }

    public boolean recordBreadcrumb(String str, Map<String, Object> map) {
        try {
            log.audit("AnalyticsControllerImpl.recordBreadcrumb(" + str + ", " + map + ")");
            if (!isInitializedAndEnabled()) {
                return false;
            }
            HashSet hashSet = new HashSet();
            hashSet.addAll(validator.toValidatedAnalyticsAttributes(map));
            return addEvent(str, AnalyticsEventCategory.Breadcrumb, AnalyticsEvent.EVENT_TYPE_MOBILE_BREADCRUMB, hashSet);
        } catch (Exception e10) {
            log.error(String.format("Error occurred while recording Breadcrumb event [%s]: ", str), e10);
            return false;
        }
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean recordCustomEvent(String str, Map<String, Object> map) {
        try {
            log.audit("AnalyticsControllerImpl.recordCustomEvent(" + str + ", " + map + ")");
            if (!isInitializedAndEnabled()) {
                return false;
            }
            AnalyticsValidator analyticsValidator = validator;
            if (analyticsValidator.isValidEventType(str) && !analyticsValidator.isReservedEventType(str)) {
                HashSet hashSet = new HashSet();
                hashSet.addAll(analyticsValidator.toValidatedAnalyticsAttributes(map));
                String str2 = (String) map.get("name");
                if (str2 == null || str2.isEmpty()) {
                    str2 = str;
                }
                return addEvent(str2, AnalyticsEventCategory.Custom, str, hashSet);
            }
            return false;
        } catch (Exception e10) {
            log.error(String.format("Error occurred while recording custom event [%s]: ", str), e10);
            return false;
        }
    }

    @Deprecated
    public boolean recordEvent(String str, AnalyticsEventCategory analyticsEventCategory, String str2, Map<String, Object> map) {
        try {
            log.audit("AnalyticsControllerImpl.recordEvent - " + str + ": " + map.size() + " attributes");
            if (!isInitializedAndEnabled()) {
                return false;
            }
            AnalyticsValidator analyticsValidator = validator;
            if (analyticsValidator.isValidEventType(str2)) {
                return addEvent(str, analyticsEventCategory, str2, analyticsValidator.toValidatedAnalyticsAttributes(map));
            }
            return false;
        } catch (Exception e10) {
            log.error(String.format("Error occurred while recording event [%s]: ", str), e10);
            return false;
        }
    }

    public void reinitialize(AgentConfiguration agentConfiguration, AgentImpl agentImpl) {
        log.audit("AnalyticsControllerImpl.reinitialize(" + agentConfiguration + ", " + agentImpl.toString() + ")");
        this.agentImpl = agentImpl;
        this.eventManager.initialize(agentConfiguration);
        this.isEnabled.set(agentConfiguration.getEnableAnalyticsEvents());
        this.attributeStore = agentConfiguration.getAnalyticsAttributeStore();
        loadPersistentAttributes();
        DeviceInformation deviceInformation = this.agentImpl.getDeviceInformation();
        String osVersion = deviceInformation.getOsVersion();
        if (osVersion != null) {
            osVersion = osVersion.replace(" ", "");
            if (!osVersion.isEmpty()) {
                String[] strArrSplit = osVersion.split("[.:-]");
                String str = strArrSplit.length > 0 ? strArrSplit[0] : null;
                if (str == null || str.isEmpty()) {
                    str = osVersion;
                }
                this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.OS_VERSION_ATTRIBUTE, osVersion));
                this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.OS_MAJOR_VERSION_ATTRIBUTE, str));
            }
        }
        if (osVersion == null || osVersion.isEmpty()) {
            this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.OS_VERSION_ATTRIBUTE, "undefined"));
        }
        EnvironmentInformation environmentInformation = this.agentImpl.getEnvironmentInformation();
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.OS_NAME_ATTRIBUTE, deviceInformation.getOsName()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.OS_BUILD_ATTRIBUTE, deviceInformation.getOsBuild()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.DEVICE_MANUFACTURER_ATTRIBUTE, deviceInformation.getManufacturer()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.DEVICE_MODEL_ATTRIBUTE, deviceInformation.getModel()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.UUID_ATTRIBUTE, deviceInformation.getDeviceId()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.CARRIER_ATTRIBUTE, agentImpl.getNetworkCarrier()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.NEW_RELIC_VERSION_ATTRIBUTE, deviceInformation.getAgentVersion()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.MEM_USAGE_MB_ATTRIBUTE, environmentInformation.getMemoryUsage()));
        this.systemAttributes.add(new AnalyticsAttribute("sessionId", agentConfiguration.getSessionID()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.APPLICATION_PLATFORM_ATTRIBUTE, agentConfiguration.getApplicationFramework().toString()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.APPLICATION_PLATFORM_VERSION_ATTRIBUTE, agentConfiguration.getApplicationFrameworkVersion()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.RUNTIME_ATTRIBUTE, deviceInformation.getRunTime()));
        this.systemAttributes.add(new AnalyticsAttribute(AnalyticsAttribute.ARCHITECTURE_ATTRIBUTE, deviceInformation.getArchitecture()));
        if (agentConfiguration.getCustomBuildIdentifier() != null) {
            this.systemAttributes.add(new AnalyticsAttribute("appBuild", agentConfiguration.getCustomBuildIdentifier()));
            return;
        }
        String strValueOf = String.valueOf(Agent.getApplicationInformation().getVersionCode());
        if (strValueOf.isEmpty()) {
            return;
        }
        this.systemAttributes.add(new AnalyticsAttribute("appBuild", strValueOf));
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean removeAllAttributes() {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("AnalyticsControllerImpl.removeAttributes(): ");
        sbC.append(this.attributeStore.count());
        sbC.append(this.userAttributes.size());
        agentLog.audit(sbC.toString());
        if (!isInitializedAndEnabled()) {
            return false;
        }
        this.attributeStore.clear();
        this.userAttributes.clear();
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean removeAttribute(String str) {
        log.audit("AnalyticsControllerImpl.removeAttribute(" + str + ")");
        if (!isInitializedAndEnabled()) {
            return false;
        }
        AnalyticsAttribute attribute = getAttribute(str);
        if (attribute == null) {
            return true;
        }
        this.userAttributes.remove(attribute);
        if (!attribute.isPersistent()) {
            return true;
        }
        this.attributeStore.delete(attribute);
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String str, String str2) {
        return setAttribute(str, str2, true);
    }

    public void setEnabled(boolean z10) {
        this.isEnabled.set(z10);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public void setMaxEventBufferTime(int i10) {
        this.eventManager.setMaxEventBufferTime(i10);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public void setMaxEventPoolSize(int i10) {
        this.eventManager.setMaxEventPoolSize(i10);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean addEvent(String str, AnalyticsEventCategory analyticsEventCategory, String str2, Set<AnalyticsAttribute> set) {
        if (isInitializedAndEnabled()) {
            return addEvent(AnalyticsEventFactory.createEvent(str, analyticsEventCategory, str2, set));
        }
        return false;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean incrementAttribute(String str, double d10, boolean z10) {
        AgentLog agentLog = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AnalyticsControllerImpl.incrementAttribute(");
        sb2.append(str);
        sb2.append(", ");
        sb2.append(d10);
        sb2.append(") ");
        sb2.append(z10 ? " (persistent)" : " (transient)");
        agentLog.audit(sb2.toString());
        if (!isInitializedAndEnabled() || !validator.isValidAttributeName(str)) {
            return false;
        }
        AnalyticsAttribute attribute = getAttribute(str);
        if (attribute == null || !attribute.isDoubleAttribute()) {
            if (attribute == null) {
                return addNewUserAttribute(new AnalyticsAttribute(str, d10, z10));
            }
            agentLog.warning("Cannot increment attribute " + str + ": the attribute is already defined as a non-float value.");
            return false;
        }
        attribute.setDoubleValue(attribute.getDoubleValue() + d10);
        attribute.setPersistent(z10);
        if (!attribute.isPersistent() || this.attributeStore.store(attribute)) {
            return true;
        }
        agentLog.error("Failed to store attribute " + attribute + " to attribute store.");
        return false;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String str, String str2, boolean z10) {
        AgentLog agentLog = log;
        StringBuilder sbA = a.a("AnalyticsControllerImpl.setAttribute(", str, ", ", str2, ")");
        sbA.append(z10 ? "(persistent)" : "(transient)");
        agentLog.audit(sbA.toString());
        if (!isInitializedAndEnabled()) {
            return false;
        }
        AnalyticsValidator analyticsValidator = validator;
        if (!analyticsValidator.isValidAttributeName(str) || !analyticsValidator.isValidAttributeValue(str, str2)) {
            return false;
        }
        AnalyticsAttribute attribute = getAttribute(str);
        if (attribute == null) {
            return addNewUserAttribute(new AnalyticsAttribute(str, str2, z10));
        }
        attribute.setStringValue(str2);
        attribute.setPersistent(z10);
        if (!attribute.isPersistent()) {
            this.attributeStore.delete(attribute);
            return true;
        }
        if (this.attributeStore.store(attribute)) {
            return true;
        }
        agentLog.error("Failed to store attribute [" + attribute + "] to attribute store.");
        return false;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean addEvent(AnalyticsEvent analyticsEvent) {
        AgentLog agentLog = log;
        StringBuilder sbC = b.c("AnalyticsControllerImpl.addEvent(");
        sbC.append(analyticsEvent.getName() == null ? analyticsEvent.getEventType() : analyticsEvent.getName());
        sbC.append(")");
        agentLog.audit(sbC.toString());
        if (!isInitializedAndEnabled()) {
            return false;
        }
        HashSet hashSet = new HashSet();
        long sessionDurationMillis = this.agentImpl.getSessionDurationMillis();
        if (0 == sessionDurationMillis) {
            agentLog.error("Harvest instance is not running! Session duration will be invalid");
        } else {
            hashSet.add(new AnalyticsAttribute(AnalyticsAttribute.SESSION_TIME_SINCE_LOAD_ATTRIBUTE, sessionDurationMillis / 1000.0f));
            analyticsEvent.addAttributes(hashSet);
        }
        return this.eventManager.addEvent(analyticsEvent);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean recordEvent(String str, Map<String, Object> map) {
        try {
            log.audit("AnalyticsControllerImpl.recordEvent - " + str + ": " + map.size() + " attributes");
            if (!isInitializedAndEnabled()) {
                return false;
            }
            HashSet hashSet = new HashSet();
            hashSet.addAll(validator.toValidatedAnalyticsAttributes(map));
            return addEvent(str, AnalyticsEventCategory.Custom, "Mobile", hashSet);
        } catch (Exception e10) {
            log.error(String.format("Error occurred while recording event [%s]: ", str), e10);
            return false;
        }
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String str, double d10) {
        return setAttribute(str, d10, true);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String str, double d10, boolean z10) {
        AgentLog agentLog = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AnalyticsControllerImpl.setAttribute(");
        sb2.append(str);
        sb2.append(", ");
        sb2.append(d10);
        sb2.append(")");
        sb2.append(z10 ? " (persistent)" : " (transient)");
        agentLog.audit(sb2.toString());
        if (!isInitializedAndEnabled() || !validator.isValidAttributeName(str)) {
            return false;
        }
        AnalyticsAttribute attribute = getAttribute(str);
        if (attribute == null) {
            return addNewUserAttribute(new AnalyticsAttribute(str, d10, z10));
        }
        attribute.setDoubleValue(d10);
        attribute.setPersistent(z10);
        if (attribute.isPersistent()) {
            if (this.attributeStore.store(attribute)) {
                return true;
            }
            agentLog.error("Failed to store attribute [" + attribute + "] to attribute store.");
            return false;
        }
        this.attributeStore.delete(attribute);
        return true;
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String str, boolean z10) {
        return setAttribute(str, z10, true);
    }

    @Override // com.newrelic.agent.android.analytics.AnalyticsController
    public boolean setAttribute(String str, boolean z10, boolean z11) {
        AgentLog agentLog = log;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AnalyticsControllerImpl.setAttribute(");
        sb2.append(str);
        sb2.append(", ");
        sb2.append(z10);
        sb2.append(")");
        sb2.append(z11 ? " (persistent)" : " (transient)");
        agentLog.audit(sb2.toString());
        if (!isInitializedAndEnabled() || !validator.isValidAttributeName(str)) {
            return false;
        }
        AnalyticsAttribute attribute = getAttribute(str);
        if (attribute == null) {
            return addNewUserAttribute(new AnalyticsAttribute(str, z10, z11));
        }
        attribute.setBooleanValue(z10);
        attribute.setPersistent(z11);
        if (attribute.isPersistent()) {
            if (this.attributeStore.store(attribute)) {
                return true;
            }
            agentLog.error("Failed to store attribute [" + attribute + "] to attribute store.");
            return false;
        }
        this.attributeStore.delete(attribute);
        return true;
    }
}
