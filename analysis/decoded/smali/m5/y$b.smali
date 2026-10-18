.class public final Lm5/y$b;
.super Ljava/lang/Object;
.source "SntpClient.java"

# interfaces
.implements Ll5/d0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll5/d0$a<",
        "Ll5/d0$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lm5/y$a;


# direct methods
.method public constructor <init>(Lm5/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lm5/y$b;->h:Lm5/y$a;

    return-void
.end method


# virtual methods
.method public final h(Ll5/d0$d;JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm5/y$b;->h:Lm5/y$a;

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lm5/y;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 3
    :try_start_0
    sget-boolean p2, Lm5/y;->c:Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 4
    iget-object p1, p0, Lm5/y$b;->h:Lm5/y$a;

    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/util/ConcurrentModificationException;

    invoke-direct {p3}, Ljava/util/ConcurrentModificationException;-><init>()V

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lm5/y$b;->h:Lm5/y$a;

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;->a()V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 8
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final k(Ll5/d0$d;JJZ)V
    .locals 0

    return-void
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 0

    .line 1
    iget-object p1, p0, Lm5/y$b;->h:Lm5/y$a;

    if-eqz p1, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;

    .line 3
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 4
    invoke-virtual {p1, p6}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B(Ljava/io/IOException;)V

    .line 5
    :cond_0
    sget-object p1, Ll5/d0;->e:Ll5/d0$b;

    return-object p1
.end method
