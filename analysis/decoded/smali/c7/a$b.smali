.class public final Lc7/a$b;
.super Ly6/f$a;
.source "AesCtrHmacStreamingKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/a;->b()Ly6/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly6/f$a<",
        "La7/b;",
        "La7/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc7/a;


# direct methods
.method public constructor <init>(Lc7/a;)V
    .locals 0

    iput-object p1, p0, Lc7/a$b;->a:Lc7/a;

    invoke-direct {p0}, Ly6/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb7/q0;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, La7/b;

    .line 2
    invoke-static {}, La7/a;->E()La7/a$a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, La7/b;->y()I

    move-result v1

    invoke-static {v1}, Ld7/g;->a(I)[B

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lb7/i;->l([BII)Lb7/i;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lb7/x$a;->j()V

    .line 6
    iget-object v2, v0, Lb7/x$a;->i:Lb7/x;

    check-cast v2, La7/a;

    invoke-static {v2, v1}, La7/a;->A(La7/a;Lb7/i;)V

    .line 7
    invoke-virtual {p1}, La7/b;->z()La7/c;

    move-result-object p1

    .line 8
    invoke-virtual {v0}, Lb7/x$a;->j()V

    .line 9
    iget-object v1, v0, Lb7/x$a;->i:Lb7/x;

    check-cast v1, La7/a;

    invoke-static {v1, p1}, La7/a;->z(La7/a;La7/c;)V

    .line 10
    iget-object p1, p0, Lc7/a$b;->a:Lc7/a;

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Lb7/x$a;->j()V

    .line 13
    iget-object p1, v0, Lb7/x$a;->i:Lb7/x;

    check-cast p1, La7/a;

    invoke-static {p1}, La7/a;->y(La7/a;)V

    .line 14
    invoke-virtual {v0}, Lb7/x$a;->h()Lb7/x;

    move-result-object p1

    check-cast p1, La7/a;

    return-object p1
.end method

.method public final b(Lb7/i;)Lb7/q0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb7/a0;
        }
    .end annotation

    .line 1
    invoke-static {}, Lb7/p;->a()Lb7/p;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, La7/b;->A(Lb7/i;Lb7/p;)La7/b;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lb7/q0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, La7/b;

    .line 2
    invoke-virtual {p1}, La7/b;->y()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, La7/b;->z()La7/c;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lc7/a;->f(La7/c;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "key_size must be at least 16 bytes"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
