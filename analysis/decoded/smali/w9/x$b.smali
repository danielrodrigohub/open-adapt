.class public final Lw9/x$b;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->G0(Lea/m;)V
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


# direct methods
.method public constructor <init>(Lw9/x;)V
    .locals 0

    iput-object p1, p0, Lw9/x$b;->h:Lw9/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lw9/x$b;->h:Lw9/x;

    .line 2
    iget-object v0, v0, Lw9/x;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    new-array v2, v1, [Lqd/l;

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lw9/x$b;->h:Lw9/x;

    .line 5
    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    check-cast v4, Lqd/l;

    .line 6
    iget-object v5, v2, Lw9/x;->l:Lea/m;

    .line 7
    invoke-interface {v4, v5}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
