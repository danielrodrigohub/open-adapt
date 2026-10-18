.class public final Lp3/p$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lp3/p;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lp3/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/p$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lp3/p$a;->b:Lp3/p;

    return-void
.end method


# virtual methods
.method public final a(Lq3/e;)V
    .locals 3

    .line 1
    monitor-enter p1

    .line 2
    monitor-exit p1

    .line 3
    iget-object v0, p0, Lp3/p$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Landroidx/lifecycle/c;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/lifecycle/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
