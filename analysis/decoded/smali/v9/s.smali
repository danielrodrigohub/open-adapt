.class public final Lv9/s;
.super Ljava/lang/Object;
.source "AdaptKitModeListener.kt"

# interfaces
.implements Lv9/p0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv9/p0<",
        "Lea/l;",
        "Lea/k;",
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
            "Lea/r;",
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

    iput-object v0, p0, Lv9/s;->a:Landroid/os/Handler;

    .line 3
    sget-object v0, Lv9/a;->i:Lv9/a$a;

    .line 4
    sget-object v0, Lv9/a;->j:Lv9/a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/os/Parcelable;)V
    .locals 0

    check-cast p1, Lea/l;

    invoke-virtual {p0, p1}, Lv9/s;->d(Lea/l;)V

    return-void
.end method

.method public final bridge synthetic b(Lv9/m;)V
    .locals 0

    check-cast p1, Lea/k;

    invoke-virtual {p0, p1}, Lv9/s;->c(Lea/k;)V

    return-void
.end method

.method public final c(Lea/k;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lea/l;)V
    .locals 2

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lea/r;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv9/s;->b:Lqd/l;

    if-eqz v0, :cond_1

    new-instance v1, Lv9/s$a;

    invoke-direct {v1, v0, p1}, Lv9/s$a;-><init>(Lqd/l;Lea/l;)V

    invoke-virtual {p0, v1}, Lv9/s;->e(Lqd/a;)V

    goto :goto_0

    .line 2
    :cond_0
    instance-of p1, p1, Lea/q;

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Lqd/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lv9/s;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lw8/j;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lw8/j;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    check-cast p1, Lv9/s$a;

    invoke-virtual {p1}, Lv9/s$a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
