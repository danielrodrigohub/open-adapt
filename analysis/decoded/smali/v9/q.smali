.class public final Lv9/q;
.super Ljava/lang/Object;
.source "AdaptKitFitListener.kt"

# interfaces
.implements Lfb/d;


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lba/v;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lv9/q;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lba/v;)V
    .locals 3

    const-string v0, "fitCalibrateState"

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lv9/q;->b:Lqd/l;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lv9/q;->a:Landroid/os/Handler;

    new-instance v2, Lv9/q$a;

    invoke-direct {v2, p1}, Lv9/q$a;-><init>(Lba/v;)V

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Laa/b;

    invoke-direct {p1, v2, v0}, Laa/b;-><init>(Lqd/l;Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v2, v0}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
