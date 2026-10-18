.class public final Lwa/c;
.super Lwa/a;
.source "AdaptKitProduceResultOrErrorReceiver.kt"


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Lqd/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/p<",
            "Lv9/g;",
            "Lv9/f;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lqd/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lqd/p<",
            "-",
            "Lv9/g;",
            "-",
            "Lv9/f;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "receiverDeviceId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lwa/a;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/c;->h:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lwa/c;->i:Lqd/p;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 10

    .line 1
    iget-object v0, p0, Lwa/a;->c:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3
    iget-object v2, p0, Lwa/c;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lwa/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "extra_remote_response_key"

    .line 4
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, La4/g;->b()[I

    move-result-object v4

    .line 6
    array-length v5, v4

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    .line 7
    invoke-static {v7}, La4/g;->c(I)Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-static {v8, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v3, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v3, :cond_2

    const/4 v2, -0x1

    goto :goto_2

    .line 9
    :cond_2
    sget-object v2, Lia/d;->a:[I

    invoke-static {v3}, Lq/g;->a(I)I

    move-result v3

    aget v2, v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 10
    :pswitch_0
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :pswitch_1
    sget-object v2, Lia/c$a;->a:Lia/c$a;

    goto :goto_3

    .line 11
    :pswitch_2
    sget-object v2, Lia/c$g;->a:Lia/c$g;

    goto :goto_3

    .line 12
    :pswitch_3
    sget-object v2, Lia/c$h;->a:Lia/c$h;

    goto :goto_3

    .line 13
    :pswitch_4
    sget-object v2, Lia/c$d;->a:Lia/c$d;

    goto :goto_3

    .line 14
    :pswitch_5
    sget-object v2, Lia/c$f;->a:Lia/c$f;

    goto :goto_3

    .line 15
    :pswitch_6
    sget-object v2, Lia/c$c;->a:Lia/c$c;

    goto :goto_3

    .line 16
    :pswitch_7
    sget-object v2, Lia/c$b;->a:Lia/c$b;

    goto :goto_3

    .line 17
    :pswitch_8
    sget-object v2, Lia/c$e;->a:Lia/c$e;

    goto :goto_3

    :pswitch_9
    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_7

    .line 18
    iget-object v3, p0, Lwa/c;->i:Lqd/p;

    const-string v4, "extra_response_type"

    .line 19
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "result"

    invoke-static {v5, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "device_id"

    const-string v7, "extra_json_object"

    if-eqz v5, :cond_4

    .line 20
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_4

    .line 21
    :cond_3
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2, v8, v6}, Lia/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    invoke-virtual {v2, v8}, Lia/c;->a(Lorg/json/JSONObject;)Lv9/a;

    move-result-object v9

    if-eqz v5, :cond_4

    if-eqz v9, :cond_4

    .line 24
    invoke-virtual {v2, v8, v5, v9}, Lia/c;->m(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/g;

    move-result-object v5

    goto :goto_5

    :cond_4
    :goto_4
    move-object v5, v1

    .line 25
    :goto_5
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "error"

    invoke-static {v4, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 26
    invoke-virtual {v0, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_6

    .line 27
    :cond_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v2, v4, v6}, Lia/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v2, v4}, Lia/c;->a(Lorg/json/JSONObject;)Lv9/a;

    move-result-object v6

    if-eqz v0, :cond_6

    if-eqz v6, :cond_6

    .line 30
    invoke-virtual {v2, v4, v0, v6}, Lia/c;->l(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/f;

    move-result-object v1

    .line 31
    :cond_6
    :goto_6
    invoke-interface {v3, v5, v1}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    const-string v0, "intent"

    .line 32
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.nike.android.adaptkit.ACTION_ADAPT_KIT_DEVICE_NOTIFICATION"

    return-object v0
.end method
