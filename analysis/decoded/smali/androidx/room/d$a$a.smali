.class public final Landroidx/room/d$a$a;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/d$a;->b([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:[Ljava/lang/String;

.field public final synthetic i:Landroidx/room/d$a;


# direct methods
.method public constructor <init>(Landroidx/room/d$a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/d$a$a;->i:Landroidx/room/d$a;

    iput-object p2, p0, Landroidx/room/d$a$a;->h:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/room/d$a$a;->i:Landroidx/room/d$a;

    iget-object v0, v0, Landroidx/room/d$a;->b:Landroidx/room/d;

    iget-object v0, v0, Landroidx/room/d;->c:Landroidx/room/c;

    iget-object v1, p0, Landroidx/room/d$a$a;->h:[Ljava/lang/String;

    .line 2
    iget-object v2, v0, Landroidx/room/c;->i:Lm/b;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v0, v0, Landroidx/room/c;->i:Lm/b;

    invoke-virtual {v0}, Lm/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v3, v0

    check-cast v3, Lm/b$e;

    invoke-virtual {v3}, Lm/b$e;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lm/b$e;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/room/c$c;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    instance-of v4, v4, Landroidx/room/d$e;

    if-nez v4, :cond_0

    .line 6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/room/c$d;

    invoke-virtual {v3, v1}, Landroidx/room/c$d;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
