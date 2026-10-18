.class public final Lo7/a0;
.super Lld/i;
.source "SplashScreenActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
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
    c = "com.nike.adapt.SplashScreenActivity$getNextActivity$1"
    f = "SplashScreenActivity.kt"
    l = {
        0xa8,
        0xac
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/SplashScreenActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/SplashScreenActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/SplashScreenActivity;",
            "Ljd/d<",
            "-",
            "Lo7/a0;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 1
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

    new-instance p1, Lo7/a0;

    iget-object v0, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;

    invoke-direct {p1, v0, p2}, Lo7/a0;-><init>(Lcom/nike/adapt/SplashScreenActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lo7/a0;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lo7/a0;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lo7/a0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    # Open Adapt: preserve actual local pairs; do not require Nike OAuth.
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    iget-object v0, p0, Lo7/a0;->i:Lcom/nike/adapt/SplashScreenActivity;
    invoke-static {v0}, Lcom/openadapt/OfflinePairs;->route(Landroid/app/Activity;)V
    sget-object v0, Lfd/o;->a:Lfd/o;
    return-object v0
.end method
