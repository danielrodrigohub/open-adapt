.class public final Lf9/j;
.super Landroidx/recyclerview/widget/o$b;
.source "MyShoesAdapter.kt"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf9/f;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf9/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf9/f;",
            ">;",
            "Ljava/util/List<",
            "Lf9/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldShoes"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/o$b;-><init>()V

    .line 2
    iput-object p1, p0, Lf9/j;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lf9/j;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf9/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf9/f;

    .line 2
    iget-object v0, p0, Lf9/j;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf9/f;

    .line 3
    iget-object v0, p1, Lf9/f;->a:Lea/m;

    .line 4
    iget-object v0, v0, Lea/m;->i:Ljava/lang/String;

    .line 5
    iget-object v1, p2, Lf9/f;->a:Lea/m;

    .line 6
    iget-object v1, v1, Lea/m;->i:Ljava/lang/String;

    .line 7
    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lf9/f;->a:Lea/m;

    .line 9
    iget-object v0, v0, Lea/m;->n:Ljava/lang/String;

    .line 10
    iget-object v1, p2, Lf9/f;->a:Lea/m;

    .line 11
    iget-object v1, v1, Lea/m;->n:Ljava/lang/String;

    .line 12
    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p1, Lf9/f;->b:Lt9/d;

    iget-object v1, p2, Lf9/f;->b:Lt9/d;

    if-ne v0, v1, :cond_0

    .line 14
    iget-object v0, p1, Lf9/f;->c:Lt9/d;

    iget-object v1, p2, Lf9/f;->c:Lt9/d;

    if-ne v0, v1, :cond_0

    .line 15
    iget-object p1, p1, Lf9/f;->d:Lx8/m;

    iget-object p2, p2, Lf9/f;->d:Lx8/m;

    .line 16
    invoke-static {p1, p2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf9/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf9/f;

    .line 2
    iget-object p1, p1, Lf9/f;->a:Lea/m;

    .line 3
    iget-object v0, p0, Lf9/j;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf9/f;

    .line 4
    iget-object p2, p2, Lf9/f;->a:Lea/m;

    .line 5
    invoke-static {p1, p2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(II)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lf9/j;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf9/f;

    .line 2
    iget-object v0, p0, Lf9/j;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf9/f;

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v1, p1, Lf9/f;->a:Lea/m;

    .line 5
    iget-object v1, v1, Lea/m;->i:Ljava/lang/String;

    .line 6
    iget-object v2, p2, Lf9/f;->a:Lea/m;

    .line 7
    iget-object v2, v2, Lea/m;->i:Ljava/lang/String;

    .line 8
    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    iget-object v1, p2, Lf9/f;->a:Lea/m;

    .line 10
    iget-object v1, v1, Lea/m;->i:Ljava/lang/String;

    const-string v2, "key_bundle_pair_name"

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v1, p1, Lf9/f;->a:Lea/m;

    .line 13
    iget-object v1, v1, Lea/m;->n:Ljava/lang/String;

    .line 14
    iget-object v2, p2, Lf9/f;->a:Lea/m;

    .line 15
    iget-object v2, v2, Lea/m;->n:Ljava/lang/String;

    .line 16
    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 17
    iget-object v1, p2, Lf9/f;->a:Lea/m;

    .line 18
    iget-object v1, v1, Lea/m;->n:Ljava/lang/String;

    const-string v2, "key_bundle_colorway"

    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_1
    iget-object v1, p1, Lf9/f;->b:Lt9/d;

    iget-object v2, p2, Lf9/f;->b:Lt9/d;

    if-eq v1, v2, :cond_2

    .line 21
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_bundle_left_connection"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_2
    iget-object v1, p1, Lf9/f;->c:Lt9/d;

    iget-object v2, p2, Lf9/f;->c:Lt9/d;

    if-eq v1, v2, :cond_3

    .line 23
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_bundle_right_connection"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_3
    iget-object p1, p1, Lf9/f;->d:Lx8/m;

    .line 25
    invoke-virtual {p1}, Lx8/m;->b()I

    move-result p1

    .line 26
    iget-object v1, p2, Lf9/f;->d:Lx8/m;

    .line 27
    invoke-virtual {v1}, Lx8/m;->b()I

    move-result v1

    if-eq p1, v1, :cond_4

    .line 28
    iget-object p1, p2, Lf9/f;->d:Lx8/m;

    .line 29
    invoke-virtual {p1}, Lx8/m;->b()I

    move-result p1

    const-string p2, "key_badge_count"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lf9/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lf9/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
