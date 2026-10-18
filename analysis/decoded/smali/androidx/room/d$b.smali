.class public final Landroidx/room/d$b;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Landroidx/room/d;


# direct methods
.method public constructor <init>(Landroidx/room/d;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/d$b;->h:Landroidx/room/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/room/d$b;->h:Landroidx/room/d;

    sget v0, Landroidx/room/b$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "androidx.room.IMultiInstanceInvalidationService"

    .line 2
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Landroidx/room/b;

    if-eqz v1, :cond_1

    .line 4
    move-object p2, v0

    check-cast p2, Landroidx/room/b;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Landroidx/room/b$a$a;

    invoke-direct {v0, p2}, Landroidx/room/b$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 6
    :goto_0
    iput-object p2, p1, Landroidx/room/d;->e:Landroidx/room/b;

    .line 7
    iget-object p1, p0, Landroidx/room/d$b;->h:Landroidx/room/d;

    iget-object p2, p1, Landroidx/room/d;->f:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/d;->j:Landroidx/room/d$c;

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/room/d$b;->h:Landroidx/room/d;

    iget-object v0, p1, Landroidx/room/d;->f:Ljava/util/concurrent/Executor;

    iget-object p1, p1, Landroidx/room/d;->k:Landroidx/room/d$d;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    iget-object p1, p0, Landroidx/room/d$b;->h:Landroidx/room/d;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/room/d;->e:Landroidx/room/b;

    return-void
.end method
