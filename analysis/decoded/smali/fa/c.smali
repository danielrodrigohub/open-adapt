.class public final Lfa/c;
.super Ljava/lang/Object;
.source "AdaptKitFirmwareUpdate.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfa/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lfb/c;

.field public final i:Lfa/n;

.field public final j:Lfa/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfa/c$a;

    invoke-direct {v0}, Lfa/c$a;-><init>()V

    sput-object v0, Lfa/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lfb/c;Lfa/n;Lfa/k;)V
    .locals 1

    const-string v0, "currentFirmwareVersion"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatingToFirmwareVersion"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfa/c;->h:Lfb/c;

    .line 3
    iput-object p2, p0, Lfa/c;->i:Lfa/n;

    .line 4
    iput-object p3, p0, Lfa/c;->j:Lfa/k;

    return-void
.end method

.method public static a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lfa/c;->h:Lfb/c;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Lfa/c;->i:Lfa/n;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lfa/c;->j:Lfa/k;

    :cond_2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "currentFirmwareVersion"

    invoke-static {p1, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "updatingToFirmwareVersion"

    invoke-static {p2, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "state"

    invoke-static {p3, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfa/c;

    invoke-direct {p0, p1, p2, p3}, Lfa/c;-><init>(Lfb/c;Lfa/n;Lfa/k;)V

    return-object p0
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
    instance-of v1, p1, Lfa/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfa/c;

    iget-object v1, p0, Lfa/c;->h:Lfb/c;

    iget-object v3, p1, Lfa/c;->h:Lfb/c;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfa/c;->i:Lfa/n;

    iget-object v3, p1, Lfa/c;->i:Lfa/n;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lfa/c;->j:Lfa/k;

    iget-object p1, p1, Lfa/c;->j:Lfa/k;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lfa/c;->h:Lfb/c;

    invoke-virtual {v0}, Lfb/c;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfa/c;->i:Lfa/n;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lfa/c;->j:Lfa/k;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lfa/c;->h:Lfb/c;

    iget-object v1, p0, Lfa/c;->i:Lfa/n;

    iget-object v2, p0, Lfa/c;->j:Lfa/k;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdaptKitFirmwareUpdate(currentFirmwareVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", updatingToFirmwareVersion="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lfa/c;->h:Lfb/c;

    invoke-virtual {v0, p1, p2}, Lfb/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lfa/c;->i:Lfa/n;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lfa/c;->j:Lfa/k;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
