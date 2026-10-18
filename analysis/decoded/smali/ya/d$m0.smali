.class public final Lya/d$m0;
.super Ljava/lang/Object;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lfb/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;-><init>(Ljava/lang/String;Lea/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lfb/c0<",
        "Lla/a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lla/b;

.field public final synthetic b:Lya/d;


# direct methods
.method public constructor <init>(Lya/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$m0;->b:Lya/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lla/a;

    .line 2
    iget-object v0, p0, Lya/d$m0;->b:Lya/d;

    .line 3
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v2, Lv9/q5;

    .line 5
    iget-object v3, v0, Lya/d;->f:Ljava/lang/String;

    .line 6
    sget-object v4, Lv9/a;->i:Lv9/a$a;

    .line 7
    sget-object v4, Lv9/a;->j:Lv9/a;

    .line 8
    iget-object v5, p0, Lya/d$m0;->a:Lla/b;

    if-eqz v5, :cond_15

    .line 9
    invoke-direct {v2, v3, v4, v5, p1}, Lv9/q5;-><init>(Ljava/lang/String;Lv9/a;Lla/b;Lla/a;)V

    .line 10
    instance-of p1, v2, Lv9/p2;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    instance-of p1, v2, Lv9/a1;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    instance-of p1, v2, Lv9/w0;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    instance-of p1, v2, Lv9/e1;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    instance-of p1, v2, Lv9/p6;

    if-eqz p1, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    instance-of p1, v2, Lv9/f6;

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_1

    .line 16
    :cond_5
    instance-of p1, v2, Lv9/x6;

    if-eqz p1, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    instance-of p1, v2, Lv9/m6;

    if-eqz p1, :cond_7

    goto :goto_0

    .line 18
    :cond_7
    instance-of p1, v2, Lv9/j6;

    if-eqz p1, :cond_8

    goto :goto_0

    .line 19
    :cond_8
    instance-of p1, v2, Lv9/t6;

    :goto_0
    const/4 p1, 0x2

    .line 20
    :goto_1
    new-instance v4, Leb/c;

    invoke-direct {v4, v2}, Leb/c;-><init>(Leb/d;)V

    .line 21
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_a

    if-eq p1, v3, :cond_9

    goto :goto_2

    .line 22
    :cond_9
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 23
    sget-object p1, Lv9/t;->i:Leb/f;

    new-array v6, v3, [Leb/g;

    aput-object v4, v6, v5

    .line 24
    invoke-virtual {p1, v6}, Leb/f;->a([Leb/g;)V

    goto :goto_2

    .line 25
    :cond_a
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 26
    sget-object p1, Lv9/t;->i:Leb/f;

    .line 27
    invoke-virtual {p1, v4}, Leb/f;->c(Leb/g;)V

    .line 28
    :goto_2
    iget-object p1, v0, Lya/d;->m:Lv9/p0;

    if-eqz p1, :cond_b

    .line 29
    invoke-interface {p1, v2}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_b
    new-array p1, v5, [Lv9/p0;

    .line 30
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    check-cast p1, [Lv9/p0;

    .line 32
    array-length v1, p1

    :goto_3
    if-ge v5, v1, :cond_c

    aget-object v4, p1, v5

    .line 33
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v4, v2}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 34
    :cond_c
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 35
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_14

    .line 36
    iget-object p1, v2, Lv9/q5;->m:Lv9/a;

    .line 37
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-nez p1, :cond_14

    .line 38
    instance-of p1, v2, Lv9/n4;

    if-eqz p1, :cond_d

    move p1, v3

    goto :goto_4

    .line 39
    :cond_d
    instance-of p1, v2, Lv9/a2;

    :goto_4
    if-eqz p1, :cond_e

    move p1, v3

    goto :goto_5

    .line 40
    :cond_e
    instance-of p1, v2, Lv9/f2;

    :goto_5
    if-eqz p1, :cond_f

    move p1, v3

    goto :goto_6

    .line 41
    :cond_f
    instance-of p1, v2, Lv9/w4;

    :goto_6
    if-eqz p1, :cond_10

    move p1, v3

    goto :goto_7

    .line 42
    :cond_10
    instance-of p1, v2, Lv9/f4;

    :goto_7
    if-eqz p1, :cond_11

    move p1, v3

    goto :goto_8

    .line 43
    :cond_11
    instance-of p1, v2, Lv9/z3;

    :goto_8
    if-eqz p1, :cond_12

    move p1, v3

    goto :goto_9

    .line 44
    :cond_12
    instance-of p1, v2, Lv9/w3;

    :goto_9
    if-eqz p1, :cond_13

    goto :goto_a

    .line 45
    :cond_13
    instance-of v3, v2, Lv9/y1;

    :goto_a
    if-eqz v3, :cond_14

    .line 46
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/w;

    invoke-direct {v1, v2, v0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_14
    return-void

    :cond_15
    const-string p1, "sessionId"

    .line 47
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Lla/c;)V
    .locals 8

    const-string v0, "sessionInformation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d$m0;->b:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/u5;

    .line 4
    iget-object v3, v0, Lya/d;->f:Ljava/lang/String;

    .line 5
    sget-object v4, Lv9/a;->i:Lv9/a$a;

    .line 6
    sget-object v4, Lv9/a;->j:Lv9/a;

    .line 7
    iget-object v5, p0, Lya/d$m0;->a:Lla/b;

    if-eqz v5, :cond_1a

    .line 8
    invoke-direct {v2, v3, v4, v5, p1}, Lv9/u5;-><init>(Ljava/lang/String;Lv9/a;Lla/b;Lla/c;)V

    .line 9
    instance-of p1, v2, Lv9/p2;

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    instance-of p1, v2, Lv9/a1;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    instance-of p1, v2, Lv9/w0;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    instance-of p1, v2, Lv9/e1;

    if-eqz p1, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    instance-of p1, v2, Lv9/p6;

    if-eqz p1, :cond_4

    goto :goto_0

    .line 14
    :cond_4
    instance-of p1, v2, Lv9/f6;

    if-eqz p1, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    instance-of p1, v2, Lv9/x6;

    if-eqz p1, :cond_6

    goto :goto_0

    .line 16
    :cond_6
    instance-of p1, v2, Lv9/m6;

    if-eqz p1, :cond_7

    goto :goto_0

    .line 17
    :cond_7
    instance-of p1, v2, Lv9/j6;

    if-eqz p1, :cond_8

    goto :goto_0

    .line 18
    :cond_8
    instance-of p1, v2, Lv9/t6;

    if-eqz p1, :cond_9

    goto :goto_0

    .line 19
    :cond_9
    instance-of p1, v2, Lv9/q5;

    if-eqz p1, :cond_a

    goto :goto_0

    .line 20
    :cond_a
    instance-of p1, v2, Lv9/x5;

    if-eqz p1, :cond_b

    goto :goto_0

    .line 21
    :cond_b
    instance-of p1, v2, Lv9/a6;

    if-eqz p1, :cond_c

    goto :goto_0

    .line 22
    :cond_c
    instance-of p1, v2, Lv9/t5;

    if-eqz p1, :cond_d

    :goto_0
    const/4 p1, 0x2

    goto :goto_2

    :cond_d
    :goto_1
    move p1, v3

    .line 23
    :goto_2
    new-instance v4, Leb/c;

    invoke-direct {v4, v2}, Leb/c;-><init>(Leb/d;)V

    .line 24
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_f

    if-eq p1, v3, :cond_e

    goto :goto_3

    .line 25
    :cond_e
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 26
    sget-object p1, Lv9/t;->i:Leb/f;

    new-array v6, v3, [Leb/g;

    aput-object v4, v6, v5

    .line 27
    invoke-virtual {p1, v6}, Leb/f;->a([Leb/g;)V

    goto :goto_3

    .line 28
    :cond_f
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 29
    sget-object p1, Lv9/t;->i:Leb/f;

    .line 30
    invoke-virtual {p1, v4}, Leb/f;->c(Leb/g;)V

    .line 31
    :goto_3
    iget-object p1, v0, Lya/d;->m:Lv9/p0;

    if-eqz p1, :cond_10

    .line 32
    invoke-interface {p1, v2}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_10
    new-array p1, v5, [Lv9/p0;

    .line 33
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p1, [Lv9/p0;

    .line 35
    array-length v1, p1

    :goto_4
    if-ge v5, v1, :cond_11

    aget-object v4, p1, v5

    .line 36
    sget-object v6, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v4, v2}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v6, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 37
    :cond_11
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 38
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_19

    .line 39
    iget-object p1, v2, Lv9/u5;->m:Lv9/a;

    .line 40
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-nez p1, :cond_19

    .line 41
    instance-of p1, v2, Lv9/n4;

    if-eqz p1, :cond_12

    move p1, v3

    goto :goto_5

    .line 42
    :cond_12
    instance-of p1, v2, Lv9/a2;

    :goto_5
    if-eqz p1, :cond_13

    move p1, v3

    goto :goto_6

    .line 43
    :cond_13
    instance-of p1, v2, Lv9/f2;

    :goto_6
    if-eqz p1, :cond_14

    move p1, v3

    goto :goto_7

    .line 44
    :cond_14
    instance-of p1, v2, Lv9/w4;

    :goto_7
    if-eqz p1, :cond_15

    move p1, v3

    goto :goto_8

    .line 45
    :cond_15
    instance-of p1, v2, Lv9/f4;

    :goto_8
    if-eqz p1, :cond_16

    move p1, v3

    goto :goto_9

    .line 46
    :cond_16
    instance-of p1, v2, Lv9/z3;

    :goto_9
    if-eqz p1, :cond_17

    move p1, v3

    goto :goto_a

    .line 47
    :cond_17
    instance-of p1, v2, Lv9/w3;

    :goto_a
    if-eqz p1, :cond_18

    goto :goto_b

    .line 48
    :cond_18
    instance-of v3, v2, Lv9/y1;

    :goto_b
    if-eqz v3, :cond_19

    .line 49
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/w;

    invoke-direct {v1, v2, v0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_19
    return-void

    :cond_1a
    const-string p1, "sessionId"

    .line 50
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final d(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d$m0;->b:Lya/d;

    .line 2
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance v2, Lv9/b6;

    .line 4
    iget-object v3, p0, Lya/d$m0;->b:Lya/d;

    .line 5
    iget-object v3, v3, Lya/d;->f:Ljava/lang/String;

    .line 6
    iget-object v4, p0, Lya/d$m0;->a:Lla/b;

    if-eqz v4, :cond_8

    .line 7
    sget-object v5, Lv9/a;->i:Lv9/a$a;

    .line 8
    sget-object v5, Lv9/a;->j:Lv9/a;

    .line 9
    invoke-direct {v2, v3, v4, v5, p1}, Lv9/b6;-><init>(Ljava/lang/String;Lla/b;Lv9/a;Ljava/lang/Throwable;)V

    .line 10
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 11
    sget-object p1, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v4, v3, [Leb/g;

    .line 12
    new-instance v5, Leb/b;

    invoke-direct {v5, v2}, Leb/b;-><init>(Leb/d;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p1, v4}, Leb/f;->a([Leb/g;)V

    new-array p1, v6, [Lv9/p0;

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    check-cast p1, [Lv9/p0;

    .line 15
    array-length v1, p1

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v4, p1, v6

    .line 16
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/r;

    invoke-direct {v7, v4, v2}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v5, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, v0, Lya/d;->A:Lhc/l0;

    .line 18
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_7

    .line 19
    iget-object p1, v2, Lv9/b6;->p:Lv9/a;

    .line 20
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    instance-of p1, v2, Lv9/m4;

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    .line 22
    :cond_1
    instance-of p1, v2, Lv9/z1;

    :goto_1
    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_2

    .line 23
    :cond_2
    instance-of p1, v2, Lv9/u4;

    :goto_2
    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_3

    .line 24
    :cond_3
    instance-of p1, v2, Lv9/d4;

    :goto_3
    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_4

    .line 25
    :cond_4
    instance-of p1, v2, Lv9/x3;

    :goto_4
    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_5

    .line 26
    :cond_5
    instance-of p1, v2, Lv9/u3;

    :goto_5
    if-eqz p1, :cond_6

    goto :goto_6

    .line 27
    :cond_6
    instance-of v3, v2, Lv9/w1;

    :goto_6
    if-eqz v3, :cond_7

    .line 28
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, v0, v2}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_7
    return-void

    :cond_8
    const-string p1, "sessionId"

    .line 29
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
