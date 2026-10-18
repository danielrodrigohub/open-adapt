package com.newrelic.agent.android.measurement.producer;

import com.newrelic.agent.android.measurement.CustomMetricMeasurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.metric.MetricUnit;

/* JADX INFO: loaded from: classes.dex */
public class CustomMetricProducer extends BaseMeasurementProducer {
    private static final String FILTER_REGEX = "[/\\[\\]|*]";

    public CustomMetricProducer() {
        super(MeasurementType.Custom);
    }

    private String createMetricName(String str, String str2, MetricUnit metricUnit, MetricUnit metricUnit2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str2.replaceAll(FILTER_REGEX, ""));
        stringBuffer.append("/");
        stringBuffer.append(str.replaceAll(FILTER_REGEX, ""));
        if (metricUnit != null || metricUnit2 != null) {
            stringBuffer.append("[");
            if (metricUnit2 != null) {
                stringBuffer.append(metricUnit2.getLabel());
            }
            if (metricUnit != null) {
                stringBuffer.append("|");
                stringBuffer.append(metricUnit.getLabel());
            }
            stringBuffer.append("]");
        }
        return stringBuffer.toString();
    }

    public void produceMeasurement(String str, String str2, int i10, double d10, double d11) {
        produceMeasurement(str2, str, i10, d10, d11, null, null);
    }

    public void produceMeasurement(String str, String str2, int i10, double d10, double d11, MetricUnit metricUnit, MetricUnit metricUnit2) {
        produceMeasurement(new CustomMetricMeasurement(createMetricName(str, str2, metricUnit, metricUnit2), i10, d10, d11));
    }
}
