.class public final Lw9/x$v;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->I(Lfa/j;Lw9/a;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lw9/x;

.field public final synthetic i:Lw9/a;


# direct methods
.method public constructor <init>(Lw9/x;Lw9/a;)V
    .locals 0

    iput-object p1, p0, Lw9/x$v;->h:Lw9/x;

    iput-object p2, p0, Lw9/x$v;->i:Lw9/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lw9/x$v;->h:Lw9/x;

    .line 2
    iget-object v1, v0, Lw9/x;->j:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Lw9/m0;

    iget-object v5, p0, Lw9/x$v;->i:Lw9/a;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v5, v6}, Lw9/m0;-><init>(Lw9/x;Lw9/a;Ljd/d;)V

    const/4 v5, 0x3

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 4
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
