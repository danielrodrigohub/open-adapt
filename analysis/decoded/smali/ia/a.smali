.class public abstract Lia/a;
.super Ljava/lang/Object;
.source "RemoteRequest.kt"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lia/a$d;,
        Lia/a$e;,
        Lia/a$f;,
        Lia/a$b;,
        Lia/a$a;,
        Lia/a$c;,
        Lia/a$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<IncomingRequestValue:",
        "Ljava/lang/Object;",
        "IncomingResult:",
        "Lv9/g;",
        "OutgoingResultResponse:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Lv9/g;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIncomingResult;)TOutgoingResultResponse;"
        }
    .end annotation
.end method

.method public final c(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra_error_outgoing_key"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract d(Ljava/lang/Object;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TIncomingRequestValue;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method

.method public final e(Landroid/content/Intent;Lea/m;Lw9/u1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lea/m;",
            "Lw9/u1;",
            "TIncomingRequestValue;)V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitPairedDevices"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shoe"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lia/a;->a()I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/nike/adapt/adk/model/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "param_remote_package_key"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p4}, Lia/a;->d(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p4

    instance-of v0, p4, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p4

    :goto_0
    const-string v0, "param_request_incoming_key"

    .line 5
    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    iget-object p2, p2, Lea/m;->h:Ljava/lang/String;

    const-string p4, "param_pair_id"

    .line 7
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    sget-object p2, Lia/a$g;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    const-string p2, "l"

    goto :goto_1

    :cond_1
    const-string p2, "r"

    :goto_1
    const-string p3, "param_shoe"

    .line 9
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public abstract f(Ljava/lang/Object;)Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutgoingResultResponse;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation
.end method

.method public final g(Landroid/os/Bundle;Lv9/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "TIncomingResult;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lia/a;->b(Lv9/g;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Lia/a;->f(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    instance-of v0, p2, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string v0, "param_result_outgoing_key"

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final h(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra_error_outgoing_key"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TIncomingRequestValue;"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param_request_incoming_key"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lia/a;->j(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public abstract j(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TIncomingRequestValue;"
        }
    .end annotation
.end method

.method public abstract k(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TOutgoingResultResponse;"
        }
    .end annotation
.end method

.method public final l(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")TOutgoingResultResponse;"
        }
    .end annotation

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "param_result_outgoing_key"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 3
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lia/a;->k(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method
