.class public final Lhc/q;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lhc/b;


# direct methods
.method public constructor <init>(Lhc/r;Lhc/b;)V
    .locals 0

    iput-object p2, p0, Lhc/q;->b:Lhc/b;

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, [B

    .line 2
    invoke-static {p1}, Lgc/q;->B([B)Lgc/q;

    move-result-object p1

    invoke-virtual {p1}, Lgc/q;->z()Lm7/i;

    move-result-object p1

    invoke-virtual {p1}, Lm7/i;->r()[B

    move-result-object p1

    iget-object v0, p0, Lhc/q;->b:Lhc/b;

    .line 3
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "devicePublicKey is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-static {p1, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lhc/e0;->c([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "\ud83d\udcde"

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lhc/g0$a;->a(Lhc/g0;Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 6
    new-instance p1, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v3, v0, Lhc/b;->a:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, v0, Lhc/b;->a:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {p1, v1, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 7
    iget-object v1, v0, Lhc/b;->d:Ljava/security/KeyFactory;

    invoke-virtual {v1, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    .line 8
    iget-object v1, v0, Lhc/b;->c:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v1, p1, v2}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 9
    iget-object p1, v0, Lhc/b;->c:Ljavax/crypto/KeyAgreement;

    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    .line 10
    iget-object v1, v0, Lhc/b;->e:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 11
    iget-object p1, v0, Lhc/b;->e:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v0, "authHelper.sharedSecret"

    .line 12
    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
