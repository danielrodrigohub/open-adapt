.class public final Landroidx/room/d$d;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Landroidx/room/d$d;->h:Landroidx/room/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Landroidx/room/d$d;->h:Landroidx/room/d;

    iget-object v1, v0, Landroidx/room/d;->c:Landroidx/room/c;

    iget-object v0, v0, Landroidx/room/d;->d:Landroidx/room/d$e;

    .line 2
    iget-object v2, v1, Landroidx/room/c;->i:Lm/b;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, v1, Landroidx/room/c;->i:Lm/b;

    invoke-virtual {v3, v0}, Lm/b;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/room/c$d;

    .line 4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 5
    iget-object v2, v1, Landroidx/room/c;->h:Landroidx/room/c$b;

    iget-object v0, v0, Landroidx/room/c$d;->a:[I

    .line 6
    monitor-enter v2

    .line 7
    :try_start_1
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_1

    aget v6, v0, v4

    .line 8
    iget-object v7, v2, Landroidx/room/c$b;->a:[J

    aget-wide v8, v7, v6

    const-wide/16 v10, 0x1

    sub-long v12, v8, v10

    .line 9
    aput-wide v12, v7, v6

    cmp-long v6, v8, v10

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 10
    iput-boolean v7, v2, Landroidx/room/c$b;->d:Z

    move v5, v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {v1}, Landroidx/room/c;->e()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 14
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
