.class public final Lw8/f;
.super Ljava/lang/Object;
.source "GestureKtx.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lqd/a;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lw8/f;->h:Lqd/a;

    iput-object p2, p0, Lw8/f;->i:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lw8/f;->h:Lqd/a;

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lw8/f;->i:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
