.class public final Lhc/l$m;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->h(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Lmc/e0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
            "Lmc/e0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [B

    .line 2
    :try_start_0
    invoke-static {p1}, Lgc/i;->G([B)Lgc/i;

    move-result-object p1

    .line 3
    new-instance v0, Lmc/e0;

    .line 4
    invoke-virtual {p1}, Lgc/i;->E()I

    move-result v1

    div-int/lit16 v1, v1, 0x100

    .line 5
    invoke-virtual {p1}, Lgc/i;->D()I

    move-result v2

    div-int/lit16 v2, v2, 0x100

    .line 6
    invoke-virtual {p1}, Lgc/i;->C()I

    move-result p1

    div-int/lit16 p1, p1, 0x100

    const/4 v3, 0x4

    .line 7
    invoke-direct {v0, v1, v2, p1, v3}, Lmc/e0;-><init>(IIII)V
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    new-instance v0, Lmc/e0;

    const/16 p1, 0x8

    invoke-direct {v0, p1}, Lmc/e0;-><init>(I)V

    :goto_0
    return-object v0
.end method
