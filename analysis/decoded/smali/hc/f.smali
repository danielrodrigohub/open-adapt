.class public final synthetic Lhc/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Lhc/l;

.field public final synthetic j:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(ILhc/l;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lhc/f;->h:I

    iput-object p2, p0, Lhc/f;->i:Lhc/l;

    iput-object p3, p0, Lhc/f;->j:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lhc/f;->h:I

    iget-object v1, p0, Lhc/f;->i:Lhc/l;

    iget-object v2, p0, Lhc/f;->j:Ljava/util/concurrent/CompletableFuture;

    const-string v3, "this$0"

    .line 1
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$completableFuture"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v3, Lhc/b;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lhc/b;->i:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lhc/b;->h:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lhc/b;->g:Ljavax/crypto/spec/DHParameterSpec;

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lhc/b;->f:Ljavax/crypto/spec/DHParameterSpec;

    .line 7
    :goto_0
    invoke-direct {v3, v0}, Lhc/b;-><init>(Ljavax/crypto/spec/DHParameterSpec;)V

    .line 8
    iget-object v0, v3, Lhc/b;->b:Ljava/security/KeyPair;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v0}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    const/4 v5, 0x0

    .line 10
    aget-byte v6, v0, v5

    if-nez v6, :cond_4

    .line 11
    array-length v6, v0

    invoke-static {v0, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 12
    :cond_4
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v6

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "my publicKey is "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "mobilePublicKey"

    invoke-static {v0, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lhc/e0;->c([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "; length: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    const-string v10, "\ud83d\udcde"

    .line 14
    invoke-static/range {v6 .. v12}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 15
    invoke-static {}, Lgc/q;->A()Lgc/q$a;

    move-result-object v4

    .line 16
    array-length v6, v0

    invoke-static {v0, v5, v6}, Lm7/i;->l([BII)Lm7/i;

    move-result-object v0

    .line 17
    invoke-virtual {v4}, Lm7/w$a;->k()V

    .line 18
    iget-object v5, v4, Lm7/w$a;->i:Lm7/w;

    check-cast v5, Lgc/q;

    invoke-static {v5, v0}, Lgc/q;->x(Lgc/q;Lm7/i;)V

    .line 19
    invoke-virtual {v4}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/q;

    .line 20
    new-instance v6, Lhc/m0;

    .line 21
    sget-object v4, Lhc/d;->D:Lhc/d;

    const/16 v4, 0x6f

    int-to-byte v4, v4

    .line 22
    sget-object v5, Lhc/m0$a;->i:Lhc/m0$a;

    .line 23
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 24
    invoke-direct {v6, v4, v5, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 25
    new-instance v0, Lhc/r;

    invoke-direct {v0, v1, v2}, Lhc/r;-><init>(Lhc/l;Ljava/util/concurrent/CompletableFuture;)V

    .line 26
    iget-object v4, v1, Lhc/l;->k:Lhc/e;

    .line 27
    new-instance v7, Lhc/q;

    invoke-direct {v7, v0, v3}, Lhc/q;-><init>(Lhc/r;Lhc/b;)V

    const-wide/32 v8, 0x80e8

    const-string v5, "Public Key Exchange"

    .line 28
    invoke-virtual/range {v4 .. v9}, Lhc/e;->k(Ljava/lang/String;Lhc/m0;Lpc/c;J)V

    return-void
.end method
