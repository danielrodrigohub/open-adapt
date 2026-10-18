.class public final Lw9/c1;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv9/o;

.field public final synthetic i:Lfa/d;


# direct methods
.method public constructor <init>(Lv9/o;Lfa/d;)V
    .locals 0

    iput-object p1, p0, Lw9/c1;->h:Lv9/o;

    iput-object p2, p0, Lw9/c1;->i:Lfa/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lw9/c1;->h:Lv9/o;

    iget-object v1, p0, Lw9/c1;->i:Lfa/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "states"

    .line 2
    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, v0, Lv9/o;->b:Lqd/l;

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lv9/o;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v3, Ln5/m;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v1, v4}, Ln5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
