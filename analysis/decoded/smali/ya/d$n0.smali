.class public final Lya/d$n0;
.super Lya/d$c;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->m(Lv9/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$c<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/d$n0$a;
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

.field public final synthetic r:Z


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;Z)V
    .locals 1

    iput-object p1, p0, Lya/d$n0;->p:Lya/d;

    iput-object p2, p0, Lya/d$n0;->q:Lv9/a;

    iput-boolean p3, p0, Lya/d$n0;->r:Z

    .line 1
    invoke-direct {p0, p1}, Lya/d$c;-><init>(Lya/d;)V

    .line 2
    iget-object p3, p1, Lya/d;->f:Ljava/lang/String;

    const-string v0, "\tsetFootPresenceSensor"

    .line 3
    invoke-static {p3, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    iput-object p3, p0, Lya/d$n0;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/d$n0;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/d$n0$a;

    invoke-direct {p2, p1, p0}, Lya/d$n0$a;-><init>(Lya/d;Lya/d$n0;)V

    .line 7
    iput-object p2, p0, Lya/d$n0;->o:Lya/d$n0$a;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lya/d$n0;->r:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$n0;->n:Lv9/a;

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

    iget-object v0, p0, Lya/d$n0;->o:Lya/d$n0$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$n0;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lya/d$n0;->r:Z

    const/4 v1, 0x1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lya/d$n0;->p:Lya/d;

    .line 3
    iget-object v4, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v5, Lv9/b3;

    .line 5
    iget-object v6, p0, Lya/d$n0;->p:Lya/d;

    .line 6
    iget-object v6, v6, Lya/d;->f:Ljava/lang/String;

    .line 7
    iget-object v7, p0, Lya/d$n0;->q:Lv9/a;

    .line 8
    invoke-direct {v5, v6, v7, p1}, Lv9/b3;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 9
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 10
    sget-object p1, Lv9/t;->i:Leb/f;

    new-array v6, v1, [Leb/g;

    .line 11
    new-instance v7, Leb/b;

    invoke-direct {v7, v5}, Leb/b;-><init>(Leb/d;)V

    aput-object v7, v6, v3

    invoke-virtual {p1, v6}, Leb/f;->a([Leb/g;)V

    new-array p1, v3, [Lv9/p0;

    .line 12
    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast p1, [Lv9/p0;

    .line 14
    array-length v2, p1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 15
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v4, v5}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 17
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_f

    .line 18
    iget-object p1, v5, Lv9/b3;->o:Lv9/a;

    .line 19
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 20
    instance-of p1, v5, Lv9/m4;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    .line 21
    :cond_1
    instance-of p1, v5, Lv9/z1;

    :goto_1
    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    .line 22
    :cond_2
    instance-of p1, v5, Lv9/u4;

    :goto_2
    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_3

    .line 23
    :cond_3
    instance-of p1, v5, Lv9/d4;

    :goto_3
    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_4

    .line 24
    :cond_4
    instance-of p1, v5, Lv9/x3;

    :goto_4
    if-eqz p1, :cond_5

    move p1, v1

    goto :goto_5

    .line 25
    :cond_5
    instance-of p1, v5, Lv9/u3;

    :goto_5
    if-eqz p1, :cond_6

    goto :goto_6

    .line 26
    :cond_6
    instance-of v1, v5, Lv9/w1;

    :goto_6
    if-eqz v1, :cond_f

    .line 27
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, v0, v5}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    goto/16 :goto_e

    .line 28
    :cond_7
    iget-object v0, p0, Lya/d$n0;->p:Lya/d;

    .line 29
    iget-object v4, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    new-instance v5, Lv9/y2;

    .line 31
    iget-object v6, p0, Lya/d$n0;->p:Lya/d;

    .line 32
    iget-object v6, v6, Lya/d;->f:Ljava/lang/String;

    .line 33
    iget-object v7, p0, Lya/d$n0;->q:Lv9/a;

    .line 34
    invoke-direct {v5, v6, v7, p1}, Lv9/y2;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 35
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 36
    sget-object p1, Lv9/t;->i:Leb/f;

    new-array v6, v1, [Leb/g;

    .line 37
    new-instance v7, Leb/b;

    invoke-direct {v7, v5}, Leb/b;-><init>(Leb/d;)V

    aput-object v7, v6, v3

    invoke-virtual {p1, v6}, Leb/f;->a([Leb/g;)V

    new-array p1, v3, [Lv9/p0;

    .line 38
    invoke-virtual {v4, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    check-cast p1, [Lv9/p0;

    .line 40
    array-length v2, p1

    :goto_7
    if-ge v3, v2, :cond_8

    aget-object v4, p1, v3

    .line 41
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v4, v5}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 42
    :cond_8
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 43
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_f

    .line 44
    iget-object p1, v5, Lv9/y2;->o:Lv9/a;

    .line 45
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 46
    instance-of p1, v5, Lv9/m4;

    if-eqz p1, :cond_9

    move p1, v1

    goto :goto_8

    .line 47
    :cond_9
    instance-of p1, v5, Lv9/z1;

    :goto_8
    if-eqz p1, :cond_a

    move p1, v1

    goto :goto_9

    .line 48
    :cond_a
    instance-of p1, v5, Lv9/u4;

    :goto_9
    if-eqz p1, :cond_b

    move p1, v1

    goto :goto_a

    .line 49
    :cond_b
    instance-of p1, v5, Lv9/d4;

    :goto_a
    if-eqz p1, :cond_c

    move p1, v1

    goto :goto_b

    .line 50
    :cond_c
    instance-of p1, v5, Lv9/x3;

    :goto_b
    if-eqz p1, :cond_d

    move p1, v1

    goto :goto_c

    .line 51
    :cond_d
    instance-of p1, v5, Lv9/u3;

    :goto_c
    if-eqz p1, :cond_e

    goto :goto_d

    .line 52
    :cond_e
    instance-of v1, v5, Lv9/w1;

    :goto_d
    if-eqz v1, :cond_f

    .line 53
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, v0, v5}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_f
    :goto_e
    return-void
.end method

.method public final w(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-boolean v0, p0, Lya/d$n0;->r:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lya/d$n0;->p:Lya/d;

    .line 4
    new-instance v1, Lv9/d3;

    .line 5
    iget-object v2, v0, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lya/d$n0;->q:Lv9/a;

    invoke-direct {v1, v2, v3}, Lv9/d3;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 7
    new-instance v2, Lv9/b3;

    .line 8
    iget-object v3, p0, Lya/d$n0;->p:Lya/d;

    .line 9
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 10
    iget-object v4, p0, Lya/d$n0;->q:Lv9/a;

    .line 11
    new-instance v5, Ly9/a;

    .line 12
    iget-object v6, p0, Lya/d$n0;->q:Lv9/a;

    .line 13
    iget-object v7, p0, Lya/d$n0;->m:Ljava/lang/String;

    .line 14
    invoke-direct {v5, v6, v7}, Ly9/a;-><init>(Lv9/a;Ljava/lang/String;)V

    .line 15
    invoke-direct {v2, v3, v4, v5}, Lv9/b3;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 16
    invoke-static {v0, p1, v1, v2}, Lya/d;->e0(Lya/d;ZLv9/g;Lv9/f;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lya/d$n0;->p:Lya/d;

    .line 18
    new-instance v1, Lv9/a3;

    .line 19
    iget-object v2, v0, Lya/d;->f:Ljava/lang/String;

    .line 20
    iget-object v3, p0, Lya/d$n0;->q:Lv9/a;

    invoke-direct {v1, v2, v3}, Lv9/a3;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 21
    new-instance v2, Lv9/y2;

    .line 22
    iget-object v3, p0, Lya/d$n0;->p:Lya/d;

    .line 23
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 24
    iget-object v4, p0, Lya/d$n0;->q:Lv9/a;

    .line 25
    new-instance v5, Ly9/a;

    .line 26
    iget-object v6, p0, Lya/d$n0;->q:Lv9/a;

    .line 27
    iget-object v7, p0, Lya/d$n0;->m:Ljava/lang/String;

    .line 28
    invoke-direct {v5, v6, v7}, Ly9/a;-><init>(Lv9/a;Ljava/lang/String;)V

    .line 29
    invoke-direct {v2, v3, v4, v5}, Lv9/y2;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 30
    invoke-static {v0, p1, v1, v2}, Lya/d;->e0(Lya/d;ZLv9/g;Lv9/f;)V

    :goto_0
    return-void
.end method
