.class public final Ldb/b;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevicesStore.kt"

# interfaces
.implements Ldb/a;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldb/b$a;
    }
.end annotation


# static fields
.field public static final b:Ldb/b;

.field public static final c:[Ljava/lang/String;

.field public static final d:Lfd/h;

.field public static final e:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldb/b;

    invoke-direct {v0}, Ldb/b;-><init>()V

    sput-object v0, Ldb/b;->b:Ldb/b;

    const-string v0, "adaptkit_profile_v1.json"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldb/b;->c:[Ljava/lang/String;

    .line 2
    sget-object v0, Ldb/b$b;->h:Ldb/b$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Ldb/b;->d:Lfd/h;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldb/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ldb/b;->e(Z)Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    move-object v4, v1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 5
    check-cast v6, Lea/m;

    .line 6
    iget-object v6, v6, Lea/m;->h:Ljava/lang/String;

    .line 7
    invoke-static {v6, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v7

    :goto_2
    if-eq v7, v3, :cond_0

    .line 8
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_3
    sget-object p1, Lv9/t;->a:Lv9/t;

    invoke-virtual {p1}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v2

    const-class v4, Landroid/accounts/AccountManager;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 10
    invoke-virtual {p1}, Lv9/t;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    const-string v5, "accountManager.getAccoun\u2026aptKitModule.accountType)"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v5, v4

    if-nez v5, :cond_4

    move v5, v0

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    xor-int/2addr v0, v5

    if-eqz v0, :cond_5

    .line 12
    aget-object v0, v4, v3

    .line 13
    invoke-virtual {p1}, Lv9/t;->c()Lma/a;

    move-result-object p1

    invoke-virtual {p1}, Lma/a;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v3, "adaptkit_profile_v1.json"

    .line 14
    invoke-virtual {p0, v3, p1}, Ldb/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {v1}, Lf1/b;->t(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v2, v0, p1, v1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final b(ZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ldb/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lv9/t;->a:Lv9/t;

    invoke-virtual {v1}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v2

    const-class v3, Landroid/accounts/AccountManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/AccountManager;

    .line 3
    invoke-virtual {v1}, Lv9/t;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    const-string v4, "accountManager.getAccoun\u2026aptKitModule.accountType)"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    xor-int/2addr v4, v6

    if-eqz v4, :cond_2

    .line 5
    aget-object v3, v3, v5

    .line 6
    invoke-virtual {v1}, Lv9/t;->c()Lma/a;

    move-result-object v1

    invoke-virtual {v1}, Lma/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v4, Ldb/b;->b:Ldb/b;

    .line 8
    invoke-virtual {v4, v6}, Ldb/b;->e(Z)Ljava/util/List;

    move-result-object v5

    .line 9
    invoke-static {v5}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {v4, p2, v5}, Ldb/b;->f(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v4, p2, v5}, Ldb/b;->g(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_1
    const-string p2, "adaptkit_profile_v1.json"

    .line 12
    invoke-virtual {v4, p2, v1}, Ldb/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-static {p1}, Lf1/b;->t(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {v2, v3, p2, p1}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final c(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ldb/b;->e(Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "_"

    .line 1
    invoke-static {p1, v0, p2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    const-string v0, "adaptkit_profile_v1.json"

    .line 1
    :try_start_0
    sget-object v1, Lv9/t;->a:Lv9/t;

    invoke-virtual {v1}, Lv9/t;->c()Lma/a;

    move-result-object v2

    invoke-virtual {v2}, Lma/a;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2
    invoke-virtual {v1}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v3

    const-class v4, Landroid/accounts/AccountManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AccountManager;

    .line 3
    invoke-virtual {v1}, Lv9/t;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v1, v1, v4

    .line 4
    new-instance v4, Lorg/json/JSONArray;

    .line 5
    invoke-virtual {p0, v0, v2}, Ldb/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v4}, Lf1/b;->s(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 8
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    new-instance v2, Ldb/c;

    invoke-direct {v2}, Ldb/c;-><init>()V

    invoke-static {v0, v2}, Lgd/k;->V(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    new-instance v1, Ldb/d;

    invoke-direct {v1}, Ldb/d;-><init>()V

    invoke-static {v0, v1}, Lgd/k;->V(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    if-nez p1, :cond_4

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lea/m;

    .line 12
    iget-boolean v2, v2, Lea/m;->t:Z

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    move-object v0, p1

    :cond_4
    return-object v0

    .line 14
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 15
    :catchall_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object p1
.end method

.method public final f(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Lea/m;

    .line 4
    sget-object v5, Ldb/b;->b:Ldb/b;

    invoke-virtual {v5, v4}, Ldb/b;->h(Lea/m;)Ldb/b$a;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgd/n;->o0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lea/m;

    .line 6
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lea/m;

    .line 7
    iget-object v9, v6, Lea/m;->h:Ljava/lang/String;

    iget-object v8, v8, Lea/m;->h:Ljava/lang/String;

    .line 8
    invoke-static {v9, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v5, v7

    :cond_3
    move-object v7, v5

    check-cast v7, Lea/m;

    if-nez v7, :cond_4

    .line 9
    new-instance v4, Ldb/b$a;

    .line 10
    iget-object v5, v6, Lea/m;->h:Ljava/lang/String;

    .line 11
    invoke-direct {v4, v5, v6}, Ldb/b$a;-><init>(Ljava/lang/String;Lea/m;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_4
    iget-boolean v4, v7, Lea/m;->t:Z

    if-eqz v4, :cond_5

    .line 13
    sget-object v4, Ldb/b;->b:Ldb/b;

    invoke-virtual {v4, v6}, Ldb/b;->h(Lea/m;)Ldb/b$a;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/16 v17, 0x0

    const/16 v18, 0x17ff

    invoke-static/range {v7 .. v18}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v4

    .line 15
    new-instance v5, Ldb/b$a;

    .line 16
    iget-object v6, v4, Lea/m;->h:Ljava/lang/String;

    .line 17
    invoke-direct {v5, v6, v4}, Ldb/b$a;-><init>(Ljava/lang/String;Lea/m;)V

    .line 18
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_5
    iget-wide v4, v6, Lea/m;->q:J

    .line 20
    iget-wide v8, v7, Lea/m;->s:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_1

    .line 21
    new-instance v4, Ldb/b$a;

    .line 22
    iget-object v5, v6, Lea/m;->h:Ljava/lang/String;

    .line 23
    invoke-direct {v4, v5, v6}, Ldb/b$a;-><init>(Ljava/lang/String;Lea/m;)V

    .line 24
    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 25
    iget-object v8, v6, Lea/m;->k:Lea/b;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 26
    iget-object v4, v7, Lea/m;->k:Lea/b;

    const-string v5, "cached"

    .line 27
    invoke-static {v4, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "remote"

    invoke-static {v8, v14}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v12, v4, Lea/b;->k:Ljava/lang/String;

    iget-object v13, v8, Lea/b;->k:Ljava/lang/String;

    .line 29
    invoke-static {v12, v13}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v12, :cond_6

    .line 30
    iget-boolean v4, v4, Lea/b;->n:Z

    if-eqz v4, :cond_6

    move v12, v15

    goto :goto_2

    :cond_6
    move/from16 v12, v16

    :goto_2
    const/16 v13, 0x3f

    .line 31
    invoke-static/range {v8 .. v13}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v9

    .line 32
    iget-object v4, v6, Lea/m;->l:Lea/b;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 33
    iget-object v7, v7, Lea/m;->l:Lea/b;

    .line 34
    invoke-static {v7, v5}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v14}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v5, v7, Lea/b;->k:Ljava/lang/String;

    iget-object v8, v4, Lea/b;->k:Ljava/lang/String;

    .line 36
    invoke-static {v5, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 37
    iget-boolean v5, v7, Lea/b;->n:Z

    if-eqz v5, :cond_7

    move/from16 v21, v15

    goto :goto_3

    :cond_7
    move/from16 v21, v16

    :goto_3
    const/16 v22, 0x3f

    move-object/from16 v17, v4

    .line 38
    invoke-static/range {v17 .. v22}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 39
    iget-wide v4, v6, Lea/m;->s:J

    .line 40
    iget-wide v7, v6, Lea/m;->q:J

    .line 41
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x17e7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 42
    invoke-static/range {v6 .. v17}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v4

    .line 43
    new-instance v5, Ldb/b$a;

    .line 44
    iget-object v6, v4, Lea/m;->h:Ljava/lang/String;

    .line 45
    invoke-direct {v5, v6, v4}, Ldb/b$a;-><init>(Ljava/lang/String;Lea/m;)V

    .line 46
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 47
    :cond_8
    invoke-static {v0}, Lgd/n;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldb/b$a;

    .line 49
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lea/m;

    .line 50
    iget-object v8, v3, Ldb/b$a;->a:Ljava/lang/String;

    .line 51
    iget-object v7, v7, Lea/m;->h:Ljava/lang/String;

    .line 52
    invoke-static {v8, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_5

    :cond_b
    move-object v6, v5

    :goto_5
    check-cast v6, Lea/m;

    if-nez v6, :cond_9

    .line 53
    iget-object v4, v3, Ldb/b$a;->b:Lea/m;

    .line 54
    iget-boolean v4, v4, Lea/m;->t:Z

    if-eqz v4, :cond_9

    .line 55
    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 56
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 58
    check-cast v1, Ldb/b$a;

    .line 59
    iget-object v1, v1, Ldb/b$a;->b:Lea/m;

    .line 60
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    return-object v2
.end method

.method public final g(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    move-object/from16 v2, p2

    invoke-static {v2, v1}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 3
    check-cast v3, Lea/m;

    .line 4
    sget-object v4, Ldb/b;->b:Ldb/b;

    invoke-virtual {v4, v3}, Ldb/b;->h(Lea/m;)Ldb/b$a;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lea/m;

    .line 6
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ldb/b$a;

    .line 7
    iget-object v8, v4, Lea/m;->h:Ljava/lang/String;

    .line 8
    iget-object v7, v7, Ldb/b$a;->a:Ljava/lang/String;

    .line 9
    invoke-static {v8, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    check-cast v6, Ldb/b$a;

    if-nez v6, :cond_4

    .line 10
    sget-object v5, Ldb/b;->b:Ldb/b;

    invoke-virtual {v5, v4}, Ldb/b;->h(Lea/m;)Ldb/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_4
    iget-object v5, v6, Ldb/b$a;->b:Lea/m;

    .line 12
    iget-boolean v6, v5, Lea/m;->t:Z

    if-nez v6, :cond_1

    .line 13
    iget-boolean v6, v4, Lea/m;->t:Z

    if-eqz v6, :cond_5

    .line 14
    new-instance v5, Ldb/b$a;

    .line 15
    iget-object v6, v4, Lea/m;->h:Ljava/lang/String;

    .line 16
    invoke-direct {v5, v6, v4}, Ldb/b$a;-><init>(Ljava/lang/String;Lea/m;)V

    .line 17
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/16 v15, 0x17ff

    invoke-static/range {v4 .. v15}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v4

    .line 19
    new-instance v5, Ldb/b$a;

    .line 20
    iget-object v6, v4, Lea/m;->h:Ljava/lang/String;

    .line 21
    invoke-direct {v5, v6, v4}, Ldb/b$a;-><init>(Ljava/lang/String;Lea/m;)V

    .line 22
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_5
    iget-wide v6, v4, Lea/m;->s:J

    .line 24
    iget-wide v8, v5, Lea/m;->s:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 25
    new-instance v5, Ldb/b$a;

    .line 26
    iget-object v6, v4, Lea/m;->h:Ljava/lang/String;

    .line 27
    invoke-direct {v5, v6, v4}, Ldb/b$a;-><init>(Ljava/lang/String;Lea/m;)V

    .line 28
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 29
    new-instance v5, Ldb/b$a;

    .line 30
    iget-object v6, v4, Lea/m;->h:Ljava/lang/String;

    .line 31
    invoke-direct {v5, v6, v4}, Ldb/b$a;-><init>(Ljava/lang/String;Lea/m;)V

    .line 32
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 33
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 35
    check-cast v1, Ldb/b$a;

    .line 36
    iget-object v1, v1, Ldb/b$a;->b:Lea/m;

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    return-object v2
.end method

.method public final h(Lea/m;)Ldb/b$a;
    .locals 2

    .line 1
    new-instance v0, Ldb/b$a;

    .line 2
    iget-object v1, p1, Lea/m;->h:Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1, p1}, Ldb/b$a;-><init>(Ljava/lang/String;Lea/m;)V

    return-object v0
.end method
