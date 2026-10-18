.class public final Lea/m;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevices.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lea/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Lea/b;

.field public final l:Lea/b;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/e;",
            ">;"
        }
    .end annotation
.end field

.field public final p:J

.field public final q:J

.field public final r:Lea/f;

.field public final s:J

.field public final t:Z

.field public final u:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lea/m$a;

    invoke-direct {v0}, Lea/m$a;-><init>()V

    sput-object v0, Lea/m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JJLea/f;JI)V
    .locals 19

    move/from16 v0, p16

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide/from16 v16, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v16, p14

    :goto_0
    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-wide/from16 v11, p9

    move-wide/from16 v13, p11

    move-object/from16 v15, p13

    .line 24
    invoke-direct/range {v2 .. v18}, Lea/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JJLea/f;JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JJLea/f;JZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lea/b;",
            "Lea/b;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lea/e;",
            ">;JJ",
            "Lea/f;",
            "JZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p13

    const-string v6, "pairId"

    invoke-static {p1, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "pairName"

    invoke-static {p2, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "leftDevice"

    invoke-static {p4, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "rightDevice"

    invoke-static {p5, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "deviceType"

    invoke-static {v5, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lea/m;->h:Ljava/lang/String;

    .line 3
    iput-object v2, v0, Lea/m;->i:Ljava/lang/String;

    move v1, p3

    .line 4
    iput-boolean v1, v0, Lea/m;->j:Z

    .line 5
    iput-object v3, v0, Lea/m;->k:Lea/b;

    .line 6
    iput-object v4, v0, Lea/m;->l:Lea/b;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lea/m;->m:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lea/m;->n:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lea/m;->o:Ljava/util/List;

    move-wide/from16 v1, p9

    .line 10
    iput-wide v1, v0, Lea/m;->p:J

    move-wide/from16 v1, p11

    .line 11
    iput-wide v1, v0, Lea/m;->q:J

    .line 12
    iput-object v5, v0, Lea/m;->r:Lea/f;

    move-wide/from16 v1, p14

    .line 13
    iput-wide v1, v0, Lea/m;->s:J

    move/from16 v1, p16

    .line 14
    iput-boolean v1, v0, Lea/m;->t:Z

    .line 15
    iget-object v1, v3, Lea/b;->i:Ljava/lang/String;

    iget-object v2, v4, Lea/b;->i:Ljava/lang/String;

    const-string v3, "-"

    .line 16
    invoke-static {v1, v3, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lea/m;->u:Ljava/lang/String;

    return-void
.end method

.method public static a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lea/m;->h:Ljava/lang/String;

    move-object v5, v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lea/m;->i:Ljava/lang/String;

    move-object v6, v2

    goto :goto_1

    :cond_1
    move-object/from16 v6, p1

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Lea/m;->j:Z

    move v7, v2

    goto :goto_2

    :cond_2
    move/from16 v7, p2

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    iget-object v2, v0, Lea/m;->k:Lea/b;

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p3

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, v0, Lea/m;->l:Lea/b;

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object/from16 v9, p4

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-object v2, v0, Lea/m;->m:Ljava/lang/String;

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object/from16 v10, p5

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_6

    iget-object v2, v0, Lea/m;->n:Ljava/lang/String;

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object/from16 v11, p6

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-object v2, v0, Lea/m;->o:Ljava/util/List;

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p7

    :goto_7
    and-int/lit16 v2, v1, 0x100

    const-wide/16 v13, 0x0

    if-eqz v2, :cond_8

    iget-wide v3, v0, Lea/m;->p:J

    move-wide v15, v3

    goto :goto_8

    :cond_8
    move-wide v15, v13

    :goto_8
    and-int/lit16 v3, v1, 0x200

    if-eqz v3, :cond_9

    iget-wide v3, v0, Lea/m;->q:J

    move-wide/from16 v17, v3

    goto :goto_9

    :cond_9
    move-wide/from16 v17, v13

    :goto_9
    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_a

    iget-object v3, v0, Lea/m;->r:Lea/f;

    move-object v2, v3

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    iget-wide v3, v0, Lea/m;->s:J

    move-wide/from16 v19, v3

    goto :goto_b

    :cond_b
    move-wide/from16 v19, p8

    :goto_b
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lea/m;->t:Z

    goto :goto_c

    :cond_c
    move/from16 v1, p10

    :goto_c
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pairId"

    invoke-static {v5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairName"

    invoke-static {v6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leftDevice"

    invoke-static {v8, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightDevice"

    invoke-static {v9, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "snapshots"

    invoke-static {v12, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceType"

    invoke-static {v2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lea/m;

    move-object v4, v0

    move-wide v13, v15

    move-wide/from16 v15, v17

    move-object/from16 v17, v2

    move-wide/from16 v18, v19

    move/from16 v20, v1

    invoke-direct/range {v4 .. v20}, Lea/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JJLea/f;JZ)V

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lea/m;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.nike.android.adaptkit.model.device.AdaptKitPairedDevices"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lea/m;

    .line 3
    iget-object v1, p0, Lea/m;->h:Ljava/lang/String;

    iget-object p1, p1, Lea/m;->h:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lea/m;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lea/m;->h:Ljava/lang/String;

    iget-object v2, v0, Lea/m;->i:Ljava/lang/String;

    iget-boolean v3, v0, Lea/m;->j:Z

    iget-object v4, v0, Lea/m;->k:Lea/b;

    iget-object v5, v0, Lea/m;->l:Lea/b;

    iget-object v6, v0, Lea/m;->m:Ljava/lang/String;

    iget-object v7, v0, Lea/m;->n:Ljava/lang/String;

    iget-object v8, v0, Lea/m;->o:Ljava/util/List;

    iget-wide v9, v0, Lea/m;->p:J

    iget-wide v11, v0, Lea/m;->q:J

    iget-object v13, v0, Lea/m;->r:Lea/f;

    iget-wide v14, v0, Lea/m;->s:J

    move-wide/from16 v16, v14

    iget-boolean v14, v0, Lea/m;->t:Z

    const-string v15, "AdaptKitPairedDevices(pairId="

    const-string v0, ", pairName="

    move/from16 v18, v14

    const-string v14, ", isDefault="

    .line 1
    invoke-static {v15, v1, v0, v2, v14}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", leftDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastSnapshotUsedName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", colorway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", snapshots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", updatedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localUpdatedMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", scheduledForDeletion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    iget-object v0, p0, Lea/m;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lea/m;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lea/m;->j:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lea/m;->k:Lea/b;

    invoke-virtual {v0, p1, p2}, Lea/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lea/m;->l:Lea/b;

    invoke-virtual {v0, p1, p2}, Lea/b;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lea/m;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lea/m;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lea/m;->o:Ljava/util/List;

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

    check-cast v1, Lea/e;

    invoke-virtual {v1, p1, p2}, Lea/e;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lea/m;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lea/m;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lea/m;->r:Lea/f;

    invoke-virtual {v0, p1, p2}, Lea/f;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lea/m;->s:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lea/m;->t:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
