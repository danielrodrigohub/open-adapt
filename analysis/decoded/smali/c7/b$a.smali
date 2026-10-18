.class public final Lc7/b$a;
.super Ly6/f$b;
.source "AesGcmHkdfStreamingKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly6/f$b<",
        "Ly6/n;",
        "La7/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly6/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, La7/d;

    .line 2
    new-instance v0, Ld7/b;

    .line 3
    invoke-virtual {p1}, La7/d;->B()Lb7/i;

    move-result-object v1

    invoke-virtual {v1}, Lb7/i;->s()[B

    move-result-object v1

    .line 4
    invoke-virtual {p1}, La7/d;->C()La7/f;

    move-result-object v2

    invoke-virtual {v2}, La7/f;->E()La7/h;

    move-result-object v2

    invoke-static {v2}, Lc7/f;->a(La7/h;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, La7/d;->C()La7/f;

    move-result-object v3

    invoke-virtual {v3}, La7/f;->D()I

    move-result v3

    .line 6
    invoke-virtual {p1}, La7/d;->C()La7/f;

    move-result-object p1

    invoke-virtual {p1}, La7/f;->B()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Ld7/b;-><init>([BLjava/lang/String;II)V

    return-object v0
.end method
