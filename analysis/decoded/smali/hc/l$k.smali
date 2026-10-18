.class public final Lhc/l$k;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->D(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Lmc/q;",
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
            "Lmc/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [B

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1}, Lfc/g;->A([B)Lfc/g;

    move-result-object p1

    .line 3
    new-instance v1, Lmc/q;

    .line 4
    invoke-virtual {p1}, Lfc/g;->z()I

    move-result v2

    .line 5
    invoke-virtual {p1}, Lfc/g;->y()I

    move-result p1

    .line 6
    invoke-direct {v1, v2, p1}, Lmc/q;-><init>(II)V
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    new-instance v1, Lmc/q;

    invoke-direct {v1, v0, v0}, Lmc/q;-><init>(II)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lmc/q;

    invoke-direct {v1, v0, v0}, Lmc/q;-><init>(II)V

    :goto_0
    return-object v1
.end method
