.class public final Lhc/l$r;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->F(Lnc/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Lmc/b0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnc/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/c<",
            "Lmc/b0;",
            "Lmc/a0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, [B

    .line 2
    invoke-static {p1}, Lfc/a0;->D([B)Lfc/a0;

    move-result-object p1

    .line 3
    new-instance v7, Lmc/b0;

    .line 4
    new-instance v1, Lmc/a0;

    invoke-virtual {p1}, Lfc/a0;->z()Lfc/z;

    move-result-object v0

    invoke-virtual {v0}, Lfc/z;->A()I

    move-result v0

    invoke-direct {v1, v0}, Lmc/a0;-><init>(I)V

    .line 5
    invoke-virtual {p1}, Lfc/a0;->C()J

    move-result-wide v2

    .line 6
    invoke-virtual {p1}, Lfc/a0;->A()I

    move-result v4

    .line 7
    invoke-virtual {p1}, Lfc/a0;->y()I

    move-result v5

    .line 8
    invoke-virtual {p1}, Lfc/a0;->B()Lfc/a0$b;

    move-result-object p1

    invoke-virtual {p1}, Lfc/a0$b;->a()I

    move-result p1

    const/4 v0, 0x3

    const/4 v6, 0x2

    const/4 v8, 0x1

    if-eq p1, v8, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v0, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    move v6, p1

    goto :goto_0

    :cond_1
    move v6, v0

    :cond_2
    :goto_0
    move-object v0, v7

    .line 9
    invoke-direct/range {v0 .. v6}, Lmc/b0;-><init>(Lmc/a0;JIII)V

    return-object v7
.end method
