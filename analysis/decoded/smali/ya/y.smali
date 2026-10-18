.class public final Lya/y;
.super Lya/d$c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$c<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:I

.field public final p:Lya/y$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic q:Lya/d;

.field public final synthetic r:Lv9/a;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;I)V
    .locals 2

    iput-object p1, p0, Lya/y;->q:Lya/d;

    iput-object p2, p0, Lya/y;->r:Lv9/a;

    .line 1
    invoke-direct {p0, p1}, Lya/d$c;-><init>(Lya/d;)V

    .line 2
    iget-object v0, p1, Lya/d;->f:Ljava/lang/String;

    const-string v1, "\tstartAnimation"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lya/y;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/y;->n:Lv9/a;

    .line 6
    iput p3, p0, Lya/y;->o:I

    .line 7
    new-instance p2, Lya/y$a;

    invoke-direct {p2, p1, p0}, Lya/y$a;-><init>(Lya/d;Lya/y;)V

    .line 8
    iput-object p2, p0, Lya/y;->p:Lya/y$a;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lya/y;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/y;->n:Lv9/a;

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

    iget-object v0, p0, Lya/y;->p:Lya/y$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/y;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/y;->q:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/y0;

    .line 4
    iget-object v3, p0, Lya/y;->q:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/y;->r:Lv9/a;

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
    .locals 9

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    .line 2
    iget-object p1, p0, Lya/y;->q:Lya/d;

    .line 3
    iget-object v3, p1, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v4, Lv9/a1;

    .line 5
    iget-object v5, p1, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v6, p0, Lya/y;->r:Lv9/a;

    .line 7
    invoke-direct {v4, v5, v6}, Lv9/a1;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 8
    instance-of v5, v4, Lv9/p2;

    .line 9
    new-instance v5, Leb/c;

    invoke-direct {v5, v4}, Leb/c;-><init>(Leb/d;)V

    .line 10
    sget-object v6, Lv9/t;->a:Lv9/t;

    .line 11
    sget-object v6, Lv9/t;->i:Leb/f;

    new-array v7, v0, [Leb/g;

    aput-object v5, v7, v2

    .line 12
    invoke-virtual {v6, v7}, Leb/f;->a([Leb/g;)V

    .line 13
    iget-object v5, p1, Lya/d;->m:Lv9/p0;

    if-eqz v5, :cond_0

    .line 14
    invoke-interface {v5, v4}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_0
    new-array v5, v2, [Lv9/p0;

    .line 15
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    check-cast v3, [Lv9/p0;

    .line 17
    array-length v1, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v5, v3, v2

    .line 18
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v5, v4}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p1, Lya/d;->A:Lhc/l0;

    .line 20
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_11

    .line 21
    iget-object v1, v4, Lv9/a1;->m:Lv9/a;

    .line 22
    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-nez v1, :cond_11

    .line 23
    instance-of v1, v4, Lv9/n4;

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_1

    .line 24
    :cond_2
    instance-of v1, v4, Lv9/a2;

    :goto_1
    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_2

    .line 25
    :cond_3
    instance-of v1, v4, Lv9/f2;

    :goto_2
    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_3

    .line 26
    :cond_4
    instance-of v1, v4, Lv9/w4;

    :goto_3
    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_4

    .line 27
    :cond_5
    instance-of v1, v4, Lv9/f4;

    :goto_4
    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_5

    .line 28
    :cond_6
    instance-of v1, v4, Lv9/z3;

    :goto_5
    if-eqz v1, :cond_7

    move v1, v0

    goto :goto_6

    .line 29
    :cond_7
    instance-of v1, v4, Lv9/w3;

    :goto_6
    if-eqz v1, :cond_8

    goto :goto_7

    .line 30
    :cond_8
    instance-of v0, v4, Lv9/y1;

    :goto_7
    if-eqz v0, :cond_11

    .line 31
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/w;

    invoke-direct {v1, v4, p1}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    goto/16 :goto_f

    .line 32
    :cond_9
    iget-object p1, p0, Lya/y;->q:Lya/d;

    .line 33
    iget-object v3, p1, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    new-instance v4, Lv9/y0;

    .line 35
    iget-object v5, p0, Lya/y;->q:Lya/d;

    .line 36
    iget-object v5, v5, Lya/d;->f:Ljava/lang/String;

    .line 37
    iget-object v6, p0, Lya/y;->r:Lv9/a;

    .line 38
    new-instance v7, Ljava/lang/Exception;

    const-string v8, "Animation could not start"

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-direct {v4, v5, v6, v7}, Lv9/y0;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 40
    sget-object v5, Lv9/t;->a:Lv9/t;

    .line 41
    sget-object v5, Lv9/t;->i:Leb/f;

    new-array v6, v0, [Leb/g;

    .line 42
    new-instance v7, Leb/b;

    invoke-direct {v7, v4}, Leb/b;-><init>(Leb/d;)V

    aput-object v7, v6, v2

    invoke-virtual {v5, v6}, Leb/f;->a([Leb/g;)V

    new-array v5, v2, [Lv9/p0;

    .line 43
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    check-cast v3, [Lv9/p0;

    .line 45
    array-length v1, v3

    :goto_8
    if-ge v2, v1, :cond_a

    aget-object v5, v3, v2

    .line 46
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v5, v4}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 47
    :cond_a
    iget-object v1, p1, Lya/d;->A:Lhc/l0;

    .line 48
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_11

    .line 49
    iget-object v1, v4, Lv9/y0;->o:Lv9/a;

    .line 50
    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 51
    instance-of v1, v4, Lv9/m4;

    if-eqz v1, :cond_b

    move v1, v0

    goto :goto_9

    .line 52
    :cond_b
    instance-of v1, v4, Lv9/z1;

    :goto_9
    if-eqz v1, :cond_c

    move v1, v0

    goto :goto_a

    .line 53
    :cond_c
    instance-of v1, v4, Lv9/u4;

    :goto_a
    if-eqz v1, :cond_d

    move v1, v0

    goto :goto_b

    .line 54
    :cond_d
    instance-of v1, v4, Lv9/d4;

    :goto_b
    if-eqz v1, :cond_e

    move v1, v0

    goto :goto_c

    .line 55
    :cond_e
    instance-of v1, v4, Lv9/x3;

    :goto_c
    if-eqz v1, :cond_f

    move v1, v0

    goto :goto_d

    .line 56
    :cond_f
    instance-of v1, v4, Lv9/u3;

    :goto_d
    if-eqz v1, :cond_10

    goto :goto_e

    .line 57
    :cond_10
    instance-of v0, v4, Lv9/w1;

    :goto_e
    if-eqz v0, :cond_11

    .line 58
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, p1, v4}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_11
    :goto_f
    return-void
.end method
