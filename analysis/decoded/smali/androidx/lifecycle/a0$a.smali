.class public final Landroidx/lifecycle/a0$a;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Landroidx/lifecycle/a0;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/a0$a;->h:Landroidx/lifecycle/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a0$a;->h:Landroidx/lifecycle/a0;

    .line 2
    iget v1, v0, Landroidx/lifecycle/a0;->i:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Landroidx/lifecycle/a0;->j:Z

    .line 4
    iget-object v0, v0, Landroidx/lifecycle/a0;->k:Landroidx/lifecycle/r;

    sget-object v1, Landroidx/lifecycle/i$b;->ON_PAUSE:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/a0$a;->h:Landroidx/lifecycle/a0;

    .line 6
    iget v1, v0, Landroidx/lifecycle/a0;->h:I

    if-nez v1, :cond_1

    iget-boolean v1, v0, Landroidx/lifecycle/a0;->j:Z

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, v0, Landroidx/lifecycle/a0;->k:Landroidx/lifecycle/r;

    sget-object v1, Landroidx/lifecycle/i$b;->ON_STOP:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/r;->f(Landroidx/lifecycle/i$b;)V

    :cond_1
    return-void
.end method
