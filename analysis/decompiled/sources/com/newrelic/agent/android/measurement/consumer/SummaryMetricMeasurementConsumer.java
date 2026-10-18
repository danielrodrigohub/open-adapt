package com.newrelic.agent.android.measurement.consumer;

import a0.b;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.instrumentation.MetricCategory;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.BaseMeasurement;
import com.newrelic.agent.android.measurement.CustomMetricMeasurement;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.measurement.MethodMeasurement;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.Trace;
import com.newrelic.agent.android.tracing.TraceLifecycleAware;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class SummaryMetricMeasurementConsumer extends MetricMeasurementConsumer implements TraceLifecycleAware {
    private static final String ACTIVITY_METRIC_PREFIX = "Mobile/Activity/Summary/Name/";
    private static final String METRIC_PREFIX = "Mobile/Summary/";
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private final List<ActivityTrace> completedTraces;

    /* JADX INFO: renamed from: com.newrelic.agent.android.measurement.consumer.SummaryMetricMeasurementConsumer$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$newrelic$agent$android$measurement$MeasurementType;

        static {
            int[] iArr = new int[MeasurementType.values().length];
            $SwitchMap$com$newrelic$agent$android$measurement$MeasurementType = iArr;
            try {
                iArr[MeasurementType.Method.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$measurement$MeasurementType[MeasurementType.Network.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$newrelic$agent$android$measurement$MeasurementType[MeasurementType.Custom.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public SummaryMetricMeasurementConsumer() {
        super(MeasurementType.Any);
        this.completedTraces = new CopyOnWriteArrayList();
        this.recordUnscopedMetrics = false;
        TraceMachine.addTraceListener(this);
    }

    private void consumeCustomMeasurement(CustomMetricMeasurement customMetricMeasurement) {
        if (customMetricMeasurement.getCategory() == null || customMetricMeasurement.getCategory() == MetricCategory.NONE) {
            return;
        }
        BaseMeasurement baseMeasurement = new BaseMeasurement(customMetricMeasurement);
        baseMeasurement.setName(customMetricMeasurement.getCategory().getCategoryName());
        super.consumeMeasurement(baseMeasurement);
    }

    private void consumeMethodMeasurement(MethodMeasurement methodMeasurement) {
        if (methodMeasurement.getCategory() == null || methodMeasurement.getCategory() == MetricCategory.NONE) {
            methodMeasurement.setCategory(MetricCategory.categoryForMethod(methodMeasurement.getName()));
            if (methodMeasurement.getCategory() == MetricCategory.NONE) {
                return;
            }
        }
        BaseMeasurement baseMeasurement = new BaseMeasurement(methodMeasurement);
        baseMeasurement.setName(methodMeasurement.getCategory().getCategoryName());
        super.consumeMeasurement(baseMeasurement);
    }

    private void consumeNetworkMeasurement(HttpTransactionMeasurement httpTransactionMeasurement) {
        BaseMeasurement baseMeasurement = new BaseMeasurement(httpTransactionMeasurement);
        baseMeasurement.setName(MetricCategory.NETWORK.getCategoryName());
        super.consumeMeasurement(baseMeasurement);
    }

    private void summarizeActivityMetrics(ActivityTrace activityTrace) {
        Trace trace = activityTrace.rootTrace;
        List<Metric> listRemoveAllWithScope = this.metrics.removeAllWithScope(trace.metricName);
        List<Metric> listRemoveAllWithScope2 = this.metrics.removeAllWithScope(trace.metricBackgroundName);
        HashMap map = new HashMap();
        for (Metric metric : listRemoveAllWithScope) {
            map.put(metric.getName(), metric);
        }
        for (Metric metric2 : listRemoveAllWithScope2) {
            if (map.containsKey(metric2.getName())) {
                ((Metric) map.get(metric2.getName())).aggregate(metric2);
            } else {
                map.put(metric2.getName(), metric2);
            }
        }
        Iterator it = map.values().iterator();
        double exclusive = 0.0d;
        while (it.hasNext()) {
            exclusive += ((Metric) it.next()).getExclusive();
        }
        double d10 = (trace.exitTimestamp - trace.entryTimestamp) / 1000.0d;
        for (Metric metric3 : map.values()) {
            double exclusive2 = ((metric3.getExclusive() == 0.0d || exclusive == 0.0d) ? 0.0d : metric3.getExclusive() / exclusive) * d10;
            metric3.setTotal(Double.valueOf(exclusive2));
            metric3.setExclusive(Double.valueOf(exclusive2));
            metric3.setMinFieldValue(Double.valueOf(0.0d));
            metric3.setMaxFieldValue(Double.valueOf(0.0d));
            metric3.setSumOfSquares(Double.valueOf(0.0d));
            metric3.setScope(ACTIVITY_METRIC_PREFIX + trace.displayName);
            Harvest.addMetric(metric3);
            Metric metric4 = new Metric(metric3);
            metric4.setScope(null);
            Harvest.addMetric(metric4);
        }
        summarizeActivityNetworkMetrics(activityTrace);
    }

    private void summarizeActivityNetworkMetrics(ActivityTrace activityTrace) {
        String activityName = activityTrace.getActivityName();
        if (activityTrace.networkCountMetric.getCount() > 0) {
            activityTrace.networkCountMetric.setName(activityTrace.networkCountMetric.getName().replace("<activity>", activityName));
            activityTrace.networkCountMetric.setCount(1L);
            Metric metric = activityTrace.networkCountMetric;
            metric.setMinFieldValue(Double.valueOf(metric.getTotal()));
            Metric metric2 = activityTrace.networkCountMetric;
            metric2.setMaxFieldValue(Double.valueOf(metric2.getTotal()));
            Harvest.addMetric(activityTrace.networkCountMetric);
        }
        if (activityTrace.networkTimeMetric.getCount() > 0) {
            activityTrace.networkTimeMetric.setName(activityTrace.networkTimeMetric.getName().replace("<activity>", activityName));
            activityTrace.networkTimeMetric.setCount(1L);
            Metric metric3 = activityTrace.networkTimeMetric;
            metric3.setMinFieldValue(Double.valueOf(metric3.getTotal()));
            Metric metric4 = activityTrace.networkTimeMetric;
            metric4.setMaxFieldValue(Double.valueOf(metric4.getTotal()));
            Harvest.addMetric(activityTrace.networkTimeMetric);
        }
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        if (measurement == null) {
            return;
        }
        int i10 = AnonymousClass1.$SwitchMap$com$newrelic$agent$android$measurement$MeasurementType[measurement.getType().ordinal()];
        if (i10 == 1) {
            consumeMethodMeasurement((MethodMeasurement) measurement);
        } else if (i10 == 2) {
            consumeNetworkMeasurement((HttpTransactionMeasurement) measurement);
        } else {
            if (i10 != 3) {
                return;
            }
            consumeCustomMeasurement((CustomMetricMeasurement) measurement);
        }
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer
    public String formatMetricName(String str) {
        StringBuilder sbC = b.c(METRIC_PREFIX);
        sbC.append(str.replace("#", "/"));
        return sbC.toString();
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onEnterMethod() {
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onExitMethod() {
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvest() {
        if (this.metrics.getAll().size() == 0 || this.completedTraces.size() == 0) {
            return;
        }
        Iterator<ActivityTrace> it = this.completedTraces.iterator();
        while (it.hasNext()) {
            summarizeActivityMetrics(it.next());
        }
        if (this.metrics.getAll().size() != 0) {
            log.debug("Not all metrics were summarized!");
        }
        this.completedTraces.clear();
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestComplete() {
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestError() {
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceComplete(ActivityTrace activityTrace) {
        if (this.completedTraces.contains(activityTrace)) {
            return;
        }
        this.completedTraces.add(activityTrace);
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceRename(ActivityTrace activityTrace) {
    }

    @Override // com.newrelic.agent.android.tracing.TraceLifecycleAware
    public void onTraceStart(ActivityTrace activityTrace) {
    }
}
