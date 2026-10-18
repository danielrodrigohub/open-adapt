.class public final Lya/d$p;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lya/d;->f(Lv9/a;)V
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

.field public final synthetic i:Lv9/a;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;)V
    .locals 0

    iput-object p1, p0, Lya/d$p;->h:Lya/d;

    iput-object p2, p0, Lya/d$p;->i:Lv9/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    .line 1
    iget-object v1, p0, Lya/d$p;->h:Lya/d;

    .line 2
    iget-object v2, v1, Lya/d;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->clear()V

    .line 3
    iget-object v2, v1, Lya/d;->w:Lya/h0;

    if-eqz v2, :cond_0

    sget-object v3, Lya/d$e;->h:Lya/d$e;

    invoke-virtual {v2, v3}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    invoke-virtual {v1}, Lya/d;->p0()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    :try_start_0
    iget-object v3, p0, Lya/d$p;->h:Lya/d;

    .line 6
    iget-boolean v3, v3, Lya/d;->h:Z

    if-eqz v3, :cond_2

    .line 7
    sget-object v3, Lv9/t;->a:Lv9/t;

    invoke-virtual {v3}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object v4

    .line 8
    iget-object v5, p0, Lya/d$p;->h:Lya/d;

    .line 9
    iget-object v5, v5, Lya/d;->z:Lfd/h;

    invoke-virtual {v5}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/BroadcastReceiver;

    .line 10
    invoke-virtual {v4, v5}, Lw0/a;->e(Landroid/content/BroadcastReceiver;)V

    .line 11
    iget-object v4, p0, Lya/d$p;->h:Lya/d;

    .line 12
    iget-object v4, v4, Lya/d;->u:Lwa/c;

    .line 13
    invoke-virtual {v3}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-boolean v5, v4, Lwa/a;->f:Z

    if-eqz v5, :cond_1

    .line 15
    iget-object v5, v4, Lwa/a;->g:Lxa/b;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    :cond_1
    iput-boolean v1, v4, Lwa/a;->f:Z

    .line 18
    iget-object v3, p0, Lya/d$p;->h:Lya/d;

    .line 19
    iput-boolean v1, v3, Lya/d;->h:Z

    .line 20
    :cond_2
    iget-object v3, p0, Lya/d$p;->h:Lya/d;

    .line 21
    invoke-virtual {v3}, Lya/d;->k0()Lic/s;

    move-result-object v3

    .line 22
    iget-object v4, p0, Lya/d$p;->h:Lya/d;

    .line 23
    iget-object v4, v4, Lya/d;->f:Ljava/lang/String;

    .line 24
    invoke-interface {v3, v4}, Lic/s;->b(Ljava/lang/String;)V

    .line 25
    iget-object v3, p0, Lya/d$p;->h:Lya/d;

    .line 26
    iget-object v4, v3, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    new-instance v5, Lv9/p2;

    .line 28
    iget-object v6, v3, Lya/d;->f:Ljava/lang/String;

    .line 29
    iget-object v7, p0, Lya/d$p;->i:Lv9/a;

    .line 30
    invoke-direct {v5, v6, v7}, Lv9/p2;-><init>(Ljava/lang/String;Lv9/a;)V

    .line 31
    new-instance v6, Leb/c;

    invoke-direct {v6, v5}, Leb/c;-><init>(Leb/d;)V

    .line 32
    sget-object v7, Lv9/t;->a:Lv9/t;

    .line 33
    sget-object v7, Lv9/t;->i:Leb/f;

    new-array v8, v2, [Leb/g;

    aput-object v6, v8, v1

    .line 34
    invoke-virtual {v7, v8}, Leb/f;->a([Leb/g;)V

    .line 35
    iget-object v6, v3, Lya/d;->m:Lv9/p0;

    if-eqz v6, :cond_3

    .line 36
    invoke-interface {v6, v5}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_3
    new-array v6, v1, [Lv9/p0;

    .line 37
    invoke-virtual {v4, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    check-cast v4, [Lv9/p0;

    .line 39
    array-length v6, v4

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    .line 40
    sget-object v9, Lz9/a;->j:Lz9/a;

    new-instance v10, Lya/u;

    invoke-direct {v10, v8, v5}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v9, v10}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 41
    :cond_4
    iget-object v4, v3, Lya/d;->A:Lhc/l0;

    .line 42
    instance-of v4, v4, Lza/a;

    if-nez v4, :cond_13

    .line 43
    iget-object v4, v5, Lv9/p2;->m:Lv9/a;

    .line 44
    invoke-virtual {v4}, Lv9/a;->b()Z

    move-result v4

    if-nez v4, :cond_13

    .line 45
    instance-of v4, v5, Lv9/n4;

    if-eqz v4, :cond_5

    move v4, v2

    goto :goto_1

    .line 46
    :cond_5
    instance-of v4, v5, Lv9/a2;

    :goto_1
    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_2

    .line 47
    :cond_6
    instance-of v4, v5, Lv9/f2;

    :goto_2
    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_3

    .line 48
    :cond_7
    instance-of v4, v5, Lv9/w4;

    :goto_3
    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_4

    .line 49
    :cond_8
    instance-of v4, v5, Lv9/f4;

    :goto_4
    if-eqz v4, :cond_9

    move v4, v2

    goto :goto_5

    .line 50
    :cond_9
    instance-of v4, v5, Lv9/z3;

    :goto_5
    if-eqz v4, :cond_a

    move v4, v2

    goto :goto_6

    .line 51
    :cond_a
    instance-of v4, v5, Lv9/w3;

    :goto_6
    if-eqz v4, :cond_b

    move v4, v2

    goto :goto_7

    .line 52
    :cond_b
    instance-of v4, v5, Lv9/y1;

    :goto_7
    if-eqz v4, :cond_13

    .line 53
    sget-object v4, Lz9/a;->j:Lz9/a;

    new-instance v6, Lya/w;

    invoke-direct {v6, v5, v3}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {v4, v6}, Lz9/a;->b(Lqd/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_f

    :catchall_0
    move-exception v3

    .line 54
    iget-object v4, p0, Lya/d$p;->h:Lya/d;

    .line 55
    iget-object v5, v4, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    new-instance v6, Lv9/n2;

    .line 57
    iget-object v7, p0, Lya/d$p;->h:Lya/d;

    .line 58
    iget-object v7, v7, Lya/d;->f:Ljava/lang/String;

    .line 59
    iget-object v8, p0, Lya/d$p;->i:Lv9/a;

    .line 60
    invoke-direct {v6, v7, v8, v3}, Lv9/n2;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 61
    sget-object v3, Lv9/t;->a:Lv9/t;

    .line 62
    sget-object v3, Lv9/t;->i:Leb/f;

    new-array v7, v2, [Leb/g;

    .line 63
    new-instance v8, Leb/b;

    invoke-direct {v8, v6}, Leb/b;-><init>(Leb/d;)V

    aput-object v8, v7, v1

    invoke-virtual {v3, v7}, Leb/f;->a([Leb/g;)V

    new-array v3, v1, [Lv9/p0;

    .line 64
    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    check-cast v3, [Lv9/p0;

    .line 66
    array-length v0, v3

    :goto_8
    if-ge v1, v0, :cond_c

    aget-object v5, v3, v1

    .line 67
    sget-object v7, Lz9/a;->j:Lz9/a;

    new-instance v8, Lya/r;

    invoke-direct {v8, v5, v6}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v7, v8}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 68
    :cond_c
    iget-object v0, v4, Lya/d;->A:Lhc/l0;

    .line 69
    instance-of v0, v0, Lza/a;

    if-nez v0, :cond_13

    .line 70
    iget-object v0, v6, Lv9/n2;->o:Lv9/a;

    .line 71
    invoke-virtual {v0}, Lv9/a;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 72
    instance-of v0, v6, Lv9/m4;

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_9

    .line 73
    :cond_d
    instance-of v0, v6, Lv9/z1;

    :goto_9
    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_a

    .line 74
    :cond_e
    instance-of v0, v6, Lv9/u4;

    :goto_a
    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_b

    .line 75
    :cond_f
    instance-of v0, v6, Lv9/d4;

    :goto_b
    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_c

    .line 76
    :cond_10
    instance-of v0, v6, Lv9/x3;

    :goto_c
    if-eqz v0, :cond_11

    move v0, v2

    goto :goto_d

    .line 77
    :cond_11
    instance-of v0, v6, Lv9/u3;

    :goto_d
    if-eqz v0, :cond_12

    goto :goto_e

    .line 78
    :cond_12
    instance-of v2, v6, Lv9/w1;

    :goto_e
    if-eqz v2, :cond_13

    .line 79
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/t;

    invoke-direct {v1, v4, v6}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    .line 80
    :cond_13
    :goto_f
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
