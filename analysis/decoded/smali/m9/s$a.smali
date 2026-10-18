.class public final Lm9/s$a;
.super Lld/i;
.source "FirmwareUpdateCompleteFragment.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm9/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.nike.adapt.ui.settings.FirmwareUpdateCompleteFragment$onCreateView$1$1$1$1"
    f = "FirmwareUpdateCompleteFragment.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I


# direct methods
.method public constructor <init>(Ljd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lm9/s$a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 0
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

    new-instance p1, Lm9/s$a;

    invoke-direct {p1, p2}, Lm9/s$a;-><init>(Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    .line 1
    new-instance p1, Lm9/s$a;

    invoke-direct {p1, p2}, Lm9/s$a;-><init>(Ljd/d;)V

    .line 2
    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lm9/s$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lm9/s$a;->h:I

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
    sget p1, Lo7/n;->a:I

    const-wide/16 v3, 0x64

    .line 5
    iput v2, p0, Lm9/s$a;->h:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "FirmwareUpdateCrumb Pressed: Got It : FW_STATS"

    invoke-virtual {p1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 7
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setHasShoeUpdates(Z)V

    .line 8
    sget-object p1, Lcom/nike/adapt/ui/AdaptRestartActivity;->A:Lcom/nike/adapt/ui/AdaptRestartActivity$a;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Lcom/nike/adapt/ui/AdaptRestartActivity$a;->a(ZJ)V

    .line 9
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
