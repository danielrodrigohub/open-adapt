.class public final Lx9/k;
.super Lx9/b;
.source "PairExistsConditionalCheck.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/b<",
        "Lv9/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lab/a;

.field public final b:Lea/m;

.field public final c:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lea/m;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/z;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lw9/a;


# direct methods
.method public constructor <init>(Lab/a;Lea/m;Lqd/l;Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lab/a;",
            "Lea/m;",
            "Lqd/l<",
            "-",
            "Lea/m;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Lv9/z;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "devicesRepository"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitPairedDevices"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishConditionError"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lx9/b;-><init>()V

    .line 2
    iput-object p1, p0, Lx9/k;->a:Lab/a;

    .line 3
    iput-object p2, p0, Lx9/k;->b:Lea/m;

    .line 4
    iput-object p3, p0, Lx9/k;->c:Lqd/l;

    .line 5
    iput-object p4, p0, Lx9/k;->d:Lqd/l;

    .line 6
    new-instance p1, Lw9/a;

    sget-object p2, Lv9/a;->i:Lv9/a$a;

    .line 7
    sget-object p2, Lv9/a;->j:Lv9/a;

    .line 8
    sget-object p3, Lw9/u1;->l:Lw9/u1;

    invoke-direct {p1, p2, p3}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    iput-object p1, p0, Lx9/k;->e:Lw9/a;

    return-void
.end method


# virtual methods
.method public final a()Lw9/a;
    .locals 1

    iget-object v0, p0, Lx9/k;->e:Lw9/a;

    return-object v0
.end method

.method public final b()Lv9/m;
    .locals 3

    .line 1
    new-instance v0, Lv9/z;

    .line 2
    iget-object v1, p0, Lx9/k;->e:Lw9/a;

    .line 3
    iget-object v1, v1, Lw9/a;->h:Lv9/a;

    .line 4
    iget-object v2, p0, Lx9/k;->b:Lea/m;

    .line 5
    iget-object v2, v2, Lea/m;->h:Ljava/lang/String;

    .line 6
    invoke-direct {v0, v1, v2}, Lv9/z;-><init>(Lv9/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "PairExistsConditionalCheck"

    return-object v0
.end method

.method public final d()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lx9/k;->a:Lab/a;

    invoke-interface {v0}, Lab/a;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lea/m;

    .line 3
    iget-object v6, p0, Lx9/k;->b:Lea/m;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "other"

    .line 4
    invoke-static {v6, v7}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v5, v6, :cond_2

    :cond_1
    move v5, v3

    goto :goto_1

    .line 5
    :cond_2
    iget-object v7, v5, Lea/m;->h:Ljava/lang/String;

    iget-object v8, v6, Lea/m;->h:Ljava/lang/String;

    invoke-static {v7, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :goto_0
    move v5, v2

    goto :goto_1

    .line 6
    :cond_3
    iget-object v7, v5, Lea/m;->k:Lea/b;

    iget-object v8, v6, Lea/m;->k:Lea/b;

    invoke-virtual {v7, v8}, Lea/b;->d(Lea/b;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget-object v5, v5, Lea/m;->l:Lea/b;

    iget-object v6, v6, Lea/m;->l:Lea/b;

    invoke-virtual {v5, v6}, Lea/b;->d(Lea/b;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :goto_1
    if-eqz v5, :cond_0

    goto :goto_2

    :cond_5
    move-object v1, v4

    .line 8
    :goto_2
    check-cast v1, Lea/m;

    if-eqz v1, :cond_6

    .line 9
    iget-object v0, p0, Lx9/k;->c:Lqd/l;

    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lfd/o;->a:Lfd/o;

    :cond_6
    if-nez v4, :cond_7

    move v2, v3

    :cond_7
    return v2
.end method

.method public final e()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "Lv9/z;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx9/k;->d:Lqd/l;

    return-object v0
.end method
