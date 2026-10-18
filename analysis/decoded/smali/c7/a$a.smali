.class public final Lc7/a$a;
.super Ly6/f$b;
.source "AesCtrHmacStreamingKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly6/f$b<",
        "Ly6/n;",
        "La7/a;",
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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, La7/a;

    .line 2
    new-instance v7, Ld7/a;

    .line 3
    invoke-virtual {p1}, La7/a;->B()Lb7/i;

    move-result-object v0

    invoke-virtual {v0}, Lb7/i;->s()[B

    move-result-object v1

    .line 4
    invoke-virtual {p1}, La7/a;->C()La7/c;

    move-result-object v0

    invoke-virtual {v0}, La7/c;->B()La7/h;

    move-result-object v0

    invoke-static {v0}, Lc7/f;->a(La7/h;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, La7/a;->C()La7/c;

    move-result-object v0

    invoke-virtual {v0}, La7/c;->A()I

    move-result v3

    .line 6
    invoke-virtual {p1}, La7/a;->C()La7/c;

    move-result-object v0

    invoke-virtual {v0}, La7/c;->C()La7/i;

    move-result-object v0

    invoke-virtual {v0}, La7/i;->z()La7/h;

    move-result-object v0

    invoke-static {v0}, Lc7/f;->a(La7/h;)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, La7/a;->C()La7/c;

    move-result-object v0

    invoke-virtual {v0}, La7/c;->C()La7/i;

    move-result-object v0

    invoke-virtual {v0}, La7/i;->A()I

    move-result v5

    .line 8
    invoke-virtual {p1}, La7/a;->C()La7/c;

    move-result-object p1

    invoke-virtual {p1}, La7/c;->y()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ld7/a;-><init>([BLjava/lang/String;ILjava/lang/String;II)V

    return-object v7
.end method
