.class public final Lva/e;
.super Ljava/lang/Object;
.source "AdaptShoesPut.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lva/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:J

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lva/c;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:I

.field public final v:Ljava/lang/String;

.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lva/e$a;

    invoke-direct {v0}, Lva/e$a;-><init>()V

    sput-object v0, Lva/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
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
            "I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

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
    iput-wide v9, v0, Lva/e;->h:J

    move v9, p3

    .line 3
    iput-boolean v9, v0, Lva/e;->i:Z

    move-object v9, p4

    .line 4
    iput-object v9, v0, Lva/e;->j:Ljava/lang/String;

    .line 5
    iput-object v1, v0, Lva/e;->k:Ljava/lang/String;

    .line 6
    iput-object v2, v0, Lva/e;->l:Ljava/lang/String;

    .line 7
    iput-object v3, v0, Lva/e;->m:Ljava/lang/String;

    move/from16 v1, p8

    .line 8
    iput v1, v0, Lva/e;->n:I

    .line 9
    iput-object v4, v0, Lva/e;->o:Ljava/lang/String;

    .line 10
    iput-object v5, v0, Lva/e;->p:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 11
    iput-object v1, v0, Lva/e;->q:Ljava/util/List;

    .line 12
    iput-object v6, v0, Lva/e;->r:Ljava/lang/String;

    .line 13
    iput-object v7, v0, Lva/e;->s:Ljava/lang/String;

    .line 14
    iput-object v8, v0, Lva/e;->t:Ljava/lang/String;

    move/from16 v1, p15

    .line 15
    iput v1, v0, Lva/e;->u:I

    move-object/from16 v1, p16

    .line 16
    iput-object v1, v0, Lva/e;->v:Ljava/lang/String;

    move/from16 v1, p17

    .line 17
    iput v1, v0, Lva/e;->w:I

    return-void
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
    instance-of v1, p1, Lva/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lva/e;

    iget-wide v3, p0, Lva/e;->h:J

    iget-wide v5, p1, Lva/e;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lva/e;->i:Z

    iget-boolean v3, p1, Lva/e;->i:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lva/e;->j:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lva/e;->k:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lva/e;->l:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lva/e;->m:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lva/e;->n:I

    iget v3, p1, Lva/e;->n:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lva/e;->o:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lva/e;->p:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lva/e;->q:Ljava/util/List;

    iget-object v3, p1, Lva/e;->q:Ljava/util/List;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lva/e;->r:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lva/e;->s:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lva/e;->t:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lva/e;->u:I

    iget v3, p1, Lva/e;->u:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lva/e;->v:Ljava/lang/String;

    iget-object v3, p1, Lva/e;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lva/e;->w:I

    iget p1, p1, Lva/e;->w:I

    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lva/e;->h:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lva/e;->i:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lva/e;->j:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lva/e;->k:Ljava/lang/String;

    const/16 v3, 0x1f

    .line 1
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lva/e;->l:Ljava/lang/String;

    .line 3
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lva/e;->m:Ljava/lang/String;

    .line 5
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 6
    iget v1, p0, Lva/e;->n:I

    .line 7
    invoke-static {v1, v0, v3}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 8
    iget-object v1, p0, Lva/e;->o:Ljava/lang/String;

    .line 9
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 10
    iget-object v1, p0, Lva/e;->p:Ljava/lang/String;

    .line 11
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 12
    iget-object v1, p0, Lva/e;->q:Ljava/util/List;

    .line 13
    invoke-static {v1, v0, v3}, La4/g;->d(Ljava/util/List;II)I

    move-result v0

    .line 14
    iget-object v1, p0, Lva/e;->r:Ljava/lang/String;

    .line 15
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 16
    iget-object v1, p0, Lva/e;->s:Ljava/lang/String;

    .line 17
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 18
    iget-object v1, p0, Lva/e;->t:Ljava/lang/String;

    .line 19
    invoke-static {v1, v0, v3}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 20
    iget v1, p0, Lva/e;->u:I

    .line 21
    invoke-static {v1, v0, v3}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 22
    iget-object v1, p0, Lva/e;->v:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lva/e;->w:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-wide v1, v0, Lva/e;->h:J

    iget-boolean v3, v0, Lva/e;->i:Z

    iget-object v4, v0, Lva/e;->j:Ljava/lang/String;

    iget-object v5, v0, Lva/e;->k:Ljava/lang/String;

    iget-object v6, v0, Lva/e;->l:Ljava/lang/String;

    iget-object v7, v0, Lva/e;->m:Ljava/lang/String;

    iget v8, v0, Lva/e;->n:I

    iget-object v9, v0, Lva/e;->o:Ljava/lang/String;

    iget-object v10, v0, Lva/e;->p:Ljava/lang/String;

    iget-object v11, v0, Lva/e;->q:Ljava/util/List;

    iget-object v12, v0, Lva/e;->r:Ljava/lang/String;

    iget-object v13, v0, Lva/e;->s:Ljava/lang/String;

    iget-object v14, v0, Lva/e;->t:Ljava/lang/String;

    iget v15, v0, Lva/e;->u:I

    move/from16 v16, v15

    iget-object v15, v0, Lva/e;->v:Ljava/lang/String;

    move-object/from16 v17, v15

    iget v15, v0, Lva/e;->w:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v15

    const-string v15, "AdaptShoesPut(clientUpdatedDateUTC="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastSelectedPreset="

    const-string v2, ", leftDeviceIdentifier="

    .line 1
    invoke-static {v0, v1, v4, v2, v5}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", leftEngineDiscoveryKey="

    const-string v2, ", leftKey="

    invoke-static {v0, v1, v6, v2, v7}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", leftMaxTightness="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pairId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pairName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", presets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightDeviceIdentifier="

    const-string v2, ", rightEngineDiscoveryKey="

    .line 3
    invoke-static {v0, v1, v12, v2, v13}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", rightKey="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rightMaxTightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", colorway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lva/e;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lva/e;->i:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lva/e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/e;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/e;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lva/e;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lva/e;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/e;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lva/e;->q:Ljava/util/List;

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
    iget-object p2, p0, Lva/e;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lva/e;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lva/e;->t:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lva/e;->u:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lva/e;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lva/e;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
