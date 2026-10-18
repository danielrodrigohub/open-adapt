.class public final synthetic Lu8/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Lu8/r;

.field public final synthetic i:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic j:Landroid/webkit/WebView;

.field public final synthetic k:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Lu8/r;Lkotlinx/coroutines/CoroutineScope;Landroid/webkit/WebView;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/s;->h:Lu8/r;

    iput-object p2, p0, Lu8/s;->i:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lu8/s;->j:Landroid/webkit/WebView;

    iput-object p4, p0, Lu8/s;->k:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lu8/s;->h:Lu8/r;

    iget-object v0, p0, Lu8/s;->i:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lu8/s;->j:Landroid/webkit/WebView;

    iget-object v2, p0, Lu8/s;->k:Landroid/view/ViewGroup;

    const-string v3, "$noInternet"

    .line 1
    invoke-static {p1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$coroutineScope"

    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$webView"

    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this_showNoInternetWebView"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v3, Lo7/x;->a:Lo7/x;

    const-string v4, "Pressed: Try Again"

    invoke-virtual {v3, v4}, Lo7/x;->a(Ljava/lang/String;)V

    const v3, 0x7f0a0485

    .line 3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 4
    new-instance v3, Lu8/t;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v1, v2, v4}, Lu8/t;-><init>(Lu8/r;Landroid/webkit/WebView;Landroid/view/ViewGroup;Ljd/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
