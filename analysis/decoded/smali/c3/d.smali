.class public Lc3/d;
.super Ljava/lang/Object;
.source "GifDrawableEncoder.java"

# interfaces
.implements Lp2/k;
.implements Ls3/j;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static e(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(I)I
    .locals 0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "Argument must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static i(Ll5/j;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ll5/j;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static final k(J)J
    .locals 2

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 1
    sget-object v0, Lzd/a;->i:Lzd/a$a;

    .line 2
    sget v0, Lzd/b;->a:I

    return-wide p0
.end method

.method public static final l(J)J
    .locals 1

    const/4 v0, 0x1

    shl-long/2addr p0, v0

    .line 1
    sget-object v0, Lzd/a;->i:Lzd/a$a;

    .line 2
    sget v0, Lzd/b;->a:I

    return-wide p0
.end method

.method public static final m(Lea/u;I)Lea/c;
    .locals 5

    .line 1
    new-instance v0, Lea/c;

    .line 2
    new-instance v1, Lea/i;

    new-instance v2, Lea/h$a;

    .line 3
    iget v3, p0, Lea/u;->a:I

    .line 4
    invoke-direct {v2, v3}, Lea/h$a;-><init>(I)V

    invoke-direct {v1, v2, p1}, Lea/i;-><init>(Lea/h$a;I)V

    .line 5
    iget-object p0, p0, Lea/u;->b:Lea/v;

    .line 6
    new-instance p1, Lea/d;

    .line 7
    iget-object p0, p0, Lea/v;->a:Lea/s;

    .line 8
    iget v2, p0, Lea/s;->a:I

    .line 9
    iget v3, p0, Lea/s;->b:I

    .line 10
    iget p0, p0, Lea/s;->c:I

    const/4 v4, 0x5

    .line 11
    invoke-direct {p1, v2, v3, p0, v4}, Lea/d;-><init>(IIII)V

    .line 12
    invoke-direct {v0, v1, p1}, Lea/c;-><init>(Lea/i;Lea/d;)V

    return-object v0
.end method

.method public static final n(Ljava/io/File;)[B
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileInputStream;

    .line 1
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    const-string v4, "File "

    if-gtz v3, :cond_4

    long-to-int v1, v1

    .line 3
    :try_start_1
    new-array v2, v1, [B

    const/4 v3, 0x0

    move v5, v1

    move v6, v3

    :goto_0
    if-lez v5, :cond_0

    .line 4
    invoke-virtual {v0, v2, v6, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v7, :cond_0

    sub-int/2addr v5, v7

    add-int/2addr v6, v7

    goto :goto_0

    :cond_0
    const-string v7, "copyOf(this, newSize)"

    const/4 v8, 0x0

    if-lez v5, :cond_1

    .line 5
    :try_start_2
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v6, Lpd/a;

    invoke-direct {v6}, Lpd/a;-><init>()V

    .line 8
    invoke-virtual {v6, v5}, Ljava/io/OutputStream;->write(I)V

    .line 9
    invoke-static {v0, v6}, Landroidx/lifecycle/o;->h(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 10
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v5, v1

    if-ltz v5, :cond_3

    .line 11
    invoke-virtual {v6}, Lpd/a;->x()[B

    move-result-object p0

    .line 12
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v2, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    .line 14
    invoke-static {p0, v2, v1, v3, v4}, Lgd/g;->j([B[BIII)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_1
    invoke-static {v0, v8}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    .line 16
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/OutOfMemoryError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is too big to fit in memory."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_4
    new-instance v3, Ljava/lang/OutOfMemoryError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is too big ("

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " bytes) to fit in memory."

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 18
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p0}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final o(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    const-string v0, "singleton(element)"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final q(ILzd/c;)J
    .locals 7

    const-string v0, "unit"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lzd/c;->k:Lzd/c;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    int-to-long v0, p0

    .line 2
    sget-object p0, Lzd/c;->i:Lzd/c;

    invoke-static {v0, v1, p1, p0}, Ld3/e;->f(JLzd/c;Lzd/c;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lc3/d;->l(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    int-to-long v0, p0

    .line 3
    sget-object p0, Lzd/c;->i:Lzd/c;

    const-wide v2, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v2, v3, p0, p1}, Ld3/e;->f(JLzd/c;Lzd/c;)J

    move-result-wide v2

    .line 4
    new-instance v4, Lvd/h;

    neg-long v5, v2

    invoke-direct {v4, v5, v6, v2, v3}, Lvd/h;-><init>(JJ)V

    invoke-virtual {v4, v0, v1}, Lvd/h;->n(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v0, v1, p1, p0}, Ld3/e;->f(JLzd/c;Lzd/c;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lc3/d;->l(J)J

    move-result-wide p0

    goto :goto_0

    .line 6
    :cond_1
    sget-object p0, Lzd/c;->j:Lzd/c;

    const-string v2, "targetUnit"

    .line 7
    invoke-static {p0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Lzd/c;->h:Ljava/util/concurrent/TimeUnit;

    .line 9
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    .line 10
    invoke-static {p0, p1}, Landroidx/activity/k;->a(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lc3/d;->k(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final r(Landroid/content/Context;J)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method public static final s(Ljava/io/File;[B)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "array"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    invoke-static {v0, p0}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;Ljava/io/File;Lp2/h;)Z
    .locals 0

    .line 1
    check-cast p1, Lr2/w;

    .line 2
    invoke-interface {p1}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc3/c;

    .line 3
    :try_start_0
    iget-object p1, p1, Lc3/c;->h:Lc3/c$a;

    iget-object p1, p1, Lc3/c$a;->a:Lc3/g;

    .line 4
    iget-object p1, p1, Lc3/g;->a:Ln2/a;

    invoke-interface {p1}, Ln2/a;->g()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Ll3/a;->d(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    const-string p3, "GifEncoder"

    .line 6
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Failed to encode GIF drawable data"

    .line 7
    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Lp2/h;)Lp2/c;
    .locals 0

    sget-object p1, Lp2/c;->h:Lp2/c;

    return-object p1
.end method

.method public j(Ls3/u;)V
    .locals 0

    return-void
.end method

.method public p(II)Ls3/w;
    .locals 0

    new-instance p1, Ls3/g;

    invoke-direct {p1}, Ls3/g;-><init>()V

    return-object p1
.end method
