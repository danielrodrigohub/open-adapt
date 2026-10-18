.class public final Lzb/b;
.super Ljava/lang/Object;
.source "OIDCAuthBrowser.kt"

# interfaces
.implements Lzb/a;


# instance fields
.field public final a:Lob/a;

.field public b:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lob/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzb/b;->a:Lob/a;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lzb/b;->b:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 2
    sget-object v0, Lub/a;->Companion:Lub/a$a;

    iget-object v1, p0, Lzb/b;->a:Lob/a;

    .line 3
    iget-object v1, v1, Lob/a;->a:Lob/a$a;

    .line 4
    invoke-interface {v1}, Lob/a$a;->f()Led/e;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sput-object v1, Lub/a;->a:Led/e;

    .line 6
    iget-object v0, p0, Lzb/b;->a:Lob/a;

    .line 7
    iget-object v0, v0, Lob/a;->a:Lob/a$a;

    .line 8
    invoke-interface {v0}, Lob/a$a;->c()Landroid/app/Application;

    move-result-object v0

    .line 9
    invoke-static {v0}, Ltb/b;->a(Landroid/content/Context;)Ltb/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Ltb/a;->d:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Lzb/b;->a:Lob/a;

    .line 12
    iget-object v1, v1, Lob/a;->a:Lob/a$a;

    .line 13
    invoke-interface {v1}, Lob/a$a;->c()Landroid/app/Application;

    move-result-object v1

    .line 14
    new-instance v2, Ltb/c;

    invoke-direct {v2, v1}, Ltb/c;-><init>(Landroid/content/Context;)V

    .line 15
    iget-object v0, v0, Ltb/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ltb/c;->a(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lzb/b;->a:Lob/a;

    .line 17
    iget-object v0, v0, Lob/a;->b:Lob/a$b;

    .line 18
    invoke-interface {v0}, Lob/a$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "parse(configuration.settings.baseUrl)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0}, Lzb/c;->a(Ltb/c;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 19
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    :goto_1
    iput-object v0, p0, Lzb/b;->b:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Landroidx/fragment/app/p;Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;Lbc/a;Lzd/a;Ljd/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/p;",
            "Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;",
            "Lbc/a;",
            "Lzd/a;",
            "Ljd/d<",
            "-",
            "Landroidx/activity/result/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lzb/b;->a()V

    .line 2
    invoke-virtual {p2}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;->getAuthorization_endpoint()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lzb/b;->a:Lob/a;

    .line 4
    iget-object v0, v0, Lob/a;->b:Lob/a$b;

    .line 5
    invoke-interface {v0}, Lob/a$b;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "redirect_uri"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lzb/b;->a:Lob/a;

    .line 7
    iget-object v0, v0, Lob/a;->b:Lob/a$b;

    .line 8
    invoke-interface {v0}, Lob/a$b;->e()V

    const-string v0, "client_id"

    const-string v1, "5049d3b1ed877abc784ac3233c0cf83"

    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "response_type"

    const-string v1, "code"

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 10
    iget-object v0, p3, Lbc/a;->b:Ljava/lang/String;

    const-string v1, "code_challenge"

    .line 11
    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 12
    iget-object p3, p3, Lbc/a;->c:Ljava/lang/String;

    const-string v0, "code_challenge_method"

    .line 13
    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 14
    invoke-virtual {p0}, Lzb/b;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "state"

    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 15
    invoke-virtual {p0}, Lzb/b;->c()Ljava/lang/String;

    move-result-object p3

    const-string v0, "nonce"

    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 16
    iget-object p3, p0, Lzb/b;->a:Lob/a;

    .line 17
    iget-object p3, p3, Lob/a;->b:Lob/a$b;

    .line 18
    invoke-interface {p3}, Lob/a$b;->d()Ljava/util/List;

    move-result-object v0

    const-string v1, " "

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lgd/n;->d0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lqd/l;I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "scope"

    invoke-virtual {p2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "parse(authorization_endpoint).buildUpon()\n            .appendQueryParameter(\"redirect_uri\", configuration.settings.redirectURI.toString())\n            .appendQueryParameter(\"client_id\", configuration.settings.clientID)\n            .appendQueryParameter(\"response_type\", \"code\")\n            .appendQueryParameter(\"code_challenge\", pkce.challenge)\n            .appendQueryParameter(\"code_challenge_method\", pkce.challengeMethod)\n            .appendQueryParameter(\"state\", generateRandomState())\n            .appendQueryParameter(\"nonce\", generateRandomState())\n            .appendQueryParameter(\"scope\", configuration.settings.scopes.joinToString(\" \"))"

    invoke-static {p2, p3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    iget-wide p3, p4, Lzd/a;->h:J

    .line 20
    invoke-static {p3, p4}, Lzd/a;->i(J)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "max_age"

    invoke-virtual {p2, p4, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 21
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "uriBuilder.build()"

    invoke-static {p2, p3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p3, p0, Lzb/b;->b:Landroid/content/Intent;

    const-string p4, "customTabsIntent"

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 23
    invoke-virtual {p3, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 24
    iget-object p2, p0, Lzb/b;->b:Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 25
    sget p3, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->j:I

    .line 26
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p4, "authIntent"

    .line 27
    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    invoke-static {p1, p3, p5}, Lzb/c;->b(Landroidx/fragment/app/p;Landroid/content/Intent;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_1
    invoke-static {p4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    invoke-static {p4}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0xb

    .line 3
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "encodeToString(\n            random,\n            Base64.NO_WRAP or Base64.NO_PADDING or Base64.URL_SAFE\n        )"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
