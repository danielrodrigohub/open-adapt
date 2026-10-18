.class public final Lr1/g;
.super Ljava/lang/Object;
.source "Trackers.java"


# static fields
.field public static e:Lr1/g;


# instance fields
.field public a:Lr1/a;

.field public b:Lr1/b;

.field public c:Lr1/e;

.field public d:Lr1/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw1/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Lr1/a;

    invoke-direct {v0, p1, p2}, Lr1/a;-><init>(Landroid/content/Context;Lw1/a;)V

    iput-object v0, p0, Lr1/g;->a:Lr1/a;

    .line 4
    new-instance v0, Lr1/b;

    invoke-direct {v0, p1, p2}, Lr1/b;-><init>(Landroid/content/Context;Lw1/a;)V

    iput-object v0, p0, Lr1/g;->b:Lr1/b;

    .line 5
    new-instance v0, Lr1/e;

    invoke-direct {v0, p1, p2}, Lr1/e;-><init>(Landroid/content/Context;Lw1/a;)V

    iput-object v0, p0, Lr1/g;->c:Lr1/e;

    .line 6
    new-instance v0, Lr1/f;

    invoke-direct {v0, p1, p2}, Lr1/f;-><init>(Landroid/content/Context;Lw1/a;)V

    iput-object v0, p0, Lr1/g;->d:Lr1/f;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lw1/a;)Lr1/g;
    .locals 2

    const-class v0, Lr1/g;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lr1/g;->e:Lr1/g;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lr1/g;

    invoke-direct {v1, p0, p1}, Lr1/g;-><init>(Landroid/content/Context;Lw1/a;)V

    sput-object v1, Lr1/g;->e:Lr1/g;

    .line 3
    :cond_0
    sget-object p0, Lr1/g;->e:Lr1/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
