.class public final Ly6/g;
.super Ljava/lang/Object;
.source "KeysetHandle.java"


# instance fields
.field public final a:La7/n;


# direct methods
.method public constructor <init>(La7/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly6/g;->a:La7/n;

    return-void
.end method

.method public static final a(La7/n;)Ly6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, La7/n;->B()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ly6/g;

    invoke-direct {v0, p0}, Ly6/g;-><init>(La7/n;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lz6/d;Ly6/a;)Ly6/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lz6/d;->a()[B

    move-result-object p0

    invoke-static {}, Lb7/p;->a()Lb7/p;

    move-result-object v0

    invoke-static {p0, v0}, La7/g;->C([BLb7/p;)La7/g;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, La7/g;->A()Lb7/i;

    move-result-object v0

    invoke-virtual {v0}, Lb7/i;->size()I

    move-result v0

    const-string v1, "empty keyset"

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ly6/g;

    .line 4
    :try_start_0
    invoke-virtual {p0}, La7/g;->A()Lb7/i;

    move-result-object p0

    invoke-virtual {p0}, Lb7/i;->s()[B

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 5
    check-cast p1, Lz6/b;

    invoke-virtual {p1, p0, v2}, Lz6/b;->a([B[B)[B

    move-result-object p0

    .line 6
    invoke-static {}, Lb7/p;->a()Lb7/p;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, La7/n;->F([BLb7/p;)La7/n;

    move-result-object p0

    .line 8
    invoke-virtual {p0}, La7/n;->B()I

    move-result p1
    :try_end_0
    .catch Lb7/a0; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_0

    .line 9
    invoke-direct {v0, p0}, Ly6/g;-><init>(La7/n;)V

    return-object v0

    .line 10
    :cond_0
    :try_start_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lb7/a0; {:try_start_1 .. :try_end_1} :catch_0

    .line 11
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ly6/g;->a:La7/n;

    invoke-static {v0}, Ly6/o;->a(La7/n;)La7/o;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lb7/x;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
