.class public final synthetic Lhc/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:[B

.field public final synthetic i:[B

.field public final synthetic j:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic k:Lhc/l;


# direct methods
.method public synthetic constructor <init>([B[BLjava/util/concurrent/CompletableFuture;Lhc/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/j;->h:[B

    iput-object p2, p0, Lhc/j;->i:[B

    iput-object p3, p0, Lhc/j;->j:Ljava/util/concurrent/CompletableFuture;

    iput-object p4, p0, Lhc/j;->k:Lhc/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lhc/j;->h:[B

    iget-object v1, p0, Lhc/j;->i:[B

    iget-object v2, p0, Lhc/j;->j:Ljava/util/concurrent/CompletableFuture;

    iget-object v3, p0, Lhc/j;->k:Lhc/l;

    const-string v4, "$nonce"

    .line 1
    invoke-static {v0, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$devicePublicKeyEnc"

    invoke-static {v1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$completableFuture"

    invoke-static {v2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "this$0"

    invoke-static {v3, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v6

    const-string v7, "encrypting %02x using authKey: %02x"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    .line 3
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v10, v9, v4

    .line 4
    new-instance v10, Ljava/math/BigInteger;

    invoke-direct {v10, v5, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v10, v9, v5

    .line 5
    invoke-static {v9, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "format(format, *args)"

    invoke-static {v7, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "\ud83d\udd11"

    const/4 v11, 0x6

    const/4 v12, 0x0

    .line 6
    invoke-static/range {v6 .. v12}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 7
    sget-object v6, Lhc/b;->f:Ljavax/crypto/spec/DHParameterSpec;

    const-string v6, "AES/ECB/NoPadding"

    .line 8
    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 9
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v7, v1, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 10
    invoke-virtual {v6, v5, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 11
    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    const-string v6, "authenticationChallenge() encryption failure"

    const-string v7, "Authentication"

    invoke-interface {v1, v6, v0, v5, v7}, Lhc/g0;->a(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 13
    invoke-virtual {v2, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {}, Lgc/k;->z()Lgc/k$a;

    move-result-object v1

    .line 15
    invoke-static {v0}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 16
    array-length v5, v0

    invoke-static {v0, v4, v5}, Lm7/i;->l([BII)Lm7/i;

    move-result-object v0

    .line 17
    invoke-virtual {v1}, Lm7/w$a;->k()V

    .line 18
    iget-object v4, v1, Lm7/w$a;->i:Lm7/w;

    check-cast v4, Lgc/k;

    invoke-static {v4, v0}, Lgc/k;->x(Lgc/k;Lm7/i;)V

    .line 19
    invoke-virtual {v1}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/k;

    .line 20
    new-instance v6, Lhc/m0;

    .line 21
    sget-object v1, Lhc/d;->F:Lhc/d;

    const/16 v1, 0x71

    int-to-byte v1, v1

    .line 22
    sget-object v4, Lhc/m0$a;->i:Lhc/m0$a;

    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 23
    invoke-direct {v6, v1, v4, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 24
    iget-object v4, v3, Lhc/l;->k:Lhc/e;

    .line 25
    new-instance v0, Lhc/n;

    invoke-direct {v0, v2}, Lhc/n;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    new-instance v7, Lhc/m;

    invoke-direct {v7, v0}, Lhc/m;-><init>(Lhc/n;)V

    const-wide/16 v8, 0x1f40

    const-string v5, "Authentication Challenge"

    .line 26
    invoke-virtual/range {v4 .. v9}, Lhc/e;->k(Ljava/lang/String;Lhc/m0;Lpc/c;J)V

    return-void
.end method
