.class public final Lya/d$o;
.super Lya/d$a;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->T(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/d$o$a;
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


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;)V
    .locals 2

    iput-object p1, p0, Lya/d$o;->p:Lya/d;

    iput-object p2, p0, Lya/d$o;->q:Lv9/a;

    .line 1
    invoke-direct {p0, p1}, Lya/d$a;-><init>(Lya/d;)V

    .line 2
    iget-object v0, p1, Lya/d;->f:Ljava/lang/String;

    const-string v1, "\tsystemReset"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lya/d$o;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/d$o;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/d$o$a;

    invoke-direct {p2, p1, p0}, Lya/d$o$a;-><init>(Lya/d;Lya/d$o;)V

    .line 7
    iput-object p2, p0, Lya/d$o;->o:Lya/d$o$a;

    return-void
.end method


# virtual methods
.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$o;->n:Lv9/a;

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

    iget-object v0, p0, Lya/d$o;->o:Lya/d$o$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$o;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lya/d$o;->p:Lya/d;

    iget-object v0, p0, Lya/d$o;->q:Lv9/a;

    invoke-virtual {p1, v0}, Lya/d;->f(Lv9/a;)V

    .line 2
    iget-object p1, p0, Lya/d$o;->p:Lya/d;

    .line 3
    iget-object v0, p1, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v1, Lv9/i5;

    .line 5
    iget-object v2, p0, Lya/d$o;->p:Lya/d;

    .line 6
    iget-object v2, v2, Lya/d;->f:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lya/d$o;->q:Lv9/a;

    .line 8
    new-instance v4, Ly9/a;

    iget-object v5, p0, Lya/d$o;->q:Lv9/a;

    .line 9
    iget-object v6, p0, Lya/d$o;->m:Ljava/lang/String;

    .line 10
    invoke-direct {v4, v5, v6}, Ly9/a;-><init>(Lv9/a;Ljava/lang/String;)V

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lv9/i5;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 12
    sget-object v2, Lv9/t;->a:Lv9/t;

    .line 13
    sget-object v2, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v4, v3, [Leb/g;

    .line 14
    new-instance v5, Leb/b;

    invoke-direct {v5, v1}, Leb/b;-><init>(Leb/d;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Leb/f;->a([Leb/g;)V

    new-array v2, v6, [Lv9/p0;

    .line 15
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    check-cast v0, [Lv9/p0;

    .line 17
    array-length v2, v0

    :goto_0
    if-ge v6, v2, :cond_0

    aget-object v4, v0, v6

    .line 18
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v4, v1}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v5, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p1, Lya/d;->A:Lhc/l0;

    .line 20
    instance-of v0, v0, Lza/a;

    if-nez v0, :cond_7

    .line 21
    iget-object v0, v1, Lv9/i5;->o:Lv9/a;

    .line 22
    invoke-virtual {v0}, Lv9/a;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 23
    instance-of v0, v1, Lv9/m4;

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    .line 24
    :cond_1
    instance-of v0, v1, Lv9/z1;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    .line 25
    :cond_2
    instance-of v0, v1, Lv9/u4;

    :goto_2
    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_3

    .line 26
    :cond_3
    instance-of v0, v1, Lv9/d4;

    :goto_3
    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_4

    .line 27
    :cond_4
    instance-of v0, v1, Lv9/x3;

    :goto_4
    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_5

    .line 28
    :cond_5
    instance-of v0, v1, Lv9/u3;

    :goto_5
    if-eqz v0, :cond_6

    goto :goto_6

    .line 29
    :cond_6
    instance-of v3, v1, Lv9/w1;

    :goto_6
    if-eqz v3, :cond_7

    .line 30
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v2, Lya/t;

    invoke-direct {v2, p1, v1}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {v0, v2}, Lz9/a;->b(Lqd/a;)V

    :cond_7
    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Lya/d$o;->p:Lya/d;

    iget-object v1, p0, Lya/d$o;->q:Lv9/a;

    invoke-virtual {v0, v1}, Lya/d;->f(Lv9/a;)V

    .line 3
    iget-object v0, p0, Lya/d$o;->p:Lya/d;

    .line 4
    new-instance v1, Lv9/j5;

    .line 5
    iget-object v2, v0, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lya/d$o;->q:Lv9/a;

    invoke-direct {v1, v2, v3}, Lv9/j5;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 7
    new-instance v2, Lv9/i5;

    .line 8
    iget-object v3, p0, Lya/d$o;->p:Lya/d;

    .line 9
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 10
    iget-object v4, p0, Lya/d$o;->q:Lv9/a;

    .line 11
    new-instance v5, Ly9/a;

    iget-object v6, p0, Lya/d$o;->q:Lv9/a;

    .line 12
    iget-object v7, p0, Lya/d$o;->m:Ljava/lang/String;

    .line 13
    invoke-direct {v5, v6, v7}, Ly9/a;-><init>(Lv9/a;Ljava/lang/String;)V

    .line 14
    invoke-direct {v2, v3, v4, v5}, Lv9/i5;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 15
    invoke-static {v0, p1, v1, v2}, Lya/d;->e0(Lya/d;ZLv9/g;Lv9/f;)V

    return-void
.end method
