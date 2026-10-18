.class public final Lob/d;
.super Ljava/lang/Object;
.source "OIDCAuthCredential.kt"


# static fields
.field public static final a:D

.field public static final synthetic b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lzd/c;->l:Lzd/c;

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lc3/d;->q(ILzd/c;)J

    move-result-wide v0

    .line 2
    sget-object v2, Lzd/a;->i:Lzd/a$a;

    .line 3
    sget-object v2, Lzd/c;->j:Lzd/c;

    invoke-static {v0, v1, v2}, Lzd/a;->o(JLzd/c;)D

    move-result-wide v0

    .line 4
    sput-wide v0, Lob/d;->a:D

    return-void
.end method

.method public static final a(Lob/c;Led/e;)Lxb/a;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetryProvider"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lxb/a;->Companion:Lxb/a$a;

    invoke-interface {p0}, Lob/c;->getIdTokenString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lxb/a$a;->a(Ljava/lang/String;Led/e;)Lxb/a;

    move-result-object p0

    return-object p0
.end method
