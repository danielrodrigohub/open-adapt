.class public final Lhc/l$j;
.super Lpc/c;
.source "CoreRFBigfoot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->z(Lnc/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Ljava/util/List<",
        "+",
        "Lmc/n;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a<",
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
    .locals 10

    .line 1
    check-cast p1, [B

    .line 2
    sget-object v0, Lmc/l;->i:Lmc/l;

    sget-object v1, Lmc/m;->i:Lmc/m;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    .line 3
    :try_start_0
    invoke-static {p1}, Lfc/c;->B([B)Lfc/c;

    move-result-object p1

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p1}, Lfc/c;->z()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfc/e;

    .line 6
    new-instance v6, Lmc/n;

    .line 7
    invoke-virtual {v5}, Lfc/e;->D()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v3, :cond_2

    if-eq v7, v8, :cond_1

    const/4 v9, 0x3

    if-eq v7, v9, :cond_0

    move-object v7, v1

    goto :goto_1

    .line 8
    :cond_0
    sget-object v7, Lmc/m;->l:Lmc/m;

    goto :goto_1

    .line 9
    :cond_1
    sget-object v7, Lmc/m;->k:Lmc/m;

    goto :goto_1

    .line 10
    :cond_2
    sget-object v7, Lmc/m;->j:Lmc/m;

    .line 11
    :goto_1
    invoke-virtual {v5}, Lfc/e;->B()I

    move-result v5

    if-eq v5, v3, :cond_4

    if-eq v5, v8, :cond_3

    move-object v5, v0

    goto :goto_2

    .line 12
    :cond_3
    sget-object v5, Lmc/l;->k:Lmc/l;

    goto :goto_2

    .line 13
    :cond_4
    sget-object v5, Lmc/l;->j:Lmc/l;

    .line 14
    :goto_2
    invoke-direct {v6, v7, v5}, Lmc/n;-><init>(Lmc/m;Lmc/l;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array p1, v3, [Lmc/n;

    .line 15
    new-instance v3, Lmc/n;

    invoke-direct {v3, v1, v0}, Lmc/n;-><init>(Lmc/m;Lmc/l;)V

    aput-object v3, p1, v2

    invoke-static {p1}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_3

    :cond_5
    new-array p1, v3, [Lmc/n;

    .line 16
    new-instance v3, Lmc/n;

    invoke-direct {v3, v1, v0}, Lmc/n;-><init>(Lmc/m;Lmc/l;)V

    aput-object v3, p1, v2

    invoke-static {p1}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    :cond_6
    :goto_3
    return-object v4
.end method
