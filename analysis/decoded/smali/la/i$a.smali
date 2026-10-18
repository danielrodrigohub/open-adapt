.class public final Lla/i$a;
.super Ljava/lang/Object;
.source "SessionStepInformation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmc/y;J)Lla/i;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "sessionData"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lla/i;

    .line 2
    iget-wide v2, v0, Lmc/y;->h:J

    add-long v3, p2, v2

    .line 3
    iget v2, v0, Lmc/y;->i:I

    const-string v5, "sessionStrikeType"

    .line 4
    invoke-static {v2, v5}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 5
    invoke-static {v2}, Lq/g;->a(I)I

    move-result v2

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-eq v2, v6, :cond_2

    if-eq v2, v7, :cond_1

    if-eq v2, v8, :cond_0

    const/4 v9, 0x4

    goto :goto_0

    :cond_0
    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v7

    goto :goto_0

    :cond_2
    move v9, v6

    .line 6
    :goto_0
    iget v10, v0, Lmc/y;->j:I

    .line 7
    iget v11, v0, Lmc/y;->k:I

    .line 8
    iget v12, v0, Lmc/y;->l:I

    .line 9
    iget v13, v0, Lmc/y;->m:I

    .line 10
    iget v14, v0, Lmc/y;->n:I

    .line 11
    iget v15, v0, Lmc/y;->o:I

    .line 12
    iget v2, v0, Lmc/y;->q:I

    .line 13
    iget v0, v0, Lmc/y;->p:I

    const-string v5, "stepClassification"

    .line 14
    invoke-static {v0, v5}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 15
    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v8, :cond_4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    const/4 v0, 0x5

    move/from16 v16, v2

    goto :goto_1

    .line 16
    :cond_3
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :cond_4
    const/4 v5, 0x4

    move/from16 v16, v2

    move v0, v5

    goto :goto_1

    :cond_5
    move/from16 v16, v2

    move v0, v8

    goto :goto_1

    :cond_6
    move/from16 v16, v2

    move v0, v7

    goto :goto_1

    :cond_7
    move/from16 v16, v2

    move v0, v6

    :goto_1
    move-object v2, v1

    move v5, v9

    move v6, v10

    move v7, v11

    move v8, v12

    move v9, v13

    move v10, v14

    move v11, v15

    move/from16 v12, v16

    move v13, v0

    .line 17
    invoke-direct/range {v2 .. v13}, Lla/i;-><init>(JIIIIIIIII)V

    return-object v1
.end method
