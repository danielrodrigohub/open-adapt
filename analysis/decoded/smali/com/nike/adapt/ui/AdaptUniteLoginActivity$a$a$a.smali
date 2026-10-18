.class public final Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;
.super Lld/i;
.source "AdaptUniteLoginActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lob/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.AdaptUniteLoginActivity$onCreate$1$1$1$1"
    f = "AdaptUniteLoginActivity.kt"
    l = {
        0x20
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/AdaptUniteLoginActivity;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;->i:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

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

    new-instance p1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;

    iget-object v0, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;->i:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    invoke-direct {p1, v0, p2}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;-><init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    sget-object p1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {p1}, Lcom/nike/adapt/BigfootApplication$e;->c()Lg8/a;

    move-result-object p1

    iget-object v1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;->i:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    iput v2, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;->h:I

    .line 2
    iget-object p1, p1, Lg8/a;->f:Lpb/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Lpb/a;

    invoke-direct {v2, p1}, Lpb/a;-><init>(Lpb/b;)V

    .line 4
    invoke-virtual {v2, v1, p0}, Lpb/a;->a(Landroidx/fragment/app/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
