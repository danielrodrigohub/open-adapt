.class public final Lfa/b$c;
.super Ljava/lang/Object;
.source "AdaptKitFirmwareStatus.kt"

# interfaces
.implements Lfa/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfa/b$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lfb/c;

.field public final i:Z

.field public final j:Lfb/c;

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfa/b$c$a;

    invoke-direct {v0}, Lfa/b$c$a;-><init>()V

    sput-object v0, Lfa/b$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lfb/c;ZLfb/c;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "currentVersion"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatedVersion"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileMd5"

    invoke-static {p6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlForUpdate"

    invoke-static {p7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfa/b$c;->h:Lfb/c;

    .line 3
    iput-boolean p2, p0, Lfa/b$c;->i:Z

    .line 4
    iput-object p3, p0, Lfa/b$c;->j:Lfb/c;

    .line 5
    iput-boolean p4, p0, Lfa/b$c;->k:Z

    .line 6
    iput-boolean p5, p0, Lfa/b$c;->l:Z

    .line 7
    iput-object p6, p0, Lfa/b$c;->m:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lfa/b$c;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfa/b$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfa/b$c;

    .line 1
    iget-object v1, p0, Lfa/b$c;->h:Lfb/c;

    .line 2
    iget-object v3, p1, Lfa/b$c;->h:Lfb/c;

    .line 3
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lfa/b$c;->i:Z

    iget-boolean v3, p1, Lfa/b$c;->i:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfa/b$c;->j:Lfb/c;

    iget-object v3, p1, Lfa/b$c;->j:Lfb/c;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lfa/b$c;->k:Z

    iget-boolean v3, p1, Lfa/b$c;->k:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lfa/b$c;->l:Z

    iget-boolean v3, p1, Lfa/b$c;->l:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lfa/b$c;->m:Ljava/lang/String;

    iget-object v3, p1, Lfa/b$c;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lfa/b$c;->n:Ljava/lang/String;

    iget-object p1, p1, Lfa/b$c;->n:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCurrentVersion()Lfb/c;
    .locals 1

    iget-object v0, p0, Lfa/b$c;->h:Lfb/c;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lfa/b$c;->h:Lfb/c;

    .line 2
    invoke-virtual {v0}, Lfb/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lfa/b$c;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfa/b$c;->j:Lfb/c;

    invoke-virtual {v1}, Lfb/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lfa/b$c;->k:Z

    if-eqz v0, :cond_1

    move v0, v2

    :cond_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lfa/b$c;->l:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lfa/b$c;->m:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 3
    invoke-static {v0, v1, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lfa/b$c;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lfa/b$c;->h:Lfb/c;

    .line 2
    iget-boolean v1, p0, Lfa/b$c;->i:Z

    iget-object v2, p0, Lfa/b$c;->j:Lfb/c;

    iget-boolean v3, p0, Lfa/b$c;->k:Z

    iget-boolean v4, p0, Lfa/b$c;->l:Z

    iget-object v5, p0, Lfa/b$c;->m:Ljava/lang/String;

    iget-object v6, p0, Lfa/b$c;->n:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UpdateAvailable(currentVersion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", readyForUpdate="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", updatedVersion="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", inBetaProgram="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", forceUpdateRequired="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fileMd5="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", urlForUpdate="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    .line 3
    invoke-static {v7, v6, v0}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfa/b$c;->h:Lfb/c;

    invoke-virtual {v0, p1, p2}, Lfb/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lfa/b$c;->i:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lfa/b$c;->j:Lfb/c;

    invoke-virtual {v0, p1, p2}, Lfb/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean p2, p0, Lfa/b$c;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lfa/b$c;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lfa/b$c;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lfa/b$c;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
