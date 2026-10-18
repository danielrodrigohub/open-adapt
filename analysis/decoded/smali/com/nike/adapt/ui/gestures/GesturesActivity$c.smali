.class public final Lcom/nike/adapt/ui/gestures/GesturesActivity$c;
.super Lld/i;
.source "GesturesActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/gestures/GesturesActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
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
    c = "com.nike.adapt.ui.gestures.GesturesActivity$onCheckedChanged$1"
    f = "GesturesActivity.kt"
    l = {
        0xc1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/gestures/GesturesActivity;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/gestures/GesturesActivity;ZLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/gestures/GesturesActivity;",
            "Z",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/gestures/GesturesActivity$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->i:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    iput-boolean p2, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->j:Z

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

    new-instance p1, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->i:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    iget-boolean v1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->j:Z

    invoke-direct {p1, v0, v1, p2}, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;-><init>(Lcom/nike/adapt/ui/gestures/GesturesActivity;ZLjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->h:I

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

    new-instance v1, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;

    iget-object v3, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->i:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    iget-boolean v4, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->j:Z

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;-><init>(Lcom/nike/adapt/ui/gestures/GesturesActivity;ZLjd/d;)V

    iput v2, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->h:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
