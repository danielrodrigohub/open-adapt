.class public final synthetic Lcc/b;
.super Lrd/m;
.source "OIDCRepositoryImpl.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/m;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcc/e;)V
    .locals 7

    const-class v3, Lcc/e;

    const/4 v1, 0x0

    const-string v4, "onStackNotMatching"

    const-string v5, "onStackNotMatching()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lrd/m;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lrd/d;->receiver:Ljava/lang/Object;

    check-cast v0, Lcc/e;

    .line 2
    iget-object v1, v0, Lcc/e;->c:Lpb/d;

    invoke-interface {v1}, Lpb/d;->e()V

    .line 3
    iget-object v2, v0, Lcc/e;->e:Lkotlinx/coroutines/CoroutineScope;

    iget-object v3, v0, Lcc/e;->d:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v5, Lcc/f;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcc/f;-><init>(Lcc/e;Ljd/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 4
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
