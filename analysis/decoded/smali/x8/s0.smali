.class public final Lx8/s0;
.super Lrd/o;
.source "ShoeControllerUiHelper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lq7/l1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lx8/q0;


# direct methods
.method public constructor <init>(Lx8/q0;)V
    .locals 0

    iput-object p1, p0, Lx8/s0;->h:Lx8/q0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lx8/s0;->h:Lx8/q0;

    .line 2
    iget-boolean v1, v0, Lx8/q0;->k:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v0, v0, Lx8/q0;->c:Lq7/m1;

    .line 4
    iget-object v0, v0, Lq7/m1;->a:Lq7/l1;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lx8/q0;->c:Lq7/m1;

    .line 6
    iget-object v0, v0, Lq7/m1;->b:Lq7/l1;

    :goto_0
    return-object v0
.end method
