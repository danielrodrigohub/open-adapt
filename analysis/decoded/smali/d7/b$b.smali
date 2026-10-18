.class public final Ld7/b$b;
.super Ljava/lang/Object;
.source "AesGcmHkdfStreaming.java"

# interfaces
.implements Ld7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public final b:Ljavax/crypto/Cipher;

.field public final c:[B

.field public final d:Ljava/nio/ByteBuffer;

.field public e:J


# direct methods
.method public constructor <init>(Ld7/b;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ld7/b$b;->e:J

    .line 3
    sget-object v2, Ld7/c;->e:Ld7/c;

    const-string v3, "AES/GCM/NoPadding"

    invoke-virtual {v2, v3}, Ld7/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    .line 4
    iput-object v2, p0, Ld7/b$b;->b:Ljavax/crypto/Cipher;

    .line 5
    iput-wide v0, p0, Ld7/b$b;->e:J

    .line 6
    iget v0, p1, Ld7/b;->a:I

    invoke-static {v0}, Ld7/g;->a(I)[B

    move-result-object v0

    const/4 v1, 0x7

    .line 7
    invoke-static {v1}, Ld7/g;->a(I)[B

    move-result-object v1

    .line 8
    iput-object v1, p0, Ld7/b$b;->c:[B

    .line 9
    invoke-virtual {p1}, Ld7/b;->e()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Ld7/b$b;->d:Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {p1}, Ld7/b;->e()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 14
    iget-object v1, p1, Ld7/b;->e:Ljava/lang/String;

    iget-object v2, p1, Ld7/b;->f:[B

    iget p1, p1, Ld7/b;->a:I

    invoke-static {v1, v2, v0, p2, p1}, Ld7/e;->a(Ljava/lang/String;[B[B[BI)[B

    move-result-object p1

    .line 15
    new-instance p2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v0, "AES"

    invoke-direct {p2, p1, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 16
    iput-object p2, p0, Ld7/b$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld7/b$b;->b:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Ld7/b$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v3, p0, Ld7/b$b;->c:[B

    iget-wide v4, p0, Ld7/b$b;->e:J

    const/4 v6, 0x0

    .line 2
    invoke-static {v3, v4, v5, v6}, Ld7/b;->i([BJZ)Ljavax/crypto/spec/GCMParameterSpec;

    move-result-object v3

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 4
    iget-wide v0, p0, Ld7/b$b;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld7/b$b;->e:J

    .line 5
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Ld7/b$b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p3}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 7
    iget-object p1, p0, Ld7/b$b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Ld7/b$b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {p2, p1, p3}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Ld7/b$b;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ld7/b$b;->b:Ljavax/crypto/Cipher;

    iget-object v1, p0, Ld7/b$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Ld7/b$b;->c:[B

    iget-wide v3, p0, Ld7/b$b;->e:J

    const/4 v5, 0x1

    .line 2
    invoke-static {v2, v3, v4, v5}, Ld7/b;->i([BJZ)Ljavax/crypto/spec/GCMParameterSpec;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v5, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 4
    iget-wide v0, p0, Ld7/b$b;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ld7/b$b;->e:J

    .line 5
    iget-object v0, p0, Ld7/b$b;->b:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
