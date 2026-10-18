.class public final Lha/g;
.super Lha/u;
.source "PairingState.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lha/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lea/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lha/g$a;

    invoke-direct {v0}, Lha/g$a;-><init>()V

    sput-object v0, Lha/g;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lea/m;)V
    .locals 1

    const-string v0, "devices"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lha/u;-><init>()V

    .line 2
    iput-object p1, p0, Lha/g;->h:Lea/m;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lha/g;->h:Lea/m;

    .line 2
    iget-object v2, v1, Lea/m;->i:Ljava/lang/String;

    .line 3
    iget-object v3, v1, Lea/m;->r:Lea/f;

    .line 4
    iget v3, v3, Lea/f;->h:I

    .line 5
    iget-boolean v4, v1, Lea/m;->j:Z

    .line 6
    iget-object v5, v1, Lea/m;->k:Lea/b;

    invoke-virtual {v5}, Lea/b;->c()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v6, v1, Lea/m;->l:Lea/b;

    invoke-virtual {v6}, Lea/b;->c()Ljava/lang/String;

    move-result-object v6

    .line 8
    iget-object v7, v1, Lea/m;->m:Ljava/lang/String;

    .line 9
    iget-object v8, v1, Lea/m;->n:Ljava/lang/String;

    .line 10
    iget-object v9, v1, Lea/m;->o:Ljava/util/List;

    sget-object v13, Lea/n;->h:Lea/n;

    const/4 v10, 0x0

    const-string v11, "["

    const-string v12, "]"

    const/16 v14, 0x19

    invoke-static/range {v9 .. v14}, Lgd/n;->d0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lqd/l;I)Ljava/lang/String;

    move-result-object v9

    .line 11
    iget-wide v10, v1, Lea/m;->p:J

    .line 12
    iget-wide v12, v1, Lea/m;->q:J

    .line 13
    iget-wide v14, v1, Lea/m;->s:J

    .line 14
    iget-boolean v1, v1, Lea/m;->t:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v1

    const-string v1, "PairedDevices[name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " deviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isDefault: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " right: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lastUsedSnapshot: "

    const-string v2, " colorway: "

    .line 15
    invoke-static {v0, v6, v1, v7, v2}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, " snapshots:"

    const-string v2, " created: "

    invoke-static {v0, v8, v1, v9, v2}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " localUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " scheduledForDeletion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompletedPairingState: "

    .line 17
    invoke-static {v1, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

    :cond_0
    instance-of v1, p1, Lha/g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lha/g;

    iget-object v1, p0, Lha/g;->h:Lea/m;

    iget-object p1, p1, Lha/g;->h:Lea/m;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lha/g;->h:Lea/m;

    invoke-virtual {v0}, Lea/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lha/g;->h:Lea/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CompletedPairingState(devices="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lha/g;->h:Lea/m;

    invoke-virtual {v0, p1, p2}, Lea/m;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
