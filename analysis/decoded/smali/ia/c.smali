.class public abstract Lia/c;
.super Ljava/lang/Object;
.source "RemoteResponse.kt"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lia/c$f;,
        Lia/c$b;,
        Lia/c$c;,
        Lia/c$d;,
        Lia/c$g;,
        Lia/c$h;,
        Lia/c$a;,
        Lia/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Lv9/g;",
        "Error:",
        "Lv9/f;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lv9/t;->a:Lv9/t;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lv9/a;
    .locals 2

    const-string v0, "identifier"

    .line 1
    invoke-virtual {p0, p1, v0}, Lia/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lv9/a;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    const-string v1, "fromString(it)"

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lv9/a;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lea/b;
    .locals 5

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->f()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lea/m;

    .line 3
    iget-object v4, v3, Lea/m;->k:Lea/b;

    .line 4
    iget-object v4, v4, Lea/b;->j:Ljava/lang/String;

    .line 5
    invoke-static {v4, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6
    iget-object v3, v3, Lea/m;->l:Lea/b;

    .line 7
    iget-object v3, v3, Lea/b;->j:Ljava/lang/String;

    .line 8
    invoke-static {v3, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_0

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    check-cast v1, Lea/m;

    if-eqz v1, :cond_5

    .line 9
    iget-object v0, v1, Lea/m;->k:Lea/b;

    .line 10
    iget-object v0, v0, Lea/b;->j:Ljava/lang/String;

    .line 11
    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, v1, Lea/m;->k:Lea/b;

    goto :goto_3

    .line 13
    :cond_4
    iget-object p1, v1, Lea/m;->l:Lea/b;

    :goto_3
    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    return-object v2
.end method

.method public final c(Lorg/json/JSONObject;)Ljava/lang/Exception;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error_message"

    invoke-virtual {p0, p1, v0}, Lia/c;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/high16 v0, -0x80000000

    .line 1
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public abstract e()I
.end method

.method public final f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g(Landroid/content/Intent;Lv9/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "TError;)V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra_response_type"

    const-string v1, "error"

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    iget-object v1, p2, Lv9/f;->i:Ljava/lang/String;

    const-string v2, "device_id"

    .line 4
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {p2}, Lv9/f;->a()Lv9/a;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lv9/a;->h:Ljava/util/UUID;

    .line 7
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p0, v0, p2}, Lia/c;->h(Lorg/json/JSONObject;Lv9/f;)V

    .line 9
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "extra_json_object"

    .line 10
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public abstract h(Lorg/json/JSONObject;Lv9/f;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TError;)V"
        }
    .end annotation
.end method

.method public final i(Landroid/content/Intent;Lv9/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "TResult;)V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lia/c;->e()I

    move-result v0

    .line 2
    invoke-static {v0}, La4/g;->c(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_remote_response_key"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extra_response_type"

    const-string v1, "result"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v1, p2, Lda/g;->h:Ljava/lang/String;

    const-string v2, "device_id"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p2}, Lv9/g;->a()Lv9/a;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lv9/a;->h:Ljava/util/UUID;

    .line 10
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "identifier"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p0, v0, p2}, Lia/c;->j(Lorg/json/JSONObject;Lv9/g;)V

    .line 12
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "extra_json_object"

    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public abstract j(Lorg/json/JSONObject;Lv9/g;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "TResult;)V"
        }
    .end annotation
.end method

.method public final k(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error_message"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public abstract l(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lv9/a;",
            ")TError;"
        }
    .end annotation
.end method

.method public abstract m(Lorg/json/JSONObject;Ljava/lang/String;Lv9/a;)Lv9/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lv9/a;",
            ")TResult;"
        }
    .end annotation
.end method
