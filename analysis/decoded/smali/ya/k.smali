.class public final Lya/k;
.super Lya/d$c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$c<",
        "Ljava/lang/Boolean;",
        "Loc/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/k$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic p:Lya/d;

.field public final synthetic q:Lv9/a;

.field public final synthetic r:Lba/a;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;Lba/a;)V
    .locals 1

    iput-object p1, p0, Lya/k;->p:Lya/d;

    iput-object p2, p0, Lya/k;->q:Lv9/a;

    iput-object p3, p0, Lya/k;->r:Lba/a;

    .line 1
    invoke-direct {p0, p1}, Lya/d$c;-><init>(Lya/d;)V

    .line 2
    iget-object p3, p1, Lya/d;->f:Ljava/lang/String;

    const-string v0, "\tcreateAnimation"

    .line 3
    invoke-static {p3, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    iput-object p3, p0, Lya/k;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/k;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/k$a;

    invoke-direct {p2, p1, p0}, Lya/k$a;-><init>(Lya/d;Lya/k;)V

    .line 7
    iput-object p2, p0, Lya/k;->o:Lya/k$a;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 13

    .line 1
    new-instance v11, Loc/e;

    .line 2
    iget-object v0, p0, Lya/k;->r:Lba/a;

    .line 3
    iget v1, v0, Lba/a;->k:I

    .line 4
    iget-object v2, v0, Lba/a;->l:Lba/b;

    .line 5
    iget v3, v2, Lba/b;->k:I

    .line 6
    iget v4, v2, Lba/b;->l:I

    .line 7
    iget v5, v2, Lba/b;->m:I

    .line 8
    iget-object v0, v0, Lba/a;->i:Lba/d;

    .line 9
    iget-object v2, v0, Lba/d;->h:Lba/f0;

    .line 10
    iget v6, v2, Lba/f0;->h:I

    .line 11
    iget-object v2, v0, Lba/d;->i:Lba/t;

    .line 12
    iget v7, v2, Lba/t;->h:I

    .line 13
    iget-object v2, v0, Lba/d;->j:Lba/e0;

    .line 14
    iget v8, v2, Lba/e0;->h:I

    .line 15
    iget-object v2, v0, Lba/d;->k:Lba/u;

    .line 16
    iget v9, v2, Lba/u;->h:I

    .line 17
    iget-object v2, v0, Lba/d;->l:Lba/d0;

    .line 18
    iget v10, v2, Lba/d0;->h:I

    .line 19
    iget-object v0, v0, Lba/d;->m:Lba/h0;

    .line 20
    iget v12, v0, Lba/h0;->h:I

    move-object v0, v11

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v12

    .line 21
    invoke-direct/range {v0 .. v10}, Loc/e;-><init>(IIIIIIIIII)V

    return-object v11
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/k;->n:Lv9/a;

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

    iget-object v0, p0, Lya/k;->o:Lya/k$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/k;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/k;->p:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/y0;

    .line 4
    iget-object v3, p0, Lya/k;->p:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/k;->q:Lv9/a;

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

.method public final w(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lya/k;->p:Lya/d;

    iget-object v0, p0, Lya/k;->q:Lv9/a;

    iget-object v1, p0, Lya/k;->r:Lba/a;

    .line 3
    iget-object v1, v1, Lba/a;->j:Lba/s;

    .line 4
    iget v1, v1, Lba/s;->h:I

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Lya/y;

    invoke-direct {v2, p1, v0, v1}, Lya/y;-><init>(Lya/d;Lv9/a;I)V

    .line 7
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v2, p1}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    goto/16 :goto_7

    .line 8
    :cond_0
    iget-object p1, p0, Lya/k;->p:Lya/d;

    .line 9
    iget-object v0, p1, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    new-instance v1, Lv9/y0;

    .line 11
    iget-object v2, p0, Lya/k;->p:Lya/d;

    .line 12
    iget-object v2, v2, Lya/d;->f:Ljava/lang/String;

    .line 13
    iget-object v3, p0, Lya/k;->q:Lv9/a;

    .line 14
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Animation could not be created"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-direct {v1, v2, v3, v4}, Lv9/y0;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 16
    sget-object v2, Lv9/t;->a:Lv9/t;

    .line 17
    sget-object v2, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v4, v3, [Leb/g;

    .line 18
    new-instance v5, Leb/b;

    invoke-direct {v5, v1}, Leb/b;-><init>(Leb/d;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Leb/f;->a([Leb/g;)V

    new-array v2, v6, [Lv9/p0;

    .line 19
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    check-cast v0, [Lv9/p0;

    .line 21
    array-length v2, v0

    :goto_0
    if-ge v6, v2, :cond_1

    aget-object v4, v0, v6

    .line 22
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v4, v1}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v5, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p1, Lya/d;->A:Lhc/l0;

    .line 24
    instance-of v0, v0, Lza/a;

    if-nez v0, :cond_8

    .line 25
    iget-object v0, v1, Lv9/y0;->o:Lv9/a;

    .line 26
    invoke-virtual {v0}, Lv9/a;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 27
    instance-of v0, v1, Lv9/m4;

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    .line 28
    :cond_2
    instance-of v0, v1, Lv9/z1;

    :goto_1
    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    .line 29
    :cond_3
    instance-of v0, v1, Lv9/u4;

    :goto_2
    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_3

    .line 30
    :cond_4
    instance-of v0, v1, Lv9/d4;

    :goto_3
    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_4

    .line 31
    :cond_5
    instance-of v0, v1, Lv9/x3;

    :goto_4
    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_5

    .line 32
    :cond_6
    instance-of v0, v1, Lv9/u3;

    :goto_5
    if-eqz v0, :cond_7

    goto :goto_6

    .line 33
    :cond_7
    instance-of v3, v1, Lv9/w1;

    :goto_6
    if-eqz v3, :cond_8

    .line 34
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v2, Lya/t;

    invoke-direct {v2, p1, v1}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {v0, v2}, Lz9/a;->b(Lqd/a;)V

    :cond_8
    :goto_7
    return-void
.end method
