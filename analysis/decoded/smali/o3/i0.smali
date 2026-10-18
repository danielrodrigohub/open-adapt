.class public final synthetic Lo3/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;
.implements Lj5/i$g$a;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lo3/i0;->b:I

    iput-object p1, p0, Lo3/i0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo3/i0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILp4/t0;[I)Ljava/util/List;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    iget-object v1, v0, Lo3/i0;->c:Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Lj5/i$c;

    iget-object v1, v0, Lo3/i0;->d:Ljava/lang/Object;

    check-cast v1, [I

    sget-object v2, Lj5/i;->i:Lu6/o0;

    .line 1
    aget v11, v1, p1

    .line 2
    iget v1, v10, Lj5/q;->p:I

    iget v2, v10, Lj5/q;->q:I

    iget-boolean v3, v10, Lj5/q;->r:Z

    const v13, 0x7fffffff

    if-eq v1, v13, :cond_7

    if-ne v2, v13, :cond_0

    goto/16 :goto_5

    :cond_0
    move v5, v13

    const/4 v4, 0x0

    .line 3
    :goto_0
    iget v6, v9, Lp4/t0;->h:I

    if-ge v4, v6, :cond_6

    .line 4
    iget-object v6, v9, Lp4/t0;->k:[Ln3/s0;

    aget-object v6, v6, v4

    .line 5
    iget v7, v6, Ln3/s0;->x:I

    if-lez v7, :cond_5

    iget v8, v6, Ln3/s0;->y:I

    if-lez v8, :cond_5

    if-eqz v3, :cond_3

    if-le v7, v8, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_1
    if-le v1, v2, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    if-eq v14, v15, :cond_3

    move v14, v1

    move v15, v2

    goto :goto_3

    :cond_3
    move v15, v1

    move v14, v2

    :goto_3
    mul-int v13, v7, v14

    mul-int v12, v8, v15

    if-lt v13, v12, :cond_4

    .line 6
    new-instance v8, Landroid/graphics/Point;

    sget v13, Lm5/g0;->a:I

    add-int/2addr v12, v7

    const/16 v17, -0x1

    add-int/lit8 v12, v12, -0x1

    .line 7
    div-int/2addr v12, v7

    .line 8
    invoke-direct {v8, v15, v12}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_4
    const/16 v17, -0x1

    .line 9
    new-instance v7, Landroid/graphics/Point;

    sget v12, Lm5/g0;->a:I

    add-int/2addr v13, v8

    add-int/lit8 v13, v13, -0x1

    .line 10
    div-int/2addr v13, v8

    .line 11
    invoke-direct {v7, v13, v14}, Landroid/graphics/Point;-><init>(II)V

    move-object v8, v7

    .line 12
    :goto_4
    iget v7, v6, Ln3/s0;->x:I

    iget v6, v6, Ln3/s0;->y:I

    mul-int v12, v7, v6

    .line 13
    iget v13, v8, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148

    mul-float/2addr v13, v14

    float-to-int v13, v13

    if-lt v7, v13, :cond_5

    iget v7, v8, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v14

    float-to-int v7, v7

    if-lt v6, v7, :cond_5

    if-ge v12, v5, :cond_5

    move v5, v12

    :cond_5
    add-int/lit8 v4, v4, 0x1

    const v13, 0x7fffffff

    goto :goto_0

    :cond_6
    move v12, v5

    goto :goto_6

    :cond_7
    :goto_5
    const v12, 0x7fffffff

    .line 14
    :goto_6
    sget-object v1, Lu6/v;->i:Lu6/v$b;

    const/4 v1, 0x4

    const-string v2, "initialCapacity"

    .line 15
    invoke-static {v1, v2}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v1, v1, [Ljava/lang/Object;

    move-object v13, v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 16
    :goto_7
    iget v1, v9, Lp4/t0;->h:I

    if-ge v14, v1, :cond_d

    .line 17
    iget-object v1, v9, Lp4/t0;->k:[Ln3/s0;

    aget-object v1, v1, v14

    .line 18
    iget v2, v1, Ln3/s0;->x:I

    const/4 v8, -0x1

    if-eq v2, v8, :cond_9

    iget v1, v1, Ln3/s0;->y:I

    if-ne v1, v8, :cond_8

    goto :goto_8

    :cond_8
    mul-int v17, v2, v1

    move/from16 v1, v17

    goto :goto_9

    :cond_9
    :goto_8
    move v1, v8

    :goto_9
    const v7, 0x7fffffff

    if-eq v12, v7, :cond_b

    if-eq v1, v8, :cond_a

    if-gt v1, v12, :cond_a

    goto :goto_a

    :cond_a
    const/16 v16, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    const/16 v16, 0x1

    .line 19
    :goto_b
    new-instance v17, Lj5/i$h;

    aget v6, p3, v14

    move-object/from16 v1, v17

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v14

    move-object v5, v10

    move/from16 v18, v7

    move v7, v11

    move/from16 v19, v8

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lj5/i$h;-><init>(ILp4/t0;ILj5/i$c;IIZ)V

    add-int/lit8 v1, v15, 0x1

    .line 20
    array-length v2, v13

    if-ge v2, v1, :cond_c

    .line 21
    array-length v2, v13

    .line 22
    invoke-static {v2, v1}, Lu6/t$b;->a(II)I

    move-result v2

    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    .line 23
    :cond_c
    aput-object v17, v13, v15

    add-int/lit8 v14, v14, 0x1

    move v15, v1

    goto :goto_7

    .line 24
    :cond_d
    invoke-static {v13, v15}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v1

    return-object v1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lo3/i0;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1}, Lo3/b;->Q()V

    .line 2
    invoke-interface {p1}, Lo3/b;->O0()V

    return-void

    .line 3
    :pswitch_1
    check-cast p1, Lo3/b;

    .line 4
    invoke-interface {p1}, Lo3/b;->p0()V

    return-void

    .line 5
    :goto_0
    check-cast p1, Lo3/b;

    .line 6
    invoke-interface {p1}, Lo3/b;->N()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
