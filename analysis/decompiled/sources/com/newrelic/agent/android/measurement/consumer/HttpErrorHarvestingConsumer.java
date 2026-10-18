package com.newrelic.agent.android.measurement.consumer;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.newrelic.agent.android.analytics.AnalyticsControllerImpl;
import com.newrelic.agent.android.analytics.EventManagerImpl;
import com.newrelic.agent.android.analytics.EventTransformAdapter;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.harvest.HttpError;
import com.newrelic.agent.android.measurement.Measurement;
import com.newrelic.agent.android.measurement.MeasurementType;
import com.newrelic.agent.android.measurement.http.HttpErrorMeasurement;

/* JADX INFO: loaded from: classes.dex */
public class HttpErrorHarvestingConsumer extends BaseMeasurementConsumer {
    public HttpErrorHarvestingConsumer() {
        super(MeasurementType.HttpError);
    }

    @Override // com.newrelic.agent.android.measurement.consumer.BaseMeasurementConsumer, com.newrelic.agent.android.measurement.consumer.MeasurementConsumer
    public void consumeMeasurement(Measurement measurement) {
        HttpError httpError = new HttpError((HttpErrorMeasurement) measurement);
        EventManagerImpl eventManagerImpl = (EventManagerImpl) AnalyticsControllerImpl.getInstance().getEventManager();
        if (eventManagerImpl.getListener() instanceof EventTransformAdapter) {
            httpError.setUrl(((EventTransformAdapter) eventManagerImpl.getListener()).onAttributeTransform(AnalyticsAttribute.REQUEST_URL_ATTRIBUTE, httpError.getUrl()));
        }
        Harvest.addHttpErrorTrace(httpError);
    }
}
