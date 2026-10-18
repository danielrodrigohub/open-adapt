.class public final Landroidx/fragment/app/c;
.super Landroidx/fragment/app/p0;
.source "DefaultSpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/c$d;,
        Landroidx/fragment/app/c$b;,
        Landroidx/fragment/app/c$c;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/fragment/app/p0;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/List;Z)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/p0$b;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/p0$b;

    .line 2
    iget-object v11, v7, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 3
    iget-object v11, v11, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-static {v11}, Landroidx/fragment/app/r0;->c(Landroid/view/View;)I

    move-result v11

    .line 4
    iget v12, v7, Landroidx/fragment/app/p0$b;->a:I

    .line 5
    invoke-static {v12}, Lq/g;->a(I)I

    move-result v12

    if-eqz v12, :cond_2

    if-eq v12, v10, :cond_1

    if-eq v12, v9, :cond_2

    if-eq v12, v8, :cond_2

    goto :goto_0

    :cond_1
    if-eq v11, v9, :cond_0

    move-object v6, v7

    goto :goto_0

    :cond_2
    if-ne v11, v9, :cond_0

    if-nez v5, :cond_0

    move-object v5, v7

    goto :goto_0

    .line 6
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/p0$b;

    .line 10
    new-instance v9, Lf0/d;

    invoke-direct {v9}, Lf0/d;-><init>()V

    .line 11
    invoke-virtual {v3}, Landroidx/fragment/app/p0$b;->e()V

    .line 12
    iget-object v11, v3, Landroidx/fragment/app/p0$b;->e:Ljava/util/HashSet;

    invoke-virtual {v11, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v11, Landroidx/fragment/app/c$b;

    invoke-direct {v11, v3, v9, v2}, Landroidx/fragment/app/c$b;-><init>(Landroidx/fragment/app/p0$b;Lf0/d;Z)V

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v9, Lf0/d;

    invoke-direct {v9}, Lf0/d;-><init>()V

    .line 15
    invoke-virtual {v3}, Landroidx/fragment/app/p0$b;->e()V

    .line 16
    iget-object v11, v3, Landroidx/fragment/app/p0$b;->e:Ljava/util/HashSet;

    invoke-virtual {v11, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v11, Landroidx/fragment/app/c$d;

    if-eqz v2, :cond_4

    if-ne v3, v5, :cond_5

    goto :goto_2

    :cond_4
    if-ne v3, v6, :cond_5

    :goto_2
    move v12, v10

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    .line 18
    :goto_3
    invoke-direct {v11, v3, v9, v2, v12}, Landroidx/fragment/app/c$d;-><init>(Landroidx/fragment/app/p0$b;Lf0/d;ZZ)V

    .line 19
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v9, Landroidx/fragment/app/c$a;

    invoke-direct {v9, v0, v8, v3}, Landroidx/fragment/app/c$a;-><init>(Landroidx/fragment/app/c;Ljava/util/List;Landroidx/fragment/app/p0$b;)V

    invoke-virtual {v3, v9}, Landroidx/fragment/app/p0$b;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 21
    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v9, 0x0

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/c$d;

    .line 23
    invoke-virtual {v10}, Landroidx/fragment/app/c$c;->b()Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_4

    .line 24
    :cond_8
    iget-object v11, v10, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Landroidx/fragment/app/c$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/k0;

    move-result-object v11

    .line 25
    iget-object v12, v10, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    .line 26
    invoke-virtual {v10, v12}, Landroidx/fragment/app/c$d;->c(Ljava/lang/Object;)Landroidx/fragment/app/k0;

    move-result-object v12

    const-string v13, " returned Transition "

    const-string v14, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    if-eqz v11, :cond_a

    if-eqz v12, :cond_a

    if-ne v11, v12, :cond_9

    goto :goto_5

    .line 27
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 28
    invoke-static {v14}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 29
    iget-object v3, v10, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/p0$b;

    .line 30
    iget-object v3, v3, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_5
    if-eqz v11, :cond_b

    goto :goto_6

    :cond_b
    move-object v11, v12

    :goto_6
    if-nez v9, :cond_c

    move-object v9, v11

    goto :goto_4

    :cond_c
    if-eqz v11, :cond_7

    if-ne v9, v11, :cond_d

    goto :goto_4

    .line 32
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 33
    invoke-static {v14}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 34
    iget-object v3, v10, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/p0$b;

    .line 35
    iget-object v3, v3, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v3, v10, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " which uses a different Transition  type than other Fragments."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const-string v3, "FragmentManager"

    if-nez v9, :cond_10

    .line 39
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/c$d;

    .line 40
    iget-object v6, v5, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/p0$b;

    .line 41
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v5}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    move-object v6, v1

    move-object v1, v3

    move-object/from16 v19, v4

    move-object v4, v8

    goto/16 :goto_1d

    .line 43
    :cond_10
    new-instance v15, Landroid/view/View;

    .line 44
    iget-object v10, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v15, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 47
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 48
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 49
    new-instance v11, Lp/a;

    invoke-direct {v11}, Lp/a;-><init>()V

    .line 50
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 p1, v3

    move-object/from16 v19, v4

    move-object v4, v5

    move-object v3, v6

    move-object/from16 v21, v16

    move/from16 v20, v17

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_22

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v22, v8

    move-object/from16 v8, v16

    check-cast v8, Landroidx/fragment/app/c$d;

    .line 51
    iget-object v8, v8, Landroidx/fragment/app/c$d;->e:Ljava/lang/Object;

    if-eqz v8, :cond_11

    const/16 v16, 0x1

    goto :goto_9

    :cond_11
    const/16 v16, 0x0

    :goto_9
    if-eqz v16, :cond_21

    if-eqz v4, :cond_21

    if-eqz v3, :cond_21

    .line 52
    invoke-virtual {v9, v8}, Landroidx/fragment/app/k0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 53
    invoke-virtual {v9, v8}, Landroidx/fragment/app/k0;->t(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 54
    iget-object v10, v3, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 55
    iget-object v10, v10, Landroidx/fragment/app/m;->P:Landroidx/fragment/app/m$b;

    if-eqz v10, :cond_12

    iget-object v10, v10, Landroidx/fragment/app/m$b;->h:Ljava/util/ArrayList;

    if-nez v10, :cond_13

    .line 56
    :cond_12
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_13
    move-object/from16 v23, v7

    .line 57
    iget-object v7, v4, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 58
    iget-object v7, v7, Landroidx/fragment/app/m;->P:Landroidx/fragment/app/m$b;

    if-eqz v7, :cond_14

    iget-object v7, v7, Landroidx/fragment/app/m$b;->h:Ljava/util/ArrayList;

    if-nez v7, :cond_15

    .line 59
    :cond_14
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    move-object/from16 v24, v1

    .line 60
    iget-object v1, v4, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 61
    iget-object v1, v1, Landroidx/fragment/app/m;->P:Landroidx/fragment/app/m$b;

    if-eqz v1, :cond_16

    iget-object v1, v1, Landroidx/fragment/app/m$b;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_17

    .line 62
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_17
    const/16 v16, 0x0

    move-object/from16 v17, v15

    move/from16 v15, v16

    move-object/from16 v16, v14

    .line 63
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v15, v14, :cond_19

    .line 64
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    move-object/from16 v25, v1

    const/4 v1, -0x1

    if-eq v14, v1, :cond_18

    .line 65
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v10, v14, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_18
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, v25

    goto :goto_a

    .line 66
    :cond_19
    iget-object v1, v3, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 67
    iget-object v1, v1, Landroidx/fragment/app/m;->P:Landroidx/fragment/app/m$b;

    if-eqz v1, :cond_1a

    iget-object v1, v1, Landroidx/fragment/app/m$b;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_1b

    .line 68
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1b
    if-nez v2, :cond_1c

    .line 69
    iget-object v7, v4, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 70
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v7, v3, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 72
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 73
    :cond_1c
    iget-object v7, v4, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 74
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v7, v3, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 76
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :goto_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v14, 0x0

    :goto_c
    if-ge v14, v7, :cond_1d

    .line 78
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move/from16 v26, v7

    move-object/from16 v7, v25

    check-cast v7, Ljava/lang/String;

    .line 80
    invoke-virtual {v11, v15, v7}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v26

    goto :goto_c

    .line 81
    :cond_1d
    new-instance v7, Lp/a;

    invoke-direct {v7}, Lp/a;-><init>()V

    .line 82
    iget-object v14, v4, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 83
    iget-object v14, v14, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v0, v7, v14}, Landroidx/fragment/app/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 84
    invoke-static {v7, v10}, Lp/f;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 85
    invoke-virtual {v7}, Lp/a;->keySet()Ljava/util/Set;

    move-result-object v14

    .line 86
    invoke-static {v11, v14}, Lp/f;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 87
    new-instance v14, Lp/a;

    invoke-direct {v14}, Lp/a;-><init>()V

    .line 88
    iget-object v15, v3, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 89
    iget-object v15, v15, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v0, v14, v15}, Landroidx/fragment/app/c;->k(Ljava/util/Map;Landroid/view/View;)V

    .line 90
    invoke-static {v14, v1}, Lp/f;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 91
    invoke-virtual {v11}, Lp/a;->values()Ljava/util/Collection;

    move-result-object v15

    .line 92
    invoke-static {v14, v15}, Lp/f;->k(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 93
    invoke-static {v11, v14}, Landroidx/fragment/app/h0;->b(Lp/a;Lp/a;)V

    .line 94
    invoke-virtual {v11}, Lp/a;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v0, v7, v15}, Landroidx/fragment/app/c;->l(Lp/a;Ljava/util/Collection;)V

    .line 95
    invoke-virtual {v11}, Lp/a;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Landroidx/fragment/app/c;->l(Lp/a;Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v11}, Lp/g;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 97
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 98
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    move-object v10, v1

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object v8, v13

    move-object/from16 v7, v16

    move-object/from16 v1, v17

    move-object/from16 v15, v24

    goto/16 :goto_f

    .line 99
    :cond_1e
    iget-object v3, v3, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    iget-object v4, v4, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 100
    invoke-static {v3, v4, v2}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/m;Landroidx/fragment/app/m;Z)V

    .line 101
    iget-object v3, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    .line 102
    new-instance v4, Landroidx/fragment/app/h;

    invoke-direct {v4, v6, v5, v2, v14}, Landroidx/fragment/app/h;-><init>(Landroidx/fragment/app/p0$b;Landroidx/fragment/app/p0$b;ZLp/a;)V

    invoke-static {v3, v4}, Lj0/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Lj0/t;

    .line 103
    invoke-virtual {v7}, Lp/a;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v10, 0x0

    .line 106
    invoke-virtual {v7, v4, v10}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 107
    check-cast v4, Landroid/view/View;

    .line 108
    invoke-virtual {v9, v8, v4}, Landroidx/fragment/app/k0;->o(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_d

    :cond_1f
    const/4 v3, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, v21

    .line 109
    :goto_d
    invoke-virtual {v14}, Lp/a;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_20

    .line 111
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-virtual {v14, v1, v10}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_20

    .line 114
    iget-object v3, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    .line 115
    new-instance v7, Landroidx/fragment/app/i;

    move-object/from16 v14, v16

    invoke-direct {v7, v9, v1, v14}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/k0;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v3, v7}, Lj0/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Lj0/t;

    const/16 v20, 0x1

    goto :goto_e

    :cond_20
    move-object/from16 v14, v16

    :goto_e
    move-object/from16 v1, v17

    .line 116
    invoke-virtual {v9, v8, v1, v13}, Landroidx/fragment/app/k0;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v9

    move-object/from16 v25, v11

    move-object v11, v8

    move-object/from16 v26, v12

    move-object v12, v3

    move-object v3, v13

    move-object v13, v7

    move-object v7, v14

    move-object v14, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v8

    move-object/from16 v17, v26

    .line 117
    invoke-virtual/range {v10 .. v17}, Landroidx/fragment/app/k0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 118
    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v15, v24

    invoke-virtual {v15, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v15, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v4

    move-object v4, v5

    move-object v10, v8

    move-object v8, v3

    move-object v3, v6

    goto :goto_f

    :cond_21
    move-object/from16 v23, v7

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object v8, v13

    move-object v7, v14

    move-object/from16 v35, v15

    move-object v15, v1

    move-object/from16 v1, v35

    :goto_f
    move-object v14, v7

    move-object v13, v8

    move-object/from16 v8, v22

    move-object/from16 v7, v23

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v35, v15

    move-object v15, v1

    move-object/from16 v1, v35

    goto/16 :goto_8

    :cond_22
    move-object/from16 v23, v7

    move-object/from16 v22, v8

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object v8, v13

    move-object v7, v14

    move-object/from16 v35, v15

    move-object v15, v1

    move-object/from16 v1, v35

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v14, v11

    move-object v13, v12

    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Landroidx/fragment/app/c$d;

    .line 122
    invoke-virtual {v12}, Landroidx/fragment/app/c$c;->b()Z

    move-result v11

    if-eqz v11, :cond_23

    .line 123
    iget-object v11, v12, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/p0$b;

    move-object/from16 p2, v5

    .line 124
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v12}, Landroidx/fragment/app/c$c;->a()V

    move-object/from16 v31, v1

    move-object v1, v3

    move-object/from16 v32, v8

    move-object/from16 v28, v10

    move-object v5, v14

    move-object v14, v15

    move-object/from16 v11, v21

    move-object/from16 v15, v22

    move-object/from16 v3, v26

    goto/16 :goto_17

    :cond_23
    move-object/from16 p2, v5

    .line 126
    iget-object v5, v12, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    .line 127
    invoke-virtual {v9, v5}, Landroidx/fragment/app/k0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 128
    iget-object v11, v12, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/p0$b;

    if-eqz v10, :cond_25

    if-eq v11, v4, :cond_24

    if-ne v11, v3, :cond_25

    :cond_24
    const/4 v3, 0x1

    goto :goto_11

    :cond_25
    const/4 v3, 0x0

    :goto_11
    if-nez v5, :cond_27

    if-nez v3, :cond_26

    .line 129
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {v12}, Landroidx/fragment/app/c$c;->a()V

    :cond_26
    move-object/from16 v31, v1

    move-object/from16 v32, v8

    move-object/from16 v28, v10

    move-object v5, v14

    move-object v14, v15

    move-object/from16 v11, v21

    move-object/from16 v15, v22

    move-object/from16 v3, v26

    goto/16 :goto_16

    :cond_27
    move-object/from16 v24, v15

    .line 131
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v10

    .line 132
    iget-object v10, v11, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 133
    iget-object v10, v10, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 134
    invoke-virtual {v0, v15, v10}, Landroidx/fragment/app/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    if-eqz v3, :cond_29

    if-ne v11, v4, :cond_28

    .line 135
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_28
    move-object/from16 v3, v26

    .line 136
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_29
    :goto_12
    move-object/from16 v3, v26

    .line 137
    :goto_13
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 138
    invoke-virtual {v9, v5, v1}, Landroidx/fragment/app/k0;->a(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v31, v1

    move-object/from16 v32, v8

    move-object v10, v11

    move-object/from16 v30, v12

    move-object v1, v13

    move-object v8, v14

    move-object v12, v15

    move-object/from16 v28, v16

    move-object/from16 v15, v22

    move-object/from16 v33, v24

    goto :goto_14

    .line 139
    :cond_2a
    invoke-virtual {v9, v5, v15}, Landroidx/fragment/app/k0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v28, v16

    move-object v10, v9

    move-object/from16 v29, v11

    move-object v11, v5

    move-object/from16 v30, v12

    move-object v12, v5

    move-object/from16 v31, v1

    move-object v1, v13

    move-object v13, v15

    move-object/from16 v32, v8

    move-object v8, v14

    move-object/from16 v14, v17

    move-object/from16 v34, v15

    move-object/from16 v33, v24

    move-object/from16 v15, v18

    move-object/from16 v16, v26

    move-object/from16 v17, v27

    .line 140
    invoke-virtual/range {v10 .. v17}, Landroidx/fragment/app/k0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v10, v29

    .line 141
    iget v11, v10, Landroidx/fragment/app/p0$b;->a:I

    const/4 v12, 0x3

    move-object/from16 v15, v22

    if-ne v11, v12, :cond_2b

    .line 142
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v12, v34

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    iget-object v13, v10, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 145
    iget-object v13, v13, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-object v13, v10, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 147
    iget-object v13, v13, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 148
    invoke-virtual {v9, v5, v13, v11}, Landroidx/fragment/app/k0;->l(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 149
    iget-object v11, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    .line 150
    new-instance v13, Landroidx/fragment/app/j;

    invoke-direct {v13, v12}, Landroidx/fragment/app/j;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v11, v13}, Lj0/t;->a(Landroid/view/View;Ljava/lang/Runnable;)Lj0/t;

    goto :goto_14

    :cond_2b
    move-object/from16 v12, v34

    .line 151
    :goto_14
    iget v11, v10, Landroidx/fragment/app/p0$b;->a:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_2d

    .line 152
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v20, :cond_2c

    .line 153
    invoke-virtual {v9, v5, v7}, Landroidx/fragment/app/k0;->n(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_2c
    move-object/from16 v11, v21

    goto :goto_15

    :cond_2d
    move-object/from16 v11, v21

    .line 154
    invoke-virtual {v9, v5, v11}, Landroidx/fragment/app/k0;->o(Ljava/lang/Object;Landroid/view/View;)V

    .line 155
    :goto_15
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v14, v33

    invoke-virtual {v14, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v30

    .line 156
    iget-boolean v10, v10, Landroidx/fragment/app/c$d;->d:Z

    if-eqz v10, :cond_2e

    const/4 v10, 0x0

    .line 157
    invoke-virtual {v9, v1, v5, v10}, Landroidx/fragment/app/k0;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v5, v8

    goto :goto_16

    :cond_2e
    const/4 v10, 0x0

    .line 158
    invoke-virtual {v9, v8, v5, v10}, Landroidx/fragment/app/k0;->j(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v1

    :goto_16
    move-object v1, v6

    :goto_17
    move-object/from16 v26, v3

    move-object/from16 v21, v11

    move-object/from16 v22, v15

    move-object/from16 v10, v28

    move-object/from16 v8, v32

    move-object v3, v1

    move-object v15, v14

    move-object/from16 v1, v31

    move-object v14, v5

    move-object/from16 v5, p2

    goto/16 :goto_10

    :cond_2f
    move-object/from16 v32, v8

    move-object v5, v10

    move-object v1, v13

    move-object v8, v14

    move-object v14, v15

    move-object/from16 v15, v22

    move-object/from16 v3, v26

    .line 159
    invoke-virtual {v9, v1, v8, v5}, Landroidx/fragment/app/k0;->i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 160
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_18
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/c$d;

    .line 161
    invoke-virtual {v8}, Landroidx/fragment/app/c$c;->b()Z

    move-result v10

    if-eqz v10, :cond_30

    goto :goto_18

    .line 162
    :cond_30
    iget-object v10, v8, Landroidx/fragment/app/c$d;->c:Ljava/lang/Object;

    .line 163
    iget-object v11, v8, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/p0$b;

    if-eqz v5, :cond_32

    if-eq v11, v4, :cond_31

    if-ne v11, v6, :cond_32

    :cond_31
    const/4 v12, 0x1

    goto :goto_19

    :cond_32
    const/4 v12, 0x0

    :goto_19
    if-nez v10, :cond_34

    if-eqz v12, :cond_33

    goto :goto_1a

    :cond_33
    move-object/from16 v13, p1

    goto :goto_1c

    .line 164
    :cond_34
    :goto_1a
    iget-object v10, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    .line 165
    sget-object v12, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 166
    invoke-static {v10}, Lj0/a0$g;->c(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_36

    const/4 v10, 0x2

    .line 167
    invoke-static {v10}, Landroidx/fragment/app/x;->L(I)Z

    move-result v10

    if-eqz v10, :cond_35

    const-string v10, "SpecialEffectsController: Container "

    .line 168
    invoke-static {v10}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 169
    iget-object v12, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    .line 170
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " has not been laid out. Completing operation "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v13, p1

    .line 171
    invoke-static {v13, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_35
    move-object/from16 v13, p1

    .line 172
    :goto_1b
    invoke-virtual {v8}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1c

    :cond_36
    move-object/from16 v13, p1

    .line 173
    iget-object v10, v8, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/p0$b;

    .line 174
    iget-object v10, v10, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 175
    iget-object v10, v8, Landroidx/fragment/app/c$c;->b:Lf0/d;

    .line 176
    new-instance v11, Landroidx/fragment/app/k;

    invoke-direct {v11, v8}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/c$d;)V

    .line 177
    invoke-virtual {v9, v1, v10, v11}, Landroidx/fragment/app/k0;->p(Ljava/lang/Object;Lf0/d;Ljava/lang/Runnable;)V

    :goto_1c
    move-object/from16 p1, v13

    goto :goto_18

    :cond_37
    move-object/from16 v13, p1

    .line 178
    iget-object v4, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    .line 179
    sget-object v6, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 180
    invoke-static {v4}, Lj0/a0$g;->c(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_38

    const/4 v2, 0x0

    move-object v1, v13

    move-object v6, v14

    move-object v4, v15

    goto :goto_1d

    :cond_38
    const/4 v4, 0x4

    .line 181
    invoke-static {v2, v4}, Landroidx/fragment/app/h0;->c(Ljava/util/ArrayList;I)V

    .line 182
    invoke-virtual {v9, v3}, Landroidx/fragment/app/k0;->k(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 183
    iget-object v6, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    .line 184
    invoke-virtual {v9, v6, v1}, Landroidx/fragment/app/k0;->c(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 185
    iget-object v11, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    move-object v10, v9

    move-object/from16 v12, v32

    move-object v1, v13

    move-object v13, v3

    move-object v6, v14

    move-object v14, v4

    move-object v4, v15

    move-object/from16 v15, v25

    .line 186
    invoke-virtual/range {v10 .. v15}, Landroidx/fragment/app/k0;->q(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v7, 0x0

    .line 187
    invoke-static {v2, v7}, Landroidx/fragment/app/h0;->c(Ljava/util/ArrayList;I)V

    move-object/from16 v2, v32

    .line 188
    invoke-virtual {v9, v5, v2, v3}, Landroidx/fragment/app/k0;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move v2, v7

    .line 189
    :goto_1d
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    .line 190
    iget-object v5, v0, Landroidx/fragment/app/p0;->a:Landroid/view/ViewGroup;

    .line 191
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 192
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1e
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroidx/fragment/app/c$b;

    .line 194
    invoke-virtual {v12}, Landroidx/fragment/app/c$c;->b()Z

    move-result v7

    if-eqz v7, :cond_39

    .line 195
    invoke-virtual {v12}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1e

    .line 196
    :cond_39
    invoke-virtual {v12, v13}, Landroidx/fragment/app/c$b;->c(Landroid/content/Context;)Landroidx/fragment/app/q$a;

    move-result-object v7

    if-nez v7, :cond_3a

    .line 197
    invoke-virtual {v12}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1e

    .line 198
    :cond_3a
    iget-object v11, v7, Landroidx/fragment/app/q$a;->b:Landroid/animation/Animator;

    if-nez v11, :cond_3b

    .line 199
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 200
    :cond_3b
    iget-object v10, v12, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/p0$b;

    .line 201
    iget-object v7, v10, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 202
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    const/4 v8, 0x2

    .line 203
    invoke-static {v8}, Landroidx/fragment/app/x;->L(I)Z

    move-result v8

    if-eqz v8, :cond_3c

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring Animator set on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " as this Fragment was involved in a Transition."

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_3c
    invoke-virtual {v12}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_1e

    .line 206
    :cond_3d
    iget v2, v10, Landroidx/fragment/app/p0$b;->a:I

    const/4 v8, 0x3

    if-ne v2, v8, :cond_3e

    const/4 v2, 0x1

    goto :goto_1f

    :cond_3e
    const/4 v2, 0x0

    :goto_1f
    if-eqz v2, :cond_3f

    .line 207
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    :cond_3f
    iget-object v9, v7, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 209
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 210
    new-instance v8, Landroidx/fragment/app/d;

    move-object v7, v8

    move-object v0, v8

    move-object v8, v5

    move-object/from16 p1, v9

    move-object/from16 v16, v10

    move v10, v2

    move-object v2, v11

    move-object/from16 v11, v16

    move-object/from16 p2, v12

    invoke-direct/range {v7 .. v12}, Landroidx/fragment/app/d;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroidx/fragment/app/p0$b;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p1

    .line 211
    invoke-virtual {v2, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    move-object/from16 v7, p2

    .line 213
    iget-object v0, v7, Landroidx/fragment/app/c$c;->b:Lf0/d;

    .line 214
    new-instance v7, Landroidx/fragment/app/e;

    invoke-direct {v7, v2}, Landroidx/fragment/app/e;-><init>(Landroid/animation/Animator;)V

    invoke-virtual {v0, v7}, Lf0/d;->b(Lf0/d$a;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1e

    .line 215
    :cond_40
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/c$b;

    .line 216
    iget-object v7, v6, Landroidx/fragment/app/c$c;->a:Landroidx/fragment/app/p0$b;

    .line 217
    iget-object v8, v7, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    const-string v9, "Ignoring Animation set on "

    if-eqz v3, :cond_42

    const/4 v7, 0x2

    .line 218
    invoke-static {v7}, Landroidx/fragment/app/x;->L(I)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as Animations cannot run alongside Transitions."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_41
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_20

    :cond_42
    if-eqz v2, :cond_44

    const/4 v7, 0x2

    .line 221
    invoke-static {v7}, Landroidx/fragment/app/x;->L(I)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 222
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " as Animations cannot run alongside Animators."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_43
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_20

    .line 224
    :cond_44
    iget-object v8, v8, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 225
    invoke-virtual {v6, v13}, Landroidx/fragment/app/c$b;->c(Landroid/content/Context;)Landroidx/fragment/app/q$a;

    move-result-object v9

    .line 226
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v9, v9, Landroidx/fragment/app/q$a;->a:Landroid/view/animation/Animation;

    .line 228
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget v7, v7, Landroidx/fragment/app/p0$b;->a:I

    const/4 v10, 0x1

    if-eq v7, v10, :cond_45

    .line 230
    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 231
    invoke-virtual {v6}, Landroidx/fragment/app/c$c;->a()V

    goto :goto_21

    .line 232
    :cond_45
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 233
    new-instance v7, Landroidx/fragment/app/q$b;

    invoke-direct {v7, v9, v5, v8}, Landroidx/fragment/app/q$b;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 234
    new-instance v9, Landroidx/fragment/app/f;

    invoke-direct {v9, v5, v8, v6}, Landroidx/fragment/app/f;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v7, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 235
    invoke-virtual {v8, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 236
    :goto_21
    iget-object v7, v6, Landroidx/fragment/app/c$c;->b:Lf0/d;

    .line 237
    new-instance v9, Landroidx/fragment/app/g;

    invoke-direct {v9, v8, v5, v6}, Landroidx/fragment/app/g;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroidx/fragment/app/c$b;)V

    invoke-virtual {v7, v9}, Lf0/d;->b(Lf0/d$a;)V

    goto/16 :goto_20

    .line 238
    :cond_46
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/p0$b;

    .line 239
    iget-object v2, v1, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 240
    iget-object v2, v2, Landroidx/fragment/app/m;->M:Landroid/view/View;

    .line 241
    iget v1, v1, Landroidx/fragment/app/p0$b;->a:I

    .line 242
    invoke-static {v1, v2}, Landroidx/fragment/app/r0;->a(ILandroid/view/View;)V

    goto :goto_22

    .line 243
    :cond_47
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final j(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    .line 3
    invoke-static {v0}, Lj0/d0;->b(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/c;->j(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final k(Ljava/util/Map;Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p2}, Lj0/a0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 5
    check-cast p2, Landroid/view/ViewGroup;

    .line 6
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 9
    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/c;->k(Ljava/util/Map;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final l(Lp/a;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lp/a;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Lp/f$b;

    invoke-virtual {p1}, Lp/f$b;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 2
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Lp/f$d;

    invoke-virtual {v0}, Lp/f$d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lp/f$d;->next()Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v1}, Lj0/a0$i;->k(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {v0}, Lp/f$d;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
