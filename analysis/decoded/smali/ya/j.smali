.class public final Lya/j;
.super Lya/d$d;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$d<",
        "Ljava/lang/Boolean;",
        "Loc/b;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/j$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final p:I

.field public final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Loc/a;",
            ">;"
        }
    .end annotation
.end field

.field public final r:I

.field public final synthetic s:Lya/d;

.field public final synthetic t:Lv9/a;

.field public final synthetic u:Lba/h;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;Lba/h;)V
    .locals 7

    iput-object p1, p0, Lya/j;->s:Lya/d;

    iput-object p2, p0, Lya/j;->t:Lv9/a;

    iput-object p3, p0, Lya/j;->u:Lba/h;

    .line 1
    invoke-direct {p0, p1}, Lya/d$d;-><init>(Lya/d;)V

    .line 2
    iget-object v0, p1, Lya/d;->f:Ljava/lang/String;

    const-string v1, "\tcreateAnimation"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lya/j;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/j;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/j$a;

    invoke-direct {p2, p1, p0}, Lya/j$a;-><init>(Lya/d;Lya/j;)V

    .line 7
    iput-object p2, p0, Lya/j;->o:Lya/j$a;

    const p1, 0xffff

    .line 8
    iput p1, p0, Lya/j;->p:I

    .line 9
    iget-object p1, p3, Lba/h;->j:Ljava/util/List;

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lba/c;

    .line 13
    iget v1, v0, Lba/c;->h:I

    .line 14
    iget-object v0, v0, Lba/c;->i:Ljava/util/List;

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, p3}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    check-cast v3, Lba/b;

    .line 18
    new-instance v4, Loc/c;

    .line 19
    iget v5, v3, Lba/b;->k:I

    int-to-byte v5, v5

    .line 20
    iget v6, v3, Lba/b;->l:I

    int-to-byte v6, v6

    .line 21
    iget v3, v3, Lba/b;->m:I

    int-to-byte v3, v3

    .line 22
    invoke-direct {v4, v5, v6, v3}, Loc/c;-><init>(BBB)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Loc/a;

    invoke-direct {v0, v1, v2}, Loc/a;-><init>(ILjava/util/List;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 24
    invoke-static {p2}, Lgd/n;->f0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Loc/a;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 25
    iget p3, p3, Loc/a;->a:I

    .line 26
    iget v1, p0, Lya/j;->p:I

    if-ne p3, v1, :cond_2

    const/4 p3, 0x1

    goto :goto_2

    :cond_2
    move p3, v0

    :goto_2
    if-nez p3, :cond_4

    .line 27
    invoke-static {p2}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    .line 28
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_3
    if-ge v1, p1, :cond_3

    .line 29
    new-instance v2, Loc/c;

    invoke-direct {v2, v0, v0, v0}, Loc/c;-><init>(BBB)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 30
    :cond_3
    new-instance p1, Loc/a;

    iget v1, p0, Lya/j;->p:I

    invoke-direct {p1, v1, p3}, Loc/a;-><init>(ILjava/util/List;)V

    move-object p3, p2

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_4
    move-object p1, p2

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lya/j;->q:Ljava/util/ArrayList;

    .line 32
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Loc/a;

    .line 33
    iget p2, p2, Loc/a;->a:I

    add-int/2addr v0, p2

    goto :goto_4

    .line 34
    :cond_5
    iget p1, p0, Lya/j;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lya/j;->r:I

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 0

    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Loc/b;

    .line 2
    iget-object v0, p0, Lya/j;->u:Lba/h;

    .line 3
    iget v1, v0, Lba/h;->k:I

    .line 4
    iget v2, v0, Lba/h;->h:I

    .line 5
    iget-boolean v3, v0, Lba/h;->l:Z

    .line 6
    iget-boolean v4, v0, Lba/h;->m:Z

    .line 7
    iget v5, v0, Lba/h;->i:I

    .line 8
    iget v6, p0, Lya/j;->r:I

    .line 9
    iget-object v7, p0, Lya/j;->q:Ljava/util/ArrayList;

    move-object v0, v8

    .line 10
    invoke-direct/range {v0 .. v7}, Loc/b;-><init>(IIZZIILjava/util/List;)V

    return-object v8
.end method

.method public final i(FF)V
    .locals 0

    return-void
.end method

.method public final m(Ljava/lang/Throwable;)Z
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/j;->s:Lya/d;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lya/d;->c:Lhc/a;

    .line 3
    iget-object v0, p0, Lya/d$d;->l:Lya/d;

    invoke-virtual {v0, p1}, Lya/d;->h0(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/j;->n:Lv9/a;

    return-object v0
.end method

.method public final o()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lya/j;->o:Lya/j$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/j;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/j;->s:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/y0;

    .line 4
    iget-object v3, p0, Lya/j;->s:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/j;->t:Lv9/a;

    .line 7
    invoke-direct {v2, v3, v4, p1}, Lv9/y0;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 8
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 9
    sget-object p1, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v4, v3, [Leb/g;

    .line 10
    new-instance v5, Leb/b;

    invoke-direct {v5, v2}, Leb/b;-><init>(Leb/d;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Leb/f;->a([Leb/g;)V

    new-array p1, v6, [Lv9/p0;

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast p1, [Lv9/p0;

    .line 13
    array-length v1, p1

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v4, p1, v6

    .line 14
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v4, v2}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v5, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 16
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_7

    .line 17
    iget-object p1, v2, Lv9/y0;->o:Lv9/a;

    .line 18
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    instance-of p1, v2, Lv9/m4;

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    .line 20
    :cond_1
    instance-of p1, v2, Lv9/z1;

    :goto_1
    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_2

    .line 21
    :cond_2
    instance-of p1, v2, Lv9/u4;

    :goto_2
    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_3

    .line 22
    :cond_3
    instance-of p1, v2, Lv9/d4;

    :goto_3
    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_4

    .line 23
    :cond_4
    instance-of p1, v2, Lv9/x3;

    :goto_4
    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_5

    .line 24
    :cond_5
    instance-of p1, v2, Lv9/u3;

    :goto_5
    if-eqz p1, :cond_6

    goto :goto_6

    .line 25
    :cond_6
    instance-of v3, v2, Lv9/w1;

    :goto_6
    if-eqz v3, :cond_7

    .line 26
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, v0, v2}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_7
    return-void
.end method

.method public final x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lya/j;->s:Lya/d;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lya/d;->c:Lhc/a;

    .line 3
    iget-object v1, p0, Lya/j;->t:Lv9/a;

    .line 4
    new-instance v2, Lya/z;

    invoke-direct {v2, v0, v1}, Lya/z;-><init>(Lya/d;Lv9/a;)V

    .line 5
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v3, Lv9/s0;

    invoke-direct {v3, v2, v0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method
