.class public final Lya/d$s;
.super Lya/d$b;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->k(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$b<",
        "Lmc/g0;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:Lya/d$s$a;
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

    iput-object p1, p0, Lya/d$s;->p:Lya/d;

    iput-object p2, p0, Lya/d$s;->q:Lv9/a;

    .line 1
    invoke-direct {p0, p1}, Lya/d$b;-><init>(Lya/d;)V

    .line 2
    iget-object v0, p1, Lya/d;->f:Ljava/lang/String;

    const-string v1, "\tgetAnimation"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lya/d$s;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/d$s;->n:Lv9/a;

    .line 6
    new-instance p2, Lya/d$s$a;

    invoke-direct {p2, p1, p0}, Lya/d$s$a;-><init>(Lya/d;Lya/d$s;)V

    .line 7
    iput-object p2, p0, Lya/d$s;->o:Lya/d$s$a;

    return-void
.end method


# virtual methods
.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/d$s;->n:Lv9/a;

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

    iget-object v0, p0, Lya/d$s;->o:Lya/d$s$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/d$s;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d$s;->p:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/u0;

    .line 4
    iget-object v3, p0, Lya/d$s;->p:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/d$s;->q:Lv9/a;

    .line 7
    invoke-direct {v2, v3, v4, p1}, Lv9/u0;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

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
    iget-object p1, v2, Lv9/u0;->o:Lv9/a;

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
    check-cast p1, Lmc/g0;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/d$s;->p:Lya/d;

    .line 4
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v2, Lv9/w0;

    .line 6
    iget-object v3, v0, Lya/d;->f:Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lya/d$s;->q:Lv9/a;

    .line 8
    sget-object v5, Lba/g;->l:Lba/g$a;

    invoke-virtual {v5, p1}, Lba/g$a;->b(Lmc/g0;)Lba/g;

    move-result-object p1

    .line 9
    invoke-direct {v2, v3, v4, p1}, Lv9/w0;-><init>(Ljava/lang/String;Lv9/a;Lba/g;)V

    .line 10
    instance-of p1, v2, Lv9/p2;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    instance-of p1, v2, Lv9/a1;

    .line 12
    :goto_0
    new-instance p1, Leb/c;

    invoke-direct {p1, v2}, Leb/c;-><init>(Leb/d;)V

    const/4 v3, 0x0

    .line 13
    sget-object v4, Lv9/t;->a:Lv9/t;

    .line 14
    sget-object v4, Lv9/t;->i:Leb/f;

    const/4 v5, 0x1

    new-array v6, v5, [Leb/g;

    aput-object p1, v6, v3

    .line 15
    invoke-virtual {v4, v6}, Leb/f;->a([Leb/g;)V

    .line 16
    iget-object p1, v0, Lya/d;->m:Lv9/p0;

    if-eqz p1, :cond_1

    .line 17
    invoke-interface {p1, v2}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_1
    new-array p1, v3, [Lv9/p0;

    .line 18
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    check-cast p1, [Lv9/p0;

    .line 20
    array-length v1, p1

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 21
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v4, v2}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_2
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 23
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_a

    .line 24
    iget-object p1, v2, Lv9/w0;->m:Lv9/a;

    .line 25
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-nez p1, :cond_a

    .line 26
    instance-of p1, v2, Lv9/n4;

    if-eqz p1, :cond_3

    move p1, v5

    goto :goto_2

    .line 27
    :cond_3
    instance-of p1, v2, Lv9/a2;

    :goto_2
    if-eqz p1, :cond_4

    move p1, v5

    goto :goto_3

    .line 28
    :cond_4
    instance-of p1, v2, Lv9/f2;

    :goto_3
    if-eqz p1, :cond_5

    move p1, v5

    goto :goto_4

    .line 29
    :cond_5
    instance-of p1, v2, Lv9/w4;

    :goto_4
    if-eqz p1, :cond_6

    move p1, v5

    goto :goto_5

    .line 30
    :cond_6
    instance-of p1, v2, Lv9/f4;

    :goto_5
    if-eqz p1, :cond_7

    move p1, v5

    goto :goto_6

    .line 31
    :cond_7
    instance-of p1, v2, Lv9/z3;

    :goto_6
    if-eqz p1, :cond_8

    move p1, v5

    goto :goto_7

    .line 32
    :cond_8
    instance-of p1, v2, Lv9/w3;

    :goto_7
    if-eqz p1, :cond_9

    goto :goto_8

    .line 33
    :cond_9
    instance-of v5, v2, Lv9/y1;

    :goto_8
    if-eqz v5, :cond_a

    .line 34
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/w;

    invoke-direct {v1, v2, v0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_a
    return-void
.end method
