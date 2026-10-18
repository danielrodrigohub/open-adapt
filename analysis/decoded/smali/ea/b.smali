.class public final Lea/b;
.super Ljava/lang/Object;
.source "AdaptKitDevice.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lea/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:I

.field public n:Z

.field public final o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lea/b$a;

    invoke-direct {v0}, Lea/b$a;-><init>()V

    sput-object v0, Lea/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    const-string v0, "scanningKey"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionAddress"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationKey"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lea/b;->h:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lea/b;->i:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lea/b;->j:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lea/b;->k:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lea/b;->l:Ljava/lang/String;

    .line 7
    iput p6, p0, Lea/b;->m:I

    .line 8
    iput-boolean p7, p0, Lea/b;->n:Z

    const/16 p1, 0x52

    const/4 p2, 0x1

    .line 9
    invoke-static {p3, p1, p2}, Lyd/s;->j0(Ljava/lang/CharSequence;CZ)Z

    .line 10
    invoke-static {p5}, Lg7/b;->f(Ljava/lang/String;)[B

    move-result-object p1

    sget-object p2, Lhc/b;->j:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    iput-boolean p1, p0, Lea/b;->o:Z

    return-void
.end method

.method public static a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;
    .locals 10

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lea/b;->h:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lea/b;->i:Ljava/lang/String;

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    iget-object v1, p0, Lea/b;->j:Ljava/lang/String;

    :cond_2
    move-object v5, v1

    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_3

    iget-object p1, p0, Lea/b;->k:Ljava/lang/String;

    :cond_3
    move-object v6, p1

    and-int/lit8 p1, p5, 0x10

    if-eqz p1, :cond_4

    iget-object p2, p0, Lea/b;->l:Ljava/lang/String;

    :cond_4
    move-object v7, p2

    and-int/lit8 p1, p5, 0x20

    if-eqz p1, :cond_5

    iget p3, p0, Lea/b;->m:I

    :cond_5
    move v8, p3

    and-int/lit8 p1, p5, 0x40

    if-eqz p1, :cond_6

    iget-boolean p4, p0, Lea/b;->n:Z

    :cond_6
    move v9, p4

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "scanningKey"

    invoke-static {v4, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "deviceId"

    invoke-static {v5, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "connectionAddress"

    invoke-static {v6, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "authenticationKey"

    invoke-static {v7, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lea/b;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lea/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object p0
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget v0, p0, Lea/b;->m:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lea/b;->h:Ljava/lang/String;

    iget-object v1, p0, Lea/b;->i:Ljava/lang/String;

    iget-object v2, p0, Lea/b;->j:Ljava/lang/String;

    iget-object v3, p0, Lea/b;->k:Ljava/lang/String;

    iget v4, p0, Lea/b;->m:I

    iget-boolean v5, p0, Lea/b;->n:Z

    const-string v6, "AdaptKitDevice[colorway: "

    const-string v7, " scanningKey: "

    const-string v8, " deviceId: "

    .line 2
    invoke-static {v6, v0, v7, v1, v8}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " connectionAddress: "

    const-string v6, " maxTightness: "

    .line 3
    invoke-static {v0, v2, v1, v3, v6}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hasConnectedLocally: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lea/b;)Z
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lea/b;->j:Ljava/lang/String;

    iget-object v1, p1, Lea/b;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lea/b;->i:Ljava/lang/String;

    iget-object p1, p1, Lea/b;->i:Ljava/lang/String;

    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
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
    const-class v1, Lea/b;

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
    const-string v1, "null cannot be cast to non-null type com.nike.android.adaptkit.model.device.AdaptKitDevice"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lea/b;

    .line 3
    iget-object v1, p0, Lea/b;->h:Ljava/lang/String;

    iget-object v3, p1, Lea/b;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Lea/b;->i:Ljava/lang/String;

    iget-object v3, p1, Lea/b;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Lea/b;->j:Ljava/lang/String;

    iget-object v3, p1, Lea/b;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget-object v1, p0, Lea/b;->k:Ljava/lang/String;

    iget-object v3, p1, Lea/b;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 7
    :cond_6
    iget-object v1, p0, Lea/b;->l:Ljava/lang/String;

    iget-object v3, p1, Lea/b;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 8
    :cond_7
    iget v1, p0, Lea/b;->m:I

    iget v3, p1, Lea/b;->m:I

    if-eq v1, v3, :cond_8

    return v2

    .line 9
    :cond_8
    iget-boolean v1, p0, Lea/b;->n:Z

    iget-boolean p1, p1, Lea/b;->n:Z

    if-eq v1, p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lea/b;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lea/b;->h:Ljava/lang/String;

    iget-object v1, p0, Lea/b;->i:Ljava/lang/String;

    iget-object v2, p0, Lea/b;->j:Ljava/lang/String;

    iget-object v3, p0, Lea/b;->k:Ljava/lang/String;

    iget-object v4, p0, Lea/b;->l:Ljava/lang/String;

    iget v5, p0, Lea/b;->m:I

    iget-boolean v6, p0, Lea/b;->n:Z

    const-string v7, "AdaptKitDevice(colorway="

    const-string v8, ", scanningKey="

    const-string v9, ", deviceId="

    .line 1
    invoke-static {v7, v0, v8, v1, v9}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connectionAddress="

    const-string v7, ", authenticationKey="

    .line 2
    invoke-static {v0, v2, v1, v3, v7}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxTightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasConnectedLocally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lea/b;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lea/b;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lea/b;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lea/b;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lea/b;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lea/b;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lea/b;->n:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
