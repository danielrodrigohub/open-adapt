.class public final Lva/d;
.super Ljava/lang/Object;
.source "AdaptShoesGet.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lva/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:J

.field public final i:Ljava/lang/String;

.field public final j:J

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:I

.field public final q:Ljava/lang/String;

.field public final r:Ljava/lang/String;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lva/c;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:I

.field public final x:J

.field public final y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lva/d$a;

    invoke-direct {v0}, Lva/d$a;-><init>()V

    sput-object v0, Lva/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "JZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lva/c;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJI)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    move-object/from16 v8, p17

    const-string v9, "leftDeviceIdentifier"

    invoke-static {v1, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "leftEngineDiscoveryKey"

    invoke-static {v2, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "leftKey"

    invoke-static {v3, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "pairId"

    invoke-static {v4, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "pairName"

    invoke-static {v5, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "rightDeviceIdentifier"

    invoke-static {v6, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "rightEngineDiscoveryKey"

    invoke-static {v7, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "rightKey"

    invoke-static {v8, v9}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v9, p1

    .line 2
    iput-wide v9, v0, Lva/d;->h:J

    move-object v9, p3

    .line 3
    iput-object v9, v0, Lva/d;->i:Ljava/lang/String;

    move-wide v9, p4

    .line 4
    iput-wide v9, v0, Lva/d;->j:J

    move/from16 v9, p6

    .line 5
    iput-boolean v9, v0, Lva/d;->k:Z

    move-object/from16 v9, p7

    .line 6
    iput-object v9, v0, Lva/d;->l:Ljava/lang/String;

    .line 7
    iput-object v1, v0, Lva/d;->m:Ljava/lang/String;

    .line 8
    iput-object v2, v0, Lva/d;->n:Ljava/lang/String;

    .line 9
    iput-object v3, v0, Lva/d;->o:Ljava/lang/String;

    move/from16 v1, p11

    .line 10
    iput v1, v0, Lva/d;->p:I

    .line 11
    iput-object v4, v0, Lva/d;->q:Ljava/lang/String;

    .line 12
    iput-object v5, v0, Lva/d;->r:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lva/d;->s:Ljava/util/List;

    .line 14
    iput-object v6, v0, Lva/d;->t:Ljava/lang/String;

    .line 15
    iput-object v7, v0, Lva/d;->u:Ljava/lang/String;

    .line 16
    iput-object v8, v0, Lva/d;->v:Ljava/lang/String;

    move/from16 v1, p18

    .line 17
    iput v1, v0, Lva/d;->w:I

    move-wide/from16 v1, p19

    .line 18
    iput-wide v1, v0, Lva/d;->x:J

    move/from16 v1, p21

    .line 19
    iput v1, v0, Lva/d;->y:I

    return-void
.end method

.method public static a(Lva/d;)Lva/d;
    .locals 25

    move-object/from16 v0, p0

    iget-wide v1, v0, Lva/d;->h:J

    iget-object v3, v0, Lva/d;->i:Ljava/lang/String;

    iget-wide v4, v0, Lva/d;->j:J

    iget-object v7, v0, Lva/d;->l:Ljava/lang/String;

    iget-object v8, v0, Lva/d;->m:Ljava/lang/String;

    iget-object v9, v0, Lva/d;->n:Ljava/lang/String;

    iget-object v10, v0, Lva/d;->o:Ljava/lang/String;

    iget v11, v0, Lva/d;->p:I

    iget-object v12, v0, Lva/d;->q:Ljava/lang/String;

    iget-object v13, v0, Lva/d;->r:Ljava/lang/String;

    iget-object v14, v0, Lva/d;->s:Ljava/util/List;

    iget-object v15, v0, Lva/d;->t:Ljava/lang/String;

    iget-object v6, v0, Lva/d;->u:Ljava/lang/String;

    move/from16 v17, v11

    iget-object v11, v0, Lva/d;->v:Ljava/lang/String;

    move-object/from16 v18, v7

    iget v7, v0, Lva/d;->w:I

    move-wide/from16 v19, v4

    iget-wide v4, v0, Lva/d;->x:J

    iget v0, v0, Lva/d;->y:I

    move/from16 v21, v0

    const-string v0, "leftDeviceIdentifier"

    invoke-static {v8, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leftEngineDiscoveryKey"

    invoke-static {v9, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leftKey"

    invoke-static {v10, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairId"

    invoke-static {v12, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairName"

    invoke-static {v13, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presets"

    invoke-static {v14, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightDeviceIdentifier"

    invoke-static {v15, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightEngineDiscoveryKey"

    invoke-static {v6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightKey"

    invoke-static {v11, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v22, Lva/d;

    move-object/from16 v0, v22

    move-wide/from16 v23, v4

    move-wide/from16 v4, v19

    move-object/from16 v16, v6

    const/4 v6, 0x0

    move/from16 v19, v7

    move-object/from16 v7, v18

    move-object/from16 v18, v11

    move/from16 v11, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-wide/from16 v19, v23

    invoke-direct/range {v0 .. v21}, Lva/d;-><init>(JLjava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJI)V

    return-object v22
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lva/d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lva/d;

    iget-wide v3, p0, Lva/d;->h:J

    iget-wide v5, p1, Lva/d;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lva/d;->i:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lva/d;->j:J

    iget-wide v5, p1, Lva/d;->j:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lva/d;->k:Z

    iget-boolean v3, p1, Lva/d;->k:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lva/d;->l:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lva/d;->m:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lva/d;->n:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lva/d;->o:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lva/d;->p:I

    iget v3, p1, Lva/d;->p:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lva/d;->q:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lva/d;->r:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lva/d;->s:Ljava/util/List;

    iget-object v3, p1, Lva/d;->s:Ljava/util/List;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lva/d;->t:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lva/d;->u:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lva/d;->v:Ljava/lang/String;

    iget-object v3, p1, Lva/d;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lva/d;->w:I

    iget v3, p1, Lva/d;->w:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-wide v3, p0, Lva/d;->x:J

    iget-wide v5, p1, Lva/d;->x:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_12

    return v2

    :cond_12
    iget v1, p0, Lva/d;->y:I

    iget p1, p1, Lva/d;->y:I

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lva/d;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lva/d;->i:Ljava/lang/String;

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

    iget-wide v3, p0, Lva/d;->j:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lva/d;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lva/d;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lva/d;->m:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v0, v1, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lva/d;->n:Ljava/lang/String;

    .line 3
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lva/d;->o:Ljava/lang/String;

    .line 5
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 6
    iget v1, p0, Lva/d;->p:I

    .line 7
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 8
    iget-object v1, p0, Lva/d;->q:Ljava/lang/String;

    .line 9
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 10
    iget-object v1, p0, Lva/d;->r:Ljava/lang/String;

    .line 11
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 12
    iget-object v1, p0, Lva/d;->s:Ljava/util/List;

    .line 13
    invoke-static {v1, v0, v2}, La4/g;->d(Ljava/util/List;II)I

    move-result v0

    .line 14
    iget-object v1, p0, Lva/d;->t:Ljava/lang/String;

    .line 15
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 16
    iget-object v1, p0, Lva/d;->u:Ljava/lang/String;

    .line 17
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 18
    iget-object v1, p0, Lva/d;->v:Ljava/lang/String;

    .line 19
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 20
    iget v1, p0, Lva/d;->w:I

    .line 21
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 22
    iget-wide v1, p0, Lva/d;->x:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lva/d;->y:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    iget-wide v1, v0, Lva/d;->h:J

    iget-object v3, v0, Lva/d;->i:Ljava/lang/String;

    iget-wide v4, v0, Lva/d;->j:J

    iget-boolean v6, v0, Lva/d;->k:Z

    iget-object v7, v0, Lva/d;->l:Ljava/lang/String;

    iget-object v8, v0, Lva/d;->m:Ljava/lang/String;

    iget-object v9, v0, Lva/d;->n:Ljava/lang/String;

    iget-object v10, v0, Lva/d;->o:Ljava/lang/String;

    iget v11, v0, Lva/d;->p:I

    iget-object v12, v0, Lva/d;->q:Ljava/lang/String;

    iget-object v13, v0, Lva/d;->r:Ljava/lang/String;

    iget-object v14, v0, Lva/d;->s:Ljava/util/List;

    iget-object v15, v0, Lva/d;->t:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-object v15, v0, Lva/d;->u:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-object v15, v0, Lva/d;->v:Ljava/lang/String;

    move-object/from16 v18, v15

    iget v15, v0, Lva/d;->w:I

    move-object/from16 v19, v14

    move/from16 v20, v15

    iget-wide v14, v0, Lva/d;->x:J

    move-wide/from16 v21, v14

    iget v14, v0, Lva/d;->y:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdaptShoesGet(clientUpdatedDateUTC="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", colorway="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", createdDateUTC="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isDefault="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", lastSelectedPreset="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", leftDeviceIdentifier="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", leftEngineDiscoveryKey="

    const-string v1, ", leftKey="

    .line 1
    invoke-static {v15, v8, v0, v9, v1}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", leftMaxTightness="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pairId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", pairName="

    const-string v1, ", presets="

    .line 3
    invoke-static {v15, v12, v0, v13, v1}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    .line 4
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", rightDeviceIdentifier="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rightEngineDiscoveryKey="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rightKey="

    const-string v1, ", rightMaxTightness="

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    .line 5
    invoke-static {v15, v2, v0, v3, v1}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v20

    .line 6
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", updatedDateUTC="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", deviceType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lva/d;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lva/d;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lva/d;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lva/d;->k:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lva/d;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/d;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/d;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/d;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lva/d;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lva/d;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/d;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/d;->s:Ljava/util/List;

    .line 1
    invoke-static {v0, p1}, Lca/a;->d(Ljava/util/List;Landroid/os/Parcel;)Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lva/c;

    invoke-virtual {v1, p1, p2}, Lva/c;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lva/d;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lva/d;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lva/d;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lva/d;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lva/d;->x:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lva/d;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
