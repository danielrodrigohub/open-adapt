package com.newrelic.agent.android.measurement.producer;

import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.util.Util;

/* JADX INFO: loaded from: classes.dex */
public class NetworkMeasurementProducer extends BaseMeasurementProducer {
    public NetworkMeasurementProducer() {
        super(MeasurementType.Network);
    }

    public void produceMeasurement(String str, String str2, int i10, int i11, long j10, double d10, long j11, long j12, String str3) {
        String strSanitizeUrl = Util.sanitizeUrl(str);
        if (strSanitizeUrl == null) {
            return;
        }
        produceMeasurement(new HttpTransactionMeasurement(strSanitizeUrl, str2, i10, i11, j10, d10, j11, j12, str3));
    }

    public void produceMeasurement(HttpTransactionMeasurement httpTransactionMeasurement) {
        String strSanitizeUrl = Util.sanitizeUrl(httpTransactionMeasurement.getUrl());
        if (strSanitizeUrl == null) {
            return;
        }
        httpTransactionMeasurement.setUrl(strSanitizeUrl);
        super.produceMeasurement((Measurement) httpTransactionMeasurement);
    }
}
