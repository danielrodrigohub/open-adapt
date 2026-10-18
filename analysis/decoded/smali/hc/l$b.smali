.class public final Lhc/l$b;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->w(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Lmc/c;",
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
            "Lmc/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, [B

    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lmc/c;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Lmc/c;-><init>(II)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lgc/l;->A([B)Lgc/l;

    move-result-object p1

    .line 4
    new-instance v1, Lmc/c;

    invoke-virtual {p1}, Lgc/l;->y()I

    move-result v2

    invoke-virtual {p1}, Lgc/l;->z()Lgc/l$b;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v6, :cond_4

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v6

    .line 7
    :goto_0
    invoke-direct {v1, v2, v0}, Lmc/c;-><init>(II)V

    move-object p1, v1

    :goto_1
    return-object p1
.end method
