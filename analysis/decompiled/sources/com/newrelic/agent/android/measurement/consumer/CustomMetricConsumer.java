package com.newrelic.agent.android.measurement.consumer;

import androidx.recyclerview.widget.d;
import com.newrelic.agent.android.measurement.CustomMetricMeasurement;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.metric.Metric;

/* JADX INFO: loaded from: classes.dex */
public class CustomMetricConsumer extends MetricMeasurementConsumer {
    private static final String METRIC_PREFIX = "Custom/";

    public CustomMetricConsumer() {
        super(MeasurementType.Custom);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        Metric customMetric = ((CustomMetricMeasurement) measurement).getCustomMetric();
        customMetric.setName(formatMetricName(customMetric.getName()));
        addMetric(customMetric);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.MetricMeasurementConsumer
    public String formatMetricName(String str) {
        return d.c(METRIC_PREFIX, str);
    }
}
