package com.newrelic.agent.android;

import com.newrelic.agent.android.activity.MeasuredActivity;
import com.newrelic.agent.android.api.common.TransactionData;
import com.newrelic.agent.android.harvest.Harvest;
import com.newrelic.agent.android.logging.AgentLog;
import com.newrelic.agent.android.logging.AgentLogManager;
import com.newrelic.agent.android.measurement.ThreadInfo;
import com.newrelic.agent.android.measurement.consumer.ActivityMeasurementConsumer;
import com.newrelic.agent.android.measurement.consumer.CustomMetricConsumer;
import com.newrelic.agent.android.measurement.consumer.HttpErrorHarvestingConsumer;
import com.newrelic.agent.android.measurement.consumer.HttpTransactionHarvestingConsumer;
import com.newrelic.agent.android.measurement.consumer.MeasurementConsumer;
import com.newrelic.agent.android.measurement.consumer.MethodMeasurementConsumer;
import com.newrelic.agent.android.measurement.consumer.SummaryMetricMeasurementConsumer;
import com.newrelic.agent.android.measurement.http.HttpErrorMeasurement;
import com.newrelic.agent.android.measurement.http.HttpTransactionMeasurement;
import com.newrelic.agent.android.measurement.producer.ActivityMeasurementProducer;
import com.newrelic.agent.android.measurement.producer.CustomMetricProducer;
import com.newrelic.agent.android.measurement.producer.HttpErrorMeasurementProducer;
import com.newrelic.agent.android.measurement.producer.MeasurementProducer;
import com.newrelic.agent.android.measurement.producer.MethodMeasurementProducer;
import com.newrelic.agent.android.measurement.producer.NetworkMeasurementProducer;
import com.newrelic.agent.android.metric.MetricUnit;
import com.newrelic.agent.android.tracing.Trace;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Measurements {
    private static final AgentLog log = AgentLogManager.getAgentLog();
    private static final MeasurementEngine measurementEngine = new MeasurementEngine();
    private static final HttpErrorMeasurementProducer httpErrorMeasurementProducer = new HttpErrorMeasurementProducer();
    private static final NetworkMeasurementProducer networkMeasurementProducer = new NetworkMeasurementProducer();
    private static final ActivityMeasurementProducer activityMeasurementProducer = new ActivityMeasurementProducer();
    private static final MethodMeasurementProducer methodMeasurementProducer = new MethodMeasurementProducer();
    private static final CustomMetricProducer customMetricProducer = new CustomMetricProducer();
    private static final HttpErrorHarvestingConsumer httpErrorHarvester = new HttpErrorHarvestingConsumer();
    private static final HttpTransactionHarvestingConsumer httpTransactionHarvester = new HttpTransactionHarvestingConsumer();
    private static final ActivityMeasurementConsumer activityConsumer = new ActivityMeasurementConsumer();
    private static final MethodMeasurementConsumer methodMeasurementConsumer = new MethodMeasurementConsumer();
    private static final SummaryMetricMeasurementConsumer summaryMetricMeasurementConsumer = new SummaryMetricMeasurementConsumer();
    private static final CustomMetricConsumer customMetricConsumer = new CustomMetricConsumer();
    private static boolean broadcastNewMeasurements = true;

    public static void addCustomMetric(String str, String str2, int i10, double d10, double d11) {
        if (Harvest.isDisabled()) {
            return;
        }
        customMetricProducer.produceMeasurement(str, str2, i10, d10, d11);
        newMeasurementBroadcast();
    }

    public static void addHttpError(String str, String str2, int i10, String str3, Map<String, String> map) {
        if (Harvest.isDisabled()) {
            return;
        }
        httpErrorMeasurementProducer.produceMeasurement(str, str2, i10, 0, str3, map, new ThreadInfo());
        newMeasurementBroadcast();
    }

    public static void addHttpTransaction(HttpTransactionMeasurement httpTransactionMeasurement) {
        if (Harvest.isDisabled()) {
            return;
        }
        if (httpTransactionMeasurement == null) {
            log.error("TransactionMeasurement is null. HttpTransactionMeasurement measurement not created.");
        } else {
            networkMeasurementProducer.produceMeasurement(httpTransactionMeasurement);
            newMeasurementBroadcast();
        }
    }

    public static void addMeasurementConsumer(MeasurementConsumer measurementConsumer) {
        measurementEngine.addMeasurementConsumer(measurementConsumer);
    }

    public static void addMeasurementProducer(MeasurementProducer measurementProducer) {
        measurementEngine.addMeasurementProducer(measurementProducer);
    }

    public static void addTracedMethod(Trace trace) {
        if (Harvest.isDisabled()) {
            return;
        }
        methodMeasurementProducer.produceMeasurement(trace);
        newMeasurementBroadcast();
    }

    public static void broadcast() {
        measurementEngine.broadcastMeasurements();
    }

    public static void endActivity(String str) {
        if (Harvest.isDisabled()) {
            return;
        }
        activityMeasurementProducer.produceMeasurement(measurementEngine.endActivity(str));
        newMeasurementBroadcast();
    }

    public static void endActivityWithoutMeasurement(MeasuredActivity measuredActivity) {
        if (Harvest.isDisabled()) {
            return;
        }
        measurementEngine.endActivity(measuredActivity);
    }

    public static void initialize() {
        log.info("Measurement Engine initialized.");
        TaskQueue.start();
        addMeasurementProducer(httpErrorMeasurementProducer);
        addMeasurementProducer(networkMeasurementProducer);
        addMeasurementProducer(activityMeasurementProducer);
        addMeasurementProducer(methodMeasurementProducer);
        addMeasurementProducer(customMetricProducer);
        addMeasurementConsumer(httpErrorHarvester);
        addMeasurementConsumer(httpTransactionHarvester);
        addMeasurementConsumer(activityConsumer);
        addMeasurementConsumer(methodMeasurementConsumer);
        addMeasurementConsumer(summaryMetricMeasurementConsumer);
        addMeasurementConsumer(customMetricConsumer);
    }

    private static void newMeasurementBroadcast() {
        if (broadcastNewMeasurements) {
            broadcast();
        }
    }

    public static void process() {
        measurementEngine.broadcastMeasurements();
    }

    public static void removeMeasurementConsumer(MeasurementConsumer measurementConsumer) {
        measurementEngine.removeMeasurementConsumer(measurementConsumer);
    }

    public static void removeMeasurementProducer(MeasurementProducer measurementProducer) {
        measurementProducer.drainMeasurements();
        measurementEngine.removeMeasurementProducer(measurementProducer);
    }

    public static void renameActivity(String str, String str2) {
        measurementEngine.renameActivity(str, str2);
    }

    public static void setBroadcastNewMeasurements(boolean z10) {
        broadcastNewMeasurements = z10;
    }

    public static void shutdown() {
        TaskQueue.stop();
        measurementEngine.clear();
        log.info("Measurement Engine shutting down.");
        removeMeasurementProducer(httpErrorMeasurementProducer);
        removeMeasurementProducer(networkMeasurementProducer);
        removeMeasurementProducer(activityMeasurementProducer);
        removeMeasurementProducer(methodMeasurementProducer);
        removeMeasurementProducer(customMetricProducer);
        removeMeasurementConsumer(httpErrorHarvester);
        removeMeasurementConsumer(httpTransactionHarvester);
        removeMeasurementConsumer(activityConsumer);
        removeMeasurementConsumer(methodMeasurementConsumer);
        removeMeasurementConsumer(summaryMetricMeasurementConsumer);
        removeMeasurementConsumer(customMetricConsumer);
    }

    public static MeasuredActivity startActivity(String str) {
        if (Harvest.isDisabled()) {
            return null;
        }
        return measurementEngine.startActivity(str);
    }

    public static void addCustomMetric(String str, String str2, int i10, double d10, double d11, MetricUnit metricUnit, MetricUnit metricUnit2) {
        if (Harvest.isDisabled()) {
            return;
        }
        customMetricProducer.produceMeasurement(str, str2, i10, d10, d11, metricUnit, metricUnit2);
        newMeasurementBroadcast();
    }

    public static void addHttpError(String str, String str2, int i10, int i11, String str3, Map<String, String> map) {
        if (Harvest.isDisabled()) {
            return;
        }
        httpErrorMeasurementProducer.produceMeasurement(str, str2, i10, i11, str3, map, new ThreadInfo());
        newMeasurementBroadcast();
    }

    public static void endActivity(MeasuredActivity measuredActivity) {
        if (Harvest.isDisabled()) {
            return;
        }
        measurementEngine.endActivity(measuredActivity);
        activityMeasurementProducer.produceMeasurement(measuredActivity);
        newMeasurementBroadcast();
    }

    public static void addHttpError(String str, String str2, int i10, String str3, Map<String, String> map, ThreadInfo threadInfo) {
        if (Harvest.isDisabled()) {
            return;
        }
        httpErrorMeasurementProducer.produceMeasurement(str, str2, i10, 0, str3, map, threadInfo);
        newMeasurementBroadcast();
    }

    public static void addHttpError(TransactionData transactionData) {
        if (Harvest.isDisabled()) {
            return;
        }
        if (transactionData == null) {
            log.error("TransactionData is null. HttpError measurement not created.");
            return;
        }
        HttpErrorMeasurement httpErrorMeasurement = new HttpErrorMeasurement(transactionData.getUrl(), transactionData.getStatusCode());
        httpErrorMeasurement.setHttpMethod(transactionData.getHttpMethod());
        httpErrorMeasurement.setErrorCode(transactionData.getErrorCode());
        httpErrorMeasurement.setBytesSent(transactionData.getBytesSent());
        httpErrorMeasurement.setBytesReceived(transactionData.getBytesReceived());
        httpErrorMeasurement.setAppData(transactionData.getAppData());
        httpErrorMeasurement.setResponseBody(transactionData.getResponseBody());
        httpErrorMeasurement.setParams(transactionData.getParams());
        httpErrorMeasurement.setTraceContext(transactionData.getTraceContext());
        httpErrorMeasurement.setTotalTime(0.0d);
        httpErrorMeasurementProducer.produceMeasurement(httpErrorMeasurement);
    }
}
