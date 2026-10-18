.class public final Lm2/a$a;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lm2/a;


# direct methods
.method public constructor <init>(Lm2/a;)V
    .locals 0

    iput-object p1, p0, Lm2/a$a;->a:Lm2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm2/a$a;->a:Lm2/a;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lm2/a$a;->a:Lm2/a;

    .line 3
    iget-object v2, v1, Lm2/a;->p:Ljava/io/BufferedWriter;

    if-nez v2, :cond_0

    .line 4
    monitor-exit v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Lm2/a;->r0()V

    .line 6
    iget-object v1, p0, Lm2/a$a;->a:Lm2/a;

    .line 7
    invoke-virtual {v1}, Lm2/a;->k0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lm2/a$a;->a:Lm2/a;

    .line 9
    invoke-virtual {v1}, Lm2/a;->p0()V

    .line 10
    iget-object v1, p0, Lm2/a$a;->a:Lm2/a;

    const/4 v2, 0x0

    .line 11
    iput v2, v1, Lm2/a;->r:I

    .line 12
    :cond_1
    monitor-exit v0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
