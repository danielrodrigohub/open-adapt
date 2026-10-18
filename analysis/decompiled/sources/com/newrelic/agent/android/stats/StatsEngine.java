package com.newrelic.agent.android.stats;

import com.newrelic.agent.android.Agent;
import com.newrelic.agent.android.ApplicationFramework;
import com.newrelic.agent.android.TaskQueue;
import com.newrelic.agent.android.harvest.DeviceInformation;
import com.newrelic.agent.android.harvest.HarvestAdapter;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.metric.MetricNames;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class StatsEngine extends HarvestAdapter {
    public static final StatsEngine INSTANCE = new StatsEngine();
    public static final StatsEngine SUPPORTABILITY = new SupportabilityDecorator();
    public boolean enabled;
    private final ConcurrentHashMap<String, Metric> statsMap;

    /* JADX INFO: renamed from: com.newrelic.agent.android.stats.StatsEngine$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$ApplicationFramework;

        static {
            int[] iArr = new int[ApplicationFramework.values().length];
            $SwitchMap$com$newrelic$agent$android$ApplicationFramework = iArr;
            try {
                iArr[ApplicationFramework.Native.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    public static class SupportabilityDecorator extends StatsEngine {
        public SupportabilityDecorator() {
            super(null);
        }

        public String emptyIfNull(String str) {
            return str == null ? "" : str;
        }

        @Override // com.newrelic.agent.android.stats.StatsEngine
        public Metric lazyGet(String str) {
            DeviceInformation deviceInformation = Agent.getDeviceInformation();
            String strEmptyIfNull = emptyIfNull(null);
            String strEmptyIfNull2 = emptyIfNull(null);
            String strEmptyIfNull3 = emptyIfNull(deviceInformation.getApplicationFrameworkVersion());
            String strEmptyIfNull4 = emptyIfNull(deviceInformation.getAgentVersion());
            if (deviceInformation.getApplicationFramework() != null) {
                if (AnonymousClass1.$SwitchMap$com$newrelic$agent$android$ApplicationFramework[deviceInformation.getApplicationFramework().ordinal()] != 1) {
                    strEmptyIfNull = emptyIfNull(deviceInformation.getApplicationFramework().name());
                    if (!strEmptyIfNull3.equals(strEmptyIfNull4)) {
                        strEmptyIfNull2 = emptyIfNull(deviceInformation.getApplicationFrameworkVersion());
                    }
                } else if (!strEmptyIfNull3.isEmpty() && !strEmptyIfNull3.equals(strEmptyIfNull4)) {
                    strEmptyIfNull = emptyIfNull(deviceInformation.getApplicationFramework().name());
                    strEmptyIfNull2 = emptyIfNull(deviceInformation.getApplicationFrameworkVersion());
                }
            }
            String strReplaceAll = str.replaceAll(MetricNames.TAG_FRAMEWORK, emptyIfNull(strEmptyIfNull)).replaceAll(MetricNames.TAG_FRAMEWORK_VERSION, emptyIfNull(strEmptyIfNull2));
            while (strReplaceAll.contains("//")) {
                strReplaceAll = strReplaceAll.replaceAll("//", "/");
            }
            AgentLogManager.getAgentLog().debug("Metric normalized to [" + strReplaceAll + "]");
            return super.lazyGet(strReplaceAll);
        }
    }

    public /* synthetic */ StatsEngine(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static void calculateMetricsDataUseage() {
        String strReplace = MetricNames.SUPPORTABILITY_DESTINATION_OUTPUT_BYTES.replace(MetricNames.TAG_FRAMEWORK, Agent.getDeviceInformation().getApplicationFramework().name()).replace(MetricNames.TAG_DESTINATION, MetricNames.SUPPORTABILITY_DATA_USAGE_COLLECTOR);
        Iterator<Map.Entry<String, Metric>> it = INSTANCE.getStatsMap().entrySet().iterator();
        float total = 0.0f;
        long j10 = 0;
        float exclusive = 0.0f;
        while (it.hasNext()) {
            Metric value = it.next().getValue();
            String name = value.getName();
            if (name.contains("Collector/connect") || name.contains("Collector/data") || name.contains("Collector/f") || name.contains("Collector/mobile_crash")) {
                long count = value.getCount() + j10;
                total = (float) (value.getTotal() + ((double) total));
                exclusive = (float) (value.getExclusive() + ((double) exclusive));
                j10 = count;
            }
        }
        Iterator<Map.Entry<String, Metric>> it2 = SUPPORTABILITY.getStatsMap().entrySet().iterator();
        while (it2.hasNext()) {
            Metric value2 = it2.next().getValue();
            String name2 = value2.getName();
            if (name2.contains("Collector/connect") || name2.contains("Collector/data") || name2.contains("Collector/f") || name2.contains("Collector/mobile_crash")) {
                long count2 = value2.getCount() + j10;
                total = (float) (value2.getTotal() + ((double) total));
                exclusive = (float) (value2.getExclusive() + ((double) exclusive));
                j10 = count2;
            }
        }
        get().inc(strReplace, j10 - 1);
        get().sampleMetricDataUsage(strReplace, total, exclusive);
    }

    public static synchronized void disable() {
        INSTANCE.enabled = false;
        SUPPORTABILITY.enabled = false;
    }

    public static synchronized void enable() {
        INSTANCE.enabled = true;
        SUPPORTABILITY.enabled = true;
    }

    public static StatsEngine get() {
        return INSTANCE;
    }

    public static StatsEngine notice() {
        return SUPPORTABILITY;
    }

    public static void populateMetrics() {
        Iterator<Map.Entry<String, Metric>> it = INSTANCE.getStatsMap().entrySet().iterator();
        while (it.hasNext()) {
            TaskQueue.queue(it.next().getValue());
        }
        Iterator<Map.Entry<String, Metric>> it2 = SUPPORTABILITY.getStatsMap().entrySet().iterator();
        while (it2.hasNext()) {
            TaskQueue.queue(it2.next().getValue());
        }
    }

    public static void reset() {
        INSTANCE.getStatsMap().clear();
        SUPPORTABILITY.getStatsMap().clear();
    }

    public ConcurrentHashMap<String, Metric> getStatsMap() {
        return this.statsMap;
    }

    public void inc(String str) {
        Metric metricLazyGet = lazyGet(str);
        synchronized (metricLazyGet) {
            metricLazyGet.increment();
        }
    }

    public Metric lazyGet(String str) {
        Metric metric = this.statsMap.get(str);
        if (metric == null) {
            metric = new Metric(str);
            if (this.enabled) {
                this.statsMap.put(str, metric);
            }
        }
        return metric;
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
        calculateMetricsDataUseage();
        populateMetrics();
        reset();
    }

    public void sample(String str, float f10) {
        Metric metricLazyGet = lazyGet(str);
        synchronized (metricLazyGet) {
            metricLazyGet.sample(f10);
        }
    }

    public void sampleMetricDataUsage(String str, float f10, float f11) {
        Metric metricLazyGet = lazyGet(str);
        synchronized (metricLazyGet) {
            metricLazyGet.sampleMetricDataUsage(f10, f11);
        }
    }

    public void sampleTimeMs(String str, long j10) {
        sample(str, j10 / 1000.0f);
    }

    private StatsEngine() {
        this.enabled = true;
        this.statsMap = new ConcurrentHashMap<>();
    }

    public void inc(String str, long j10) {
        Metric metricLazyGet = lazyGet(str);
        synchronized (metricLazyGet) {
            metricLazyGet.increment(j10);
        }
    }
}
