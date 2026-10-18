.class Lcom/newrelic/agent/android/AndroidAgentImpl$1;
.super Ljava/lang/Object;
.source "AndroidAgentImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/AndroidAgentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/newrelic/agent/android/api/common/TransactionData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/newrelic/agent/android/api/common/TransactionData;Lcom/newrelic/agent/android/api/common/TransactionData;)I
    .locals 4

    .line 2
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/newrelic/agent/android/api/common/TransactionData;

    check-cast p2, Lcom/newrelic/agent/android/api/common/TransactionData;

    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/AndroidAgentImpl$1;->compare(Lcom/newrelic/agent/android/api/common/TransactionData;Lcom/newrelic/agent/android/api/common/TransactionData;)I

    move-result p1

    return p1
.end method
