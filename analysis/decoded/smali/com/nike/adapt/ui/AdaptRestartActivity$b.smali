.class public final Lcom/nike/adapt/ui/AdaptRestartActivity$b;
.super Lld/i;
.source "AdaptRestartActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/AdaptRestartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.AdaptRestartActivity$onCreate$1"
    f = "AdaptRestartActivity.kt"
    l = {
        0x24
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/AdaptRestartActivity;

.field public final synthetic j:Z

.field public final synthetic k:J


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/AdaptRestartActivity;ZJLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/AdaptRestartActivity;",
            "ZJ",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/AdaptRestartActivity$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->i:Lcom/nike/adapt/ui/AdaptRestartActivity;

    iput-boolean p2, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->j:Z

    iput-wide p3, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->k:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/nike/adapt/ui/AdaptRestartActivity$b;

    iget-object v1, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->i:Lcom/nike/adapt/ui/AdaptRestartActivity;

    iget-boolean v2, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->j:Z

    iget-wide v3, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->k:J

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nike/adapt/ui/AdaptRestartActivity$b;-><init>(Lcom/nike/adapt/ui/AdaptRestartActivity;ZJLjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/AdaptRestartActivity$b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/nike/adapt/ui/AdaptRestartActivity$b$a;

    iget-wide v3, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->k:J

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/nike/adapt/ui/AdaptRestartActivity$b$a;-><init>(JLjd/d;)V

    iput v2, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->h:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->i:Lcom/nike/adapt/ui/AdaptRestartActivity;

    sget v0, Lo7/n;->a:I

    iget-boolean v0, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->j:Z

    .line 6
    const-class v1, Lcom/nike/adapt/JordanLauncherAlias;

    const-class v3, Lcom/nike/adapt/SplashScreenActivity;

    sget-object v4, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v4}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 8
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/nike/adapt/ui/LoginActivity;

    invoke-direct {v8, v4, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v4, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v9

    if-eq v9, v2, :cond_5

    .line 12
    new-instance v9, Landroid/content/ComponentName;

    invoke-direct {v9, v4, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v4, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    if-ne v1, v2, :cond_4

    move-object v6, v7

    goto :goto_1

    :cond_4
    move-object v6, v8

    :cond_5
    :goto_1
    const-string v1, "PARAM_SPLASH_SCREEN_SHOW"

    .line 14
    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "if (packageManager.getCo\u2026_SCREEN_SHOW, showSplash)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    iget-object p1, p0, Lcom/nike/adapt/ui/AdaptRestartActivity$b;->i:Lcom/nike/adapt/ui/AdaptRestartActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 17
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exit(I)V

    .line 18
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
