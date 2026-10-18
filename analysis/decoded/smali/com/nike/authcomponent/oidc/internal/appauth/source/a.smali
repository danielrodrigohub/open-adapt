.class public final Lcom/nike/authcomponent/oidc/internal/appauth/source/a;
.super Ljava/lang/Exception;
.source "AuthorizationException.java"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/authcomponent/oidc/internal/appauth/source/a$a;,
        Lcom/nike/authcomponent/oidc/internal/appauth/source/a$b;
    }
.end annotation


# static fields
.field public static final synthetic m:I


# instance fields
.field public final h:I

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Landroid/net/Uri;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iput p1, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    .line 3
    iput p2, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->i:I

    .line 4
    iput-object p3, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->j:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->k:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->l:Landroid/net/Uri;

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;
    .locals 7

    new-instance v6, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v6
.end method

.method public static b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;
    .locals 7

    new-instance v6, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move v2, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object v6
.end method

.method public static c(Ljava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "jsonStr cannot be null or empty"

    .line 1
    invoke-static {p0, v0}, Landroidx/lifecycle/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const-string v1, "type"

    .line 5
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "code"

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error"

    .line 7
    invoke-static {v0, v1}, Lsb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "errorDescription"

    .line 8
    invoke-static {v0, v1}, Lsb/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "errorUri"

    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :goto_1
    move-object v1, p0

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "field \"errorUri\" is mapped to a null value"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final d()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationException"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget v1, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    const-string v2, "type"

    invoke-static {v0, v2, v1}, Lsb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 3
    iget v1, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->i:I

    const-string v2, "code"

    invoke-static {v0, v2, v1}, Lsb/a;->b(Lorg/json/JSONObject;Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->j:Ljava/lang/String;

    const-string v2, "error"

    invoke-static {v0, v2, v1}, Lsb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->k:Ljava/lang/String;

    const-string v2, "errorDescription"

    invoke-static {v0, v2, v1}, Lsb/a;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errorUri"

    .line 6
    iget-object v2, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->l:Landroid/net/Uri;

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_0
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JSONException thrown in violation of contract"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    instance-of v2, p1, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    .line 3
    iget v2, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    iget v3, p1, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->i:I

    iget p1, p1, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->i:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AuthorizationException: "

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
