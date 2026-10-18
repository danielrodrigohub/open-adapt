package com.newrelic.agent.android.harvest;

import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.metric.Metric;
import com.newrelic.agent.android.tracing.ActivityTrace;
import com.newrelic.agent.android.tracing.TraceMachine;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HarvestDataValidator extends HarvestAdapter {
    public void ensureActivityNameMetricsExist() {
        MachineMeasurements metrics;
        HarvestData harvestData = Harvest.getInstance().getHarvestData();
        ActivityTraces activityTraces = harvestData.getActivityTraces();
        if (activityTraces == null || activityTraces.count() == 0 || (metrics = harvestData.getMetrics()) == null || metrics.isEmpty()) {
            return;
        }
        Iterator<ActivityTrace> it = activityTraces.getActivityTraces().iterator();
        while (it.hasNext()) {
            String strSubstring = it.next().rootTrace.displayName;
            int iIndexOf = strSubstring.indexOf("#");
            boolean z10 = false;
            if (iIndexOf > 0) {
                strSubstring = strSubstring.substring(0, iIndexOf);
            }
            String strC = d.c(TraceMachine.ACTIVITY_METRIC_PREFIX, strSubstring);
            List<Metric> allUnscoped = metrics.getMetrics().getAllUnscoped();
            if (allUnscoped != null && allUnscoped.size() > 0) {
                Iterator<Metric> it2 = allUnscoped.iterator();
                while (it2.hasNext()) {
                    if (it2.next().getName().startsWith(strC)) {
                        z10 = true;
                        break;
                    }
                }
            }
            if (!z10) {
                Metric metric = new Metric(strC);
                metric.sample(1.0d);
                metrics.addMetric(metric);
            }
        }
    }

    @Override // com.newrelic.agent.android.harvest.HarvestAdapter, com.newrelic.agent.android.harvest.HarvestLifecycleAware
    public void onHarvestFinalize() {
        if (Harvest.isInitialized()) {
            ensureActivityNameMetricsExist();
        }
    }
}
