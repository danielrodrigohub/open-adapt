.class public final Lwa/d;
.super Lwa/a;
.source "AdaptKitRemoteBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/d$a;,
        Lwa/d$b;
    }
.end annotation


# static fields
.field public static final h:Lwa/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwa/d;

    invoke-direct {v0}, Lwa/d;-><init>()V

    sput-object v0, Lwa/d;->h:Lwa/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lwa/a;-><init>()V

    return-void
.end method

.method public static final f(Lwa/d;Lwa/d$b;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p1, Lwa/d$b;->c:Lwa/d$a;

    .line 3
    iget-object v0, p0, Lwa/d$a;->a:Lw9/u1;

    invoke-virtual {v0}, Lw9/u1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lwa/d$a;->b:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lwa/d$a;->a:Lw9/u1;

    .line 4
    iget-object v0, v0, Lw9/u1;->h:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-boolean p0, p0, Lwa/d$a;->c:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 6
    iget-object p0, p1, Lwa/d$b;->d:Ljava/util/concurrent/CompletableFuture;

    .line 7
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result p0

    if-nez p0, :cond_3

    .line 8
    iget-object p0, p1, Lwa/d$b;->d:Ljava/util/concurrent/CompletableFuture;

    .line 9
    sget-object p1, Lfd/o;->a:Lfd/o;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2
    iget-object v2, v1, Lwa/a;->c:Landroid/content/Intent;

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    .line 3
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_11

    const-string v2, "param_remote_package_key"

    .line 4
    invoke-virtual {v8, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x6

    .line 5
    invoke-static {v4}, Lq/g;->b(I)[I

    move-result-object v4

    .line 6
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v4, v6

    .line 7
    invoke-static {v7}, Lcom/nike/adapt/adk/model/a;->a(I)Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-static {v10, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_2

    const/4 v2, -0x1

    goto :goto_2

    .line 9
    :cond_2
    sget-object v2, Lia/b;->a:[I

    invoke-static {v7}, Lq/g;->a(I)I

    move-result v4

    aget v2, v2, v4

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 10
    :pswitch_0
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :pswitch_1
    sget-object v2, Lia/a$a;->a:Lia/a$a;

    goto :goto_3

    .line 11
    :pswitch_2
    sget-object v2, Lia/a$c;->a:Lia/a$c;

    goto :goto_3

    .line 12
    :pswitch_3
    sget-object v2, Lia/a$e;->a:Lia/a$e;

    goto :goto_3

    .line 13
    :pswitch_4
    sget-object v2, Lia/a$b;->a:Lia/a$b;

    goto :goto_3

    .line 14
    :pswitch_5
    sget-object v2, Lia/a$f;->a:Lia/a$f;

    goto :goto_3

    .line 15
    :pswitch_6
    sget-object v2, Lia/a$d;->a:Lia/a$d;

    :goto_3
    move-object v10, v2

    goto :goto_4

    :pswitch_7
    move-object v10, v3

    :goto_4
    if-eqz v10, :cond_11

    const-string v2, "param_shoe"

    .line 16
    invoke-virtual {v8, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "l"

    .line 17
    invoke-static {v2, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lw9/u1;->j:Lw9/u1;

    goto :goto_5

    .line 18
    :cond_3
    sget-object v2, Lw9/u1;->k:Lw9/u1;

    :goto_5
    move-object v11, v2

    .line 19
    sget-object v2, Lv9/t;->a:Lv9/t;

    invoke-virtual {v2}, Lv9/t;->f()Ljava/util/List;

    move-result-object v2

    .line 20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lea/m;

    .line 21
    iget-object v5, v5, Lea/m;->h:Ljava/lang/String;

    const-string v6, "param_pair_id"

    .line 22
    invoke-virtual {v8, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v4

    .line 23
    :cond_5
    check-cast v3, Lea/m;

    if-eqz v11, :cond_11

    if-eqz v3, :cond_11

    .line 24
    new-instance v12, Lv9/l;

    sget-object v2, Lv9/a;->i:Lv9/a$a;

    .line 25
    sget-object v2, Lv9/a;->n:Lv9/a;

    .line 26
    invoke-direct {v12, v3, v2}, Lv9/l;-><init>(Lea/m;Lv9/a;)V

    .line 27
    new-instance v6, Lwa/d$a;

    invoke-direct {v6, v11}, Lwa/d$a;-><init>(Lw9/u1;)V

    .line 28
    new-instance v13, Lwa/d$b;

    move-object v2, v13

    move-object v3, v8

    move-object v4, v10

    move-object v5, v12

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lwa/d$b;-><init>(Landroid/os/Bundle;Lia/a;Lv9/l;Lwa/d$a;Ljava/util/concurrent/CompletableFuture;)V

    .line 29
    instance-of v2, v10, Lia/a$d;

    if-eqz v2, :cond_6

    .line 30
    move-object v2, v10

    check-cast v2, Lia/a$d;

    .line 31
    invoke-virtual {v2, v8}, Lia/a;->i(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_f

    .line 32
    invoke-virtual {v1, v12, v13, v2}, Lwa/d;->g(Lv9/l;Lwa/d$b;Lia/a;)V

    .line 33
    new-instance v2, Lv9/v4;

    .line 34
    new-instance v4, Lea/h$a;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, v3}, Lea/h$a;-><init>(I)V

    .line 35
    iget-object v3, v13, Lwa/d$b;->e:Lwa/d$b$a$b;

    .line 36
    iget-object v5, v13, Lwa/d$b;->f:Lwa/d$b$a$a;

    .line 37
    invoke-direct {v2, v4, v3, v5}, Lv9/v4;-><init>(Lea/h;Lqd/l;Lqd/l;)V

    .line 38
    invoke-static {v12, v11, v2}, Landroidx/activity/k;->h(Lv9/l;Lw9/u1;Lv9/k;)V

    goto/16 :goto_a

    .line 39
    :cond_6
    instance-of v2, v10, Lia/a$f;

    if-eqz v2, :cond_b

    .line 40
    move-object v2, v10

    check-cast v2, Lia/a$f;

    .line 41
    invoke-virtual {v2, v8}, Lia/a;->i(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loc/d;

    if-eqz v3, :cond_f

    .line 42
    invoke-virtual {v1, v12, v13, v2}, Lwa/d;->g(Lv9/l;Lwa/d$b;Lia/a;)V

    .line 43
    new-instance v2, Lv9/y3;

    .line 44
    new-instance v4, Lea/d;

    .line 45
    iget v5, v3, Loc/d;->a:I

    .line 46
    iget v6, v3, Loc/d;->b:I

    .line 47
    iget v7, v3, Loc/d;->c:I

    .line 48
    iget v3, v3, Loc/d;->d:I

    .line 49
    invoke-static {v3}, Lq/g;->a(I)I

    move-result v3

    const/4 v8, 0x5

    .line 50
    invoke-static {v8}, Lq/g;->b(I)[I

    move-result-object v14

    .line 51
    array-length v15, v14

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v15, :cond_9

    aget v16, v14, v8

    .line 52
    invoke-static/range {v16 .. v16}, Lq/g;->a(I)I

    move-result v9

    if-ne v9, v3, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    if-eqz v9, :cond_8

    move/from16 v9, v16

    goto :goto_8

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    const/4 v9, 0x0

    :goto_8
    if-nez v9, :cond_a

    const/4 v8, 0x5

    goto :goto_9

    :cond_a
    move v8, v9

    .line 53
    :goto_9
    invoke-direct {v4, v5, v6, v7, v8}, Lea/d;-><init>(IIII)V

    .line 54
    iget-object v3, v13, Lwa/d$b;->e:Lwa/d$b$a$b;

    .line 55
    invoke-direct {v2, v4, v3}, Lv9/y3;-><init>(Lea/d;Lqd/l;)V

    .line 56
    invoke-static {v12, v11, v2}, Landroidx/activity/k;->h(Lv9/l;Lw9/u1;Lv9/k;)V

    goto/16 :goto_a

    .line 57
    :cond_b
    instance-of v2, v10, Lia/a$b;

    if-eqz v2, :cond_c

    .line 58
    move-object v2, v10

    check-cast v2, Lia/a$b;

    .line 59
    invoke-virtual {v2, v8}, Lia/a;->i(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd/o;

    if-eqz v3, :cond_f

    .line 60
    invoke-virtual {v1, v12, v13, v2}, Lwa/d;->g(Lv9/l;Lwa/d$b;Lia/a;)V

    .line 61
    new-instance v2, Lv9/s3;

    .line 62
    iget-object v3, v13, Lwa/d$b;->e:Lwa/d$b$a$b;

    .line 63
    invoke-direct {v2, v3}, Lv9/s3;-><init>(Lqd/l;)V

    .line 64
    invoke-static {v12, v11, v2}, Landroidx/activity/k;->h(Lv9/l;Lw9/u1;Lv9/k;)V

    goto :goto_a

    .line 65
    :cond_c
    instance-of v2, v10, Lia/a$e;

    if-eqz v2, :cond_d

    .line 66
    move-object v2, v10

    check-cast v2, Lia/a$e;

    .line 67
    invoke-virtual {v2, v8}, Lia/a;->i(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd/o;

    if-eqz v3, :cond_f

    .line 68
    invoke-virtual {v1, v12, v13, v2}, Lwa/d;->g(Lv9/l;Lwa/d$b;Lia/a;)V

    .line 69
    new-instance v2, Lv9/v3;

    .line 70
    iget-object v3, v13, Lwa/d$b;->e:Lwa/d$b$a$b;

    .line 71
    invoke-direct {v2, v3}, Lv9/v3;-><init>(Lqd/l;)V

    .line 72
    invoke-static {v12, v11, v2}, Landroidx/activity/k;->h(Lv9/l;Lw9/u1;Lv9/k;)V

    goto :goto_a

    .line 73
    :cond_d
    instance-of v2, v10, Lia/a$c;

    if-eqz v2, :cond_e

    .line 74
    move-object v2, v10

    check-cast v2, Lia/a$c;

    .line 75
    invoke-virtual {v2, v8}, Lia/a;->i(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd/o;

    if-eqz v3, :cond_f

    .line 76
    invoke-virtual {v1, v12, v13, v2}, Lwa/d;->g(Lv9/l;Lwa/d$b;Lia/a;)V

    .line 77
    new-instance v2, Lv9/e4;

    .line 78
    iget-object v3, v13, Lwa/d$b;->e:Lwa/d$b$a$b;

    .line 79
    invoke-direct {v2, v3}, Lv9/e4;-><init>(Lqd/l;)V

    .line 80
    invoke-static {v12, v11, v2}, Landroidx/activity/k;->h(Lv9/l;Lw9/u1;Lv9/k;)V

    goto :goto_a

    .line 81
    :cond_e
    instance-of v2, v10, Lia/a$a;

    if-eqz v2, :cond_f

    .line 82
    move-object v2, v10

    check-cast v2, Lia/a$a;

    .line 83
    invoke-virtual {v2, v8}, Lia/a;->i(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfd/o;

    if-eqz v3, :cond_f

    .line 84
    invoke-virtual {v1, v12, v13, v2}, Lwa/d;->g(Lv9/l;Lwa/d$b;Lia/a;)V

    .line 85
    new-instance v2, Lv9/x1;

    .line 86
    iget-object v3, v13, Lwa/d$b;->e:Lwa/d$b$a$b;

    .line 87
    invoke-direct {v2, v3}, Lv9/x1;-><init>(Lqd/l;)V

    .line 88
    invoke-static {v12, v11, v2}, Landroidx/activity/k;->h(Lv9/l;Lw9/u1;Lv9/k;)V

    :cond_f
    :goto_a
    const-wide/16 v2, 0x3e8

    .line 89
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 90
    invoke-virtual/range {p0 .. p0}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "No message supplied"

    :cond_10
    invoke-virtual {v10, v2, v0}, Lia/a;->c(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_11
    :goto_b
    return-void

    :cond_12
    const-string v0, "intent"

    .line 91
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lwa/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Lv9/l;Lwa/d$b;Lia/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/l;",
            "Lwa/d$b;",
            "Lia/a<",
            "***>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lwa/d$c;

    invoke-direct {v0, p3, p2}, Lwa/d$c;-><init>(Lia/a;Lwa/d$b;)V

    .line 2
    new-instance p2, Lv9/i;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lv9/i;-><init>(Z)V

    invoke-virtual {v0, p2}, Lwa/d$c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1, p2}, Lv9/l;->f(Lv9/i;)V

    return-void
.end method
