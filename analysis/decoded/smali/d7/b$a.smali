.class public final Ld7/b$a;
.super Ljava/lang/Object;
.source "AesGcmHkdfStreaming.java"

# interfaces
.implements Ld7/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljavax/crypto/spec/SecretKeySpec;

.field public b:Ljavax/crypto/Cipher;

.field public c:[B

.field public final synthetic d:Ld7/b;


# direct methods
.method public constructor <init>(Ld7/b;)V
    .locals 0

    iput-object p1, p0, Ld7/b$a;->d:Ld7/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/nio/ByteBuffer;[B)V
    .locals 3
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

    iget-object v1, p0, Ld7/b$a;->d:Ld7/b;

    invoke-virtual {v1}, Ld7/b;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 3
    iget-object v1, p0, Ld7/b$a;->d:Ld7/b;

    invoke-virtual {v1}, Ld7/b;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [B

    .line 4
    iput-object v0, p0, Ld7/b$a;->c:[B

    .line 5
    iget-object v0, p0, Ld7/b$a;->d:Ld7/b;

    .line 6
    iget v0, v0, Ld7/b;->a:I

    .line 7
    new-array v0, v0, [B

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 9
    iget-object v1, p0, Ld7/b$a;->c:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 10
    iget-object p1, p0, Ld7/b$a;->d:Ld7/b;

    .line 11
    iget-object v1, p1, Ld7/b;->e:Ljava/lang/String;

    iget-object v2, p1, Ld7/b;->f:[B

    iget p1, p1, Ld7/b;->a:I

    invoke-static {v1, v2, v0, p2, p1}, Ld7/e;->a(Ljava/lang/String;[B[B[BI)[B

    move-result-object p1

    .line 12
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 13
    iput-object p2, p0, Ld7/b$a;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 14
    sget-object p1, Ld7/c;->e:Ld7/c;

    const-string p2, "AES/GCM/NoPadding"

    invoke-virtual {p1, p2}, Ld7/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Cipher;

    .line 15
    iput-object p1, p0, Ld7/b$a;->b:Ljavax/crypto/Cipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    .line 17
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid ciphertext"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld7/b$a;->c:[B

    int-to-long v1, p2

    invoke-static {v0, v1, v2, p3}, Ld7/b;->i([BJZ)Ljavax/crypto/spec/GCMParameterSpec;

    move-result-object p2

    .line 2
    iget-object p3, p0, Ld7/b$a;->b:Ljavax/crypto/Cipher;

    const/4 v0, 0x2

    iget-object v1, p0, Ld7/b$a;->a:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3, v0, v1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 3
    iget-object p2, p0, Ld7/b$a;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p2, p1, p4}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
