.class public final Lya/d$k$b;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d$k;->a(Ljava/lang/String;Ljava/lang/String;Lf8/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/d;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lda/d;


# direct methods
.method public constructor <init>(Lya/d;Ljava/lang/String;Lda/d;)V
    .locals 0

    iput-object p1, p0, Lya/d$k$b;->h:Lya/d;

    iput-object p2, p0, Lya/d$k$b;->i:Ljava/lang/String;

    iput-object p3, p0, Lya/d$k$b;->j:Lda/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2
    iget-object v1, p0, Lya/d$k$b;->h:Lya/d;

    .line 3
    iget-object v1, v1, Lya/d;->e:Lfb/c;

    .line 4
    sget-object v2, Lfb/c;->i:Lfb/c$a;

    .line 5
    sget-object v2, Lfb/c;->k:Lfb/c;

    .line 6
    invoke-virtual {v1, v2}, Lfb/c;->b(Lfb/c;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 7
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v2, Lya/h;

    iget-object v3, p0, Lya/d$k$b;->h:Lya/d;

    invoke-direct {v2, v3, v0}, Lya/h;-><init>(Lya/d;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, v2}, Lz9/a;->b(Lqd/a;)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lfd/o;->a:Lfd/o;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :goto_0
    const-wide/16 v1, 0x2

    .line 9
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    iget-object v0, p0, Lya/d$k$b;->h:Lya/d;

    .line 11
    iget-object v1, v0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    new-instance v2, Lv9/f2;

    .line 13
    iget-object v3, p0, Lya/d$k$b;->i:Ljava/lang/String;

    .line 14
    iget-object v4, p0, Lya/d$k$b;->j:Lda/d;

    invoke-static {v4}, Lda/e;->j(Lda/d;)Lv9/e;

    move-result-object v4

    .line 15
    invoke-direct {v2, v3, v4}, Lv9/f2;-><init>(Ljava/lang/String;Lv9/e;)V

    .line 16
    instance-of v3, v2, Lv9/p2;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 17
    :cond_1
    instance-of v3, v2, Lv9/a1;

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 18
    :cond_2
    instance-of v3, v2, Lv9/w0;

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 19
    :cond_3
    instance-of v3, v2, Lv9/e1;

    if-eqz v3, :cond_4

    goto/16 :goto_2

    .line 20
    :cond_4
    instance-of v3, v2, Lv9/p6;

    if-eqz v3, :cond_5

    goto/16 :goto_2

    .line 21
    :cond_5
    instance-of v3, v2, Lv9/f6;

    if-eqz v3, :cond_6

    goto :goto_1

    .line 22
    :cond_6
    instance-of v3, v2, Lv9/x6;

    if-eqz v3, :cond_7

    goto/16 :goto_2

    .line 23
    :cond_7
    instance-of v3, v2, Lv9/m6;

    if-eqz v3, :cond_8

    goto/16 :goto_2

    .line 24
    :cond_8
    instance-of v3, v2, Lv9/j6;

    if-eqz v3, :cond_9

    goto/16 :goto_2

    .line 25
    :cond_9
    instance-of v3, v2, Lv9/t6;

    if-eqz v3, :cond_a

    goto/16 :goto_2

    .line 26
    :cond_a
    instance-of v3, v2, Lv9/q5;

    if-eqz v3, :cond_b

    goto/16 :goto_2

    .line 27
    :cond_b
    instance-of v3, v2, Lv9/x5;

    if-eqz v3, :cond_c

    goto/16 :goto_2

    .line 28
    :cond_c
    instance-of v3, v2, Lv9/a6;

    if-eqz v3, :cond_d

    goto/16 :goto_2

    .line 29
    :cond_d
    instance-of v3, v2, Lv9/t5;

    if-eqz v3, :cond_e

    goto/16 :goto_2

    .line 30
    :cond_e
    instance-of v3, v2, Lv9/u5;

    if-eqz v3, :cond_f

    goto :goto_1

    .line 31
    :cond_f
    instance-of v3, v2, Lv9/c6;

    if-eqz v3, :cond_10

    goto/16 :goto_2

    .line 32
    :cond_10
    instance-of v3, v2, Lv9/q6;

    if-eqz v3, :cond_11

    goto :goto_1

    .line 33
    :cond_11
    instance-of v3, v2, Lv9/o5;

    if-eqz v3, :cond_12

    goto :goto_1

    .line 34
    :cond_12
    instance-of v3, v2, Lv9/g6;

    if-eqz v3, :cond_13

    goto :goto_1

    .line 35
    :cond_13
    instance-of v3, v2, Lv9/p5;

    if-eqz v3, :cond_14

    :goto_1
    move v3, v4

    goto :goto_3

    .line 36
    :cond_14
    instance-of v3, v2, Lv9/c1;

    if-eqz v3, :cond_15

    goto :goto_2

    .line 37
    :cond_15
    instance-of v3, v2, Lv9/t4;

    if-eqz v3, :cond_16

    goto :goto_2

    .line 38
    :cond_16
    instance-of v3, v2, Lv9/l4;

    if-eqz v3, :cond_17

    goto :goto_2

    .line 39
    :cond_17
    instance-of v3, v2, Lv9/y1;

    if-eqz v3, :cond_18

    goto :goto_2

    .line 40
    :cond_18
    instance-of v3, v2, Lv9/c4;

    if-eqz v3, :cond_19

    goto :goto_2

    .line 41
    :cond_19
    instance-of v3, v2, Lv9/y4;

    if-eqz v3, :cond_1a

    goto :goto_2

    .line 42
    :cond_1a
    instance-of v3, v2, Lv9/w4;

    if-eqz v3, :cond_1b

    goto :goto_2

    .line 43
    :cond_1b
    instance-of v3, v2, Lv9/t3;

    if-eqz v3, :cond_1c

    goto :goto_2

    .line 44
    :cond_1c
    instance-of v3, v2, Lv9/n5;

    if-eqz v3, :cond_1d

    goto :goto_2

    .line 45
    :cond_1d
    instance-of v3, v2, Lv9/e5;

    if-eqz v3, :cond_1e

    goto :goto_2

    .line 46
    :cond_1e
    instance-of v3, v2, Lv9/h5;

    if-eqz v3, :cond_1f

    goto :goto_2

    .line 47
    :cond_1f
    instance-of v3, v2, Lv9/i4;

    if-eqz v3, :cond_20

    goto :goto_2

    .line 48
    :cond_20
    instance-of v3, v2, Lv9/q4;

    if-eqz v3, :cond_21

    goto :goto_2

    .line 49
    :cond_21
    instance-of v3, v2, Lv9/j5;

    if-eqz v3, :cond_22

    goto :goto_2

    .line 50
    :cond_22
    instance-of v3, v2, Lv9/z3;

    if-eqz v3, :cond_23

    goto :goto_2

    .line 51
    :cond_23
    instance-of v3, v2, Lv9/f4;

    :goto_2
    const/4 v3, 0x2

    .line 52
    :goto_3
    new-instance v5, Leb/c;

    invoke-direct {v5, v2}, Leb/c;-><init>(Leb/d;)V

    .line 53
    invoke-static {v3}, Lq/g;->a(I)I

    move-result v3

    const/4 v6, 0x0

    if-eqz v3, :cond_25

    if-eq v3, v4, :cond_24

    goto :goto_4

    .line 54
    :cond_24
    sget-object v3, Lv9/t;->a:Lv9/t;

    .line 55
    sget-object v3, Lv9/t;->i:Leb/f;

    new-array v4, v4, [Leb/g;

    aput-object v5, v4, v6

    .line 56
    invoke-virtual {v3, v4}, Leb/f;->a([Leb/g;)V

    goto :goto_4

    .line 57
    :cond_25
    sget-object v3, Lv9/t;->a:Lv9/t;

    .line 58
    sget-object v3, Lv9/t;->i:Leb/f;

    .line 59
    invoke-virtual {v3, v5}, Leb/f;->c(Leb/g;)V

    .line 60
    :goto_4
    iget-object v3, v0, Lya/d;->m:Lv9/p0;

    if-eqz v3, :cond_26

    .line 61
    invoke-interface {v3, v2}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_26
    new-array v3, v6, [Lv9/p0;

    .line 62
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    check-cast v1, [Lv9/p0;

    .line 64
    array-length v3, v1

    :goto_5
    if-ge v6, v3, :cond_27

    aget-object v4, v1, v6

    .line 65
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v7, Lya/u;

    invoke-direct {v7, v4, v2}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v5, v7}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 66
    :cond_27
    iget-object v1, v0, Lya/d;->A:Lhc/l0;

    .line 67
    instance-of v1, v1, Lza/a;

    if-nez v1, :cond_29

    .line 68
    iget-object v1, v2, Lv9/g;->k:Lv9/a;

    .line 69
    invoke-virtual {v1}, Lv9/a;->b()Z

    move-result v1

    if-nez v1, :cond_29

    .line 70
    instance-of v1, v2, Lv9/n4;

    if-eqz v1, :cond_28

    goto :goto_6

    .line 71
    :cond_28
    instance-of v1, v2, Lv9/a2;

    .line 72
    :goto_6
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v3, Lya/w;

    invoke-direct {v3, v2, v0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {v1, v3}, Lz9/a;->b(Lqd/a;)V

    .line 73
    :cond_29
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
