.class public final Ld7/a$a;
.super Ljava/lang/Object;
.source "AesCtrHmacStreaming.java"

# interfaces
.implements Ld7/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljavax/crypto/spec/SecretKeySpec;

.field public b:Ljavax/crypto/spec/SecretKeySpec;

.field public c:Ljavax/crypto/Cipher;

.field public d:Ljavax/crypto/Mac;

.field public e:[B

.field public final synthetic f:Ld7/a;


# direct methods
.method public constructor <init>(Ld7/a;)V
    .locals 0

    iput-object p1, p0, Ld7/a$a;->f:Ld7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/nio/ByteBuffer;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    iget-object v1, p0, Ld7/a$a;->f:Ld7/a;

    invoke-virtual {v1}, Ld7/a;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 3
    iget-object v1, p0, Ld7/a$a;->f:Ld7/a;

    invoke-virtual {v1}, Ld7/a;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Ld7/a$a;->e:[B

    .line 5
    iget-object v0, p0, Ld7/a$a;->f:Ld7/a;

    .line 6
    iget v0, v0, Ld7/a;->a:I

    .line 7
    new-array v0, v0, [B

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v1, p0, Ld7/a$a;->e:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    iget-object p1, p0, Ld7/a$a;->f:Ld7/a;

    .line 11
    iget v1, p1, Ld7/a;->a:I

    const/16 v2, 0x20

    add-int/2addr v1, v2

    .line 12
    iget-object v3, p1, Ld7/a;->g:Ljava/lang/String;

    iget-object p1, p1, Ld7/a;->h:[B

    invoke-static {v3, p1, v0, p2, v1}, Ld7/e;->a(Ljava/lang/String;[B[B[BI)[B

    move-result-object p1

    .line 13
    iget-object p2, p0, Ld7/a$a;->f:Ld7/a;

    .line 14
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget p2, p2, Ld7/a;->a:I

    const/4 v1, 0x0

    const-string v3, "AES"

    invoke-direct {v0, p1, v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 16
    iput-object v0, p0, Ld7/a$a;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 17
    iget-object p2, p0, Ld7/a$a;->f:Ld7/a;

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget v1, p2, Ld7/a;->a:I

    iget-object p2, p2, Ld7/a;->b:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 20
    iput-object v0, p0, Ld7/a$a;->b:Ljavax/crypto/spec/SecretKeySpec;

    .line 21
    sget-object p1, Ld7/c;->e:Ld7/c;

    const-string p2, "AES/CTR/NoPadding"

    invoke-virtual {p1, p2}, Ld7/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    .line 22
    iput-object p1, p0, Ld7/a$a;->c:Ljavax/crypto/Cipher;

    .line 23
    iget-object p1, p0, Ld7/a$a;->f:Ld7/a;

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object p2, Ld7/c;->f:Ld7/c;

    iget-object p1, p1, Ld7/a;->b:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ld7/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Mac;

    .line 26
    iput-object p1, p0, Ld7/a$a;->d:Ljavax/crypto/Mac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid ciphertext"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Invalid header length"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Ld7/a$a;->f:Ld7/a;

    iget-object v2, p0, Ld7/a$a;->e:[B

    int-to-long v3, p2

    invoke-static {v1, v2, v3, v4, p3}, Ld7/a;->i(Ld7/a;[BJZ)[B

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p3

    .line 4
    iget-object v1, p0, Ld7/a$a;->f:Ld7/a;

    .line 5
    iget v1, v1, Ld7/a;->c:I

    if-lt p3, v1, :cond_5

    sub-int/2addr p3, v1

    add-int/2addr p3, v0

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 9
    invoke-virtual {v1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    iget-object v2, p0, Ld7/a$a;->d:Ljavax/crypto/Mac;

    iget-object v3, p0, Ld7/a$a;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 11
    iget-object v2, p0, Ld7/a$a;->d:Ljavax/crypto/Mac;

    invoke-virtual {v2, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 12
    iget-object v2, p0, Ld7/a$a;->d:Ljavax/crypto/Mac;

    invoke-virtual {v2, v0}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 13
    iget-object v0, p0, Ld7/a$a;->d:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 14
    iget-object v2, p0, Ld7/a$a;->f:Ld7/a;

    .line 15
    iget v2, v2, Ld7/a;->c:I

    .line 16
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 17
    iget-object v2, p0, Ld7/a$a;->f:Ld7/a;

    .line 18
    iget v2, v2, Ld7/a;->c:I

    .line 19
    new-array v3, v2, [B

    .line 20
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    array-length v5, v0

    if-eq v2, v5, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    move v6, v5

    :goto_0
    if-ge v5, v2, :cond_2

    .line 22
    aget-byte v7, v3, v5

    aget-byte v8, v0, v5

    xor-int/2addr v7, v8

    or-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-nez v6, :cond_3

    move v1, v4

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 23
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 24
    iget-object p3, p0, Ld7/a$a;->c:Ljavax/crypto/Cipher;

    iget-object v0, p0, Ld7/a$a;->a:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p3, v4, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 25
    iget-object p2, p0, Ld7/a$a;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p2, p1, p4}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    .line 27
    :cond_4
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Tag mismatch"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
