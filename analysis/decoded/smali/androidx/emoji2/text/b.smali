.class public final Landroidx/emoji2/text/b;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"

# interfaces
.implements Lfb/l;
.implements Lp2/d;


# static fields
.field public static final h:[C

.field public static final i:Landroidx/emoji2/text/b;

.field public static j:[Z


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/emoji2/text/b;->h:[C

    .line 2
    new-instance v0, Landroidx/emoji2/text/b;

    invoke-direct {v0}, Landroidx/emoji2/text/b;-><init>()V

    sput-object v0, Landroidx/emoji2/text/b;->i:Landroidx/emoji2/text/b;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 3
    sput-object v0, Landroidx/emoji2/text/b;->j:[Z

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv4/f;)V
    .locals 13

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lv4/d;

    iget-object v1, p1, Lv4/g;->a:Ljava/lang/String;

    iget-object v2, p1, Lv4/g;->b:Ljava/util/List;

    iget-object v3, p1, Lv4/f;->e:Ljava/util/List;

    iget-object v4, p1, Lv4/f;->f:Ljava/util/List;

    iget-object v5, p1, Lv4/f;->g:Ljava/util/List;

    iget-object v6, p1, Lv4/f;->h:Ljava/util/List;

    iget-object v7, p1, Lv4/f;->i:Ljava/util/List;

    iget-object v8, p1, Lv4/f;->j:Ln3/s0;

    iget-object v9, p1, Lv4/f;->k:Ljava/util/List;

    iget-boolean v10, p1, Lv4/g;->c:Z

    iget-object v11, p1, Lv4/f;->l:Ljava/util/Map;

    iget-object v12, p1, Lv4/f;->m:Ljava/util/List;

    invoke-direct/range {v0 .. v12}, Lv4/d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ln3/s0;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public static final e(C)I
    .locals 4

    const/16 v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, p0, :cond_0

    const/16 v3, 0x3a

    if-ge p0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    sub-int/2addr p0, v0

    goto :goto_4

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v3, 0x67

    if-ge p0, v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    const/16 v0, 0x41

    if-gt v0, p0, :cond_4

    const/16 v3, 0x47

    if-ge p0, v3, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    if-eqz v1, :cond_5

    :goto_3
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    :goto_4
    return p0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hex digit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final f(Lqd/l;Ljava/lang/String;)Lqd/l;
    .locals 0

    if-nez p0, :cond_0

    new-instance p0, Lw9/b;

    invoke-direct {p0, p1}, Lw9/b;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static g(Ls/e;Lq/d;Ls/d;)V
    .locals 6

    const/4 v0, -0x1

    .line 1
    iput v0, p2, Ls/d;->o:I

    .line 2
    iput v0, p2, Ls/d;->p:I

    .line 3
    iget-object v0, p0, Ls/d;->U:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Ls/d;->U:[I

    aget v0, v0, v1

    if-ne v0, v3, :cond_0

    .line 4
    iget-object v0, p2, Ls/d;->J:Ls/c;

    iget v0, v0, Ls/c;->g:I

    .line 5
    invoke-virtual {p0}, Ls/d;->r()I

    move-result v1

    iget-object v4, p2, Ls/d;->L:Ls/c;

    iget v4, v4, Ls/c;->g:I

    sub-int/2addr v1, v4

    .line 6
    iget-object v4, p2, Ls/d;->J:Ls/c;

    invoke-virtual {p1, v4}, Lq/d;->l(Ljava/lang/Object;)Lq/h;

    move-result-object v5

    iput-object v5, v4, Ls/c;->i:Lq/h;

    .line 7
    iget-object v4, p2, Ls/d;->L:Ls/c;

    invoke-virtual {p1, v4}, Lq/d;->l(Ljava/lang/Object;)Lq/h;

    move-result-object v5

    iput-object v5, v4, Ls/c;->i:Lq/h;

    .line 8
    iget-object v4, p2, Ls/d;->J:Ls/c;

    iget-object v4, v4, Ls/c;->i:Lq/h;

    invoke-virtual {p1, v4, v0}, Lq/d;->e(Lq/h;I)V

    .line 9
    iget-object v4, p2, Ls/d;->L:Ls/c;

    iget-object v4, v4, Ls/c;->i:Lq/h;

    invoke-virtual {p1, v4, v1}, Lq/d;->e(Lq/h;I)V

    .line 10
    iput v2, p2, Ls/d;->o:I

    .line 11
    iput v0, p2, Ls/d;->a0:I

    sub-int/2addr v1, v0

    .line 12
    iput v1, p2, Ls/d;->W:I

    .line 13
    iget v0, p2, Ls/d;->d0:I

    if-ge v1, v0, :cond_0

    .line 14
    iput v0, p2, Ls/d;->W:I

    .line 15
    :cond_0
    iget-object v0, p0, Ls/d;->U:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Ls/d;->U:[I

    aget v0, v0, v1

    if-ne v0, v3, :cond_3

    .line 16
    iget-object v0, p2, Ls/d;->K:Ls/c;

    iget v0, v0, Ls/c;->g:I

    .line 17
    invoke-virtual {p0}, Ls/d;->k()I

    move-result p0

    iget-object v1, p2, Ls/d;->M:Ls/c;

    iget v1, v1, Ls/c;->g:I

    sub-int/2addr p0, v1

    .line 18
    iget-object v1, p2, Ls/d;->K:Ls/c;

    invoke-virtual {p1, v1}, Lq/d;->l(Ljava/lang/Object;)Lq/h;

    move-result-object v3

    iput-object v3, v1, Ls/c;->i:Lq/h;

    .line 19
    iget-object v1, p2, Ls/d;->M:Ls/c;

    invoke-virtual {p1, v1}, Lq/d;->l(Ljava/lang/Object;)Lq/h;

    move-result-object v3

    iput-object v3, v1, Ls/c;->i:Lq/h;

    .line 20
    iget-object v1, p2, Ls/d;->K:Ls/c;

    iget-object v1, v1, Ls/c;->i:Lq/h;

    invoke-virtual {p1, v1, v0}, Lq/d;->e(Lq/h;I)V

    .line 21
    iget-object v1, p2, Ls/d;->M:Ls/c;

    iget-object v1, v1, Ls/c;->i:Lq/h;

    invoke-virtual {p1, v1, p0}, Lq/d;->e(Lq/h;I)V

    .line 22
    iget v1, p2, Ls/d;->c0:I

    if-gtz v1, :cond_1

    .line 23
    iget v1, p2, Ls/d;->i0:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 24
    :cond_1
    iget-object v1, p2, Ls/d;->N:Ls/c;

    invoke-virtual {p1, v1}, Lq/d;->l(Ljava/lang/Object;)Lq/h;

    move-result-object v3

    iput-object v3, v1, Ls/c;->i:Lq/h;

    .line 25
    iget-object v1, p2, Ls/d;->N:Ls/c;

    iget-object v1, v1, Ls/c;->i:Lq/h;

    iget v3, p2, Ls/d;->c0:I

    add-int/2addr v3, v0

    invoke-virtual {p1, v1, v3}, Lq/d;->e(Lq/h;I)V

    .line 26
    :cond_2
    iput v2, p2, Ls/d;->p:I

    .line 27
    iput v0, p2, Ls/d;->b0:I

    sub-int/2addr p0, v0

    .line 28
    iput p0, p2, Ls/d;->X:I

    .line 29
    iget p1, p2, Ls/d;->e0:I

    if-ge p0, p1, :cond_3

    .line 30
    iput p1, p2, Ls/d;->X:I

    :cond_3
    return-void
.end method

.method public static h(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-static {p1}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 3
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    if-eq v2, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v0

    :goto_1
    if-eqz v3, :cond_3

    return v1

    .line 4
    :cond_3
    const-class v3, Landroidx/emoji2/text/c;

    invoke-interface {p0, p1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/c;

    if-eqz v2, :cond_8

    .line 5
    array-length v3, v2

    if-lez v3, :cond_8

    .line 6
    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_8

    .line 7
    aget-object v5, v2, v4

    .line 8
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 9
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-eqz p2, :cond_4

    if-eq v6, p1, :cond_6

    :cond_4
    if-nez p2, :cond_5

    if-eq v5, p1, :cond_6

    :cond_5
    if-le p1, v6, :cond_7

    if-ge p1, v5, :cond_7

    .line 10
    :cond_6
    invoke-interface {p0, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    return v1
.end method

.method public static final i(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "md5"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v1, "decodeMd5"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, p1

    const-string v2, ""

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 3
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v0

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "format(format, *args)"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v2, v4}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public b([B)Ljava/lang/String;
    .locals 8

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p1, "got ioexception in finally "

    :try_start_0
    const-string v1, "MD5"

    .line 2
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "getInstance(\"MD5\")"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v3, v5, :cond_0

    .line 4
    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 6
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v1, 0x10

    .line 7
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%32s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    .line 8
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(format, *args)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x20

    const/16 v3, 0x30

    invoke-static {v1, v2, v3}, Lyd/o;->e0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 10
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "MD5"

    invoke-static/range {v2 .. v7}, Lv9/d$a;->b(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 11
    :try_start_3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    const-string v3, "MD5"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got ioexception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lv9/d$a;->b(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 12
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to process file for MD5"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 13
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 14
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "MD5"

    invoke-static/range {v2 .. v7}, Lv9/d$a;->b(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    :goto_2
    throw v1

    :catch_3
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_1

    const-string v1, "could_not_compute_md5"

    :cond_1
    return-object v1
.end method

.method public c(Ljava/lang/Object;Ljava/io/File;Lp2/h;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    :try_start_0
    invoke-static {p1, p2}, Ll3/a;->d(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    const-string p3, "ByteBufferEncoder"

    .line 3
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Failed to write data"

    .line 4
    invoke-static {p3, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
