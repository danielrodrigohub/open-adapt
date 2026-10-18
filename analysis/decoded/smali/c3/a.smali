.class public final Lc3/a;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"

# interfaces
.implements Lp2/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc3/a$b;,
        Lc3/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp2/j<",
        "Ljava/nio/ByteBuffer;",
        "Lc3/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lc3/a$a;

.field public static final g:Lc3/a$b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lc3/a$b;

.field public final d:Lc3/a$a;

.field public final e:Lc3/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc3/a$a;

    invoke-direct {v0}, Lc3/a$a;-><init>()V

    sput-object v0, Lc3/a;->f:Lc3/a$a;

    .line 2
    new-instance v0, Lc3/a$b;

    invoke-direct {v0}, Lc3/a$b;-><init>()V

    sput-object v0, Lc3/a;->g:Lc3/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ls2/d;Ls2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Ls2/d;",
            "Ls2/b;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lc3/a;->g:Lc3/a$b;

    sget-object v1, Lc3/a;->f:Lc3/a$a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc3/a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lc3/a;->b:Ljava/util/List;

    .line 5
    iput-object v1, p0, Lc3/a;->d:Lc3/a$a;

    .line 6
    new-instance p1, Lc3/b;

    invoke-direct {p1, p3, p4}, Lc3/b;-><init>(Ls2/d;Ls2/b;)V

    iput-object p1, p0, Lc3/a;->e:Lc3/b;

    .line 7
    iput-object v0, p0, Lc3/a;->c:Lc3/a$b;

    return-void
.end method

.method public static d(Ln2/c;II)I
    .locals 5

    .line 1
    iget v0, p0, Ln2/c;->g:I

    .line 2
    div-int/2addr v0, p2

    .line 3
    iget v1, p0, Ln2/c;->f:I

    .line 4
    div-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "BufferGifDecoder"

    .line 7
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-le v0, v1, :cond_1

    const-string v1, "Downsampling GIF, sampleSize: "

    const-string v2, ", target dimens: ["

    const-string v4, "x"

    .line 8
    invoke-static {v1, v0, v2, p1, v4}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], actual dimens: ["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget p2, p0, Ln2/c;->f:I

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget p0, p0, Ln2/c;->g:I

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp2/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    sget-object v0, Lc3/i;->b:Lp2/g;

    invoke-virtual {p2, v0}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lc3/a;->b:Ljava/util/List;

    .line 3
    invoke-static {p2, p1}, Lcom/bumptech/glide/load/c;->d(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/Object;IILp2/h;)Lr2/w;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 2
    iget-object p1, p0, Lc3/a;->c:Lc3/a$b;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p1, Lc3/a$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/d;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ln2/d;

    invoke-direct {v0}, Ln2/d;-><init>()V

    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    .line 6
    iput-object v7, v6, Ln2/d;->b:Ljava/nio/ByteBuffer;

    .line 7
    iget-object v0, v6, Ln2/d;->a:[B

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 8
    new-instance v0, Ln2/c;

    invoke-direct {v0}, Ln2/c;-><init>()V

    iput-object v0, v6, Ln2/d;->c:Ln2/c;

    .line 9
    iput v2, v6, Ln2/d;->d:I

    .line 10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v6, Ln2/d;->b:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iget-object v0, v6, Ln2/d;->b:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 13
    monitor-exit p1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, v6

    move-object v5, p4

    .line 14
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lc3/a;->c(Ljava/nio/ByteBuffer;IILn2/d;Lp2/h;)Lc3/e;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    iget-object p2, p0, Lc3/a;->c:Lc3/a$b;

    .line 16
    monitor-enter p2

    .line 17
    :try_start_2
    iput-object v7, v6, Ln2/d;->b:Ljava/nio/ByteBuffer;

    .line 18
    iput-object v7, v6, Ln2/d;->c:Ln2/c;

    .line 19
    iget-object p3, p2, Lc3/a$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p3, v6}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    :catchall_1
    move-exception p1

    .line 21
    iget-object p2, p0, Lc3/a;->c:Lc3/a$b;

    .line 22
    monitor-enter p2

    .line 23
    :try_start_3
    iput-object v7, v6, Ln2/d;->b:Ljava/nio/ByteBuffer;

    .line 24
    iput-object v7, v6, Ln2/d;->c:Ln2/c;

    .line 25
    iget-object p3, p2, Lc3/a$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p3, v6}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 26
    monitor-exit p2

    .line 27
    throw p1

    :catchall_2
    move-exception p1

    .line 28
    monitor-exit p2

    throw p1

    :catchall_3
    move-exception p2

    .line 29
    monitor-exit p1

    throw p2
.end method

.method public final c(Ljava/nio/ByteBuffer;IILn2/d;Lp2/h;)Lc3/e;
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Decoded GIF from stream in "

    const-string v3, "BufferGifDecoder"

    .line 1
    sget v0, Ll3/h;->b:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const/4 v6, 0x2

    .line 3
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Ln2/d;->b()Ln2/c;

    move-result-object v0

    .line 4
    iget v7, v0, Ln2/c;->c:I

    const/4 v8, 0x0

    if-lez v7, :cond_5

    .line 5
    iget v7, v0, Ln2/c;->b:I

    if-eqz v7, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    sget-object v7, Lc3/i;->a:Lp2/g;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v7

    sget-object v9, Lp2/b;->i:Lp2/b;

    if-ne v7, v9, :cond_1

    .line 7
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    move/from16 v13, p2

    move/from16 v14, p3

    .line 9
    invoke-static {v0, v13, v14}, Lc3/a;->d(Ln2/c;II)I

    move-result v9

    .line 10
    iget-object v10, v1, Lc3/a;->d:Lc3/a$a;

    iget-object v11, v1, Lc3/a;->e:Lc3/b;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v12, Ln2/e;

    move-object/from16 v10, p1

    invoke-direct {v12, v11, v0, v10, v9}, Ln2/e;-><init>(Ln2/a$a;Ln2/c;Ljava/nio/ByteBuffer;I)V

    .line 12
    invoke-virtual {v12, v7}, Ln2/e;->i(Landroid/graphics/Bitmap$Config;)V

    .line 13
    iget v0, v12, Ln2/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v7, v12, Ln2/e;->l:Ln2/c;

    iget v7, v7, Ln2/c;->c:I

    rem-int/2addr v0, v7

    iput v0, v12, Ln2/e;->k:I

    .line 14
    invoke-virtual {v12}, Ln2/e;->b()Landroid/graphics/Bitmap;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v15, :cond_3

    .line 15
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-static {v4, v5}, Ll3/h;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v8

    .line 18
    :cond_3
    :try_start_1
    sget-object v0, Lx2/b;->b:Lx2/b;

    .line 19
    new-instance v7, Lc3/c;

    iget-object v10, v1, Lc3/a;->a:Landroid/content/Context;

    move-object v9, v7

    move-object v11, v12

    move-object v12, v0

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-direct/range {v9 .. v15}, Lc3/c;-><init>(Landroid/content/Context;Ln2/a;Lp2/l;IILandroid/graphics/Bitmap;)V

    .line 20
    new-instance v0, Lc3/e;

    invoke-direct {v0, v7}, Lc3/e;-><init>(Lc3/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 22
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 23
    invoke-static {v4, v5}, Ll3/h;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v0

    .line 24
    :cond_5
    :goto_1
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 25
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-static {v4, v5}, Ll3/h;->a(J)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v8

    :catchall_0
    move-exception v0

    .line 27
    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 28
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    invoke-static {v4, v5}, Ll3/h;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    throw v0
.end method
