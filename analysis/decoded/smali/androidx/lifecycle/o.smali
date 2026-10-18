.class public Landroidx/lifecycle/o;
.super Ljava/lang/Object;
.source "Lifecycle.kt"

# interfaces
.implements Lg7/q;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Lva/d;)Lea/m;
    .locals 28

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lva/d;->n:Ljava/lang/String;

    .line 2
    iget-object v2, v0, Lva/d;->u:Ljava/lang/String;

    const-string v3, "leftDeviceId"

    .line 3
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rightDeviceId"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 4
    invoke-static {v1, v3}, Landroidx/lifecycle/m0;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x1

    .line 5
    invoke-static {v2, v1}, Landroidx/lifecycle/m0;->c(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "leftId"

    .line 6
    invoke-static {v7, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rightId"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, v0, Lva/d;->q:Ljava/lang/String;

    .line 8
    iget-object v3, v0, Lva/d;->r:Ljava/lang/String;

    .line 9
    iget-boolean v15, v0, Lva/d;->k:Z

    .line 10
    new-instance v16, Lea/b;

    .line 11
    iget-object v5, v0, Lva/d;->i:Ljava/lang/String;

    .line 12
    iget-object v6, v0, Lva/d;->n:Ljava/lang/String;

    .line 13
    iget-object v8, v0, Lva/d;->m:Ljava/lang/String;

    .line 14
    iget-object v9, v0, Lva/d;->o:Ljava/lang/String;

    .line 15
    iget v10, v0, Lva/d;->p:I

    const/4 v11, 0x0

    move-object/from16 v4, v16

    .line 16
    invoke-direct/range {v4 .. v11}, Lea/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 17
    new-instance v4, Lea/b;

    .line 18
    iget-object v9, v0, Lva/d;->i:Ljava/lang/String;

    .line 19
    iget-object v10, v0, Lva/d;->u:Ljava/lang/String;

    .line 20
    iget-object v12, v0, Lva/d;->t:Ljava/lang/String;

    .line 21
    iget-object v13, v0, Lva/d;->v:Ljava/lang/String;

    .line 22
    iget v14, v0, Lva/d;->w:I

    const/4 v5, 0x0

    move-object v8, v4

    move-object v11, v1

    move v1, v15

    move v15, v5

    .line 23
    invoke-direct/range {v8 .. v15}, Lea/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 24
    iget-object v14, v0, Lva/d;->l:Ljava/lang/String;

    .line 25
    iget-object v5, v0, Lva/d;->s:Ljava/util/List;

    .line 26
    iget v6, v0, Lva/d;->p:I

    .line 27
    iget v7, v0, Lva/d;->w:I

    .line 28
    new-instance v15, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v15, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 30
    check-cast v8, Lva/c;

    .line 31
    new-instance v9, Lea/e;

    .line 32
    iget-object v10, v8, Lva/c;->h:Ljava/lang/String;

    .line 33
    iget-object v11, v8, Lva/c;->k:Ljava/lang/String;

    .line 34
    iget-boolean v12, v8, Lva/c;->n:Z

    .line 35
    new-instance v13, Lea/c;

    move-object/from16 v24, v5

    .line 36
    new-instance v5, Lea/i;

    move-object/from16 v25, v14

    .line 37
    new-instance v14, Lea/h$c;

    move-object/from16 v26, v4

    .line 38
    iget v4, v8, Lva/c;->j:I

    .line 39
    invoke-direct {v14, v4}, Lea/h$c;-><init>(I)V

    .line 40
    invoke-direct {v5, v14, v6}, Lea/i;-><init>(Lea/h$c;I)V

    .line 41
    iget-object v4, v8, Lva/c;->i:Lva/b;

    .line 42
    invoke-static {v4}, Landroidx/lifecycle/o;->M(Lva/b;)Lea/d;

    move-result-object v4

    .line 43
    invoke-direct {v13, v5, v4}, Lea/c;-><init>(Lea/i;Lea/d;)V

    .line 44
    new-instance v4, Lea/c;

    .line 45
    new-instance v5, Lea/i;

    .line 46
    new-instance v14, Lea/h$c;

    move/from16 v27, v6

    .line 47
    iget v6, v8, Lva/c;->m:I

    .line 48
    invoke-direct {v14, v6}, Lea/h$c;-><init>(I)V

    .line 49
    invoke-direct {v5, v14, v7}, Lea/i;-><init>(Lea/h$c;I)V

    .line 50
    iget-object v6, v8, Lva/c;->l:Lva/b;

    .line 51
    invoke-static {v6}, Landroidx/lifecycle/o;->M(Lva/b;)Lea/d;

    move-result-object v6

    .line 52
    invoke-direct {v4, v5, v6}, Lea/c;-><init>(Lea/i;Lea/d;)V

    .line 53
    iget-object v5, v8, Lva/c;->o:Ljava/lang/Integer;

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .line 54
    invoke-direct/range {v17 .. v23}, Lea/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v24

    move-object/from16 v14, v25

    move-object/from16 v4, v26

    move/from16 v6, v27

    goto :goto_0

    :cond_0
    move-object/from16 v26, v4

    move-object/from16 v25, v14

    .line 55
    iget-object v4, v0, Lva/d;->i:Ljava/lang/String;

    .line 56
    iget-wide v5, v0, Lva/d;->j:J

    .line 57
    iget-wide v13, v0, Lva/d;->x:J

    .line 58
    iget v0, v0, Lva/d;->y:I

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 60
    sget-object v7, Lea/f;->j:Lea/f;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    goto :goto_2

    .line 61
    :cond_2
    :goto_1
    sget-object v7, Lea/f;->k:Lea/f;

    const/4 v8, 0x2

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_4

    :goto_2
    move-object/from16 v21, v7

    goto :goto_4

    .line 62
    :cond_4
    :goto_3
    sget-object v0, Lea/f;->i:Lea/f;

    move-object/from16 v21, v0

    .line 63
    :goto_4
    new-instance v0, Lea/m;

    move-object v8, v0

    const-wide/16 v22, 0x0

    const/16 v24, 0x1800

    move-object v9, v2

    move-object v10, v3

    move v11, v1

    move-object/from16 v12, v16

    move-wide v1, v13

    move-object/from16 v13, v26

    move-object/from16 v14, v25

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v16, v3

    move-wide/from16 v17, v5

    move-wide/from16 v19, v1

    invoke-direct/range {v8 .. v24}, Lea/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JJLea/f;JI)V

    return-object v0
.end method

.method public static final B(Lea/m;)Lva/e;
    .locals 34

    move-object/from16 v0, p0

    .line 1
    iget-object v10, v0, Lea/m;->h:Ljava/lang/String;

    .line 2
    iget-object v11, v0, Lea/m;->i:Ljava/lang/String;

    .line 3
    iget-boolean v4, v0, Lea/m;->j:Z

    .line 4
    iget-wide v2, v0, Lea/m;->s:J

    .line 5
    iget-object v1, v0, Lea/m;->l:Lea/b;

    .line 6
    iget-object v15, v1, Lea/b;->l:Ljava/lang/String;

    .line 7
    iget-object v5, v0, Lea/m;->k:Lea/b;

    .line 8
    iget-object v8, v5, Lea/b;->l:Ljava/lang/String;

    .line 9
    iget-object v14, v1, Lea/b;->i:Ljava/lang/String;

    .line 10
    iget-object v7, v5, Lea/b;->i:Ljava/lang/String;

    .line 11
    iget-object v13, v1, Lea/b;->k:Ljava/lang/String;

    .line 12
    iget-object v6, v5, Lea/b;->k:Ljava/lang/String;

    .line 13
    iget v12, v1, Lea/b;->m:I

    .line 14
    iget v9, v5, Lea/b;->m:I

    .line 15
    iget-object v5, v0, Lea/m;->m:Ljava/lang/String;

    .line 16
    iget-object v1, v0, Lea/m;->o:Ljava/util/List;

    move/from16 v16, v12

    .line 17
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v19, v15

    const/16 v15, 0xa

    invoke-static {v1, v15}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v15

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 19
    check-cast v15, Lea/e;

    move-object/from16 v17, v1

    .line 20
    iget-object v1, v15, Lea/e;->h:Ljava/lang/String;

    move-object/from16 v29, v14

    .line 21
    iget-object v14, v15, Lea/e;->i:Ljava/lang/String;

    move-object/from16 v30, v13

    .line 22
    iget-object v13, v15, Lea/e;->l:Lea/c;

    .line 23
    iget-object v13, v13, Lea/c;->i:Lea/d;

    .line 24
    invoke-static {v13}, Landroidx/lifecycle/o;->P(Lea/d;)Lva/b;

    move-result-object v25

    .line 25
    iget-object v13, v15, Lea/e;->l:Lea/c;

    .line 26
    iget-object v13, v13, Lea/c;->h:Lea/i;

    .line 27
    iget-object v13, v13, Lea/i;->h:Lea/h$c;

    .line 28
    iget v13, v13, Lea/h$c;->j:I

    move-object/from16 v31, v11

    .line 29
    iget-object v11, v15, Lea/e;->k:Lea/c;

    .line 30
    iget-object v11, v11, Lea/c;->i:Lea/d;

    .line 31
    invoke-static {v11}, Landroidx/lifecycle/o;->P(Lea/d;)Lva/b;

    move-result-object v22

    .line 32
    iget-object v11, v15, Lea/e;->k:Lea/c;

    .line 33
    iget-object v11, v11, Lea/c;->h:Lea/i;

    .line 34
    iget-object v11, v11, Lea/i;->h:Lea/h$c;

    .line 35
    iget v11, v11, Lea/h$c;->j:I

    move-object/from16 v32, v10

    .line 36
    iget-boolean v10, v15, Lea/e;->j:Z

    .line 37
    iget-object v15, v15, Lea/e;->m:Ljava/lang/Integer;

    move/from16 v33, v9

    .line 38
    new-instance v9, Lva/c;

    move-object/from16 v20, v9

    move-object/from16 v21, v1

    move/from16 v23, v11

    move-object/from16 v24, v14

    move/from16 v26, v13

    move/from16 v27, v10

    move-object/from16 v28, v15

    invoke-direct/range {v20 .. v28}, Lva/c;-><init>(Ljava/lang/String;Lva/b;ILjava/lang/String;Lva/b;IZLjava/lang/Integer;)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    move-object/from16 v14, v29

    move-object/from16 v13, v30

    move-object/from16 v11, v31

    move-object/from16 v10, v32

    move/from16 v9, v33

    goto :goto_0

    :cond_0
    move/from16 v33, v9

    move-object/from16 v32, v10

    move-object/from16 v31, v11

    move-object/from16 v30, v13

    move-object/from16 v29, v14

    .line 39
    iget-object v1, v0, Lea/m;->n:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 40
    iget-object v0, v0, Lea/m;->r:Lea/f;

    .line 41
    iget v0, v0, Lea/f;->h:I

    move/from16 v18, v0

    .line 42
    new-instance v0, Lva/e;

    move-object v1, v0

    move-object/from16 v15, v19

    invoke-direct/range {v1 .. v18}, Lva/e;-><init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    return-object v0
.end method

.method public static final varargs C([Ljava/lang/Object;)Ljava/util/List;
    .locals 3

    const-string v0, "elements"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lgd/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lgd/e;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final D(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/o;->y(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    sget-object p0, Lgd/p;->h:Lgd/p;

    :goto_0
    return-object p0
.end method

.method public static final E(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [C

    .line 2
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 4
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "buffer.toString()"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final F(Lda/g;)Lw9/u1;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p0, p0, Lda/g;->i:Z

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lw9/u1;->j:Lw9/u1;

    goto :goto_0

    :cond_0
    sget-object p0, Lw9/u1;->k:Lw9/u1;

    :goto_0
    return-object p0
.end method

.method public static final G(Lde/g0;I)I
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lde/g0;->n:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    .line 2
    iget-object p0, p0, Lde/g0;->m:[[B

    .line 3
    array-length p0, p0

    .line 4
    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-gt v2, p0, :cond_1

    add-int v0, v2, p0

    ushr-int/lit8 v0, v0, 0x1

    .line 5
    aget v3, v1, v0

    if-ge v3, p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 p0, v0, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v2

    add-int/lit8 v0, p0, -0x1

    :cond_2
    if-ltz v0, :cond_3

    goto :goto_1

    :cond_3
    not-int v0, v0

    :goto_1
    return v0
.end method

.method public static final H(Landroid/view/View;Lb1/d;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroidx/savedstate/R$id;->view_tree_saved_state_registry_owner:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static I(Landroid/view/View;F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lm6/f;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lm6/f;

    invoke-virtual {p0, p1}, Lm6/f;->n(F)V

    :cond_0
    return-void
.end method

.method public static J(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lm6/f;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lm6/f;

    invoke-static {p0, v0}, Landroidx/lifecycle/o;->K(Landroid/view/View;Lm6/f;)V

    :cond_0
    return-void
.end method

.method public static K(Landroid/view/View;Lm6/f;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lm6/f;->h:Lm6/f$b;

    iget-object v0, v0, Lm6/f$b;->b:Ld6/a;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Ld6/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    :goto_1
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 5
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    sget-object v2, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {v1}, Lj0/a0$i;->i(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    .line 7
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_1
    iget-object p0, p1, Lm6/f;->h:Lm6/f$b;

    iget v1, p0, Lm6/f$b;->m:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 9
    iput v0, p0, Lm6/f$b;->m:F

    .line 10
    invoke-virtual {p1}, Lm6/f;->w()V

    :cond_2
    return-void
.end method

.method public static final L()V
    .locals 2

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final M(Lva/b;)Lea/d;
    .locals 11

    .line 1
    new-instance v0, Lea/d;

    const-string v1, "adaptKitColor"

    .line 2
    invoke-static {p0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v1, p0, Lva/b;->h:I

    .line 4
    iget v2, p0, Lva/b;->i:I

    .line 5
    iget v3, p0, Lva/b;->j:I

    .line 6
    iget p0, p0, Lva/b;->k:I

    const/4 v4, 0x5

    .line 7
    invoke-static {v4}, Lq/g;->b(I)[I

    move-result-object v5

    .line 8
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget v9, v5, v8

    .line 9
    invoke-static {v9}, Lq/g;->a(I)I

    move-result v10

    if-ne v10, p0, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    move v10, v7

    :goto_1
    if-eqz v10, :cond_1

    move v7, v9

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    move v4, v7

    .line 10
    :goto_3
    invoke-direct {v0, v1, v2, v3, v4}, Lea/d;-><init>(IIII)V

    return-object v0
.end method

.method public static final N(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 44

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    move-object/from16 v4, p0

    .line 3
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "getJSONObject(i)"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "clientUpdatedDateUTC"

    .line 4
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v7, "colorway"

    const/4 v8, 0x0

    .line 5
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "null"

    if-eqz v7, :cond_0

    invoke-static {v7, v11}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    move-object v7, v8

    :cond_1
    const-string v12, "createdDateUTC"

    .line 6
    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "isDefault"

    .line 7
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "lastSelectedPreset"

    .line 8
    invoke-virtual {v5, v15, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 9
    invoke-static {v15, v11}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    move-object v15, v8

    :cond_3
    const-string v11, "leftDeviceIdentifier"

    .line 10
    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v8, "getString(\"leftDeviceIdentifier\")"

    invoke-static {v11, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "leftEngineDiscoveryKey"

    .line 11
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "getString(\"leftEngineDiscoveryKey\")"

    invoke-static {v8, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "leftKey"

    .line 12
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v30, v1

    const-string v1, "getString(\"leftKey\")"

    invoke-static {v2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "leftMaxTightness"

    .line 13
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string v1, "pairId"

    .line 14
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(\"pairId\")"

    invoke-static {v1, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "pairName"

    .line 15
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v8

    const-string v8, "getString(\"pairName\")"

    invoke-static {v4, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "presets"

    .line 16
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object/from16 v18, v11

    const-string v11, "getJSONArray(\"presets\")"

    invoke-static {v8, v11}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move/from16 v31, v3

    .line 18
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    move-object/from16 v32, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_4

    move/from16 v20, v3

    .line 19
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v21, v6

    const-string v6, "id"

    .line 20
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v22, v8

    const-string v8, "getString(\"id\")"

    invoke-static {v6, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "leftColor"

    .line 21
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    move-object/from16 v42, v4

    const-string v4, "getJSONObject(\"leftColor\")"

    invoke-static {v8, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Landroidx/lifecycle/o;->Q(Lorg/json/JSONObject;)Lva/b;

    move-result-object v35

    const-string v4, "leftPercent"

    .line 22
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v36

    const-string v4, "name"

    .line 23
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "getString(\"name\")"

    invoke-static {v4, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "rightColor"

    .line 24
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    move-object/from16 v43, v1

    const-string v1, "getJSONObject(\"rightColor\")"

    invoke-static {v8, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Landroidx/lifecycle/o;->Q(Lorg/json/JSONObject;)Lva/b;

    move-result-object v38

    const-string v1, "rightPercent"

    .line 25
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v39

    const-string v1, "autoGenerated"

    .line 26
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v40

    :try_start_0
    const-string v1, "displayOrder"

    .line 27
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v41, v1

    goto :goto_2

    :catchall_0
    const/16 v41, 0x0

    .line 28
    :goto_2
    new-instance v1, Lva/c;

    move-object/from16 v33, v1

    move-object/from16 v34, v6

    move-object/from16 v37, v4

    invoke-direct/range {v33 .. v41}, Lva/c;-><init>(Ljava/lang/String;Lva/b;ILjava/lang/String;Lva/b;IZLjava/lang/Integer;)V

    .line 29
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v22

    move-object/from16 v4, v42

    move-object/from16 v1, v43

    goto/16 :goto_1

    :cond_4
    move-object/from16 v43, v1

    move-object/from16 v42, v4

    const-string v0, "rightDeviceIdentifier"

    .line 30
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    const-string v1, "getString(\"rightDeviceIdentifier\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightEngineDiscoveryKey"

    .line 31
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v0

    const-string v1, "getString(\"rightEngineDiscoveryKey\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightKey"

    .line 32
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    const-string v1, "getString(\"rightKey\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightMaxTightness"

    .line 33
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    const-string v0, "updatedDateUTC"

    .line 34
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v27

    const-string v0, "deviceType"

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v29

    .line 36
    new-instance v0, Lva/d;

    move-object/from16 v3, v17

    move-object v8, v0

    move-object v5, v11

    move-object/from16 v4, v18

    move-object v11, v7

    move-object/from16 v16, v4

    move-object/from16 v18, v2

    move-object/from16 v20, v43

    move-object/from16 v21, v42

    move-object/from16 v22, v5

    invoke-direct/range {v8 .. v29}, Lva/d;-><init>(JLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    move-object/from16 v2, v32

    .line 37
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v31, 0x1

    move-object v0, v2

    move/from16 v1, v30

    goto/16 :goto_0

    :cond_5
    move-object v2, v0

    return-object v2
.end method

.method public static final O(Lorg/json/JSONArray;)Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "getJSONObject(i)"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "pairId"

    .line 4
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "getString(\"pairId\")"

    invoke-static {v3, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v4, Lpa/g;->h:Lpa/g;

    const-string v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(\"status\")"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x4cda0ba4

    if-eq v6, v7, :cond_3

    const v7, -0xb36540b

    if-eq v6, v7, :cond_2

    const v7, 0x5c6a3019

    if-eq v6, v7, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, "deleted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget-object v4, Lpa/g;->j:Lpa/g;

    goto :goto_1

    :cond_2
    const-string v6, "not found"

    .line 8
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v6, "exists"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    sget-object v4, Lpa/g;->i:Lpa/g;

    .line 10
    :goto_1
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static final P(Lea/d;)Lva/b;
    .locals 5

    .line 1
    iget v0, p0, Lea/d;->j:I

    .line 2
    iget v1, p0, Lea/d;->k:I

    .line 3
    iget v2, p0, Lea/d;->i:I

    .line 4
    iget p0, p0, Lea/d;->h:I

    .line 5
    new-instance v3, Lva/b;

    const-string v4, "intensity"

    .line 6
    invoke-static {v1, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 7
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    .line 8
    invoke-direct {v3, p0, v2, v0, v1}, Lva/b;-><init>(IIII)V

    return-object v3
.end method

.method public static final Q(Lorg/json/JSONObject;)Lva/b;
    .locals 4

    const-string v0, "blue"

    .line 1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "brightness"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "green"

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "red"

    .line 4
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 5
    new-instance v3, Lva/b;

    invoke-direct {v3, p0, v2, v0, v1}, Lva/b;-><init>(IIII)V

    return-object v3
.end method

.method public static final R(Lva/b;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget v1, p0, Lva/b;->j:I

    const-string v2, "blue"

    .line 3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 4
    iget v1, p0, Lva/b;->k:I

    const-string v2, "brightness"

    .line 5
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget v1, p0, Lva/b;->i:I

    const-string v2, "green"

    .line 7
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    iget p0, p0, Lva/b;->h:I

    const-string v1, "red"

    .line 9
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static S(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 4
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 5
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 6
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 7
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 8
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 9
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class p0, Ljava/lang/Void;

    :cond_8
    return-object p0
.end method

.method public static final a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FLandroid/widget/ImageView;ILandroid/graphics/Paint;IILandroid/graphics/Bitmap;)V
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    .line 1
    invoke-virtual {p0, v3, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v1, p2

    const/4 v4, 0x4

    new-array v11, v4, [F

    const/4 v5, 0x0

    aput v0, v11, v5

    const/4 v0, 0x1

    aput v3, v11, v0

    const/4 v6, 0x2

    aput v3, v11, v6

    const/4 v3, 0x3

    aput v1, v11, v3

    .line 2
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v7, "batteryImageView.context"

    invoke-static {v1, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v7, Ly/a;->a:Ljava/lang/Object;

    const v7, 0x7f060025

    .line 4
    invoke-static {v1, v7}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result v1

    .line 5
    new-instance v13, Landroid/graphics/LinearGradient;

    move/from16 v7, p7

    int-to-float v14, v7

    new-array v10, v4, [I

    aput v1, v10, v5

    aput v1, v10, v0

    aput p4, v10, v6

    aput p4, v10, v3

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v13

    move v9, v14

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p5

    .line 6
    invoke-virtual {v0, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move/from16 v1, p6

    int-to-float v5, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, v14

    move-object/from16 v7, p5

    .line 7
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final b(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    sget-object v0, Ly/a;->a:Ljava/lang/Object;

    const v0, 0x7f080125

    .line 2
    invoke-static {p0, v0}, Ly/a$b;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.VectorDrawable"

    invoke-static {p0, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    .line 4
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/VectorDrawable;->draw(Landroid/graphics/Canvas;)V

    const-string p0, "bitmap"

    .line 8
    invoke-static {p1, p0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static final c(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/m;

    .line 3
    iget-object v1, v1, Lea/m;->h:Ljava/lang/String;

    .line 4
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final d(Ljava/lang/Appendable;Ljava/lang/Object;Lqd/l;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-interface {p2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    .line 2
    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    :goto_0
    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 3
    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    .line 4
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public static final varargs e([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 3

    array-length v0, p0

    if-nez v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Lgd/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lgd/e;-><init>([Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static h(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6

    const/16 v0, 0x2000

    const-string v1, "<this>"

    .line 1
    invoke-static {p0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v0, [B

    .line 2
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const-wide/16 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    const/4 v4, 0x0

    .line 3
    invoke-virtual {p1, v0, v4, v1}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static i(I)Landroidx/lifecycle/k0;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1
    new-instance p0, Lm6/h;

    invoke-direct {p0}, Lm6/h;-><init>()V

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lm6/d;

    invoke-direct {p0}, Lm6/d;-><init>()V

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Lm6/h;

    invoke-direct {p0}, Lm6/h;-><init>()V

    return-object p0
.end method

.method public static final j(Lqd/p;Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lld/a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lld/a;

    invoke-virtual {p0, p1, p2}, Lld/a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljd/d;->getContext()Ljd/f;

    move-result-object v0

    .line 4
    sget-object v1, Ljd/h;->h:Ljd/h;

    if-ne v0, v1, :cond_1

    .line 5
    new-instance v0, Lkd/b;

    invoke-direct {v0, p2, p0, p1}, Lkd/b;-><init>(Ljd/d;Lqd/p;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lkd/c;

    invoke-direct {v1, p2, v0, p0, p1}, Lkd/c;-><init>(Ljd/d;Ljd/f;Lqd/p;Ljava/lang/Object;)V

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static final k(Landroid/app/Activity;Lb9/e;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ctaAction"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lb9/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lb9/g;

    if-eqz v0, :cond_1

    check-cast p1, Lb9/g;

    .line 3
    iget-object p1, p1, Lb9/g;->h:Landroid/content/Intent;

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Lb9/j;

    if-eqz v0, :cond_2

    .line 6
    check-cast p1, Lb9/j;

    invoke-virtual {p1}, Lb9/j;->a()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {p1, p0}, Lb9/j;->b(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static final l(Landroid/view/ViewGroup;Lqd/l;)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "perform"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Landroidx/lifecycle/o;->l(Landroid/view/ViewGroup;Lqd/l;)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    .line 5
    move-object v3, p1

    check-cast v3, Li9/e0$c;

    invoke-virtual {v3, v2}, Li9/e0$c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final m()Lo7/s;
    .locals 1

    .line 1
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/nike/adapt/BigfootApplication;->j:Lo7/f;

    return-object v0
.end method

.method public static final n()Landroid/app/Application;
    .locals 1

    .line 1
    sget-object v0, Lhc/h0;->a:Lhc/h0;

    .line 2
    sget-object v0, Lhc/h0;->c:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public static final o(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    sget-object v1, Ly/a;->a:Ljava/lang/Object;

    .line 2
    invoke-static {v0, p0}, Ly/a$c;->a(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static final p(Ljava/util/List;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final q()Lhc/g0;
    .locals 1

    .line 1
    sget-object v0, Lhc/h0;->a:Lhc/h0;

    .line 2
    sget-object v0, Lhc/h0;->b:Lhc/g0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "coreRFLogger"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final r(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BigfootApplication.APPLICATION.getString(this)"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final s(Lv7/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lv7/c;->a()I

    move-result p0

    .line 2
    sget-object v0, Lv7/c$e;->c:Lv7/c$e;

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const p0, 0x7f110104

    invoke-static {p0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lv7/c$f;->c:Lv7/c$f;

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const p0, 0x7f110105

    invoke-static {p0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lv7/c$c;->c:Lv7/c$c;

    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const p0, 0x7f110103

    invoke-static {p0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final t(Ljd/d;)Ljd/d;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lld/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lld/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lld/c;->intercepted()Ljd/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static u(Landroid/view/MotionEvent;I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final v(Lx8/d0;Lx8/d0;)I
    .locals 4

    .line 1
    sget-object v0, Lx8/d0;->k:Lx8/d0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_1

    if-eq p1, v0, :cond_1

    sget-object v0, Lx8/d0;->h:Lx8/d0;

    if-eq p0, v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_2

    .line 2
    :cond_2
    sget-object v0, Lx8/d0;->i:Lx8/d0;

    if-ne p0, v0, :cond_3

    if-eq p1, v0, :cond_6

    .line 3
    :cond_3
    sget-object v3, Lx8/d0;->j:Lx8/d0;

    if-ne p0, v3, :cond_4

    if-eq p1, v3, :cond_6

    :cond_4
    if-ne p0, v0, :cond_5

    if-eq p1, v3, :cond_6

    :cond_5
    if-ne p0, v3, :cond_7

    if-ne p1, v0, :cond_7

    :cond_6
    move v2, v1

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    const/4 v1, 0x3

    :goto_2
    return v1
.end method

.method public static final w(ILqd/a;)Lfd/d;
    .locals 2

    const-string v0, "mode"

    invoke-static {p0, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    .line 1
    new-instance p0, Lfd/p;

    invoke-direct {p0, p1}, Lfd/p;-><init>(Lqd/a;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0

    .line 2
    :cond_1
    new-instance p0, Lfd/g;

    invoke-direct {p0, p1}, Lfd/g;-><init>(Lqd/a;)V

    goto :goto_0

    .line 3
    :cond_2
    new-instance p0, Lfd/h;

    invoke-direct {p0, p1}, Lfd/h;-><init>(Lqd/a;)V

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    .line 4
    throw p0
.end method

.method public static final x(Lqd/a;)Lfd/d;
    .locals 1

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lfd/h;

    invoke-direct {v0, p0}, Lfd/h;-><init>(Lqd/a;)V

    return-object v0
.end method

.method public static final y(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "singletonList(element)"

    invoke-static {p0, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final varargs z([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "elements"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-lez v0, :cond_0

    invoke-static {p0}, Lgd/g;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lgd/p;->h:Lgd/p;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method
