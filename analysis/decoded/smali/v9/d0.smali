.class public final Lv9/d0;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevicesListener.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lea/p;",
        "Lea/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lea/x;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "-",
            "Lea/o;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lv9/d0;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lea/p;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lea/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv9/d0;->b:Lqd/l;

    if-eqz v0, :cond_2

    .line 4
    new-instance v1, Lv9/c0;

    invoke-direct {v1, v0, p1}, Lv9/c0;-><init>(Lqd/l;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lv9/d0;->c(Lqd/a;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lea/y;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of p1, p1, Lea/z;

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Lv9/m;)V
    .locals 2

    .line 1
    check-cast p1, Lea/o;

    const-string v0, "error"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lv9/d0;->c:Lqd/l;

    if-eqz v0, :cond_0

    new-instance v1, Lv9/b0;

    invoke-direct {v1, v0, p1}, Lv9/b0;-><init>(Lqd/l;Lea/o;)V

    invoke-virtual {p0, v1}, Lv9/d0;->c(Lqd/a;)V

    :cond_0
    return-void
.end method

.method public final c(Lqd/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lv9/d0;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lv9/a0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lv9/a0;-><init>(Lqd/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
