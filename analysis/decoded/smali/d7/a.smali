.class public final Ld7/a;
.super Ld7/f;
.source "AesCtrHmacStreaming.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld7/a$a;,
        Ld7/a$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:[B


# direct methods
.method public constructor <init>([BLjava/lang/String;ILjava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ld7/f;-><init>()V

    .line 2
    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_6

    if-lt v0, p3, :cond_6

    .line 3
    invoke-static {p3}, Ld7/m;->a(I)V

    const/16 v0, 0xa

    if-lt p5, v0, :cond_5

    const-string v0, "HmacSha1"

    .line 4
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    if-gt p5, v0, :cond_2

    :cond_0
    const-string v0, "HmacSha256"

    .line 5
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    if-gt p5, v0, :cond_2

    :cond_1
    const-string v0, "HmacSha512"

    .line 6
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x40

    if-gt p5, v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too big"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    add-int/lit8 v0, p6, 0x0

    sub-int/2addr v0, p5

    sub-int/2addr v0, p3

    add-int/lit8 v0, v0, -0x7

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_4

    .line 8
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Ld7/a;->h:[B

    .line 9
    iput-object p2, p0, Ld7/a;->g:Ljava/lang/String;

    .line 10
    iput p3, p0, Ld7/a;->a:I

    .line 11
    iput-object p4, p0, Ld7/a;->b:Ljava/lang/String;

    .line 12
    iput p5, p0, Ld7/a;->c:I

    .line 13
    iput p6, p0, Ld7/a;->d:I

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Ld7/a;->f:I

    sub-int/2addr p6, p5

    .line 15
    iput p6, p0, Ld7/a;->e:I

    return-void

    .line 16
    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "ciphertextSegmentSize too small"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small "

    .line 18
    invoke-static {p2, p5}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 19
    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "ikm too short, must be >= "

    .line 21
    invoke-static {p2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 22
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static i(Ld7/a;[BJZ)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x10

    .line 2
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 4
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {p0, p2, p3}, Ld7/l;->a(Ljava/nio/ByteBuffer;J)V

    int-to-byte p1, p4

    .line 6
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()I
    .locals 2

    invoke-virtual {p0}, Ld7/a;->e()I

    move-result v0

    iget v1, p0, Ld7/a;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Ld7/a;->d:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Ld7/a;->a:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Ld7/a;->e:I

    return v0
.end method

.method public final g()Ld7/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ld7/a$a;

    invoke-direct {v0, p0}, Ld7/a$a;-><init>(Ld7/a;)V

    return-object v0
.end method

.method public final h([B)Ld7/i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Ld7/a$b;

    invoke-direct {v0, p0, p1}, Ld7/a$b;-><init>(Ld7/a;[B)V

    return-object v0
.end method
