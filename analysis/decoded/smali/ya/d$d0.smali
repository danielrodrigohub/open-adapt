.class public final Lya/d$d0;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->R(Lv9/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/x6;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$d0;->h:Lya/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lv9/x6;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lya/d$d0;->h:Lya/d;

    .line 4
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    instance-of v2, p1, Lv9/p2;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    instance-of v2, p1, Lv9/a1;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    instance-of v2, p1, Lv9/w0;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    instance-of v2, p1, Lv9/e1;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    instance-of v2, p1, Lv9/p6;

    if-eqz v2, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    instance-of v2, p1, Lv9/f6;

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v2, 0x2

    .line 11
    :goto_1
    new-instance v4, Leb/c;

    invoke-direct {v4, p1}, Leb/c;-><init>(Leb/d;)V

    .line 12
    invoke-static {v2}, Lq/g;->a(I)I

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_7

    if-eq v2, v3, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    sget-object v2, Lv9/t;->a:Lv9/t;

    .line 14
    sget-object v2, Lv9/t;->i:Leb/f;

    new-array v6, v3, [Leb/g;

    aput-object v4, v6, v5

    .line 15
    invoke-virtual {v2, v6}, Leb/f;->a([Leb/g;)V

    goto :goto_2

    .line 16
    :cond_7
    sget-object v2, Lv9/t;->a:Lv9/t;

    .line 17
    sget-object v2, Lv9/t;->i:Leb/f;

    .line 18
    invoke-virtual {v2, v4}, Leb/f;->c(Leb/g;)V

    .line 19
    :goto_2
    iget-object v2, v0, Lya/d;->m:Lv9/p0;

    if-eqz v2, :cond_8

    .line 20
    invoke-interface {v2, p1}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_8
    new-array v2, v5, [Lv9/p0;

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    check-cast v1, [Lv9/p0;

    .line 23
    array-length v2, v1

    :goto_3
    if-ge v5, v2, :cond_9

    aget-object v4, v1, v5

    .line 24
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v4, p1}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 25
    :cond_9
    iget-object v1, v0, Lya/d;->A:Lhc/l0;

    .line 26
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_11

    .line 27
    iget-object v1, p1, Lv9/x6;->m:Lv9/a;

    .line 28
    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-nez v1, :cond_11

    .line 29
    instance-of v1, p1, Lv9/n4;

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_4

    .line 30
    :cond_a
    instance-of v1, p1, Lv9/a2;

    :goto_4
    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_5

    .line 31
    :cond_b
    instance-of v1, p1, Lv9/f2;

    :goto_5
    if-eqz v1, :cond_c

    move v1, v3

    goto :goto_6

    .line 32
    :cond_c
    instance-of v1, p1, Lv9/w4;

    :goto_6
    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_7

    .line 33
    :cond_d
    instance-of v1, p1, Lv9/f4;

    :goto_7
    if-eqz v1, :cond_e

    move v1, v3

    goto :goto_8

    .line 34
    :cond_e
    instance-of v1, p1, Lv9/z3;

    :goto_8
    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_9

    .line 35
    :cond_f
    instance-of v1, p1, Lv9/w3;

    :goto_9
    if-eqz v1, :cond_10

    goto :goto_a

    .line 36
    :cond_10
    instance-of v3, p1, Lv9/y1;

    :goto_a
    if-eqz v3, :cond_11

    .line 37
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v2, Lya/w;

    invoke-direct {v2, p1, v0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {v1, v2}, Lz9/a;->b(Lqd/a;)V

    .line 38
    :cond_11
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
