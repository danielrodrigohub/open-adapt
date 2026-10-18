.class public final Lc7/c;
.super Ljava/io/InputStream;
.source "InputStreamDecrypter.java"


# instance fields
.field public h:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public i:Ljava/io/InputStream;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public j:Ljava/io/InputStream;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public k:Ly6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly6/i<",
            "Ly6/n;",
            ">;"
        }
    .end annotation
.end field

.field public l:[B


# direct methods
.method public constructor <init>(Ly6/i;Ljava/io/InputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/i<",
            "Ly6/n;",
            ">;",
            "Ljava/io/InputStream;",
            "[B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc7/c;->h:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc7/c;->i:Ljava/io/InputStream;

    .line 4
    iput-object p1, p0, Lc7/c;->k:Ly6/i;

    .line 5
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iput-object p2, p0, Lc7/c;->j:Ljava/io/InputStream;

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lc7/c;->j:Ljava/io/InputStream;

    .line 8
    :goto_0
    iget-object p1, p0, Lc7/c;->j:Ljava/io/InputStream;

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 9
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lc7/c;->l:[B

    return-void
.end method


# virtual methods
.method public final declared-synchronized available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc7/c;->i:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    monitor-exit p0

    return v0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc7/c;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [B

    .line 1
    invoke-virtual {p0, v1}, Lc7/c;->read([B)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x0

    aget-byte v0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 4
    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lc7/c;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 5
    monitor-exit p0

    return v0

    .line 6
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc7/c;->i:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 8
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lc7/c;->h:Z

    if-nez v1, :cond_4

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lc7/c;->h:Z

    .line 10
    iget-object v1, p0, Lc7/c;->k:Ly6/i;

    .line 11
    sget-object v2, Ly6/b;->a:[B

    invoke-virtual {v1, v2}, Ly6/i;->a([B)Ljava/util/List;

    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly6/i$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    iget-object v2, v2, Ly6/i$a;->a:Ljava/lang/Object;

    .line 14
    check-cast v2, Ly6/n;

    iget-object v3, p0, Lc7/c;->j:Ljava/io/InputStream;

    iget-object v4, p0, Lc7/c;->l:[B

    invoke-interface {v2, v3, v4}, Ly6/n;->b(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v2

    .line 15
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    iput-object v2, p0, Lc7/c;->i:Ljava/io/InputStream;

    .line 17
    iget-object v2, p0, Lc7/c;->j:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    monitor-exit p0

    return v3

    .line 19
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not read bytes from the ciphertext stream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :catch_0
    :try_start_4
    iget-object v2, p0, Lc7/c;->j:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 21
    :catch_1
    iget-object v2, p0, Lc7/c;->j:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 22
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No matching key found for the ciphertext in the stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No matching key found for the ciphertext in the stream."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
