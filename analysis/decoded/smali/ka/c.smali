.class public final Lka/c;
.super Ljava/lang/Object;
.source "AdaptKitScannedDevice.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lka/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:I

.field public final m:Z

.field public final n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lka/c$a;

    invoke-direct {v0}, Lka/c$a;-><init>()V

    sput-object v0, Lka/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "modelStyleColor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scanIdentifier"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lka/c;->h:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lka/c;->i:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lka/c;->j:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lka/c;->k:Ljava/lang/String;

    .line 6
    iput p5, p0, Lka/c;->l:I

    const/16 p1, 0x52

    const/4 p2, 0x1

    .line 7
    invoke-static {p4, p1, p2}, Lyd/s;->j0(Ljava/lang/CharSequence;CZ)Z

    move-result p1

    iput-boolean p1, p0, Lka/c;->m:Z

    xor-int/2addr p1, p2

    .line 8
    iput-boolean p1, p0, Lka/c;->n:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lka/c;->j:Ljava/lang/String;

    iget-object v1, p0, Lka/c;->h:Ljava/lang/String;

    iget-object v2, p0, Lka/c;->i:Ljava/lang/String;

    iget-object v3, p0, Lka/c;->k:Ljava/lang/String;

    iget v4, p0, Lka/c;->l:I

    const-string v5, "AdaptKitScannedDevice[scanIdentifier: "

    const-string v6, " modelStyleColor: "

    const-string v7, " address: "

    .line 2
    invoke-static {v5, v0, v6, v1, v7}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deviceId: "

    const-string v5, " rssi: "

    .line 3
    invoke-static {v0, v2, v1, v3, v5}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "]"

    .line 4
    invoke-static {v0, v4, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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

    .line 1
    :cond_0
    const-class v1, Lka/c;

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
    const-string v1, "null cannot be cast to non-null type com.nike.android.adaptkit.model.scanner.AdaptKitScannedDevice"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lka/c;

    .line 3
    iget-object v1, p0, Lka/c;->i:Ljava/lang/String;

    iget-object v3, p1, Lka/c;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Lka/c;->j:Ljava/lang/String;

    iget-object v3, p1, Lka/c;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Lka/c;->k:Ljava/lang/String;

    iget-object v3, p1, Lka/c;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget-boolean v1, p0, Lka/c;->m:Z

    iget-boolean v3, p1, Lka/c;->m:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 7
    :cond_6
    iget-boolean v1, p0, Lka/c;->n:Z

    iget-boolean v3, p1, Lka/c;->n:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 8
    :cond_7
    iget v1, p0, Lka/c;->l:I

    iget p1, p1, Lka/c;->l:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lka/c;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lka/c;->h:Ljava/lang/String;

    iget-object v1, p0, Lka/c;->i:Ljava/lang/String;

    iget-object v2, p0, Lka/c;->j:Ljava/lang/String;

    iget-object v3, p0, Lka/c;->k:Ljava/lang/String;

    iget v4, p0, Lka/c;->l:I

    const-string v5, "AdaptKitScannedDevice(modelStyleColor="

    const-string v6, ", address="

    const-string v7, ", scanIdentifier="

    .line 1
    invoke-static {v5, v0, v6, v1, v7}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId="

    const-string v5, ", rssi="

    .line 2
    invoke-static {v0, v2, v1, v3, v5}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    .line 3
    invoke-static {v0, v4, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lka/c;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lka/c;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lka/c;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lka/c;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lka/c;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
