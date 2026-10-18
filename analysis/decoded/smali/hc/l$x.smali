.class public final Lhc/l$x;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->V(Lnc/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Lmc/o;",
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
            "Lmc/o;",
            "Ljava/util/List<",
            "Lmc/n;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [B

    .line 2
    sget-object v0, Lmc/o;->k:Lmc/o;

    if-eqz p1, :cond_4

    .line 3
    invoke-static {p1}, Lfc/j;->z([B)Lfc/j;

    move-result-object p1

    invoke-virtual {p1}, Lfc/j;->y()Lfc/j$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 6
    :cond_1
    sget-object p1, Lmc/o;->j:Lmc/o;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lmc/o;->i:Lmc/o;

    goto :goto_0

    .line 8
    :cond_3
    sget-object p1, Lmc/o;->h:Lmc/o;

    :goto_0
    move-object v0, p1

    :cond_4
    :goto_1
    return-object v0
.end method
