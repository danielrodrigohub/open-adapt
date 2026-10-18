.class public final Lab/h;
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
.field public final synthetic a:Lv9/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lv9/a;


# direct methods
.method public constructor <init>(Lv9/p0;Lv9/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;",
            "Lv9/a;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lab/h;->a:Lv9/p0;

    iput-object p2, p0, Lab/h;->b:Lv9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5

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

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lva/d;

    .line 6
    invoke-static {v1}, Landroidx/lifecycle/o;->A(Lva/d;)Lea/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lp4/h;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lab/h;->a:Lv9/p0;

    iget-object v1, p0, Lab/h;->b:Lv9/a;

    .line 8
    sget-object v2, Lab/b;->b:Lab/b;

    .line 9
    invoke-virtual {v2}, Lab/b;->h()Ldb/a;

    move-result-object v3

    const/4 v4, 0x1

    .line 10
    invoke-interface {v3, v4, p1}, Ldb/a;->b(ZLjava/util/List;)V

    .line 11
    new-instance p1, Lea/z;

    .line 12
    invoke-virtual {v2}, Lab/b;->h()Ldb/a;

    move-result-object v2

    const/4 v3, 0x0

    .line 13
    invoke-interface {v2, v3}, Ldb/a;->c(Z)Ljava/util/List;

    move-result-object v2

    .line 14
    invoke-static {v2}, Lp4/h;->y(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 15
    invoke-direct {p1, v1, v2}, Lea/z;-><init>(Lv9/a;Ljava/util/List;)V

    .line 16
    invoke-interface {v0, p1}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lab/h;->a:Lv9/p0;

    iget-object v1, p0, Lab/h;->b:Lv9/a;

    .line 2
    new-instance v2, Lea/o;

    invoke-direct {v2, v1, p1}, Lea/o;-><init>(Lv9/a;Ljava/lang/Throwable;)V

    .line 3
    invoke-interface {v0, v2}, Lv9/p0;->b(Lv9/m;)V

    return-void
.end method
