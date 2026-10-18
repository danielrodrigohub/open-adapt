.class public final Ld7/a$b;
.super Ljava/lang/Object;
.source "AesCtrHmacStreaming.java"

# interfaces
.implements Ld7/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Ljavax/crypto/spec/SecretKeySpec;

.field public final b:Ljavax/crypto/spec/SecretKeySpec;

.field public final c:Ljavax/crypto/Cipher;

.field public final d:Ljavax/crypto/Mac;

.field public final e:[B

.field public f:Ljava/nio/ByteBuffer;

.field public g:J

.field public final synthetic h:Ld7/a;


# direct methods
.method public constructor <init>(Ld7/a;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld7/a$b;->h:Ld7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Ld7/a$b;->g:J

    .line 3
    sget-object v2, Ld7/c;->e:Ld7/c;

    const-string v3, "AES/CTR/NoPadding"

    invoke-virtual {v2, v3}, Ld7/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    .line 4
    iput-object v2, p0, Ld7/a$b;->c:Ljavax/crypto/Cipher;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v2, Ld7/c;->f:Ld7/c;

    iget-object v3, p1, Ld7/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ld7/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Mac;

    .line 7
    iput-object v2, p0, Ld7/a$b;->d:Ljavax/crypto/Mac;

    .line 8
    iput-wide v0, p0, Ld7/a$b;->g:J

    .line 9
    iget v0, p1, Ld7/a;->a:I

    invoke-static {v0}, Ld7/g;->a(I)[B

    move-result-object v0

    const/4 v1, 0x7

    .line 10
    invoke-static {v1}, Ld7/g;->a(I)[B

    move-result-object v1

    .line 11
    iput-object v1, p0, Ld7/a$b;->e:[B

    .line 12
    invoke-virtual {p1}, Ld7/a;->e()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Ld7/a$b;->f:Ljava/nio/ByteBuffer;

    .line 13
    invoke-virtual {p1}, Ld7/a;->e()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 14
    iget-object v2, p0, Ld7/a$b;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    iget-object v2, p0, Ld7/a$b;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 16
    iget-object v1, p0, Ld7/a$b;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    iget v1, p1, Ld7/a;->a:I

    const/16 v2, 0x20

    add-int/2addr v1, v2

    .line 18
    iget-object v3, p1, Ld7/a;->g:Ljava/lang/String;

    iget-object v4, p1, Ld7/a;->h:[B

    invoke-static {v3, v4, v0, p2, v1}, Ld7/e;->a(Ljava/lang/String;[B[B[BI)[B

    move-result-object p2

    .line 19
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget v1, p1, Ld7/a;->a:I

    const/4 v3, 0x0

    const-string v4, "AES"

    invoke-direct {v0, p2, v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 20
    iput-object v0, p0, Ld7/a$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    .line 21
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget v1, p1, Ld7/a;->a:I

    iget-object p1, p1, Ld7/a;->b:Ljava/lang/String;

    invoke-direct {v0, p2, v1, v2, p1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 22
    iput-object v0, p0, Ld7/a$b;->b:Ljavax/crypto/spec/SecretKeySpec;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p3}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Ld7/a$b;->h:Ld7/a;

    iget-object v2, p0, Ld7/a$b;->e:[B

    iget-wide v3, p0, Ld7/a$b;->g:J

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Ld7/a;->i(Ld7/a;[BJZ)[B

    move-result-object v1

    .line 3
    iget-object v2, p0, Ld7/a$b;->c:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    iget-object v4, p0, Ld7/a$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3, v4, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 4
    iget-wide v2, p0, Ld7/a$b;->g:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, p0, Ld7/a$b;->g:J

    .line 5
    iget-object v2, p0, Ld7/a$b;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p3}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 6
    iget-object p1, p0, Ld7/a$b;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 7
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 9
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 10
    iget-object p2, p0, Ld7/a$b;->d:Ljavax/crypto/Mac;

    iget-object v0, p0, Ld7/a$b;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p2, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 11
    iget-object p2, p0, Ld7/a$b;->d:Ljavax/crypto/Mac;

    invoke-virtual {p2, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 12
    iget-object p2, p0, Ld7/a$b;->d:Ljavax/crypto/Mac;

    invoke-virtual {p2, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 13
    iget-object p1, p0, Ld7/a$b;->d:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    .line 14
    iget-object p2, p0, Ld7/a$b;->h:Ld7/a;

    .line 15
    iget p2, p2, Ld7/a;->c:I

    .line 16
    invoke-virtual {p3, p1, v5, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Ld7/a$b;->f:Ljava/nio/ByteBuffer;

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
    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 2
    iget-object v1, p0, Ld7/a$b;->h:Ld7/a;

    iget-object v2, p0, Ld7/a$b;->e:[B

    iget-wide v3, p0, Ld7/a$b;->g:J

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Ld7/a;->i(Ld7/a;[BJZ)[B

    move-result-object v1

    .line 3
    iget-object v2, p0, Ld7/a$b;->c:Ljavax/crypto/Cipher;

    iget-object v3, p0, Ld7/a$b;->a:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 4
    iget-wide v2, p0, Ld7/a$b;->g:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ld7/a$b;->g:J

    .line 5
    iget-object v2, p0, Ld7/a$b;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 6
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 8
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object v0, p0, Ld7/a$b;->d:Ljavax/crypto/Mac;

    iget-object v2, p0, Ld7/a$b;->b:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 10
    iget-object v0, p0, Ld7/a$b;->d:Ljavax/crypto/Mac;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 11
    iget-object v0, p0, Ld7/a$b;->d:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update(Ljava/nio/ByteBuffer;)V

    .line 12
    iget-object p1, p0, Ld7/a$b;->d:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Ld7/a$b;->h:Ld7/a;

    .line 14
    iget v1, v1, Ld7/a;->c:I

    .line 15
    invoke-virtual {p2, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
