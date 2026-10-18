.class public final Lwa/b;
.super Lwa/a;
.source "AdaptKitCurrentStateBroadcastReceiver.kt"


# static fields
.field public static final h:Lwa/b;

.field public static final i:Lxa/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwa/b;

    invoke-direct {v0}, Lwa/b;-><init>()V

    sput-object v0, Lwa/b;->h:Lwa/b;

    sget-object v0, Lxa/b;->a:Lxa/b;

    sput-object v0, Lwa/b;->i:Lxa/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwa/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 9

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lea/m;

    .line 4
    iget-object v6, v5, Lea/m;->k:Lea/b;

    .line 5
    iget-object v6, v6, Lea/b;->j:Ljava/lang/String;

    .line 6
    sget-object v7, Lwa/b;->h:Lwa/b;

    invoke-virtual {v7}, Lwa/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    iget-object v5, v5, Lea/m;->l:Lea/b;

    .line 8
    iget-object v5, v5, Lea/b;->j:Ljava/lang/String;

    .line 9
    invoke-virtual {v7}, Lwa/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_c

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Lea/m;

    .line 14
    new-instance v5, Lv9/l;

    invoke-direct {v5, v2}, Lv9/l;-><init>(Lea/m;)V

    invoke-virtual {v5}, Lv9/l;->a()Lda/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_2

    .line 17
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    move-object v5, v1

    check-cast v5, Lda/f;

    .line 20
    iget-object v6, v5, Lda/f;->h:Lda/b;

    .line 21
    iget-object v6, v6, Lda/b;->i:Lda/a;

    .line 22
    iget v6, v6, Lda/a;->h:I

    .line 23
    invoke-static {v6}, Lda/c;->a(I)I

    move-result v6

    .line 24
    iget-object v5, v5, Lda/f;->i:Lda/b;

    .line 25
    iget-object v5, v5, Lda/b;->i:Lda/a;

    .line 26
    iget v5, v5, Lda/a;->h:I

    .line 27
    invoke-static {v5}, Lda/c;->a(I)I

    move-result v5

    .line 28
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 29
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 30
    move-object v7, v6

    check-cast v7, Lda/f;

    .line 31
    iget-object v8, v7, Lda/f;->h:Lda/b;

    .line 32
    iget-object v8, v8, Lda/b;->i:Lda/a;

    .line 33
    iget v8, v8, Lda/a;->h:I

    .line 34
    invoke-static {v8}, Lda/c;->a(I)I

    move-result v8

    .line 35
    iget-object v7, v7, Lda/f;->i:Lda/b;

    .line 36
    iget-object v7, v7, Lda/b;->i:Lda/a;

    .line 37
    iget v7, v7, Lda/a;->h:I

    .line 38
    invoke-static {v7}, Lda/c;->a(I)I

    move-result v7

    .line 39
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-ge v5, v7, :cond_8

    move-object v1, v6

    move v5, v7

    .line 40
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 41
    :goto_2
    check-cast v1, Lda/f;

    if-eqz v1, :cond_c

    .line 42
    sget-object v0, Lwa/b;->i:Lxa/b;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    iget-object v5, p0, Lwa/a;->a:Ljava/lang/String;

    const-string v6, "applicationId"

    if-eqz v5, :cond_b

    const-string v7, "EXTRA_CONNECTION_APPLICATION_IDS"

    .line 45
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 46
    invoke-static {v8}, Lgd/i;->w([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 47
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v3, [Ljava/lang/String;

    .line 48
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/String;

    goto :goto_3

    :cond_9
    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v3

    move-object v3, v4

    .line 49
    :goto_3
    invoke-virtual {v0, v7, v3}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    iget-object v3, p0, Lwa/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 54
    iget-object v5, v1, Lda/f;->h:Lda/b;

    .line 55
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 56
    iget-object v7, v5, Lda/b;->h:Lv9/e;

    .line 57
    iget-object v7, v7, Lv9/e;->h:Ljava/lang/String;

    const-string v8, "connection"

    .line 58
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v5, v5, Lda/b;->i:Lda/a;

    .line 60
    iget-object v5, v5, Lda/a;->i:Ljava/lang/String;

    const-string v7, "state"

    .line 61
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "left"

    .line 62
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v1, v1, Lda/f;->i:Lda/b;

    .line 64
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 65
    iget-object v6, v1, Lda/b;->h:Lv9/e;

    .line 66
    iget-object v6, v6, Lv9/e;->h:Ljava/lang/String;

    .line 67
    invoke-virtual {v5, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object v1, v1, Lda/b;->i:Lda/a;

    .line 69
    iget-object v1, v1, Lda/a;->i:Ljava/lang/String;

    .line 70
    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "right"

    .line 71
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "JSONObject().apply {\n   \u2026ht))\n        }.toString()"

    invoke-static {v1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "EXTRA_REQUEST_CURRENT_CONNECTION"

    .line 73
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v1, Lwa/d;->h:Lwa/d;

    .line 75
    iget-object v1, v1, Lwa/a;->e:Ljava/lang/String;

    const-string v4, "EXTRA_CONTROLLER_RECEIVER_ACTION_TOKEN"

    .line 76
    invoke-virtual {v2, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    .line 78
    :cond_a
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_b
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_c
    :goto_4
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.nike.android.adaptkit.ACTION_ADAPT_KIT_CONNECTION_STATE"

    return-object v0
.end method
