.class public final Lcom/google/android/exoplayer2/source/rtsp/g$e;
.super Ljava/lang/Object;
.source "RtspMessageChannel.java"

# interfaces
.implements Ll5/d0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/io/DataInputStream;

.field public final b:Lcom/google/android/exoplayer2/source/rtsp/g$d;

.field public volatile c:Z

.field public final synthetic d:Lcom/google/android/exoplayer2/source/rtsp/g;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/g;Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->d:Lcom/google/android/exoplayer2/source/rtsp/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/io/DataInputStream;

    invoke-direct {p1, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->a:Ljava/io/DataInputStream;

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/source/rtsp/g$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/rtsp/g$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->b:Lcom/google/android/exoplayer2/source/rtsp/g$d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->c:Z

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/16 v1, 0x24

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->a:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    .line 5
    new-array v3, v1, [B

    .line 6
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->a:Ljava/io/DataInputStream;

    invoke-virtual {v4, v3, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->d:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 8
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/g;->j:Ljava/util/Map;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/rtsp/g$a;

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->d:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 11
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/rtsp/g;->m:Z

    if-nez v1, :cond_0

    .line 12
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/source/rtsp/g$a;->m([B)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->d:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 14
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/rtsp/g;->m:Z

    if-nez v1, :cond_0

    .line 15
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->d:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 16
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/rtsp/g;->h:Lcom/google/android/exoplayer2/source/rtsp/g$c;

    .line 17
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->b:Lcom/google/android/exoplayer2/source/rtsp/g$d;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->a:Ljava/io/DataInputStream;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b(BLjava/io/DataInputStream;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/rtsp/g$d;->a([B)Lu6/v;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_8

    .line 19
    iget v0, v3, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_7

    .line 20
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/rtsp/g$d;->c:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    .line 21
    invoke-static {v6, v7}, Lw6/a;->a(J)I

    move-result v0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v0, v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v2

    .line 22
    :goto_2
    invoke-static {v7}, Lm5/a;->e(Z)V

    .line 23
    new-array v7, v0, [B

    .line 24
    invoke-virtual {v4, v7, v2, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 25
    iget v10, v3, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b:I

    if-ne v10, v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    invoke-static {v5}, Lm5/a;->e(Z)V

    if-lez v0, :cond_5

    add-int/lit8 v5, v0, -0x1

    .line 26
    aget-byte v10, v7, v5

    const/16 v11, 0xa

    if-ne v10, v11, :cond_5

    if-le v0, v6, :cond_4

    add-int/lit8 v0, v0, -0x2

    .line 27
    aget-byte v10, v7, v0

    const/16 v11, 0xd

    if-ne v10, v11, :cond_4

    .line 28
    new-instance v5, Ljava/lang/String;

    sget-object v10, Lcom/google/android/exoplayer2/source/rtsp/g;->n:Ljava/nio/charset/Charset;

    invoke-direct {v5, v7, v2, v0, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_4

    .line 29
    :cond_4
    new-instance v0, Ljava/lang/String;

    sget-object v10, Lcom/google/android/exoplayer2/source/rtsp/g;->n:Ljava/nio/charset/Charset;

    invoke-direct {v0, v7, v2, v5, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v5, v0

    .line 30
    :goto_4
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/rtsp/g$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, v3, Lcom/google/android/exoplayer2/source/rtsp/g$d;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object v0

    .line 32
    iget-object v5, v3, Lcom/google/android/exoplayer2/source/rtsp/g$d;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 33
    iput v6, v3, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b:I

    .line 34
    iput-wide v8, v3, Lcom/google/android/exoplayer2/source/rtsp/g$d;->c:J

    goto :goto_1

    .line 35
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message body is empty or does not end with a LF."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expects a greater than zero Content-Length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_7
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/source/rtsp/g$d;->b(BLjava/io/DataInputStream;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/source/rtsp/g$d;->a([B)Lu6/v;

    move-result-object v0

    goto/16 :goto_1

    .line 38
    :cond_8
    check-cast v1, Lcom/google/android/exoplayer2/source/rtsp/d$b;

    .line 39
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/rtsp/d$b;->a:Landroid/os/Handler;

    new-instance v3, Ly0/v;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v0, v4}, Ly0/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/g$e;->c:Z

    return-void
.end method
