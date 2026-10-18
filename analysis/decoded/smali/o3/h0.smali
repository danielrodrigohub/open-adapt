.class public final synthetic Lo3/h0;
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

    iput p3, p0, Lo3/h0;->b:I

    iput-object p1, p0, Lo3/h0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lo3/h0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILp4/t0;[I)Ljava/util/List;
    .locals 15

    move-object v0, p0

    iget-object v1, v0, Lo3/h0;->c:Ljava/lang/Object;

    check-cast v1, Lj5/i$c;

    iget-object v2, v0, Lo3/h0;->d:Ljava/lang/Object;

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    sget-object v2, Lj5/i;->i:Lu6/o0;

    .line 1
    sget-object v2, Lu6/v;->i:Lu6/v$b;

    const/4 v2, 0x4

    const-string v3, "initialCapacity"

    .line 2
    invoke-static {v2, v3}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v13, p2

    move-object v10, v2

    move v11, v3

    move v12, v11

    .line 3
    :goto_0
    iget v2, v13, Lp4/t0;->h:I

    if-ge v11, v2, :cond_1

    .line 4
    new-instance v14, Lj5/i$f;

    aget v7, p3, v11

    move-object v2, v14

    move/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v11

    move-object v6, v1

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Lj5/i$f;-><init>(ILp4/t0;ILj5/i$c;ILjava/lang/String;)V

    add-int/lit8 v3, v12, 0x1

    .line 5
    array-length v2, v10

    if-ge v2, v3, :cond_0

    .line 6
    array-length v2, v10

    .line 7
    invoke-static {v2, v3}, Lu6/t$b;->a(II)I

    move-result v2

    invoke-static {v10, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    .line 8
    :cond_0
    aput-object v14, v10, v12

    add-int/lit8 v11, v11, 0x1

    move v12, v3

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v10, v12}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v1

    return-object v1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lo3/h0;->b:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lo3/h0;->d:Ljava/lang/Object;

    check-cast v0, Ln3/k1;

    check-cast p1, Lo3/b;

    .line 1
    invoke-interface {p1, v0}, Lo3/b;->i(Ln3/k1;)V

    return-void

    .line 2
    :goto_0
    check-cast p1, Lo3/b;

    .line 3
    invoke-interface {p1}, Lo3/b;->H()V

    .line 4
    invoke-interface {p1}, Lo3/b;->P()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
