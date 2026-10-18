.class public final Lhc/t;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Ljava/util/List<",
        "+",
        "Lmc/a0;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lhc/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, [B

    .line 2
    :try_start_0
    invoke-static {p1}, Lfc/y;->z([B)Lfc/y;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lfc/y;->y()Ljava/util/List;

    move-result-object p1

    const-string v0, "parseFrom(response)\n    \u2026          .sessionIDsList"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    move-object v0, p1

    check-cast v0, Lm7/x;

    invoke-virtual {v0}, Lm7/x;->size()I

    move-result v0

    new-array v1, v0, [I

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    .line 6
    aput v4, v1, v3

    move v3, v5

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v2, v0, :cond_1

    .line 8
    aget v3, v1, v2

    .line 9
    new-instance v4, Lmc/a0;

    invoke-direct {v4, v3}, Lmc/a0;-><init>(I)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :catch_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p1
.end method
