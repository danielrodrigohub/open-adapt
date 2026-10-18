.class public final Lhc/v;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lhc/w;)V
    .locals 0

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    invoke-static {p1}, Lgc/c0;->z([B)Lgc/c0;

    move-result-object p1

    invoke-virtual {p1}, Lgc/c0;->y()Lm7/i;

    move-result-object p1

    invoke-virtual {p1}, Lm7/i;->r()[B

    move-result-object p1

    const-string v0, "parseFrom(response).deviceNonce.toByteArray()"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
