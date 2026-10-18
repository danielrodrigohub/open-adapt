.class public Lcom/newrelic/agent/android/metric/Metric;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.source "Metric.java"


# instance fields
.field private count:J

.field private exclusive:Ljava/lang/Double;

.field private max:Ljava/lang/Double;

.field private min:Ljava/lang/Double;

.field private name:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private sumOfSquares:Ljava/lang/Double;

.field private total:Ljava/lang/Double;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/metric/Metric;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->name:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->scope:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getMin()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    .line 10
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getMax()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    .line 11
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getTotal()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    .line 12
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getSumOfSquares()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    .line 13
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getExclusive()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    .line 14
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getCount()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/newrelic/agent/android/metric/Metric;->scope:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    return-void
.end method


# virtual methods
.method public addExclusive(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    :goto_0
    return-void
.end method

.method public aggregate(Lcom/newrelic/agent/android/metric/Metric;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/metric/Metric;->increment(J)V

    .line 2
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->isCountOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getTotal()D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getTotal()D

    move-result-wide v2

    add-double/2addr v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    .line 4
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getSumOfSquares()D

    move-result-wide v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getSumOfSquares()D

    move-result-wide v2

    add-double/2addr v0, v2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    .line 5
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getExclusive()D

    move-result-wide v0

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getExclusive()D

    move-result-wide v2

    add-double/2addr v0, v2

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    .line 6
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getMin()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/metric/Metric;->setMin(Ljava/lang/Double;)V

    .line 7
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getMax()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/metric/Metric;->setMax(Ljava/lang/Double;)V

    return-void
.end method

.method public asJson()Lcom/newrelic/com/google/gson/JsonElement;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/metric/Metric;->isCountOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v1, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/metric/Metric;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .locals 4

    .line 1
    new-instance v0, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 2
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 3
    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "total"

    invoke-virtual {v0, v2, v1}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 6
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "min"

    invoke-virtual {v0, v2, v1}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    if-eqz v1, :cond_3

    .line 10
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "sum_of_squares"

    invoke-virtual {v0, v2, v1}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    if-eqz v1, :cond_4

    .line 12
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    const-string v2, "exclusive"

    invoke-virtual {v0, v2, v1}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    :cond_4
    return-object v0
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    .line 2
    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    .line 3
    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    .line 4
    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    .line 5
    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    return-void
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    return-wide v0
.end method

.method public getExclusive()D
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getMax()D
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getMin()D
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStringScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->scope:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getSumOfSquares()D
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTotal()D
    .locals 2

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public increment()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/metric/Metric;->increment(J)V

    return-void
.end method

.method public increment(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    return-void
.end method

.method public isCountOnly()Z
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScoped()Z
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->scope:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnscoped()Z
    .locals 1

    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->scope:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sample(D)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    mul-double v0, p1, p1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    .line 6
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    mul-double v2, p1, p1

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    .line 7
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/metric/Metric;->setMin(Ljava/lang/Double;)V

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/metric/Metric;->setMax(Ljava/lang/Double;)V

    return-void
.end method

.method public sampleMetricDataUsage(DD)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    .line 2
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    if-nez p1, :cond_1

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    add-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    :goto_1
    const-wide/16 p1, 0x0

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    iput-object p3, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    iput-object p3, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    return-void
.end method

.method public setCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    return-void
.end method

.method public setExclusive(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    return-void
.end method

.method public setMax(Ljava/lang/Double;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    :cond_2
    :goto_0
    return-void
.end method

.method public setMaxFieldValue(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    return-void
.end method

.method public setMin(Ljava/lang/Double;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    if-nez v0, :cond_1

    .line 2
    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 4
    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    :cond_2
    :goto_0
    return-void
.end method

.method public setMinFieldValue(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->name:Ljava/lang/String;

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->scope:Ljava/lang/String;

    return-void
.end method

.method public setSumOfSquares(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    return-void
.end method

.method public setTotal(Ljava/lang/Double;)V
    .locals 0

    iput-object p1, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Metric{count="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lcom/newrelic/agent/android/metric/Metric;->count:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->total:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->max:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->min:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scope=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->scope:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", name=\'"

    .line 3
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->name:Ljava/lang/String;

    const-string v3, ", exclusive=\'"

    .line 5
    invoke-static {v0, v1, v2, v3}, La1/d;->f(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->exclusive:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sumofsquares=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/newrelic/agent/android/metric/Metric;->sumOfSquares:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
