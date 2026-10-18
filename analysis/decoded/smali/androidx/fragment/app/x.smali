.class public abstract Landroidx/fragment/app/x;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/x$j;,
        Landroidx/fragment/app/x$k;,
        Landroidx/fragment/app/x$m;,
        Landroidx/fragment/app/x$l;
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/m;",
            ">;"
        }
    .end annotation
.end field

.field public I:Landroidx/fragment/app/a0;

.field public J:Landroidx/fragment/app/x$g;

.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/x$l;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public final c:Landroidx/fragment/app/f0;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/m;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroidx/fragment/app/v;

.field public g:Landroidx/activity/OnBackPressedDispatcher;

.field public final h:Landroidx/fragment/app/x$c;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/fragment/app/m;",
            "Ljava/util/HashSet<",
            "Lf0/d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final m:Landroidx/fragment/app/x$d;

.field public final n:Landroidx/fragment/app/w;

.field public final o:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/b0;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Landroidx/fragment/app/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/u<",
            "*>;"
        }
    .end annotation
.end field

.field public r:Landroidx/fragment/app/r;

.field public s:Landroidx/fragment/app/m;

.field public t:Landroidx/fragment/app/m;

.field public u:Landroidx/fragment/app/x$e;

.field public v:Landroidx/fragment/app/x$f;

.field public w:Landroidx/activity/result/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public x:Landroidx/activity/result/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "Landroidx/activity/result/f;",
            ">;"
        }
    .end annotation
.end field

.field public y:Landroidx/activity/result/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/c<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/fragment/app/x$k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroidx/fragment/app/f0;

    invoke-direct {v0}, Landroidx/fragment/app/f0;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    .line 4
    new-instance v0, Landroidx/fragment/app/v;

    invoke-direct {v0, p0}, Landroidx/fragment/app/v;-><init>(Landroidx/fragment/app/x;)V

    iput-object v0, p0, Landroidx/fragment/app/x;->f:Landroidx/fragment/app/v;

    .line 5
    new-instance v0, Landroidx/fragment/app/x$c;

    invoke-direct {v0, p0}, Landroidx/fragment/app/x$c;-><init>(Landroidx/fragment/app/x;)V

    iput-object v0, p0, Landroidx/fragment/app/x;->h:Landroidx/fragment/app/x$c;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/x;->j:Ljava/util/Map;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/x;->k:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/x;->l:Ljava/util/Map;

    .line 13
    new-instance v0, Landroidx/fragment/app/x$d;

    invoke-direct {v0, p0}, Landroidx/fragment/app/x$d;-><init>(Landroidx/fragment/app/x;)V

    iput-object v0, p0, Landroidx/fragment/app/x;->m:Landroidx/fragment/app/x$d;

    .line 14
    new-instance v0, Landroidx/fragment/app/w;

    invoke-direct {v0, p0}, Landroidx/fragment/app/w;-><init>(Landroidx/fragment/app/x;)V

    iput-object v0, p0, Landroidx/fragment/app/x;->n:Landroidx/fragment/app/w;

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/x;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Landroidx/fragment/app/x;->p:I

    .line 17
    new-instance v0, Landroidx/fragment/app/x$e;

    invoke-direct {v0, p0}, Landroidx/fragment/app/x$e;-><init>(Landroidx/fragment/app/x;)V

    iput-object v0, p0, Landroidx/fragment/app/x;->u:Landroidx/fragment/app/x$e;

    .line 18
    new-instance v0, Landroidx/fragment/app/x$f;

    invoke-direct {v0}, Landroidx/fragment/app/x$f;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/x;->v:Landroidx/fragment/app/x$f;

    .line 19
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/x;->z:Ljava/util/ArrayDeque;

    .line 20
    new-instance v0, Landroidx/fragment/app/x$g;

    invoke-direct {v0, p0}, Landroidx/fragment/app/x$g;-><init>(Landroidx/fragment/app/x;)V

    iput-object v0, p0, Landroidx/fragment/app/x;->J:Landroidx/fragment/app/x$g;

    return-void
.end method

