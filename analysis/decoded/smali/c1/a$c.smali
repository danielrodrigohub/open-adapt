.class public final enum Lc1/a$c;
.super Ljava/lang/Enum;
.source "EncryptedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc1/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum i:Lc1/a$c;

.field public static final synthetic j:[Lc1/a$c;


# instance fields
.field public final h:Ly6/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lc1/a$c;

    .line 2
    invoke-static {}, La7/f;->F()La7/f$a;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lb7/x$a;->j()V

    .line 4
    iget-object v2, v1, Lb7/x$a;->i:Lb7/x;

    check-cast v2, La7/f;

    invoke-static {v2}, La7/f;->y(La7/f;)V

    .line 5
    invoke-virtual {v1}, Lb7/x$a;->j()V

    .line 6
    iget-object v2, v1, Lb7/x$a;->i:Lb7/x;

    check-cast v2, La7/f;

    invoke-static {v2}, La7/f;->z(La7/f;)V

    .line 7
    invoke-virtual {v1}, Lb7/x$a;->j()V

    .line 8
    iget-object v2, v1, Lb7/x$a;->i:Lb7/x;

    check-cast v2, La7/f;

    invoke-static {v2}, La7/f;->A(La7/f;)V

    .line 9
    invoke-virtual {v1}, Lb7/x$a;->h()Lb7/x;

    move-result-object v1

    check-cast v1, La7/f;

    .line 10
    invoke-static {}, La7/e;->C()La7/e$a;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 12
    iget-object v3, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v3, La7/e;

    invoke-static {v3}, La7/e;->z(La7/e;)V

    .line 13
    invoke-virtual {v2}, Lb7/x$a;->j()V

    .line 14
    iget-object v3, v2, Lb7/x$a;->i:Lb7/x;

    check-cast v3, La7/e;

    invoke-static {v3, v1}, La7/e;->y(La7/e;La7/f;)V

    .line 15
    invoke-virtual {v2}, Lb7/x$a;->h()Lb7/x;

    move-result-object v1

    check-cast v1, La7/e;

    .line 16
    new-instance v2, Lc7/b;

    invoke-direct {v2}, Lc7/b;-><init>()V

    .line 17
    invoke-virtual {v1}, Lb7/a;->l()[B

    move-result-object v1

    .line 18
    new-instance v2, Ly6/e;

    .line 19
    invoke-static {}, La7/l;->E()La7/l$a;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lb7/x$a;->j()V

    .line 21
    iget-object v4, v3, Lb7/x$a;->i:Lb7/x;

    check-cast v4, La7/l;

    invoke-static {v4}, La7/l;->y(La7/l;)V

    .line 22
    array-length v4, v1

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lb7/i;->l([BII)Lb7/i;

    move-result-object v1

    .line 23
    invoke-virtual {v3}, Lb7/x$a;->j()V

    .line 24
    iget-object v4, v3, Lb7/x$a;->i:Lb7/x;

    check-cast v4, La7/l;

    invoke-static {v4, v1}, La7/l;->z(La7/l;Lb7/i;)V

    .line 25
    sget-object v1, La7/p;->l:La7/p;

    .line 26
    invoke-virtual {v3}, Lb7/x$a;->j()V

    .line 27
    iget-object v4, v3, Lb7/x$a;->i:Lb7/x;

    check-cast v4, La7/l;

    invoke-static {v4, v1}, La7/l;->A(La7/l;La7/p;)V

    .line 28
    invoke-virtual {v3}, Lb7/x$a;->h()Lb7/x;

    move-result-object v1

    check-cast v1, La7/l;

    invoke-direct {v2, v1}, Ly6/e;-><init>(La7/l;)V

    .line 29
    invoke-direct {v0, v2}, Lc1/a$c;-><init>(Ly6/e;)V

    sput-object v0, Lc1/a$c;->i:Lc1/a$c;

    const/4 v1, 0x1

    new-array v1, v1, [Lc1/a$c;

    aput-object v0, v1, v5

    .line 30
    sput-object v1, Lc1/a$c;->j:[Lc1/a$c;

    return-void
.end method

.method public constructor <init>(Ly6/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/e;",
            ")V"
        }
    .end annotation

    const-string v0, "AES256_GCM_HKDF_4KB"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p1, p0, Lc1/a$c;->h:Ly6/e;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc1/a$c;
    .locals 1

    const-class v0, Lc1/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc1/a$c;

    return-object p0
.end method

.method public static values()[Lc1/a$c;
    .locals 1

    sget-object v0, Lc1/a$c;->j:[Lc1/a$c;

    invoke-virtual {v0}, [Lc1/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc1/a$c;

    return-object v0
.end method
