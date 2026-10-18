.class public final Lxd/g;
.super Lxd/j;


# direct methods
.method public static final m(Lxd/d;Lqd/l;)Lxd/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lxd/l;

    invoke-direct {v0, p0, p1}, Lxd/l;-><init>(Lxd/d;Lqd/l;)V

    return-object v0
.end method

.method public static final n(Lxd/d;)Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Lxd/d;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Landroidx/lifecycle/o;->D(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
