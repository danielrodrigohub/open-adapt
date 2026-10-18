.class public final Landroidx/transition/h$a;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public h:Landroidx/transition/f;

.field public i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/transition/f;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/transition/h$a;->h:Landroidx/transition/f;

    .line 3
    iput-object p2, p0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object v1, v0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object v1, Landroidx/transition/h;->c:Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, Landroidx/transition/h;->b()Lp/a;

    move-result-object v1

    .line 5
    iget-object v3, v0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v3, v4}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v5, v0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v3}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    :goto_0
    move-object v5, v4

    .line 12
    :goto_1
    iget-object v6, v0, Landroidx/transition/h$a;->h:Landroidx/transition/f;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, v0, Landroidx/transition/h$a;->h:Landroidx/transition/f;

    new-instance v6, Landroidx/transition/h$a$a;

    invoke-direct {v6, v0, v1}, Landroidx/transition/h$a$a;-><init>(Landroidx/transition/h$a;Lp/a;)V

    invoke-virtual {v3, v6}, Landroidx/transition/f;->a(Landroidx/transition/f$d;)Landroidx/transition/f;

    .line 14
    iget-object v1, v0, Landroidx/transition/h$a;->h:Landroidx/transition/f;

    iget-object v3, v0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroidx/transition/f;->h(Landroid/view/ViewGroup;Z)V

    if-eqz v5, :cond_3

    .line 15
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/transition/f;

    .line 16
    iget-object v5, v0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroidx/transition/f;->x(Landroid/view/View;)V

    goto :goto_2

    .line 17
    :cond_3
    iget-object v1, v0, Landroidx/transition/h$a;->h:Landroidx/transition/f;

    iget-object v8, v0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Landroidx/transition/f;->r:Ljava/util/ArrayList;

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Landroidx/transition/f;->s:Ljava/util/ArrayList;

    .line 20
    iget-object v3, v1, Landroidx/transition/f;->n:Lg1/h;

    iget-object v5, v1, Landroidx/transition/f;->o:Lg1/h;

    .line 21
    new-instance v7, Lp/a;

    iget-object v9, v3, Lg1/h;->a:Lp/a;

    invoke-direct {v7, v9}, Lp/a;-><init>(Lp/g;)V

    .line 22
    new-instance v9, Lp/a;

    iget-object v10, v5, Lg1/h;->a:Lp/a;

    invoke-direct {v9, v10}, Lp/a;-><init>(Lp/g;)V

    move v10, v6

    .line 23
    :goto_3
    iget-object v11, v1, Landroidx/transition/f;->q:[I

    array-length v12, v11

    if-ge v10, v12, :cond_f

    .line 24
    aget v11, v11, v10

    if-eq v11, v2, :cond_c

    const/4 v12, 0x2

    if-eq v11, v12, :cond_a

    const/4 v12, 0x3

    if-eq v11, v12, :cond_8

    const/4 v12, 0x4

    if-eq v11, v12, :cond_5

    :cond_4
    move-object v2, v3

    goto/16 :goto_9

    .line 25
    :cond_5
    iget-object v11, v3, Lg1/h;->c:Lp/d;

    iget-object v12, v5, Lg1/h;->c:Lp/d;

    .line 26
    invoke-virtual {v11}, Lp/d;->g()I

    move-result v13

    move v14, v6

    :goto_4
    if-ge v14, v13, :cond_4

    .line 27
    invoke-virtual {v11, v14}, Lp/d;->h(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    if-eqz v15, :cond_6

    .line 28
    invoke-virtual {v1, v15}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v17, v3

    .line 29
    invoke-virtual {v11, v14}, Lp/d;->e(I)J

    move-result-wide v2

    .line 30
    invoke-virtual {v12, v2, v3, v4}, Lp/d;->d(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_7

    .line 32
    invoke-virtual {v1, v2}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 33
    invoke-virtual {v7, v15, v4}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    check-cast v3, Lg1/g;

    .line 35
    invoke-virtual {v9, v2, v4}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 36
    move-object/from16 v6, v18

    check-cast v6, Lg1/g;

    if-eqz v3, :cond_7

    if-eqz v6, :cond_7

    .line 37
    iget-object v4, v1, Landroidx/transition/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v3, v1, Landroidx/transition/f;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {v7, v15}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v9, v2}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    move-object/from16 v17, v3

    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto :goto_4

    :cond_8
    move-object v2, v3

    .line 41
    iget-object v3, v2, Lg1/h;->b:Landroid/util/SparseArray;

    iget-object v4, v5, Lg1/h;->b:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v6, :cond_e

    .line 43
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_9

    .line 44
    invoke-virtual {v1, v12}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 45
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    if-eqz v13, :cond_9

    .line 46
    invoke-virtual {v1, v13}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    .line 47
    invoke-virtual {v7, v12, v14}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 48
    check-cast v15, Lg1/g;

    .line 49
    invoke-virtual {v9, v13, v14}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 50
    move-object/from16 v14, v17

    check-cast v14, Lg1/g;

    if-eqz v15, :cond_9

    if-eqz v14, :cond_9

    .line 51
    iget-object v0, v1, Landroidx/transition/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, v1, Landroidx/transition/f;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v7, v12}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {v9, v13}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    :cond_a
    move-object v2, v3

    .line 55
    iget-object v0, v2, Lg1/h;->d:Lp/a;

    iget-object v3, v5, Lg1/h;->d:Lp/a;

    .line 56
    iget v4, v0, Lp/g;->j:I

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_e

    .line 57
    invoke-virtual {v0, v6}, Lp/g;->m(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_b

    .line 58
    invoke-virtual {v1, v11}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 59
    invoke-virtual {v0, v6}, Lp/g;->i(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    .line 60
    invoke-virtual {v3, v12, v13}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 61
    check-cast v12, Landroid/view/View;

    if-eqz v12, :cond_b

    .line 62
    invoke-virtual {v1, v12}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 63
    invoke-virtual {v7, v11, v13}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 64
    check-cast v14, Lg1/g;

    .line 65
    invoke-virtual {v9, v12, v13}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 66
    check-cast v15, Lg1/g;

    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    .line 67
    iget-object v13, v1, Landroidx/transition/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v13, v1, Landroidx/transition/f;->s:Ljava/util/ArrayList;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {v7, v11}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {v9, v12}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_c
    move-object v2, v3

    .line 71
    iget v0, v7, Lp/g;->j:I

    :cond_d
    :goto_8
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_e

    .line 72
    invoke-virtual {v7, v0}, Lp/g;->i(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_d

    .line 73
    invoke-virtual {v1, v3}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 74
    invoke-virtual {v9, v3}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg1/g;

    if-eqz v3, :cond_d

    .line 75
    iget-object v4, v3, Lg1/g;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 76
    invoke-virtual {v7, v0}, Lp/g;->k(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg1/g;

    .line 77
    iget-object v6, v1, Landroidx/transition/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v4, v1, Landroidx/transition/f;->s:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object v3, v2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v0, 0x0

    .line 79
    :goto_a
    iget v2, v7, Lp/g;->j:I

    if-ge v0, v2, :cond_11

    .line 80
    invoke-virtual {v7, v0}, Lp/g;->m(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/g;

    .line 81
    iget-object v3, v2, Lg1/g;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 82
    iget-object v3, v1, Landroidx/transition/f;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v2, v1, Landroidx/transition/f;->s:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    .line 84
    :goto_b
    iget v2, v9, Lp/g;->j:I

    if-ge v0, v2, :cond_13

    .line 85
    invoke-virtual {v9, v0}, Lp/g;->m(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg1/g;

    .line 86
    iget-object v3, v2, Lg1/g;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroidx/transition/f;->s(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 87
    iget-object v3, v1, Landroidx/transition/f;->s:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v2, v1, Landroidx/transition/f;->r:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 89
    :cond_13
    invoke-static {}, Landroidx/transition/f;->o()Lp/a;

    move-result-object v0

    .line 90
    iget v2, v0, Lp/g;->j:I

    .line 91
    sget-object v3, Lg1/l;->a:Lg1/p;

    .line 92
    invoke-virtual {v8}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v3

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_c
    if-ltz v2, :cond_1c

    .line 93
    invoke-virtual {v0, v2}, Lp/g;->i(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_1a

    const/4 v5, 0x0

    .line 94
    invoke-virtual {v0, v4, v5}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 95
    check-cast v6, Landroidx/transition/f$b;

    if-eqz v6, :cond_1a

    .line 96
    iget-object v5, v6, Landroidx/transition/f$b;->a:Landroid/view/View;

    if-eqz v5, :cond_1a

    iget-object v5, v6, Landroidx/transition/f$b;->d:Lg1/s;

    .line 97
    instance-of v7, v5, Lg1/r;

    if-eqz v7, :cond_14

    check-cast v5, Lg1/r;

    iget-object v5, v5, Lg1/r;->a:Landroid/view/WindowId;

    invoke-virtual {v5, v3}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    goto :goto_d

    :cond_14
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_1a

    .line 98
    iget-object v5, v6, Landroidx/transition/f$b;->c:Lg1/g;

    .line 99
    iget-object v7, v6, Landroidx/transition/f$b;->a:Landroid/view/View;

    const/4 v9, 0x1

    .line 100
    invoke-virtual {v1, v7, v9}, Landroidx/transition/f;->q(Landroid/view/View;Z)Lg1/g;

    move-result-object v10

    .line 101
    invoke-virtual {v1, v7, v9}, Landroidx/transition/f;->n(Landroid/view/View;Z)Lg1/g;

    move-result-object v11

    if-nez v10, :cond_15

    if-nez v11, :cond_15

    .line 102
    iget-object v9, v1, Landroidx/transition/f;->o:Lg1/h;

    iget-object v9, v9, Lg1/h;->a:Lp/a;

    const/4 v12, 0x0

    .line 103
    invoke-virtual {v9, v7, v12}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 104
    move-object v11, v7

    check-cast v11, Lg1/g;

    goto :goto_e

    :cond_15
    const/4 v12, 0x0

    :goto_e
    if-nez v10, :cond_16

    if-eqz v11, :cond_17

    .line 105
    :cond_16
    iget-object v6, v6, Landroidx/transition/f$b;->e:Landroidx/transition/f;

    .line 106
    invoke-virtual {v6, v5, v11}, Landroidx/transition/f;->r(Lg1/g;Lg1/g;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    goto :goto_f

    :cond_17
    const/4 v5, 0x0

    :goto_f
    if-eqz v5, :cond_1b

    .line 107
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_18

    goto :goto_10

    .line 108
    :cond_18
    invoke-virtual {v0, v4}, Lp/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 109
    :cond_19
    :goto_10
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    goto :goto_11

    :cond_1a
    const/4 v12, 0x0

    :cond_1b
    :goto_11
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 110
    :cond_1c
    iget-object v9, v1, Landroidx/transition/f;->n:Lg1/h;

    iget-object v10, v1, Landroidx/transition/f;->o:Lg1/h;

    iget-object v11, v1, Landroidx/transition/f;->r:Ljava/util/ArrayList;

    iget-object v12, v1, Landroidx/transition/f;->s:Ljava/util/ArrayList;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Landroidx/transition/f;->l(Landroid/view/ViewGroup;Lg1/h;Lg1/h;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 111
    invoke-virtual {v1}, Landroidx/transition/f;->y()V

    const/4 v0, 0x1

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2
    iget-object p1, p0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 3
    sget-object p1, Landroidx/transition/h;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Landroidx/transition/h;->b()Lp/a;

    move-result-object p1

    iget-object v0, p0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/f;

    .line 9
    iget-object v1, p0, Landroidx/transition/h$a;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/transition/f;->x(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Landroidx/transition/h$a;->h:Landroidx/transition/f;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/transition/f;->i(Z)V

    return-void
.end method
