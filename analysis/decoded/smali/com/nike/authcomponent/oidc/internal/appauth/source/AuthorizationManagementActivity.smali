.class public Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;
.super Landroid/app/Activity;
.source "AuthorizationManagementActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final synthetic j:I


# instance fields
.field public h:Z

.field public i:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->h:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "No stored state - unable to handle response"

    .line 1
    invoke-static {p1}, Lub/a;->a(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "authIntent"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->i:Landroid/content/Intent;

    const/4 v0, 0x0

    const-string v1, "authStarted"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->h:Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "AuthorizationManagementActivity#onCreate"

    const-string v1, "AuthorizationManagementActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    const/4 v1, 0x0

    :catch_0
    :try_start_0
    invoke-static {v1, v0, v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->a(Landroid/os/Bundle;)V

    .line 4
    :goto_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onResume()V
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    iget-boolean v0, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->h:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->i:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->h:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 5
    :catch_0
    sget-object v0, Lub/a;->Companion:Lub/a$a;

    const-string v2, "Authorization flow canceled due to missing browser"

    invoke-virtual {v0, v2}, Lub/a$a;->a(Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a$b;->b:Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    .line 7
    new-instance v8, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    iget v3, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    iget v4, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->i:I

    iget-object v5, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->j:Ljava/lang/String;

    iget-object v6, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->k:Ljava/lang/String;

    iget-object v7, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->l:Landroid/net/Uri;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {v8}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->d()Landroid/content/Intent;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_3

    .line 13
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    const-string v2, "error"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    sget v1, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->m:I

    .line 15
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "error_description"

    .line 16
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "error_uri"

    .line 17
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    sget-object v3, Lcom/nike/authcomponent/oidc/internal/appauth/source/a$a;->b:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    sget-object v3, Lcom/nike/authcomponent/oidc/internal/appauth/source/a$a;->a:Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    .line 20
    :goto_0
    new-instance v9, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    iget v4, v3, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    iget v5, v3, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->i:I

    if-eqz v1, :cond_3

    goto :goto_1

    .line 21
    :cond_3
    iget-object v1, v3, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->k:Ljava/lang/String;

    :goto_1
    move-object v7, v1

    if-eqz v2, :cond_4

    .line 22
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v1, v3, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->l:Landroid/net/Uri;

    :goto_2
    move-object v8, v1

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 23
    invoke-virtual {v9}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->d()Landroid/content/Intent;

    move-result-object v1

    goto :goto_3

    .line 24
    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationResponse"

    .line 25
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_3
    if-nez v1, :cond_6

    .line 26
    sget-object v0, Lub/a;->Companion:Lub/a$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error: "

    const-string v2, "Failed to extract OAuth2 response from redirect"

    .line 27
    invoke-static {v1, v2}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lub/a$a;->a(Ljava/lang/String;)V

    goto :goto_4

    .line 28
    :cond_6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 29
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_4

    .line 30
    :cond_7
    sget-object v0, Lub/a;->Companion:Lub/a$a;

    const-string v2, "Authorization flow canceled by user"

    invoke-virtual {v0, v2}, Lub/a$a;->a(Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a$b;->a:Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    .line 32
    new-instance v8, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    iget v3, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->h:I

    iget v4, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->i:I

    iget-object v5, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->j:Ljava/lang/String;

    iget-object v6, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->k:Ljava/lang/String;

    iget-object v7, v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->l:Landroid/net/Uri;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    invoke-virtual {v8}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->d()Landroid/content/Intent;

    move-result-object v0

    .line 34
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 35
    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-boolean v0, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->h:Z

    const-string v1, "authStarted"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/appauth/source/AuthorizationManagementActivity;->i:Landroid/content/Intent;

    const-string v1, "authIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
