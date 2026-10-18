.class public final Lhc/l$d;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->v(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Lmc/a;",
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
            "Lmc/a;",
            ">;)V"
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
    sget-object v0, Lmc/a;->h:Lmc/a;

    if-eqz p1, :cond_5

    .line 3
    :try_start_0
    invoke-static {p1}, Lfc/a;->z([B)Lfc/a;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lfc/a;->y()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lmc/a;->m:Lmc/a;

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lmc/a;->l:Lmc/a;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lmc/a;->k:Lmc/a;

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Lmc/a;->j:Lmc/a;

    goto :goto_0

    .line 9
    :cond_4
    sget-object v0, Lmc/a;->i:Lmc/a;
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-object v0
.end method
