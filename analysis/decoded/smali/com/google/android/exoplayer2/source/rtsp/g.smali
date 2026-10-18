.class public final Lcom/google/android/exoplayer2/source/rtsp/g;
.super Ljava/lang/Object;
.source "RtspMessageChannel.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/g$d;,
        Lcom/google/android/exoplayer2/source/rtsp/g$b;,
        Lcom/google/android/exoplayer2/source/rtsp/g$e;,
        Lcom/google/android/exoplayer2/source/rtsp/g$f;,
        Lcom/google/android/exoplayer2/source/rtsp/g$a;,
        Lcom/google/android/exoplayer2/source/rtsp/g$c;
    }
.end annotation


# static fields
.field public static final n:Ljava/nio/charset/Charset;


# instance fields
.field public final h:Lcom/google/android/exoplayer2/source/rtsp/g$c;

.field public final i:Ll5/d0;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplayer2/source/rtsp/g$a;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/google/android/exoplayer2/source/rtsp/g$f;

.field public l:Ljava/net/Socket;

.field public volatile m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt6/c;->c:Ljava/nio/charset/Charset;

    sput-object v0, Lcom/google/android/exoplayer2/source/rtsp/g;->n:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/g$c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->h:Lcom/google/android/exoplayer2/source/rtsp/g$c;

    .line 3
    new-instance p1, Ll5/d0;

    const-string v0, "ExoPlayer:RtspMessageChannel:ReceiverLoader"

    invoke-direct {p1, v0}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->i:Ll5/d0;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->j:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final Y(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->k:Lcom/google/android/exoplayer2/source/rtsp/g$f;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->k:Lcom/google/android/exoplayer2/source/rtsp/g$f;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/google/android/exoplayer2/source/rtsp/h;->h:Ljava/lang/String;

    .line 4
    new-instance v2, Lt6/e;

    invoke-direct {v2, v1}, Lt6/e;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, p1}, Lt6/e;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/exoplayer2/source/rtsp/g;->n:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 6
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/g$f;->j:Landroid/os/Handler;

    new-instance v3, Lw4/i;

    invoke-direct {v3, v0, v1, p1}, Lw4/i;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g$f;[BLjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->k:Lcom/google/android/exoplayer2/source/rtsp/g$f;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/rtsp/g$f;->close()V

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->i:Ll5/d0;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Ll5/d0;->f(Ll5/d0$e;)V

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->l:Ljava/net/Socket;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->m:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->m:Z

    .line 9
    throw v1
.end method

.method public final x(Ljava/net/Socket;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->l:Ljava/net/Socket;

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/g$f;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/rtsp/g$f;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->k:Lcom/google/android/exoplayer2/source/rtsp/g$f;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g;->i:Ll5/d0;

    new-instance v1, Lcom/google/android/exoplayer2/source/rtsp/g$e;

    .line 4
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/rtsp/g$e;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g;Ljava/io/InputStream;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/g$b;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/rtsp/g$b;-><init>(Lcom/google/android/exoplayer2/source/rtsp/g;)V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    return-void
.end method
