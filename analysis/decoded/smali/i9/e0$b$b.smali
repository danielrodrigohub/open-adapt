.class public final Li9/e0$b$b;
.super Lld/i;
.source "WelcomeOnBoardingFragment.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li9/e0$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nike.adapt.ui.onboarding.WelcomeOnBoardingFragment$onCreate$1$2"
    f = "WelcomeOnBoardingFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic h:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljava/util/List<",
            "Lea/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic i:Li9/e0;


# direct methods
.method public constructor <init>(Lrd/w;Li9/e0;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/w<",
            "Ljava/util/List<",
            "Lea/m;",
            ">;>;",
            "Li9/e0;",
            "Ljd/d<",
            "-",
            "Li9/e0$b$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Li9/e0$b$b;->h:Lrd/w;

    iput-object p2, p0, Li9/e0$b$b;->i:Li9/e0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2
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

    new-instance p1, Li9/e0$b$b;

    iget-object v0, p0, Li9/e0$b$b;->h:Lrd/w;

    iget-object v1, p0, Li9/e0$b$b;->i:Li9/e0;

    invoke-direct {p1, v0, v1, p2}, Li9/e0$b$b;-><init>(Lrd/w;Li9/e0;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Li9/e0$b$b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Li9/e0$b$b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Li9/e0$b$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Li9/e0$b$b;->h:Lrd/w;

    iget-object p1, p1, Lrd/w;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object v0, p0, Li9/e0$b$b;->i:Li9/e0;

    sget v1, Li9/e0;->p0:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, v0, Li9/e0;->n0:I

    .line 5
    invoke-virtual {v0}, Li9/e0;->t0()V

    .line 6
    :cond_1
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
