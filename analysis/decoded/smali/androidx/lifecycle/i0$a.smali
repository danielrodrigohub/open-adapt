.class public final Landroidx/lifecycle/i0$a;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final h:Landroidx/lifecycle/r;

.field public final i:Landroidx/lifecycle/i$b;

.field public j:Z


# direct methods
.method public constructor <init>(Landroidx/lifecycle/r;Landroidx/lifecycle/i$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/lifecycle/i0$a;->j:Z

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/i0$a;->h:Landroidx/lifecycle/r;

    .line 4
    iput-object p2, p0, Landroidx/lifecycle/i0$a;->i:Landroidx/lifecycle/i$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/i0$a;->j:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/lifecycle/i0$a;->h:Landroidx/lifecycle/r;

    iget-object v1, p0, Landroidx/lifecycle/i0$a;->i:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/lifecycle/i0$a;->j:Z

    :cond_0
    return-void
.end method
