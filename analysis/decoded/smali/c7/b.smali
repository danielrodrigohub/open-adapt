.class public final Lc7/b;
.super Ly6/f;
.source "AesGcmHkdfStreamingKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly6/f<",
        "La7/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-class v0, La7/d;

    const/4 v1, 0x1

    new-array v1, v1, [Ly6/f$b;

    new-instance v2, Lc7/b$a;

    invoke-direct {v2}, Lc7/b$a;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Ly6/f;-><init>(Ljava/lang/Class;[Ly6/f$b;)V

    return-void
.end method

.method public static f(La7/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, La7/f;->D()I

    move-result v0

    invoke-static {v0}, Ld7/m;->a(I)V

    .line 2
    invoke-virtual {p0}, La7/f;->E()La7/h;

    move-result-object v0

    sget-object v1, La7/h;->i:La7/h;

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p0}, La7/f;->B()I

    move-result v0

    .line 4
    invoke-virtual {p0}, La7/f;->D()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    add-int/lit8 p0, p0, 0x10

    add-int/lit8 p0, p0, 0x2

    if-lt v0, p0, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "ciphertext_segment_size must be at least (derived_key_size + NONCE_PREFIX_IN_BYTES + TAG_SIZE_IN_BYTES + 2)"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown HKDF hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey"

    return-object v0
.end method

.method public final b()Ly6/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly6/f$a<",
            "La7/e;",
            "La7/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lc7/b$b;

    invoke-direct {v0, p0}, Lc7/b$b;-><init>(Lc7/b;)V

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d(Lb7/i;)Lb7/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb7/a0;
        }
    .end annotation

    invoke-static {}, Lb7/p;->a()Lb7/p;

    move-result-object v0

    invoke-static {p1, v0}, La7/d;->F(Lb7/i;Lb7/p;)La7/d;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lb7/q0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, La7/d;

    .line 2
    invoke-virtual {p1}, La7/d;->D()I

    move-result v0

    invoke-static {v0}, Ld7/m;->c(I)V

    .line 3
    invoke-virtual {p1}, La7/d;->C()La7/f;

    move-result-object p1

    invoke-static {p1}, Lc7/b;->f(La7/f;)V

    return-void
.end method
