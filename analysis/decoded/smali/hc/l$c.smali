.class public final Lhc/l$c;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->l(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Lmc/a0;",
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
            "Lmc/a0;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, [B

    .line 2
    :try_start_0
    new-instance v0, Lmc/a0;

    invoke-static {p1}, Lfc/z;->C([B)Lfc/z;

    move-result-object p1

    invoke-virtual {p1}, Lfc/z;->A()I

    move-result p1

    invoke-direct {v0, p1}, Lmc/a0;-><init>(I)V
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    new-instance v0, Lmc/a0;

    const/4 p1, 0x0

    invoke-direct {v0, p1}, Lmc/a0;-><init>(I)V

    :goto_0
    return-object v0
.end method
