.class public final Lxa/c;
.super Ljava/lang/Object;
.source "AdaptKitCurrentConnectionMarshaller.kt"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# direct methods
.method public static final a(Lorg/json/JSONObject;)Lda/b;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "connection"

    .line 1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_1

    const-string v2, "state"

    .line 2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 3
    :goto_1
    invoke-static {}, Lv9/e;->values()[Lv9/e;

    move-result-object v2

    .line 4
    sget-object v3, Lv9/e;->p:Lv9/e;

    .line 5
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_3

    aget-object v7, v2, v6

    .line 6
    iget-object v8, v7, Lv9/e;->h:Ljava/lang/String;

    .line 7
    invoke-static {v8, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object v7, v0

    :goto_3
    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, v7

    .line 8
    :goto_4
    invoke-static {}, Lda/a;->values()[Lda/a;

    move-result-object v1

    .line 9
    sget-object v2, Lda/a;->n:Lda/a;

    .line 10
    array-length v4, v1

    :goto_5
    if-ge v5, v4, :cond_6

    aget-object v6, v1, v5

    .line 11
    iget-object v7, v6, Lda/a;->i:Ljava/lang/String;

    .line 12
    invoke-static {v7, p0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v0, v6

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    :goto_6
    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    move-object v2, v0

    .line 13
    :goto_7
    new-instance p0, Lda/b;

    invoke-direct {p0, v3, v2}, Lda/b;-><init>(Lv9/e;Lda/a;)V

    return-object p0
.end method
