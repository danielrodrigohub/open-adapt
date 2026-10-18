.class public final Lw9/x$u;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->p(Lw9/a;Lqd/l;)V
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

    iput-object p1, p0, Lw9/x$u;->h:Lw9/x;

    iput-object p2, p0, Lw9/x$u;->i:Lw9/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lw9/x$u;->h:Lw9/x;

    .line 2
    invoke-virtual {v0}, Lw9/x;->A0()Lya/b;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lw9/x;->v0(Lw9/x;Lya/b;)V

    .line 4
    iget-object v0, p0, Lw9/x$u;->h:Lw9/x;

    .line 5
    invoke-virtual {v0}, Lw9/x;->B0()Lya/b;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Lw9/x;->v0(Lw9/x;Lya/b;)V

    .line 7
    iget-object v0, p0, Lw9/x$u;->h:Lw9/x;

    iget-object v1, p0, Lw9/x$u;->i:Lw9/a;

    invoke-virtual {v0, v1}, Lw9/x;->f(Lw9/a;)V

    .line 8
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
