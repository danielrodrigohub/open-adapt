.class public final Le3/l;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le3/l$b;
    }
.end annotation


# static fields
.field public static final n:Le3/l$a;


# instance fields
.field public volatile h:Lcom/bumptech/glide/j;

.field public final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/FragmentManager;",
            "Le3/k;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/x;",
            "Le3/q;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Landroid/os/Handler;

.field public final l:Le3/l$b;

.field public final m:Le3/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le3/l$a;

    invoke-direct {v0}, Le3/l$a;-><init>()V

    sput-object v0, Le3/l;->n:Le3/l$a;

    return-void
.end method

.method public constructor <init>(Le3/l$b;Lcom/bumptech/glide/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le3/l;->i:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le3/l;->j:Ljava/util/HashMap;

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Le3/l;->n:Le3/l$a;

    :goto_0
    iput-object p1, p0, Le3/l;->l:Le3/l$b;

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Le3/l;->k:Landroid/os/Handler;

    .line 7
    sget-boolean p1, Ly2/s;->h:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Ly2/s;->g:Z

    if-nez p1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    const-class p1, Lcom/bumptech/glide/d$e;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/f;->a(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 9
    new-instance p1, Le3/f;

    invoke-direct {p1}, Le3/f;-><init>()V

    goto :goto_2

    .line 10
    :cond_2
    new-instance p1, Lb7/j1;

    invoke-direct {p1}, Lb7/j1;-><init>()V

    goto :goto_2

    .line 11
    :cond_3
    :goto_1
    new-instance p1, Lm6/e;

    invoke-direct {p1}, Lm6/e;-><init>()V

    .line 12
    :goto_2
    iput-object p1, p0, Le3/l;->m:Le3/g;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Le3/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 6

    if-eqz p1, :cond_c

    .line 1
    invoke-static {}, Ll3/l;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p1, Landroid/app/Application;

    if-nez v0, :cond_9

    .line 2
    instance-of v0, p1, Landroidx/fragment/app/p;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/fragment/app/p;

    invoke-virtual {p0, p1}, Le3/l;->c(Landroidx/fragment/app/p;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_8

    .line 5
    check-cast p1, Landroid/app/Activity;

    .line 6
    invoke-static {}, Ll3/l;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Le3/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_1
    instance-of v0, p1, Landroidx/fragment/app/p;

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, Landroidx/fragment/app/p;

    invoke-virtual {p0, p1}, Le3/l;->c(Landroidx/fragment/app/p;)Lcom/bumptech/glide/j;

    move-result-object p1

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 11
    iget-object v0, p0, Le3/l;->m:Le3/g;

    invoke-interface {v0}, Le3/g;->a()V

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 13
    invoke-static {p1}, Le3/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 15
    :goto_1
    invoke-virtual {p0, v0}, Le3/l;->d(Landroid/app/FragmentManager;)Le3/k;

    move-result-object v0

    .line 16
    iget-object v2, v0, Le3/k;->k:Lcom/bumptech/glide/j;

    if-nez v2, :cond_6

    .line 17
    invoke-static {p1}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v2

    .line 18
    iget-object v3, p0, Le3/l;->l:Le3/l$b;

    .line 19
    iget-object v4, v0, Le3/k;->h:Le3/a;

    .line 20
    iget-object v5, v0, Le3/k;->i:Le3/k$a;

    .line 21
    invoke-interface {v3, v2, v4, v5, p1}, Le3/l$b;->a(Lcom/bumptech/glide/c;Le3/h;Le3/m;Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object p1

    if-eqz v1, :cond_5

    .line 22
    invoke-virtual {p1}, Lcom/bumptech/glide/j;->g()V

    .line 23
    :cond_5
    iput-object p1, v0, Le3/k;->k:Lcom/bumptech/glide/j;

    goto :goto_2

    :cond_6
    move-object p1, v2

    :goto_2
    return-object p1

    .line 24
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_8
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    .line 26
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 27
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Le3/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1

    .line 28
    :cond_9
    iget-object v0, p0, Le3/l;->h:Lcom/bumptech/glide/j;

    if-nez v0, :cond_b

    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Le3/l;->h:Lcom/bumptech/glide/j;

    if-nez v0, :cond_a

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v0

    .line 32
    iget-object v1, p0, Le3/l;->l:Le3/l$b;

    new-instance v2, Landroidx/lifecycle/k0;

    invoke-direct {v2}, Landroidx/lifecycle/k0;-><init>()V

    new-instance v3, Landroidx/lifecycle/m0;

    invoke-direct {v3}, Landroidx/lifecycle/m0;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 34
    invoke-interface {v1, v0, v2, v3, p1}, Le3/l$b;->a(Lcom/bumptech/glide/c;Le3/h;Le3/m;Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object p1

    iput-object p1, p0, Le3/l;->h:Lcom/bumptech/glide/j;

    .line 35
    :cond_a
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 36
    :cond_b
    :goto_3
    iget-object p1, p0, Le3/l;->h:Lcom/bumptech/glide/j;

    return-object p1

    .line 37
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load on a null Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroidx/fragment/app/p;)Lcom/bumptech/glide/j;
    .locals 6

    .line 1
    invoke-static {}, Ll3/l;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Le3/l;->b(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4
    iget-object v0, p0, Le3/l;->m:Le3/g;

    invoke-interface {v0}, Le3/g;->a()V

    .line 5
    invoke-virtual {p1}, Landroidx/fragment/app/p;->d0()Landroidx/fragment/app/x;

    move-result-object v0

    .line 6
    invoke-static {p1}, Le3/l;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 8
    :goto_1
    invoke-virtual {p0, v0}, Le3/l;->e(Landroidx/fragment/app/x;)Le3/q;

    move-result-object v0

    .line 9
    iget-object v2, v0, Le3/q;->e0:Lcom/bumptech/glide/j;

    if-nez v2, :cond_4

    .line 10
    invoke-static {p1}, Lcom/bumptech/glide/c;->b(Landroid/content/Context;)Lcom/bumptech/glide/c;

    move-result-object v2

    .line 11
    iget-object v3, p0, Le3/l;->l:Le3/l$b;

    .line 12
    iget-object v4, v0, Le3/q;->a0:Le3/a;

    .line 13
    iget-object v5, v0, Le3/q;->b0:Le3/q$a;

    .line 14
    invoke-interface {v3, v2, v4, v5, p1}, Le3/l$b;->a(Lcom/bumptech/glide/c;Le3/h;Le3/m;Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v2

    if-eqz v1, :cond_3

    .line 15
    invoke-virtual {v2}, Lcom/bumptech/glide/j;->g()V

    .line 16
    :cond_3
    iput-object v2, v0, Le3/q;->e0:Lcom/bumptech/glide/j;

    :cond_4
    return-object v2

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot start a load for a destroyed activity"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/app/FragmentManager;)Le3/k;
    .locals 3

    .line 1
    iget-object v0, p0, Le3/l;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3/k;

    if-nez v0, :cond_1

    const-string v0, "com.bumptech.glide.manager"

    .line 2
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Le3/k;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Le3/k;

    invoke-direct {v1}, Le3/k;-><init>()V

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Le3/k;->m:Landroid/app/Fragment;

    .line 5
    iget-object v2, p0, Le3/l;->i:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 7
    iget-object v0, p0, Le3/l;->k:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public final e(Landroidx/fragment/app/x;)Le3/q;
    .locals 5

    .line 1
    iget-object v0, p0, Le3/l;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le3/q;

    if-nez v0, :cond_1

    const-string v0, "com.bumptech.glide.manager"

    .line 2
    invoke-virtual {p1, v0}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v1

    check-cast v1, Le3/q;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Le3/q;

    invoke-direct {v1}, Le3/q;-><init>()V

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Le3/q;->f0:Landroidx/fragment/app/m;

    .line 5
    iget-object v2, p0, Le3/l;->j:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v2, v3, v1, v0, v4}, Landroidx/fragment/app/a;->e(ILandroidx/fragment/app/m;Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v2, v4}, Landroidx/fragment/app/a;->j(Z)I

    .line 9
    iget-object v0, p0, Le3/l;->k:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2
    :goto_0
    iget v5, v1, Landroid/os/Message;->what:I

    const-string v6, "We failed to add our Fragment the first time around, trying again..."

    const/4 v7, 0x3

    const-string v8, " New: "

    const-string v9, "We\'ve added two fragments with requests! Old: "

    const-string v10, "com.bumptech.glide.manager"

    const/4 v11, 0x5

    const-string v12, "RMRetriever"

    if-eq v5, v4, :cond_b

    const/4 v14, 0x2

    if-eq v5, v14, :cond_1

    move v4, v3

    goto/16 :goto_c

    .line 3
    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/x;

    .line 4
    iget-object v5, v0, Le3/l;->j:Ljava/util/HashMap;

    .line 5
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le3/q;

    .line 6
    invoke-virtual {v1, v10}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v15

    check-cast v15, Le3/q;

    if-ne v15, v5, :cond_2

    goto/16 :goto_4

    :cond_2
    if-eqz v15, :cond_4

    .line 7
    iget-object v13, v15, Le3/q;->e0:Lcom/bumptech/glide/j;

    if-nez v13, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    if-nez v2, :cond_8

    .line 9
    iget-boolean v2, v1, Landroidx/fragment/app/x;->D:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 11
    invoke-virtual {v2, v3, v5, v10, v4}, Landroidx/fragment/app/a;->e(ILandroidx/fragment/app/m;Ljava/lang/String;I)V

    if-eqz v15, :cond_6

    .line 12
    invoke-virtual {v2, v15}, Landroidx/fragment/app/a;->n(Landroidx/fragment/app/m;)Landroidx/fragment/app/g0;

    .line 13
    :cond_6
    invoke-virtual {v2}, Landroidx/fragment/app/a;->d()V

    .line 14
    iget-object v2, v0, Le3/l;->k:Landroid/os/Handler;

    .line 15
    invoke-virtual {v2, v14, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 17
    invoke-static {v12, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v2, v3

    goto :goto_5

    .line 19
    :cond_8
    :goto_2
    iget-boolean v2, v1, Landroidx/fragment/app/x;->D:Z

    if-eqz v2, :cond_9

    .line 20
    invoke-static {v12, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Parent was destroyed before our Fragment could be added, all requests for the destroyed parent are cancelled"

    .line 21
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const/4 v2, 0x6

    .line 22
    invoke-static {v12, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "ERROR: Tried adding Fragment twice and failed twice, giving up and cancelling all associated requests! This probably means you\'re starting loads in a unit test with an Activity that you haven\'t created and never create. If you\'re using Robolectric, create the Activity as part of your test setup"

    .line 23
    invoke-static {v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_a
    :goto_3
    iget-object v2, v5, Le3/q;->a0:Le3/a;

    .line 25
    invoke-virtual {v2}, Le3/a;->a()V

    :goto_4
    move v2, v4

    :goto_5
    if-eqz v2, :cond_15

    .line 26
    iget-object v2, v0, Le3/l;->j:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_b

    .line 27
    :cond_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/FragmentManager;

    .line 28
    iget-object v5, v0, Le3/l;->i:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le3/k;

    .line 30
    invoke-virtual {v1, v10}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v13

    check-cast v13, Le3/k;

    if-ne v13, v5, :cond_c

    goto/16 :goto_9

    :cond_c
    if-eqz v13, :cond_e

    .line 31
    iget-object v14, v13, Le3/k;->k:Lcom/bumptech/glide/j;

    if-nez v14, :cond_d

    goto :goto_6

    .line 32
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_6
    if-nez v2, :cond_12

    .line 33
    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_7

    .line 34
    :cond_f
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v5, v10}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    if-eqz v13, :cond_10

    .line 35
    invoke-virtual {v2, v13}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 36
    :cond_10
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 37
    iget-object v2, v0, Le3/l;->k:Landroid/os/Handler;

    .line 38
    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 39
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 40
    invoke-static {v12, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 41
    invoke-static {v12, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    move v2, v3

    goto :goto_a

    .line 42
    :cond_12
    :goto_7
    invoke-static {v12, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 43
    invoke-virtual {v1}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "Parent was destroyed before our Fragment could be added"

    .line 44
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_13
    const-string v2, "Tried adding Fragment twice and failed twice, giving up!"

    .line 45
    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_14
    :goto_8
    iget-object v2, v5, Le3/k;->h:Le3/a;

    .line 47
    invoke-virtual {v2}, Le3/a;->a()V

    :goto_9
    move v2, v4

    :goto_a
    if-eqz v2, :cond_15

    .line 48
    iget-object v2, v0, Le3/l;->i:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_b
    move-object v13, v2

    move v3, v4

    goto :goto_d

    :cond_15
    :goto_c
    const/4 v1, 0x0

    const/4 v13, 0x0

    .line 49
    :goto_d
    invoke-static {v12, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v3, :cond_16

    if-nez v13, :cond_16

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove expected request manager fragment, manager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return v4
.end method
