.class public final Lv9/j0;
.super Lrd/o;
.source "InjectionKtx.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lv9/k0;


# direct methods
.method public constructor <init>(Lv9/k0;)V
    .locals 0

    iput-object p1, p0, Lv9/j0;->h:Lv9/k0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Handler;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv9/j0;->h:Lv9/k0;

    .line 2
    iget-boolean v0, v0, Lv9/k0;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
