.class public Lcom/newrelic/agent/android/measurement/consumer/HttpErrorHarvestingConsumer;
.super Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;
.source "HttpErrorHarvestingConsumer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->HttpError:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    return-void
.end method


# virtual methods
.method public consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/newrelic/agent/android/harvest/HttpError;

    check-cast p1, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/harvest/HttpError;-><init>(Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;)V

    .line 2
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object p1

    check-cast p1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    .line 3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getListener()Lcom/newrelic/agent/android/analytics/EventListener;

    move-result-object v1

    instance-of v1, v1, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getListener()Lcom/newrelic/agent/android/analytics/EventListener;

    move-result-object p1

    check-cast p1, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;

    .line 5
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpError;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestUrl"

    invoke-virtual {p1, v2, v1}, Lcom/newrelic/agent/android/analytics/EventTransformAdapter;->onAttributeTransform(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HttpError;->setUrl(Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHttpErrorTrace(Lcom/newrelic/agent/android/harvest/HttpError;)V

    return-void
.end method
