.class Lcom/newrelic/agent/android/MeasurementEngine$1;
.super Ljava/lang/Object;
.source "MeasurementEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newrelic/agent/android/MeasurementEngine;->startActivity(Ljava/lang/String;)Lcom/newrelic/agent/android/activity/MeasuredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/newrelic/agent/android/MeasurementEngine;

.field public final synthetic val$activity:Lcom/newrelic/agent/android/activity/NamedActivity;

.field public final synthetic val$measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/MeasurementEngine;Lcom/newrelic/agent/android/activity/NamedActivity;Lcom/newrelic/agent/android/measurement/MeasurementPool;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/MeasurementEngine$1;->this$0:Lcom/newrelic/agent/android/MeasurementEngine;

    iput-object p2, p0, Lcom/newrelic/agent/android/MeasurementEngine$1;->val$activity:Lcom/newrelic/agent/android/activity/NamedActivity;

    iput-object p3, p0, Lcom/newrelic/agent/android/MeasurementEngine$1;->val$measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine$1;->val$activity:Lcom/newrelic/agent/android/activity/NamedActivity;

    iget-object v1, p0, Lcom/newrelic/agent/android/MeasurementEngine$1;->val$measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->setMeasurementPool(Lcom/newrelic/agent/android/measurement/MeasurementPool;)V

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/MeasurementEngine$1;->this$0:Lcom/newrelic/agent/android/MeasurementEngine;

    iget-object v0, v0, Lcom/newrelic/agent/android/MeasurementEngine;->rootMeasurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    iget-object v1, p0, Lcom/newrelic/agent/android/MeasurementEngine$1;->val$measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/measurement/MeasurementPool;->addMeasurementConsumer(Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;)V

    return-void
.end method
