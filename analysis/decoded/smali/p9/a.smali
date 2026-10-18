.class public final Lp9/a;
.super Ljava/lang/Object;
.source "TooltipData.kt"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:I

.field public final h:I

.field public final i:J

.field public final j:F

.field public final k:J

.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:D

.field public final p:J

.field public final q:J

.field public final r:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIFDJI)V
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object/from16 v4, p4

    :goto_1
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v3, p5

    :goto_2
    and-int/lit8 v5, v1, 0x20

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p6

    :goto_3
    and-int/lit8 v7, v1, 0x40

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move/from16 v7, p7

    :goto_4
    and-int/lit16 v8, v1, 0x80

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v6, p8

    :goto_5
    and-int/lit16 v8, v1, 0x100

    const-wide/16 v11, 0x0

    if-eqz v8, :cond_6

    const-wide/16 v13, 0x1f4

    goto :goto_6

    :cond_6
    move-wide v13, v11

    :goto_6
    and-int/lit16 v8, v1, 0x200

    if-eqz v8, :cond_7

    const v8, 0x3f4ccccd

    goto :goto_7

    :cond_7
    move/from16 v8, p9

    :goto_7
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_8

    const-wide/16 v15, 0x190

    move-wide v9, v15

    goto :goto_8

    :cond_8
    move-wide v9, v11

    :goto_8
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_9

    const-wide/16 v15, 0x154

    move-wide/from16 v17, v15

    goto :goto_9

    :cond_9
    move-wide/from16 v17, v11

    :goto_9
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_a

    const-wide/16 v19, 0x1f4

    goto :goto_a

    :cond_a
    move-wide/from16 v19, v11

    :goto_a
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_b

    const-wide/high16 v15, 0x4020000000000000L    # 8.0

    move-wide/from16 v21, v15

    goto :goto_b

    :cond_b
    move-wide/from16 v21, p10

    :goto_b
    const v15, 0x8000

    and-int/2addr v15, v1

    if-eqz v15, :cond_c

    const-wide/16 v15, 0x2bc

    move-wide/from16 v23, v15

    goto :goto_c

    :cond_c
    move-wide/from16 v23, v11

    :goto_c
    const/high16 v15, 0x10000

    and-int/2addr v15, v1

    if-eqz v15, :cond_d

    const-wide/16 v15, 0x12c

    move-wide/from16 v25, v15

    goto :goto_d

    :cond_d
    move-wide/from16 v25, v11

    :goto_d
    const/high16 v15, 0x20000

    and-int/2addr v1, v15

    if-eqz v1, :cond_e

    const-wide/16 v15, 0x258

    move-wide/from16 v27, v15

    goto :goto_e

    :cond_e
    move-wide/from16 v27, p12

    .line 1
    :goto_e
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, Lp9/a;->a:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 3
    iput-object v1, v0, Lp9/a;->b:Ljava/lang/String;

    .line 4
    iput-object v2, v0, Lp9/a;->c:Ljava/lang/String;

    .line 5
    iput-object v4, v0, Lp9/a;->d:Ljava/lang/String;

    .line 6
    iput-object v3, v0, Lp9/a;->e:Ljava/lang/String;

    .line 7
    iput-boolean v5, v0, Lp9/a;->f:Z

    .line 8
    iput v7, v0, Lp9/a;->g:I

    .line 9
    iput v6, v0, Lp9/a;->h:I

    .line 10
    iput-wide v13, v0, Lp9/a;->i:J

    .line 11
    iput v8, v0, Lp9/a;->j:F

    .line 12
    iput-wide v11, v0, Lp9/a;->k:J

    .line 13
    iput-wide v9, v0, Lp9/a;->l:J

    move-wide/from16 v11, v17

    .line 14
    iput-wide v11, v0, Lp9/a;->m:J

    move-wide/from16 v11, v19

    .line 15
    iput-wide v11, v0, Lp9/a;->n:J

    move-wide/from16 v1, v21

    .line 16
    iput-wide v1, v0, Lp9/a;->o:D

    move-wide/from16 v11, v23

    .line 17
    iput-wide v11, v0, Lp9/a;->p:J

    move-wide/from16 v11, v25

    .line 18
    iput-wide v11, v0, Lp9/a;->q:J

    move-wide/from16 v1, v27

    .line 19
    iput-wide v1, v0, Lp9/a;->r:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp9/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp9/a;

    iget-object v1, p0, Lp9/a;->a:Ljava/lang/String;

    iget-object v3, p1, Lp9/a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lp9/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lp9/a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lp9/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lp9/a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lp9/a;->d:Ljava/lang/String;

    iget-object v3, p1, Lp9/a;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lp9/a;->e:Ljava/lang/String;

    iget-object v3, p1, Lp9/a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lp9/a;->f:Z

    iget-boolean v3, p1, Lp9/a;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lp9/a;->g:I

    iget v3, p1, Lp9/a;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lp9/a;->h:I

    iget v3, p1, Lp9/a;->h:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lp9/a;->i:J

    iget-wide v5, p1, Lp9/a;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lp9/a;->j:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lp9/a;->j:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lp9/a;->k:J

    iget-wide v5, p1, Lp9/a;->k:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lp9/a;->l:J

    iget-wide v5, p1, Lp9/a;->l:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lp9/a;->m:J

    iget-wide v5, p1, Lp9/a;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-wide v3, p0, Lp9/a;->n:J

    iget-wide v5, p1, Lp9/a;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lp9/a;->o:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lp9/a;->o:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lp9/a;->p:J

    iget-wide v5, p1, Lp9/a;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget-wide v3, p0, Lp9/a;->q:J

    iget-wide v5, p1, Lp9/a;->q:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lp9/a;->r:J

    iget-wide v5, p1, Lp9/a;->r:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lp9/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp9/a;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lp9/a;->c:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp9/a;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lp9/a;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lp9/a;->f:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lp9/a;->g:I

    const/16 v3, 0x1f

    .line 3
    invoke-static {v1, v0, v3}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, Lp9/a;->h:I

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lp9/a;->i:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lp9/a;->j:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lp9/a;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lp9/a;->l:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lp9/a;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lp9/a;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lp9/a;->o:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lp9/a;->p:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lp9/a;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lp9/a;->r:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lp9/a;->a:Ljava/lang/String;

    iget-object v2, v0, Lp9/a;->b:Ljava/lang/String;

    iget-object v3, v0, Lp9/a;->c:Ljava/lang/String;

    iget-object v4, v0, Lp9/a;->d:Ljava/lang/String;

    iget-object v5, v0, Lp9/a;->e:Ljava/lang/String;

    iget-boolean v6, v0, Lp9/a;->f:Z

    iget v7, v0, Lp9/a;->g:I

    iget v8, v0, Lp9/a;->h:I

    iget-wide v9, v0, Lp9/a;->i:J

    iget v11, v0, Lp9/a;->j:F

    iget-wide v12, v0, Lp9/a;->k:J

    iget-wide v14, v0, Lp9/a;->l:J

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lp9/a;->m:J

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lp9/a;->n:J

    move-wide/from16 v20, v14

    iget-wide v14, v0, Lp9/a;->o:D

    move-wide/from16 v22, v14

    iget-wide v14, v0, Lp9/a;->p:J

    move-wide/from16 v24, v14

    iget-wide v14, v0, Lp9/a;->q:J

    move-wide/from16 v26, v14

    iget-wide v14, v0, Lp9/a;->r:J

    const-string v0, "TooltipData(title="

    move-wide/from16 v28, v14

    const-string v14, ", message="

    const-string v15, ", actionButtonMsg="

    .line 1
    invoke-static {v0, v1, v14, v2, v15}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", step="

    const-string v2, ", stepContentDescription="

    .line 2
    invoke-static {v0, v3, v1, v4, v2}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", verticalAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gravityOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroidx/appcompat/widget/y0;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", overlayAlphaInDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", overlayAlphaEndValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", focusedViewAlphaInDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", focusedViewAlphaInDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", popUpTranslationInDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", popUpTranslationInDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", popUpBounceFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", popUpContentAlphaInDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", popUpContentAlphaInDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", alphaOutDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
