.class public final Lab/g;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevicesRepository.kt"

# interfaces
.implements Lta/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lta/a<",
        "Ljava/util/List<",
        "+",
        "Lva/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Ljava/util/List<",
            "Lva/d;",
            ">;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Ljava/lang/Throwable;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqd/l;Lqd/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/l<",
            "-",
            "Ljava/util/List<",
            "Lva/d;",
            ">;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lab/g;->a:Lqd/l;

    iput-object p2, p0, Lab/g;->b:Lqd/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lva/d;

    .line 6
    invoke-static {v2}, Landroidx/lifecycle/o;->A(Lva/d;)Lea/m;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lab/b;->b:Lab/b;

    .line 8
    invoke-virtual {v1}, Lab/b;->h()Ldb/a;

    move-result-object v1

    const/4 v2, 0x1

    .line 9
    invoke-interface {v1, v2, v0}, Ldb/a;->b(ZLjava/util/List;)V

    .line 10
    iget-object v0, p0, Lab/g;->a:Lqd/l;

    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lab/g;->b:Lqd/l;

    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