.method public static L(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A(Landroidx/fragment/app/x$l;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/x;->D:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/x;->y(Z)V

    .line 3
    iget-object p2, p0, Landroidx/fragment/app/x;->F:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/fragment/app/x;->G:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Landroidx/fragment/app/x$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/x;->b:Z

    .line 5
    :try_start_0
    iget-object p1, p0, Landroidx/fragment/app/x;->F:Ljava/util/ArrayList;

    iget-object p2, p0, Landroidx/fragment/app/x;->G:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/x;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/x;->d()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/x;->d()V

    .line 7
    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/x;->g0()V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/x;->u()V

    .line 10
    iget-object p1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {p1}, Landroidx/fragment/app/f0;->b()V

    return-void
.end method

.method public final B(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    iget-boolean v5, v5, Landroidx/fragment/app/g0;->p:Z

    .line 2
    iget-object v6, v0, Landroidx/fragment/app/x;->H:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Landroidx/fragment/app/x;->H:Ljava/util/ArrayList;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 5
    :goto_0
    iget-object v6, v0, Landroidx/fragment/app/x;->H:Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v7}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v6, v0, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    move v8, v3

    const/4 v9, 0x0

    :goto_1
    const/4 v11, 0x1

    if-ge v8, v4, :cond_12

    .line 7
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/fragment/app/a;

    .line 8
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v15, 0x3

    if-nez v13, :cond_c

    .line 9
    iget-object v13, v0, Landroidx/fragment/app/x;->H:Ljava/util/ArrayList;

    const/4 v7, 0x0

    .line 10
    :goto_2
    iget-object v14, v12, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v7, v14, :cond_f

    .line 11
    iget-object v14, v12, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/g0$a;

    .line 12
    iget v10, v14, Landroidx/fragment/app/g0$a;->a:I

    if-eq v10, v11, :cond_b

    const/4 v11, 0x2

    const/16 v3, 0x9

    if-eq v10, v11, :cond_4

    if-eq v10, v15, :cond_3

    const/4 v11, 0x6

    if-eq v10, v11, :cond_3

    const/4 v11, 0x7

    if-eq v10, v11, :cond_2

    const/16 v11, 0x8

    if-eq v10, v11, :cond_1

    goto/16 :goto_6

    .line 13
    :cond_1
    iget-object v10, v12, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/g0$a;

    invoke-direct {v11, v3, v6}, Landroidx/fragment/app/g0$a;-><init>(ILandroidx/fragment/app/m;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    .line 14
    iget-object v6, v14, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    goto/16 :goto_6

    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_7

    .line 15
    :cond_3
    iget-object v10, v14, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v10, v14, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    if-ne v10, v6, :cond_9

    .line 17
    iget-object v6, v12, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/g0$a;

    invoke-direct {v11, v3, v10}, Landroidx/fragment/app/g0$a;-><init>(ILandroidx/fragment/app/m;)V

    invoke-virtual {v6, v7, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    goto/16 :goto_8

    .line 18
    :cond_4
    iget-object v10, v14, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    .line 19
    iget v11, v10, Landroidx/fragment/app/m;->E:I

    .line 20
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v16, -0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v15, v17

    const/16 v17, 0x0

    :goto_3
    if-ltz v15, :cond_8

    .line 21
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v3, v18

    check-cast v3, Landroidx/fragment/app/m;

    .line 22
    iget v2, v3, Landroidx/fragment/app/m;->E:I

    if-ne v2, v11, :cond_7

    if-ne v3, v10, :cond_5

    move/from16 v18, v11

    const/16 v17, 0x1

    goto :goto_5

    :cond_5
    if-ne v3, v6, :cond_6

    .line 23
    iget-object v2, v12, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    new-instance v6, Landroidx/fragment/app/g0$a;

    move/from16 v18, v11

    const/16 v11, 0x9

    invoke-direct {v6, v11, v3}, Landroidx/fragment/app/g0$a;-><init>(ILandroidx/fragment/app/m;)V

    invoke-virtual {v2, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    move/from16 v18, v11

    const/16 v11, 0x9

    .line 24
    :goto_4
    new-instance v2, Landroidx/fragment/app/g0$a;

    const/4 v11, 0x3

    invoke-direct {v2, v11, v3}, Landroidx/fragment/app/g0$a;-><init>(ILandroidx/fragment/app/m;)V

    .line 25
    iget v11, v14, Landroidx/fragment/app/g0$a;->c:I

    iput v11, v2, Landroidx/fragment/app/g0$a;->c:I

    .line 26
    iget v11, v14, Landroidx/fragment/app/g0$a;->e:I

    iput v11, v2, Landroidx/fragment/app/g0$a;->e:I

    .line 27
    iget v11, v14, Landroidx/fragment/app/g0$a;->d:I

    iput v11, v2, Landroidx/fragment/app/g0$a;->d:I

    .line 28
    iget v11, v14, Landroidx/fragment/app/g0$a;->f:I

    iput v11, v2, Landroidx/fragment/app/g0$a;->f:I

    .line 29
    iget-object v11, v12, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30
    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v7, v2

    goto :goto_5

    :cond_7
    move/from16 v18, v11

    :goto_5
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v2, p2

    move/from16 v11, v18

    const/16 v3, 0x9

    goto :goto_3

    :cond_8
    if-eqz v17, :cond_a

    .line 31
    iget-object v2, v12, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_9
    :goto_6
    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    const/4 v2, 0x1

    .line 32
    iput v2, v14, Landroidx/fragment/app/g0$a;->a:I

    .line 33
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    move v2, v11

    .line 34
    :goto_7
    iget-object v3, v14, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/2addr v7, v2

    move/from16 v3, p3

    move v11, v2

    const/4 v15, 0x3

    move-object/from16 v2, p2

    goto/16 :goto_2

    :cond_c
    move v2, v11

    .line 35
    iget-object v3, v0, Landroidx/fragment/app/x;->H:Ljava/util/ArrayList;

    .line 36
    iget-object v7, v12, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v2

    :goto_9
    if-ltz v7, :cond_f

    .line 37
    iget-object v10, v12, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/g0$a;

    .line 38
    iget v11, v10, Landroidx/fragment/app/g0$a;->a:I

    if-eq v11, v2, :cond_e

    const/4 v2, 0x3

    if-eq v11, v2, :cond_d

    packed-switch v11, :pswitch_data_0

    goto :goto_a

    .line 39
    :pswitch_0
    iget-object v11, v10, Landroidx/fragment/app/g0$a;->g:Landroidx/lifecycle/i$c;

    iput-object v11, v10, Landroidx/fragment/app/g0$a;->h:Landroidx/lifecycle/i$c;

    goto :goto_a

    .line 40
    :pswitch_1
    iget-object v6, v10, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    goto :goto_a

    :pswitch_2
    const/4 v6, 0x0

    goto :goto_a

    .line 41
    :cond_d
    :pswitch_3
    iget-object v10, v10, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    const/4 v2, 0x3

    .line 42
    :pswitch_4
    iget-object v10, v10, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v7, v7, -0x1

    const/4 v2, 0x1

    goto :goto_9

    :cond_f
    if-nez v9, :cond_11

    .line 43
    iget-boolean v2, v12, Landroidx/fragment/app/g0;->g:Z

    if-eqz v2, :cond_10

    goto :goto_b

    :cond_10
    const/4 v9, 0x0

    goto :goto_c

    :cond_11
    :goto_b
    const/4 v9, 0x1

    :goto_c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_1

    .line 44
    :cond_12
    iget-object v2, v0, Landroidx/fragment/app/x;->H:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-nez v5, :cond_15

    .line 45
    iget v2, v0, Landroidx/fragment/app/x;->p:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_15

    move/from16 v2, p3

    :goto_d
    if-ge v2, v4, :cond_15

    .line 46
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    .line 47
    iget-object v3, v3, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/g0$a;

    .line 48
    iget-object v5, v5, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    if-eqz v5, :cond_13

    .line 49
    iget-object v6, v5, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    if-eqz v6, :cond_13

    .line 50
    invoke-virtual {v0, v5}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/m;)Landroidx/fragment/app/e0;

    move-result-object v5

    .line 51
    iget-object v6, v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/f0;->j(Landroidx/fragment/app/e0;)V

    goto :goto_e

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_15
    move/from16 v2, p3

    :goto_f
    if-ge v2, v4, :cond_17

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    move-object/from16 v5, p2

    .line 53
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_16

    const/4 v6, -0x1

    .line 54
    invoke-virtual {v3, v6}, Landroidx/fragment/app/a;->h(I)V

    .line 55
    invoke-virtual {v3}, Landroidx/fragment/app/a;->m()V

    goto :goto_10

    :cond_16
    const/4 v6, 0x1

    .line 56
    invoke-virtual {v3, v6}, Landroidx/fragment/app/a;->h(I)V

    .line 57
    invoke-virtual {v3}, Landroidx/fragment/app/a;->l()V

    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_17
    move-object/from16 v5, p2

    add-int/lit8 v2, v4, -0x1

    .line 58
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move/from16 v3, p3

    :goto_11
    if-ge v3, v4, :cond_1c

    .line 59
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/a;

    if-eqz v2, :cond_19

    .line 60
    iget-object v7, v6, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_12
    if-ltz v7, :cond_1b

    .line 61
    iget-object v8, v6, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/g0$a;

    .line 62
    iget-object v8, v8, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    if-eqz v8, :cond_18

    .line 63
    invoke-virtual {v0, v8}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/m;)Landroidx/fragment/app/e0;

    move-result-object v8

    .line 64
    invoke-virtual {v8}, Landroidx/fragment/app/e0;->k()V

    :cond_18
    add-int/lit8 v7, v7, -0x1

    goto :goto_12

    .line 65
    :cond_19
    iget-object v6, v6, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/g0$a;

    .line 66
    iget-object v7, v7, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    if-eqz v7, :cond_1a

    .line 67
    invoke-virtual {v0, v7}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/m;)Landroidx/fragment/app/e0;

    move-result-object v7

    .line 68
    invoke-virtual {v7}, Landroidx/fragment/app/e0;->k()V

    goto :goto_13

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 69
    :cond_1c
    iget v3, v0, Landroidx/fragment/app/x;->p:I

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Landroidx/fragment/app/x;->Q(IZ)V

    .line 70
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move/from16 v6, p3

    :goto_14
    if-ge v6, v4, :cond_1f

    .line 71
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    .line 72
    iget-object v7, v7, Landroidx/fragment/app/g0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1d
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/g0$a;

    .line 73
    iget-object v8, v8, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    if-eqz v8, :cond_1d

    .line 74
    iget-object v8, v8, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz v8, :cond_1d

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/x;->J()Landroidx/fragment/app/s0;

    move-result-object v9

    .line 76
    invoke-static {v8, v9}, Landroidx/fragment/app/p0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/s0;)Landroidx/fragment/app/p0;

    move-result-object v8

    .line 77
    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 78
    :cond_1f
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/p0;

    .line 79
    iput-boolean v2, v6, Landroidx/fragment/app/p0;->d:Z

    .line 80
    invoke-virtual {v6}, Landroidx/fragment/app/p0;->h()V

    .line 81
    invoke-virtual {v6}, Landroidx/fragment/app/p0;->c()V

    goto :goto_16

    :cond_20
    move/from16 v2, p3

    :goto_17
    if-ge v2, v4, :cond_22

    .line 82
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    .line 83
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_21

    .line 84
    iget v6, v3, Landroidx/fragment/app/a;->s:I

    if-ltz v6, :cond_21

    const/4 v6, -0x1

    .line 85
    iput v6, v3, Landroidx/fragment/app/a;->s:I

    goto :goto_18

    :cond_21
    const/4 v6, -0x1

    .line 86
    :goto_18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_22
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final C(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final D(Ljava/lang/String;)Landroidx/fragment/app/m;
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/f0;->d(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object p1

    return-object p1
.end method

.method public final E(I)Landroidx/fragment/app/m;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    .line 2
    iget-object v1, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 3
    iget-object v2, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/m;

    if-eqz v2, :cond_0

    .line 4
    iget v3, v2, Landroidx/fragment/app/m;->D:I

    if-ne v3, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v0, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/e0;

    if-eqz v1, :cond_2

    .line 6
    iget-object v2, v1, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 7
    iget v1, v2, Landroidx/fragment/app/m;->D:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public final F(Ljava/lang/String;)Landroidx/fragment/app/m;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2
    iget-object v1, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 3
    iget-object v2, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/m;

    if-eqz v2, :cond_0

    .line 4
    iget-object v3, v2, Landroidx/fragment/app/m;->F:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 5
    iget-object v0, v0, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/e0;

    if-eqz v1, :cond_2

    .line 6
    iget-object v2, v1, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 7
    iget-object v1, v2, Landroidx/fragment/app/m;->F:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public final G(Landroidx/fragment/app/m;)Landroid/view/ViewGroup;
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p1, Landroidx/fragment/app/m;->E:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/x;->r:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/x;->r:Landroidx/fragment/app/r;

    iget p1, p1, Landroidx/fragment/app/m;->E:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/r;->h(I)Landroid/view/View;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final H()Landroidx/fragment/app/t;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->H()Landroidx/fragment/app/t;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/x;->u:Landroidx/fragment/app/x$e;

    return-object v0
.end method

.method public final I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final J()Landroidx/fragment/app/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->J()Landroidx/fragment/app/s0;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/x;->v:Landroidx/fragment/app/x$f;

    return-object v0
.end method

.method public final K(Landroidx/fragment/app/m;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/m;->G:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/m;->G:Z

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/m;->Q:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/m;->Q:Z

    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->d0(Landroidx/fragment/app/m;)V

    :cond_1
    return-void
.end method

.method public final M(Landroidx/fragment/app/m;)Z
    .locals 5

    .line 1
    iget-object p1, p1, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->g()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m;

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {p1, v3}, Landroidx/fragment/app/x;->M(Landroidx/fragment/app/m;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_0

    move v1, v4

    :cond_2
    return v1
.end method

.method public final N(Landroidx/fragment/app/m;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/m;->J:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroidx/fragment/app/m;->C:Landroidx/fragment/app/m;

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/x;->N(Landroidx/fragment/app/m;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public final O(Landroidx/fragment/app/m;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 2
    iget-object v2, v1, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    .line 3
    invoke-virtual {p1, v2}, Landroidx/fragment/app/m;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->O(Landroidx/fragment/app/m;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final P()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/fragment/app/x;->B:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/fragment/app/x;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final Q(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 3
    iget p2, p0, Landroidx/fragment/app/x;->p:I

    if-ne p1, p2, :cond_2

    return-void

    .line 4
    :cond_2
    iput p1, p0, Landroidx/fragment/app/x;->p:I

    .line 5
    iget-object p1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    .line 6
    iget-object p2, p1, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/m;

    .line 7
    iget-object v1, p1, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    iget-object v0, v0, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/e0;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/e0;->k()V

    goto :goto_1

    .line 9
    :cond_4
    iget-object p2, p1, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/e0;

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v0}, Landroidx/fragment/app/e0;->k()V

    .line 11
    iget-object v2, v0, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 12
    iget-boolean v3, v2, Landroidx/fragment/app/m;->t:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroidx/fragment/app/m;->D()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {p1, v0}, Landroidx/fragment/app/f0;->k(Landroidx/fragment/app/e0;)V

    goto :goto_2

    .line 14
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/x;->f0()V

    .line 15
    iget-boolean p1, p0, Landroidx/fragment/app/x;->A:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    if-eqz p1, :cond_8

    iget p2, p0, Landroidx/fragment/app/x;->p:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    .line 16
    invoke-virtual {p1}, Landroidx/fragment/app/u;->m()V

    .line 17
    iput-boolean v1, p0, Landroidx/fragment/app/x;->A:Z

    :cond_8
    return-void
.end method

.method public final R()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/x;->B:Z

    .line 3
    iput-boolean v0, p0, Landroidx/fragment/app/x;->C:Z

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 5
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->h:Z

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, v1, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v1}, Landroidx/fragment/app/x;->R()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final S(Landroidx/fragment/app/e0;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 2
    iget-boolean v1, v0, Landroidx/fragment/app/m;->N:Z

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, p0, Landroidx/fragment/app/x;->b:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroidx/fragment/app/x;->E:Z

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Landroidx/fragment/app/m;->N:Z

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/e0;->k()V

    :cond_1
    return-void
.end method

.method public final T()Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->z(Z)Z

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/x;->y(Z)V

    .line 3
    iget-object v2, p0, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroidx/fragment/app/m;->k()Landroidx/fragment/app/x;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroidx/fragment/app/x;->T()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v2, p0, Landroidx/fragment/app/x;->F:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/x;->G:Ljava/util/ArrayList;

    const/4 v4, -0x1

    invoke-virtual {p0, v2, v3, v4, v0}, Landroidx/fragment/app/x;->U(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v1, p0, Landroidx/fragment/app/x;->b:Z

    .line 8
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/x;->F:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/x;->G:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/x;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/x;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/fragment/app/x;->d()V

    .line 10
    throw v0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/x;->g0()V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/x;->u()V

    .line 13
    iget-object v1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v1}, Landroidx/fragment/app/f0;->b()V

    move v1, v0

    :goto_1
    return v1
.end method

.method public final U(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-gez p3, :cond_2

    and-int/lit8 v3, p4, 0x1

    if-nez v3, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p4, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    const/4 v3, -0x1

    if-ltz p3, :cond_7

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    .line 6
    iget-object v4, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/a;

    if-ltz p3, :cond_3

    .line 7
    iget v4, v4, Landroidx/fragment/app/a;->s:I

    if-ne p3, v4, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-gez v0, :cond_5

    return v1

    :cond_5
    and-int/2addr p4, v2

    if-eqz p4, :cond_6

    :goto_2
    add-int/2addr v0, v3

    if-ltz v0, :cond_6

    .line 8
    iget-object p4, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/fragment/app/a;

    if-ltz p3, :cond_6

    .line 9
    iget p4, p4, Landroidx/fragment/app/a;->s:I

    if-ne p3, p4, :cond_6

    goto :goto_2

    :cond_6
    move v3, v0

    .line 10
    :cond_7
    iget-object p3, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v3, p3, :cond_8

    return v1

    .line 11
    :cond_8
    iget-object p3, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_3
    if-le p3, v3, :cond_9

    .line 12
    iget-object p4, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    return v2
.end method

.method public final V(Landroidx/fragment/app/m;)V
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/fragment/app/m;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/m;->D()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    iget-boolean v2, p1, Landroidx/fragment/app/m;->H:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    .line 6
    iget-object v2, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p1, Landroidx/fragment/app/m;->s:Z

    .line 10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->M(Landroidx/fragment/app/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iput-boolean v1, p0, Landroidx/fragment/app/x;->A:Z

    .line 12
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/m;->t:Z

    .line 13
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->d0(Landroidx/fragment/app/m;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 3
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/x;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/g0;->p:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2, v2, v1}, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 7
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 8
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/a;

    iget-boolean v3, v3, Landroidx/fragment/app/g0;->p:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {p0, p1, p2, v1, v2}, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 11
    invoke-virtual {p0, p1, p2, v2, v0}, Landroidx/fragment/app/x;->B(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    .line 12
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final X(Landroid/os/Parcelable;)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/fragment/app/z;

    .line 2
    iget-object v2, v1, Landroidx/fragment/app/z;->h:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v2, v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    .line 4
    iget-object v2, v2, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 5
    iget-object v2, v1, Landroidx/fragment/app/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "): "

    const/4 v5, 0x2

    const-string v6, "FragmentManager"

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroidx/fragment/app/d0;

    if-eqz v12, :cond_2

    .line 6
    iget-object v3, v0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    iget-object v7, v12, Landroidx/fragment/app/d0;->i:Ljava/lang/String;

    .line 7
    iget-object v3, v3, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m;

    if-eqz v3, :cond_4

    .line 8
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restoreSaveState: re-attaching retained "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_3
    new-instance v7, Landroidx/fragment/app/e0;

    iget-object v8, v0, Landroidx/fragment/app/x;->n:Landroidx/fragment/app/w;

    iget-object v9, v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-direct {v7, v8, v9, v3, v12}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/w;Landroidx/fragment/app/f0;Landroidx/fragment/app/m;Landroidx/fragment/app/d0;)V

    goto :goto_1

    .line 11
    :cond_4
    new-instance v3, Landroidx/fragment/app/e0;

    iget-object v8, v0, Landroidx/fragment/app/x;->n:Landroidx/fragment/app/w;

    iget-object v9, v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    iget-object v7, v0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 12
    iget-object v7, v7, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 13
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/x;->H()Landroidx/fragment/app/t;

    move-result-object v11

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/w;Landroidx/fragment/app/f0;Ljava/lang/ClassLoader;Landroidx/fragment/app/t;Landroidx/fragment/app/d0;)V

    .line 15
    :goto_1
    iget-object v3, v7, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 16
    iput-object v0, v3, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 17
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "restoreSaveState: active ("

    .line 18
    invoke-static {v5}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 19
    iget-object v8, v3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_5
    iget-object v3, v0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 21
    iget-object v3, v3, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 22
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroidx/fragment/app/e0;->m(Ljava/lang/ClassLoader;)V

    .line 23
    iget-object v3, v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v3, v7}, Landroidx/fragment/app/f0;->j(Landroidx/fragment/app/e0;)V

    .line 24
    iget v3, v0, Landroidx/fragment/app/x;->p:I

    .line 25
    iput v3, v7, Landroidx/fragment/app/e0;->e:I

    goto/16 :goto_0

    .line 26
    :cond_6
    iget-object v2, v0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Landroidx/fragment/app/a0;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v7, 0x1

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m;

    .line 29
    iget-object v8, v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    iget-object v9, v3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroidx/fragment/app/f0;->c(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 30
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 31
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Discarding retained Fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " that was not found in the set of active Fragments "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroidx/fragment/app/z;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_8
    iget-object v8, v0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    invoke-virtual {v8, v3}, Landroidx/fragment/app/a0;->b(Landroidx/fragment/app/m;)V

    .line 33
    iput-object v0, v3, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 34
    new-instance v8, Landroidx/fragment/app/e0;

    iget-object v9, v0, Landroidx/fragment/app/x;->n:Landroidx/fragment/app/w;

    iget-object v10, v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-direct {v8, v9, v10, v3}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/w;Landroidx/fragment/app/f0;Landroidx/fragment/app/m;)V

    .line 35
    iput v7, v8, Landroidx/fragment/app/e0;->e:I

    .line 36
    invoke-virtual {v8}, Landroidx/fragment/app/e0;->k()V

    .line 37
    iput-boolean v7, v3, Landroidx/fragment/app/m;->t:Z

    .line 38
    invoke-virtual {v8}, Landroidx/fragment/app/e0;->k()V

    goto :goto_2

    .line 39
    :cond_9
    iget-object v2, v0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    iget-object v3, v1, Landroidx/fragment/app/z;->i:Ljava/util/ArrayList;

    .line 40
    iget-object v8, v2, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_c

    .line 41
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 42
    invoke-virtual {v2, v8}, Landroidx/fragment/app/f0;->d(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 43
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 44
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreSaveState: added ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_a
    invoke-virtual {v2, v9}, Landroidx/fragment/app/f0;->a(Landroidx/fragment/app/m;)V

    goto :goto_3

    .line 46
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No instantiated fragment for ("

    const-string v3, ")"

    .line 47
    invoke-static {v2, v8, v3}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_c
    iget-object v2, v1, Landroidx/fragment/app/z;->j:[Landroidx/fragment/app/b;

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-eqz v2, :cond_11

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    iget-object v9, v1, Landroidx/fragment/app/z;->j:[Landroidx/fragment/app/b;

    array-length v9, v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    move v2, v3

    .line 51
    :goto_4
    iget-object v9, v1, Landroidx/fragment/app/z;->j:[Landroidx/fragment/app/b;

    array-length v10, v9

    if-ge v2, v10, :cond_12

    .line 52
    aget-object v9, v9, v2

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v10, Landroidx/fragment/app/a;

    invoke-direct {v10, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    move v11, v3

    move v12, v11

    .line 54
    :goto_5
    iget-object v13, v9, Landroidx/fragment/app/b;->h:[I

    array-length v14, v13

    if-ge v11, v14, :cond_f

    .line 55
    new-instance v14, Landroidx/fragment/app/g0$a;

    invoke-direct {v14}, Landroidx/fragment/app/g0$a;-><init>()V

    add-int/lit8 v15, v11, 0x1

    .line 56
    aget v11, v13, v11

    iput v11, v14, Landroidx/fragment/app/g0$a;->a:I

    .line 57
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 58
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Instantiate "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " op #"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " base fragment #"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v9, Landroidx/fragment/app/b;->h:[I

    aget v13, v13, v15

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_d
    iget-object v11, v9, Landroidx/fragment/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_e

    .line 60
    invoke-virtual {v0, v11}, Landroidx/fragment/app/x;->D(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v8

    .line 61
    iput-object v8, v14, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    goto :goto_6

    .line 62
    :cond_e
    iput-object v8, v14, Landroidx/fragment/app/g0$a;->b:Landroidx/fragment/app/m;

    .line 63
    :goto_6
    invoke-static {}, Landroidx/lifecycle/i$c;->values()[Landroidx/lifecycle/i$c;

    move-result-object v8

    iget-object v11, v9, Landroidx/fragment/app/b;->j:[I

    aget v11, v11, v12

    aget-object v8, v8, v11

    iput-object v8, v14, Landroidx/fragment/app/g0$a;->g:Landroidx/lifecycle/i$c;

    .line 64
    invoke-static {}, Landroidx/lifecycle/i$c;->values()[Landroidx/lifecycle/i$c;

    move-result-object v8

    iget-object v11, v9, Landroidx/fragment/app/b;->k:[I

    aget v11, v11, v12

    aget-object v8, v8, v11

    iput-object v8, v14, Landroidx/fragment/app/g0$a;->h:Landroidx/lifecycle/i$c;

    .line 65
    iget-object v8, v9, Landroidx/fragment/app/b;->h:[I

    add-int/lit8 v11, v15, 0x1

    aget v13, v8, v15

    iput v13, v14, Landroidx/fragment/app/g0$a;->c:I

    add-int/lit8 v15, v11, 0x1

    .line 66
    aget v11, v8, v11

    iput v11, v14, Landroidx/fragment/app/g0$a;->d:I

    add-int/lit8 v16, v15, 0x1

    .line 67
    aget v15, v8, v15

    iput v15, v14, Landroidx/fragment/app/g0$a;->e:I

    add-int/lit8 v17, v16, 0x1

    .line 68
    aget v8, v8, v16

    iput v8, v14, Landroidx/fragment/app/g0$a;->f:I

    .line 69
    iput v13, v10, Landroidx/fragment/app/g0;->b:I

    .line 70
    iput v11, v10, Landroidx/fragment/app/g0;->c:I

    .line 71
    iput v15, v10, Landroidx/fragment/app/g0;->d:I

    .line 72
    iput v8, v10, Landroidx/fragment/app/g0;->e:I

    .line 73
    invoke-virtual {v10, v14}, Landroidx/fragment/app/g0;->b(Landroidx/fragment/app/g0$a;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    move/from16 v11, v17

    goto/16 :goto_5

    .line 74
    :cond_f
    iget v8, v9, Landroidx/fragment/app/b;->l:I

    iput v8, v10, Landroidx/fragment/app/g0;->f:I

    .line 75
    iget-object v8, v9, Landroidx/fragment/app/b;->m:Ljava/lang/String;

    iput-object v8, v10, Landroidx/fragment/app/g0;->i:Ljava/lang/String;

    .line 76
    iget v8, v9, Landroidx/fragment/app/b;->n:I

    iput v8, v10, Landroidx/fragment/app/a;->s:I

    .line 77
    iput-boolean v7, v10, Landroidx/fragment/app/g0;->g:Z

    .line 78
    iget v8, v9, Landroidx/fragment/app/b;->o:I

    iput v8, v10, Landroidx/fragment/app/g0;->j:I

    .line 79
    iget-object v8, v9, Landroidx/fragment/app/b;->p:Ljava/lang/CharSequence;

    iput-object v8, v10, Landroidx/fragment/app/g0;->k:Ljava/lang/CharSequence;

    .line 80
    iget v8, v9, Landroidx/fragment/app/b;->q:I

    iput v8, v10, Landroidx/fragment/app/g0;->l:I

    .line 81
    iget-object v8, v9, Landroidx/fragment/app/b;->r:Ljava/lang/CharSequence;

    iput-object v8, v10, Landroidx/fragment/app/g0;->m:Ljava/lang/CharSequence;

    .line 82
    iget-object v8, v9, Landroidx/fragment/app/b;->s:Ljava/util/ArrayList;

    iput-object v8, v10, Landroidx/fragment/app/g0;->n:Ljava/util/ArrayList;

    .line 83
    iget-object v8, v9, Landroidx/fragment/app/b;->t:Ljava/util/ArrayList;

    iput-object v8, v10, Landroidx/fragment/app/g0;->o:Ljava/util/ArrayList;

    .line 84
    iget-boolean v8, v9, Landroidx/fragment/app/b;->u:Z

    iput-boolean v8, v10, Landroidx/fragment/app/g0;->p:Z

    .line 85
    invoke-virtual {v10, v7}, Landroidx/fragment/app/a;->h(I)V

    .line 86
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "restoreAllState: back stack #"

    const-string v9, " (index "

    .line 87
    invoke-static {v8, v2, v9}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 88
    iget v9, v10, Landroidx/fragment/app/a;->s:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v8, Landroidx/fragment/app/m0;

    invoke-direct {v8}, Landroidx/fragment/app/m0;-><init>()V

    .line 90
    new-instance v9, Ljava/io/PrintWriter;

    invoke-direct {v9, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v8, "  "

    .line 91
    invoke-virtual {v10, v8, v9, v3}, Landroidx/fragment/app/a;->k(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 92
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V

    .line 93
    :cond_10
    iget-object v8, v0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x0

    goto/16 :goto_4

    .line 94
    :cond_11
    iput-object v8, v0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    .line 95
    :cond_12
    iget-object v2, v0, Landroidx/fragment/app/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v4, v1, Landroidx/fragment/app/z;->k:I

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 96
    iget-object v2, v1, Landroidx/fragment/app/z;->l:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 97
    invoke-virtual {v0, v2}, Landroidx/fragment/app/x;->D(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v2

    iput-object v2, v0, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    .line 98
    invoke-virtual {v0, v2}, Landroidx/fragment/app/x;->q(Landroidx/fragment/app/m;)V

    .line 99
    :cond_13
    iget-object v2, v1, Landroidx/fragment/app/z;->m:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    .line 100
    :goto_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 101
    iget-object v4, v1, Landroidx/fragment/app/z;->n:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 102
    iget-object v5, v0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 103
    iget-object v5, v5, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 104
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 105
    iget-object v5, v0, Landroidx/fragment/app/x;->j:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 106
    :cond_14
    new-instance v2, Ljava/util/ArrayDeque;

    iget-object v1, v1, Landroidx/fragment/app/z;->o:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Landroidx/fragment/app/x;->z:Ljava/util/ArrayDeque;

    return-void
.end method

.method public final Y()Landroid/os/Parcelable;
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/x;->e()Ljava/util/Set;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/p0;

    .line 3
    iget-boolean v3, v1, Landroidx/fragment/app/p0;->e:Z

    if-eqz v3, :cond_0

    .line 4
    iput-boolean v2, v1, Landroidx/fragment/app/p0;->e:Z

    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/p0;->c()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/x;->w()V

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->z(Z)Z

    .line 8
    iput-boolean v0, p0, Landroidx/fragment/app/x;->B:Z

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 10
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->h:Z

    .line 11
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, v0, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    iget-object v0, v0, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/e0;

    if-eqz v3, :cond_2

    .line 14
    iget-object v6, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 15
    new-instance v7, Landroidx/fragment/app/d0;

    invoke-direct {v7, v6}, Landroidx/fragment/app/d0;-><init>(Landroidx/fragment/app/m;)V

    .line 16
    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget v9, v8, Landroidx/fragment/app/m;->h:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_d

    iget-object v9, v7, Landroidx/fragment/app/d0;->t:Landroid/os/Bundle;

    if-nez v9, :cond_d

    .line 17
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 18
    iget-object v9, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 19
    invoke-virtual {v9, v8}, Landroidx/fragment/app/m;->R(Landroid/os/Bundle;)V

    .line 20
    iget-object v10, v9, Landroidx/fragment/app/m;->X:Lb1/c;

    invoke-virtual {v10, v8}, Lb1/c;->d(Landroid/os/Bundle;)V

    .line 21
    iget-object v9, v9, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v9}, Landroidx/fragment/app/x;->Y()Landroid/os/Parcelable;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v10, "android:support:fragments"

    .line 22
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    :cond_3
    iget-object v9, v3, Landroidx/fragment/app/e0;->a:Landroidx/fragment/app/w;

    iget-object v10, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    invoke-virtual {v9, v10, v8, v2}, Landroidx/fragment/app/w;->j(Landroidx/fragment/app/m;Landroid/os/Bundle;Z)V

    .line 24
    invoke-virtual {v8}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v8

    .line 25
    :goto_2
    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v8, v8, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz v8, :cond_5

    .line 26
    invoke-virtual {v3}, Landroidx/fragment/app/e0;->o()V

    .line 27
    :cond_5
    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v8, v8, Landroidx/fragment/app/m;->j:Landroid/util/SparseArray;

    if-eqz v8, :cond_7

    if-nez v4, :cond_6

    .line 28
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 29
    :cond_6
    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v8, v8, Landroidx/fragment/app/m;->j:Landroid/util/SparseArray;

    const-string v9, "android:view_state"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 30
    :cond_7
    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v8, v8, Landroidx/fragment/app/m;->k:Landroid/os/Bundle;

    if-eqz v8, :cond_9

    if-nez v4, :cond_8

    .line 31
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 32
    :cond_8
    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v8, v8, Landroidx/fragment/app/m;->k:Landroid/os/Bundle;

    const-string v9, "android:view_registry_state"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 33
    :cond_9
    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v8, v8, Landroidx/fragment/app/m;->O:Z

    if-nez v8, :cond_b

    if-nez v4, :cond_a

    .line 34
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 35
    :cond_a
    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-boolean v8, v8, Landroidx/fragment/app/m;->O:Z

    const-string v9, "android:user_visible_hint"

    invoke-virtual {v4, v9, v8}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    :cond_b
    iput-object v4, v7, Landroidx/fragment/app/d0;->t:Landroid/os/Bundle;

    .line 37
    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v8, v8, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    if-eqz v8, :cond_e

    if-nez v4, :cond_c

    .line 38
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, v7, Landroidx/fragment/app/d0;->t:Landroid/os/Bundle;

    .line 39
    :cond_c
    iget-object v4, v7, Landroidx/fragment/app/d0;->t:Landroid/os/Bundle;

    iget-object v8, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget-object v8, v8, Landroidx/fragment/app/m;->p:Ljava/lang/String;

    const-string v9, "android:target_state"

    invoke-virtual {v4, v9, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v3, v3, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    iget v3, v3, Landroidx/fragment/app/m;->q:I

    if-eqz v3, :cond_e

    .line 41
    iget-object v4, v7, Landroidx/fragment/app/d0;->t:Landroid/os/Bundle;

    const-string v8, "android:target_req_state"

    invoke-virtual {v4, v8, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 42
    :cond_d
    iget-object v3, v8, Landroidx/fragment/app/m;->i:Landroid/os/Bundle;

    iput-object v3, v7, Landroidx/fragment/app/d0;->t:Landroid/os/Bundle;

    .line 43
    :cond_e
    :goto_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saved state of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Landroidx/fragment/app/d0;->t:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 46
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 47
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-object v4

    .line 48
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    .line 49
    iget-object v3, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    monitor-enter v3

    .line 50
    :try_start_0
    iget-object v6, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 51
    monitor-exit v3

    move-object v6, v4

    goto :goto_5

    .line 52
    :cond_12
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    iget-object v0, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/m;

    .line 54
    iget-object v8, v7, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string v8, "FragmentManager"

    .line 56
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveAllState: adding fragment ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 57
    :cond_14
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_5
    iget-object v0, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 60
    new-array v4, v0, [Landroidx/fragment/app/b;

    :goto_6
    if-ge v2, v0, :cond_16

    .line 61
    new-instance v3, Landroidx/fragment/app/b;

    iget-object v7, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/a;

    invoke-direct {v3, v7}, Landroidx/fragment/app/b;-><init>(Landroidx/fragment/app/a;)V

    aput-object v3, v4, v2

    .line 62
    invoke-static {v5}, Landroidx/fragment/app/x;->L(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "FragmentManager"

    const-string v7, "saveAllState: adding back stack #"

    const-string v8, ": "

    .line 63
    invoke-static {v7, v2, v8}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 64
    iget-object v8, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 66
    invoke-static {v3, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 67
    :cond_16
    new-instance v0, Landroidx/fragment/app/z;

    invoke-direct {v0}, Landroidx/fragment/app/z;-><init>()V

    .line 68
    iput-object v1, v0, Landroidx/fragment/app/z;->h:Ljava/util/ArrayList;

    .line 69
    iput-object v6, v0, Landroidx/fragment/app/z;->i:Ljava/util/ArrayList;

    .line 70
    iput-object v4, v0, Landroidx/fragment/app/z;->j:[Landroidx/fragment/app/b;

    .line 71
    iget-object v1, p0, Landroidx/fragment/app/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iput v1, v0, Landroidx/fragment/app/z;->k:I

    .line 72
    iget-object v1, p0, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    if-eqz v1, :cond_17

    .line 73
    iget-object v1, v1, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/z;->l:Ljava/lang/String;

    .line 74
    :cond_17
    iget-object v1, v0, Landroidx/fragment/app/z;->m:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/x;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 75
    iget-object v1, v0, Landroidx/fragment/app/z;->n:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/x;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/x;->z:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/fragment/app/z;->o:Ljava/util/ArrayList;

    return-object v0

    :catchall_0
    move-exception v0

    .line 77
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final Z()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    :try_start_0
    iget-object v3, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/u;->j:Landroid/os/Handler;

    .line 5
    iget-object v2, p0, Landroidx/fragment/app/x;->J:Landroidx/fragment/app/x$g;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 7
    iget-object v1, v1, Landroidx/fragment/app/u;->j:Landroid/os/Handler;

    .line 8
    iget-object v2, p0, Landroidx/fragment/app/x;->J:Landroidx/fragment/app/x$g;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/x;->g0()V

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :catchall_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Landroidx/fragment/app/m;)Landroidx/fragment/app/e0;
    .locals 3

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/m;)Landroidx/fragment/app/e0;

    move-result-object v0

    .line 3
    iput-object p0, p1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 4
    iget-object v1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/f0;->j(Landroidx/fragment/app/e0;)V

    .line 5
    iget-boolean v1, p1, Landroidx/fragment/app/m;->H:Z

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/f0;->a(Landroidx/fragment/app/m;)V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p1, Landroidx/fragment/app/m;->t:Z

    .line 8
    iget-object v2, p1, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-nez v2, :cond_1

    .line 9
    iput-boolean v1, p1, Landroidx/fragment/app/m;->Q:Z

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->M(Landroidx/fragment/app/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Landroidx/fragment/app/x;->A:Z

    :cond_2
    return-object v0
.end method

.method public final a0(Landroidx/fragment/app/m;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->G(Landroidx/fragment/app/m;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentContainerView;->setDrawDisappearingViewsLast(Z)V

    :cond_0
    return-void
.end method

.method public final b(Landroidx/fragment/app/u;Landroidx/fragment/app/r;Landroidx/fragment/app/m;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/u<",
            "*>;",
            "Landroidx/fragment/app/r;",
            "Landroidx/fragment/app/m;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    if-nez v0, :cond_a

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 3
    iput-object p2, p0, Landroidx/fragment/app/x;->r:Landroidx/fragment/app/r;

    .line 4
    iput-object p3, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    if-eqz p3, :cond_0

    .line 5
    new-instance p2, Landroidx/fragment/app/x$h;

    invoke-direct {p2, p3}, Landroidx/fragment/app/x$h;-><init>(Landroidx/fragment/app/m;)V

    .line 6
    iget-object v0, p0, Landroidx/fragment/app/x;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    instance-of p2, p1, Landroidx/fragment/app/b0;

    if-eqz p2, :cond_1

    .line 8
    move-object p2, p1

    check-cast p2, Landroidx/fragment/app/b0;

    .line 9
    iget-object v0, p0, Landroidx/fragment/app/x;->o:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    :goto_0
    iget-object p2, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/x;->g0()V

    .line 12
    :cond_2
    instance-of p2, p1, Landroidx/activity/j;

    if-eqz p2, :cond_4

    .line 13
    move-object p2, p1

    check-cast p2, Landroidx/activity/j;

    .line 14
    invoke-interface {p2}, Landroidx/activity/j;->e()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/x;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_3

    move-object p2, p3

    .line 15
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/x;->h:Landroidx/fragment/app/x$c;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/q;Landroidx/activity/i;)V

    :cond_4
    if-eqz p3, :cond_6

    .line 16
    iget-object p1, p3, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 17
    iget-object p1, p1, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 18
    iget-object p2, p1, Landroidx/fragment/app/a0;->d:Ljava/util/HashMap;

    iget-object v0, p3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/a0;

    if-nez p2, :cond_5

    .line 19
    new-instance p2, Landroidx/fragment/app/a0;

    iget-boolean v0, p1, Landroidx/fragment/app/a0;->f:Z

    invoke-direct {p2, v0}, Landroidx/fragment/app/a0;-><init>(Z)V

    .line 20
    iget-object p1, p1, Landroidx/fragment/app/a0;->d:Ljava/util/HashMap;

    iget-object v0, p3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_5
    iput-object p2, p0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    goto :goto_1

    .line 22
    :cond_6
    instance-of p2, p1, Landroidx/lifecycle/o0;

    if-eqz p2, :cond_7

    .line 23
    check-cast p1, Landroidx/lifecycle/o0;

    invoke-interface {p1}, Landroidx/lifecycle/o0;->P()Landroidx/lifecycle/n0;

    move-result-object p1

    .line 24
    new-instance p2, Landroidx/lifecycle/l0;

    sget-object v0, Landroidx/fragment/app/a0;->i:Landroidx/fragment/app/a0$a;

    const-string v1, "store"

    .line 25
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "factory"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v1, Lu0/a$a;->b:Lu0/a$a;

    .line 27
    invoke-direct {p2, p1, v0, v1}, Landroidx/lifecycle/l0;-><init>(Landroidx/lifecycle/n0;Landroidx/lifecycle/l0$a;Lu0/a;)V

    .line 28
    const-class p1, Landroidx/fragment/app/a0;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/l0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/a0;

    .line 29
    iput-object p1, p0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    goto :goto_1

    .line 30
    :cond_7
    new-instance p1, Landroidx/fragment/app/a0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/a0;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 31
    :goto_1
    iget-object p1, p0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    invoke-virtual {p0}, Landroidx/fragment/app/x;->P()Z

    move-result p2

    .line 32
    iput-boolean p2, p1, Landroidx/fragment/app/a0;->h:Z

    .line 33
    iget-object p1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    iget-object p2, p0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 34
    iput-object p2, p1, Landroidx/fragment/app/f0;->c:Landroidx/fragment/app/a0;

    .line 35
    iget-object p1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    instance-of p2, p1, Landroidx/activity/result/e;

    if-eqz p2, :cond_9

    .line 36
    check-cast p1, Landroidx/activity/result/e;

    .line 37
    invoke-interface {p1}, Landroidx/activity/result/e;->J()Landroidx/activity/result/d;

    move-result-object p1

    if-eqz p3, :cond_8

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    const-string v0, ":"

    .line 39
    invoke-static {p2, p3, v0}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_8
    const-string p2, ""

    :goto_2
    const-string p3, "FragmentManager:"

    .line 40
    invoke-static {p3, p2}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "StartActivityForResult"

    .line 41
    invoke-static {p2, p3}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 42
    new-instance v0, Le/c;

    invoke-direct {v0}, Le/c;-><init>()V

    new-instance v1, Landroidx/fragment/app/x$i;

    invoke-direct {v1, p0}, Landroidx/fragment/app/x$i;-><init>(Landroidx/fragment/app/x;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/d;->d(Ljava/lang/String;Le/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p3

    check-cast p3, Landroidx/activity/result/d$a;

    iput-object p3, p0, Landroidx/fragment/app/x;->w:Landroidx/activity/result/d$a;

    const-string p3, "StartIntentSenderForResult"

    .line 43
    invoke-static {p2, p3}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 44
    new-instance v0, Landroidx/fragment/app/x$j;

    invoke-direct {v0}, Landroidx/fragment/app/x$j;-><init>()V

    new-instance v1, Landroidx/fragment/app/x$a;

    invoke-direct {v1, p0}, Landroidx/fragment/app/x$a;-><init>(Landroidx/fragment/app/x;)V

    invoke-virtual {p1, p3, v0, v1}, Landroidx/activity/result/d;->d(Ljava/lang/String;Le/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p3

    check-cast p3, Landroidx/activity/result/d$a;

    iput-object p3, p0, Landroidx/fragment/app/x;->x:Landroidx/activity/result/d$a;

    const-string p3, "RequestPermissions"

    .line 45
    invoke-static {p2, p3}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    new-instance p3, Le/b;

    invoke-direct {p3}, Le/b;-><init>()V

    new-instance v0, Landroidx/fragment/app/x$b;

    invoke-direct {v0, p0}, Landroidx/fragment/app/x$b;-><init>(Landroidx/fragment/app/x;)V

    invoke-virtual {p1, p2, p3, v0}, Landroidx/activity/result/d;->d(Ljava/lang/String;Le/a;Landroidx/activity/result/b;)Landroidx/activity/result/c;

    move-result-object p1

    check-cast p1, Landroidx/activity/result/d$a;

    iput-object p1, p0, Landroidx/fragment/app/x;->y:Landroidx/activity/result/d$a;

    :cond_9
    return-void

    .line 47
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b0(Landroidx/fragment/app/m;Landroidx/lifecycle/i$c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->D(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    if-ne v0, p0, :cond_1

    .line 2
    :cond_0
    iput-object p2, p1, Landroidx/fragment/app/m;->T:Landroidx/lifecycle/i$c;

    return-void

    .line 3
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final c(Landroidx/fragment/app/m;)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/m;->H:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p1, Landroidx/fragment/app/m;->H:Z

    .line 4
    iget-boolean v1, p1, Landroidx/fragment/app/m;->s:Z

    if-nez v1, :cond_2

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/f0;->a(Landroidx/fragment/app/m;)V

    .line 6
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->M(Landroidx/fragment/app/m;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/fragment/app/x;->A:Z

    :cond_2
    return-void
.end method

.method public final c0(Landroidx/fragment/app/m;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->D(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->q(Landroidx/fragment/app/m;)V

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->q(Landroidx/fragment/app/m;)V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/x;->b:Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/x;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Landroidx/fragment/app/x;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final d0(Landroidx/fragment/app/m;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->G(Landroidx/fragment/app/m;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroidx/fragment/app/m;->m()I

    move-result v1

    invoke-virtual {p1}, Landroidx/fragment/app/m;->n()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Landroidx/fragment/app/m;->t()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroidx/fragment/app/m;->u()I

    move-result v2

    add-int/2addr v2, v1

    if-lez v2, :cond_1

    .line 3
    sget v1, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/m;

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/m;->s()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/m;->m0(Z)V

    :cond_1
    return-void
.end method

.method public final e()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/fragment/app/p0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v1}, Landroidx/fragment/app/f0;->f()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/e0;

    .line 3
    iget-object v2, v2, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 4
    iget-object v2, v2, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/x;->J()Landroidx/fragment/app/s0;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Landroidx/fragment/app/p0;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/s0;)Landroidx/fragment/app/p0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final e0(Landroidx/fragment/app/m;)V
    .locals 2

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/m;->G:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p1, Landroidx/fragment/app/m;->G:Z

    .line 4
    iget-boolean v0, p1, Landroidx/fragment/app/m;->Q:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/m;->Q:Z

    :cond_1
    return-void
.end method

.method public final f(Landroidx/fragment/app/m;)Landroidx/fragment/app/e0;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    iget-object v1, p1, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/f0;->h(Ljava/lang/String;)Landroidx/fragment/app/e0;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroidx/fragment/app/e0;

    iget-object v1, p0, Landroidx/fragment/app/x;->n:Landroidx/fragment/app/w;

    iget-object v2, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-direct {v0, v1, v2, p1}, Landroidx/fragment/app/e0;-><init>(Landroidx/fragment/app/w;Landroidx/fragment/app/f0;Landroidx/fragment/app/m;)V

    .line 3
    iget-object p1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 4
    iget-object p1, p1, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/e0;->m(Ljava/lang/ClassLoader;)V

    .line 6
    iget p1, p0, Landroidx/fragment/app/x;->p:I

    .line 7
    iput p1, v0, Landroidx/fragment/app/e0;->e:I

    return-object v0
.end method

.method public final f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->f()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/e0;

    .line 2
    invoke-virtual {p0, v1}, Landroidx/fragment/app/x;->S(Landroidx/fragment/app/e0;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Landroidx/fragment/app/m;)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/m;->H:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Landroidx/fragment/app/m;->H:Z

    .line 4
    iget-boolean v2, p1, Landroidx/fragment/app/m;->s:Z

    if-eqz v2, :cond_3

    .line 5
    invoke-static {v0}, Landroidx/fragment/app/x;->L(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove from detach: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    .line 7
    iget-object v2, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v0, v0, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p1, Landroidx/fragment/app/m;->s:Z

    .line 11
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->M(Landroidx/fragment/app/m;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iput-boolean v1, p0, Landroidx/fragment/app/x;->A:Z

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->d0(Landroidx/fragment/app/m;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public final g0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/x;->h:Landroidx/fragment/app/x$c;

    .line 4
    iput-boolean v2, v1, Landroidx/activity/i;->a:Z

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Landroidx/fragment/app/x;->h:Landroidx/fragment/app/x$c;

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-lez v1, :cond_2

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    .line 10
    invoke-virtual {p0, v1}, Landroidx/fragment/app/x;->O(Landroidx/fragment/app/m;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 11
    :goto_1
    iput-boolean v2, v0, Landroidx/activity/i;->a:Z

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final h(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/m;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3
    iget-object v1, v1, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/x;->h(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final i(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/x;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m;

    if-eqz v3, :cond_1

    .line 3
    iget-boolean v4, v3, Landroidx/fragment/app/m;->G:Z

    if-nez v4, :cond_2

    .line 4
    iget-object v3, v3, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v3, p1}, Landroidx/fragment/app/x;->i(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    return v1

    :cond_3
    return v2
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/x;->B:Z

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/x;->C:Z

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/x;->I:Landroidx/fragment/app/a0;

    .line 4
    iput-boolean v0, v1, Landroidx/fragment/app/a0;->h:Z

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->t(I)V

    return-void
.end method

.method public final k(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 1
    iget v0, p0, Landroidx/fragment/app/x;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v3, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v3}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/m;

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual {p0, v5}, Landroidx/fragment/app/x;->N(Landroidx/fragment/app/m;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4
    iget-boolean v6, v5, Landroidx/fragment/app/m;->G:Z

    if-nez v6, :cond_2

    .line 5
    iget-object v6, v5, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v6, p1, p2}, Landroidx/fragment/app/x;->k(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    or-int/2addr v6, v2

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-eqz v6, :cond_1

    if-nez v0, :cond_3

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v1

    goto :goto_0

    .line 8
    :cond_4
    iget-object p1, p0, Landroidx/fragment/app/x;->e:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 9
    :goto_2
    iget-object p1, p0, Landroidx/fragment/app/x;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_7

    .line 10
    iget-object p1, p0, Landroidx/fragment/app/x;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/m;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 12
    :cond_5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 13
    :cond_7
    iput-object v0, p0, Landroidx/fragment/app/x;->e:Ljava/util/ArrayList;

    return v4
.end method

.method public final l()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/x;->D:Z

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->z(Z)Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/x;->w()V

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->t(I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/x;->r:Landroidx/fragment/app/r;

    .line 7
    iput-object v0, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    .line 8
    iget-object v1, p0, Landroidx/fragment/app/x;->g:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_1

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/x;->h:Landroidx/fragment/app/x$c;

    .line 10
    iget-object v1, v1, Landroidx/activity/i;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/activity/a;

    .line 11
    invoke-interface {v2}, Landroidx/activity/a;->cancel()V

    goto :goto_0

    .line 12
    :cond_0
    iput-object v0, p0, Landroidx/fragment/app/x;->g:Landroidx/activity/OnBackPressedDispatcher;

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/x;->w:Landroidx/activity/result/d$a;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Landroidx/activity/result/d$a;->b()V

    .line 15
    iget-object v0, p0, Landroidx/fragment/app/x;->x:Landroidx/activity/result/d$a;

    invoke-virtual {v0}, Landroidx/activity/result/d$a;->b()V

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/x;->y:Landroidx/activity/result/d$a;

    invoke-virtual {v0}, Landroidx/activity/result/d$a;->b()V

    :cond_2
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Landroidx/fragment/app/m;->Z()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final n(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/m;->a0(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final o(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/x;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m;

    if-eqz v3, :cond_1

    .line 3
    iget-boolean v4, v3, Landroidx/fragment/app/m;->G:Z

    if-nez v4, :cond_2

    .line 4
    iget-object v3, v3, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v3, p1}, Landroidx/fragment/app/x;->o(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    return v1

    :cond_3
    return v2
.end method

.method public final p(Landroid/view/Menu;)V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/fragment/app/x;->p:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v2, v1, Landroidx/fragment/app/m;->G:Z

    if-nez v2, :cond_1

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/x;->p(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final q(Landroidx/fragment/app/m;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p1, Landroidx/fragment/app/m;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->D(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p1, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/x;->O(Landroidx/fragment/app/m;)Z

    move-result v0

    .line 3
    iget-object v1, p1, Landroidx/fragment/app/m;->r:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/m;->r:Ljava/lang/Boolean;

    .line 6
    iget-object p1, p1, Landroidx/fragment/app/m;->B:Landroidx/fragment/app/y;

    .line 7
    invoke-virtual {p1}, Landroidx/fragment/app/x;->g0()V

    .line 8
    iget-object v0, p1, Landroidx/fragment/app/x;->t:Landroidx/fragment/app/m;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/x;->q(Landroidx/fragment/app/m;)V

    :cond_1
    return-void
.end method

.method public final r(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Landroidx/fragment/app/m;->b0(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final s(Landroid/view/Menu;)Z
    .locals 5

    .line 1
    iget v0, p0, Landroidx/fragment/app/x;->p:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {v0}, Landroidx/fragment/app/f0;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m;

    if-eqz v3, :cond_1

    .line 3
    invoke-virtual {p0, v3}, Landroidx/fragment/app/x;->N(Landroidx/fragment/app/m;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p1}, Landroidx/fragment/app/m;->c0(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final t(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Landroidx/fragment/app/x;->b:Z

    .line 2
    iget-object v2, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    .line 3
    iget-object v2, v2, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/e0;

    if-eqz v3, :cond_0

    .line 4
    iput p1, v3, Landroidx/fragment/app/e0;->e:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/x;->Q(IZ)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/x;->e()Ljava/util/Set;

    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/p0;

    .line 8
    invoke-virtual {v2}, Landroidx/fragment/app/p0;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 9
    :cond_2
    iput-boolean v1, p0, Landroidx/fragment/app/x;->b:Z

    .line 10
    invoke-virtual {p0, v0}, Landroidx/fragment/app/x;->z(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iput-boolean v1, p0, Landroidx/fragment/app/x;->b:Z

    .line 12
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-object v1, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "}}"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/x;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/x;->E:Z

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/x;->f0()V

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "    "

    .line 1
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v1, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments:"

    .line 6
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    iget-object v3, v1, Landroidx/fragment/app/f0;->b:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/e0;

    .line 8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v4, :cond_0

    .line 9
    iget-object v4, v4, Landroidx/fragment/app/e0;->c:Landroidx/fragment/app/m;

    .line 10
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v4, v2, p2, p3, p4}, Landroidx/fragment/app/m;->g(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "null"

    .line 12
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p2, v1, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_2

    .line 14
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, p4

    :goto_1
    if-ge v2, p2, :cond_2

    .line 15
    iget-object v3, v1, Landroidx/fragment/app/f0;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m;

    .line 16
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    .line 17
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 19
    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Landroidx/fragment/app/m;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_2
    iget-object p2, p0, Landroidx/fragment/app/x;->e:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 22
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 23
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_2
    if-ge v1, p2, :cond_3

    .line 24
    iget-object v2, p0, Landroidx/fragment/app/x;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/m;

    .line 25
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 26
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 28
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Landroidx/fragment/app/m;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 30
    :cond_3
    iget-object p2, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 31
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 32
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_3
    if-ge v1, p2, :cond_4

    .line 33
    iget-object v2, p0, Landroidx/fragment/app/x;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/a;

    .line 34
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 35
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 37
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v2}, Landroidx/fragment/app/a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 39
    invoke-virtual {v2, v0, p3, v3}, Landroidx/fragment/app/a;->k(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 40
    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back Stack Index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/x;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    iget-object p2, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    monitor-enter p2

    .line 43
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 44
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    if-ge p4, v0, :cond_5

    .line 45
    iget-object v1, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/x$l;

    .line 46
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 47
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 49
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 51
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    .line 53
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    .line 55
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    .line 58
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Landroidx/fragment/app/x;->r:Landroidx/fragment/app/r;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 60
    iget-object p2, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    if-eqz p2, :cond_6

    .line 61
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    .line 62
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 63
    iget-object p2, p0, Landroidx/fragment/app/x;->s:Landroidx/fragment/app/m;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 64
    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    .line 65
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    iget p2, p0, Landroidx/fragment/app/x;->p:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 67
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    iget-boolean p2, p0, Landroidx/fragment/app/x;->B:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 69
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-boolean p2, p0, Landroidx/fragment/app/x;->C:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 71
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget-boolean p2, p0, Landroidx/fragment/app/x;->D:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 73
    iget-boolean p2, p0, Landroidx/fragment/app/x;->A:Z

    if-eqz p2, :cond_7

    .line 74
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    .line 75
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    iget-boolean p1, p0, Landroidx/fragment/app/x;->A:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 77
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/x;->e()Ljava/util/Set;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/p0;

    .line 3
    invoke-virtual {v1}, Landroidx/fragment/app/p0;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x(Landroidx/fragment/app/x$l;Z)V
    .locals 2

    if-nez p2, :cond_3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    if-nez v0, :cond_1

    .line 2
    iget-boolean p1, p0, Landroidx/fragment/app/x;->D:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/x;->P()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    .line 9
    monitor-exit v0

    return-void

    .line 10
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_5
    iget-object p2, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/x;->Z()V

    .line 13
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final y(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/fragment/app/x;->b:Z

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    if-nez v0, :cond_1

    .line 3
    iget-boolean p1, p0, Landroidx/fragment/app/x;->D:Z

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 7
    iget-object v1, v1, Landroidx/fragment/app/u;->j:Landroid/os/Handler;

    .line 8
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    if-nez p1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/x;->P()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/x;->F:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/x;->F:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/x;->G:Ljava/util/ArrayList;

    :cond_4
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroidx/fragment/app/x;->b:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/x;->C(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iput-boolean p1, p0, Landroidx/fragment/app/x;->b:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/x;->b:Z

    .line 17
    throw v0

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z(Z)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/x;->y(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/x;->F:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/x;->G:Ljava/util/ArrayList;

    .line 3
    iget-object v4, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    monitor-enter v4

    .line 4
    :try_start_0
    iget-object v5, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    monitor-exit v4

    move v7, v0

    goto :goto_2

    .line 6
    :cond_0
    iget-object v5, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v0

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_1

    .line 7
    iget-object v8, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/x$l;

    invoke-interface {v8, v2, v3}, Landroidx/fragment/app/x$l;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v8

    or-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v2, p0, Landroidx/fragment/app/x;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 9
    iget-object v2, p0, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 10
    iget-object v2, v2, Landroidx/fragment/app/u;->j:Landroid/os/Handler;

    .line 11
    iget-object v3, p0, Landroidx/fragment/app/x;->J:Landroidx/fragment/app/x$g;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    if-eqz v7, :cond_2

    .line 13
    iput-boolean p1, p0, Landroidx/fragment/app/x;->b:Z

    .line 14
    :try_start_1
    iget-object v1, p0, Landroidx/fragment/app/x;->F:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/x;->G:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/x;->W(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/x;->d()V

    move v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/fragment/app/x;->d()V

    .line 16
    throw p1

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/x;->g0()V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/x;->u()V

    .line 19
    iget-object p1, p0, Landroidx/fragment/app/x;->c:Landroidx/fragment/app/f0;

    invoke-virtual {p1}, Landroidx/fragment/app/f0;->b()V

    return v1

    :catchall_1
    move-exception p1

    .line 20
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
