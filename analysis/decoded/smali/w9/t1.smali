.class public final Lw9/t1;
.super Lld/i;
.source "AdaptKitPairDevicesController.kt"

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
        "Lba/e;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$syncBatteryCheck$2"
    f = "AdaptKitPairDevicesController.kt"
    l = {
        0x8ac
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lrd/w;

.field public i:Lya/b;

.field public j:I

.field public final synthetic k:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Lv9/i;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic l:Lya/b;


# direct methods
.method public constructor <init>(Lrd/w;Lya/b;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/w<",
            "Lv9/i;",
            ">;",
            "Lya/b;",
            "Ljd/d<",
            "-",
            "Lw9/t1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/t1;->k:Lrd/w;

    iput-object p2, p0, Lw9/t1;->l:Lya/b;

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

    new-instance p1, Lw9/t1;

    iget-object v0, p0, Lw9/t1;->k:Lrd/w;

    iget-object v1, p0, Lw9/t1;->l:Lya/b;

    invoke-direct {p1, v0, v1, p2}, Lw9/t1;-><init>(Lrd/w;Lya/b;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lw9/t1;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lw9/t1;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lw9/t1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lw9/t1;->j:I

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
    iget-object p1, p0, Lw9/t1;->k:Lrd/w;

    iget-object v1, p0, Lw9/t1;->l:Lya/b;

    iput-object p1, p0, Lw9/t1;->h:Lrd/w;

    iput-object v1, p0, Lw9/t1;->i:Lya/b;

    iput v2, p0, Lw9/t1;->j:I

    new-instance v2, Ljd/i;

    invoke-static {p0}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object v3

    invoke-direct {v2, v3}, Ljd/i;-><init>(Ljd/d;)V

    .line 5
    new-instance v3, Lv9/a;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    const-string v5, "randomUUID()"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lv9/a;-><init>(Ljava/util/UUID;)V

    .line 6
    new-instance v4, Lw9/t1$a;

    invoke-direct {v4, v3, v2}, Lw9/t1$a;-><init>(Lv9/a;Ljd/d;)V

    const/4 v5, 0x0

    .line 7
    new-instance v6, Lv9/i;

    invoke-direct {v6, v5}, Lv9/i;-><init>(Z)V

    invoke-virtual {v4, v6}, Lw9/t1$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v1, v6}, Lya/b;->B(Lv9/p0;)V

    .line 9
    iput-object v6, p1, Lrd/w;->h:Ljava/lang/Object;

    .line 10
    invoke-interface {v1, v3}, Lya/b;->c(Lv9/a;)V

    .line 11
    invoke-virtual {v2}, Ljd/i;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
