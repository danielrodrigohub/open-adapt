.class public final Landroidx/room/d;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public final c:Landroidx/room/c;

.field public final d:Landroidx/room/d$e;

.field public e:Landroidx/room/b;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Landroidx/room/d$a;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Landroidx/room/d$b;

.field public final j:Landroidx/room/d$c;

.field public final k:Landroidx/room/d$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/c;Ljava/util/concurrent/Executor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/room/d$a;

    invoke-direct {v0, p0}, Landroidx/room/d$a;-><init>(Landroidx/room/d;)V

    iput-object v0, p0, Landroidx/room/d;->g:Landroidx/room/d$a;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/room/d;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Landroidx/room/d$b;

    invoke-direct {v0, p0}, Landroidx/room/d$b;-><init>(Landroidx/room/d;)V

    iput-object v0, p0, Landroidx/room/d;->i:Landroidx/room/d$b;

    .line 5
    new-instance v2, Landroidx/room/d$c;

    invoke-direct {v2, p0}, Landroidx/room/d$c;-><init>(Landroidx/room/d;)V

    iput-object v2, p0, Landroidx/room/d;->j:Landroidx/room/d$c;

    .line 6
    new-instance v2, Landroidx/room/d$d;

    invoke-direct {v2, p0}, Landroidx/room/d$d;-><init>(Landroidx/room/d;)V

    iput-object v2, p0, Landroidx/room/d;->k:Landroidx/room/d$d;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    iput-object p2, p0, Landroidx/room/d;->a:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Landroidx/room/d;->c:Landroidx/room/c;

    .line 10
    iput-object p5, p0, Landroidx/room/d;->f:Ljava/util/concurrent/Executor;

    .line 11
    iget-object p2, p4, Landroidx/room/c;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 12
    new-instance p4, Landroidx/room/d$e;

    new-array p5, v1, [Ljava/lang/String;

    invoke-interface {p2, p5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p4, p0, p2}, Landroidx/room/d$e;-><init>(Landroidx/room/d;[Ljava/lang/String;)V

    iput-object p4, p0, Landroidx/room/d;->d:Landroidx/room/d$e;

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p3, v0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
