.class public final Lm9/g0;
.super Landroid/webkit/WebViewClient;
.source "SettingsWebViewActivity.kt"


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lm9/g0;->a:Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v1, "ERR_INTERNET_DISCONNECTED"

    invoke-static {p3, v1}, Lyd/s;->k0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p3, p0, Lm9/g0;->a:Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;

    invoke-virtual {p3}, Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;->m0()Lq7/d0;

    move-result-object p3

    iget-object p3, p3, Lq7/d0;->b:Landroid/widget/FrameLayout;

    const-string v0, "binding.activitySettingsWebViewContainer"

    invoke-static {p3, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lm9/g0;->a:Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;

    .line 4
    iget-object v0, v0, Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;->C:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    .line 5
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "request.url.toString()"

    invoke-static {p2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "coroutineScope"

    .line 6
    invoke-static {v0, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p2, Lu8/r;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, v1}, Lu8/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance v1, Lr9/a;

    new-instance v2, Lu8/s;

    invoke-direct {v2, p2, v0, p1, p3}, Lu8/s;-><init>(Lu8/r;Lkotlinx/coroutines/CoroutineScope;Landroid/webkit/WebView;Landroid/view/ViewGroup;)V

    const/16 p1, 0x1f4

    invoke-direct {v1, v2, p1}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    invoke-virtual {p2, v1}, Lu8/r;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lm9/g0;->a:Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    const-string v1, "request.url"

    invoke-static {p2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;->l0(Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;Landroid/webkit/WebView;Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm9/g0;->a:Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "parse(url)"

    invoke-static {p2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;->l0(Lcom/nike/adapt/ui/settings/SettingsWebViewActivity;Landroid/webkit/WebView;Landroid/net/Uri;)V

    const/4 p1, 0x1

    return p1
.end method
