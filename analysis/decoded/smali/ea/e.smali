.class public final Lea/e;
.super Ljava/lang/Object;
.source "AdaptKitDeviceMode.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lea/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Lea/c;

.field public final l:Lea/c;

.field public final m:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lea/e$a;

    invoke-direct {v0}, Lea/e$a;-><init>()V

    sput-object v0, Lea/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "leftAttributes"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rightAttributes"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lea/e;->h:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lea/e;->i:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lea/e;->j:Z

    .line 5
    iput-object p4, p0, Lea/e;->k:Lea/c;

    .line 6
    iput-object p5, p0, Lea/e;->l:Lea/c;

    .line 7
    iput-object p6, p0, Lea/e;->m:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string p1, "id.toString()"

    invoke-static {v2, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lea/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V

    return-void
.end method

.method public static a(Lea/e;Ljava/lang/String;Ljava/lang/Integer;I)Lea/e;
    .locals 9

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lea/e;->h:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    iget-object p1, p0, Lea/e;->i:Ljava/lang/String;

    :cond_1
    move-object v4, p1

    and-int/lit8 p1, p3, 0x4

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lea/e;->j:Z

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    move v5, p1

    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lea/e;->k:Lea/c;

    move-object v6, p1

    goto :goto_2

    :cond_3
    move-object v6, v1

    :goto_2
    and-int/lit8 p1, p3, 0x10

    if-eqz p1, :cond_4

    iget-object v1, p0, Lea/e;->l:Lea/c;

    :cond_4
    move-object v7, v1

    and-int/lit8 p1, p3, 0x20

    if-eqz p1, :cond_5

    iget-object p2, p0, Lea/e;->m:Ljava/lang/Integer;

    :cond_5
    move-object v8, p2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "id"

    invoke-static {v3, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {v4, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "leftAttributes"

    invoke-static {v6, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rightAttributes"

    invoke-static {v7, p0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lea/e;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lea/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZLea/c;Lea/c;Ljava/lang/Integer;)V

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Lea/e;->h:Ljava/lang/String;

    iget-object v1, p0, Lea/e;->i:Ljava/lang/String;

    iget-object v2, p0, Lea/e;->k:Lea/c;

    invoke-virtual {v2}, Lea/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lea/e;->l:Lea/c;

    invoke-virtual {v3}, Lea/c;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lea/e;->m:Ljava/lang/Integer;

    const-string v5, "DeviceMode[id: "

    const-string v6, " name: "

    const-string v7, " left: "

    .line 2
    invoke-static {v5, v0, v6, v1, v7}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " right: "

    const-string v5, " displayOrder: "

    .line 3
    invoke-static {v0, v2, v1, v3, v5}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    :cond_0
    instance-of v1, p1, Lea/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lea/e;

    iget-object v1, p0, Lea/e;->h:Ljava/lang/String;

    iget-object v3, p1, Lea/e;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lea/e;->i:Ljava/lang/String;

    iget-object v3, p1, Lea/e;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lea/e;->j:Z

    iget-boolean v3, p1, Lea/e;->j:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lea/e;->k:Lea/c;

    iget-object v3, p1, Lea/e;->k:Lea/c;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lea/e;->l:Lea/c;

    iget-object v3, p1, Lea/e;->l:Lea/c;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lea/e;->m:Ljava/lang/Integer;

    iget-object p1, p1, Lea/e;->m:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lea/e;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lea/e;->i:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lea/e;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lea/e;->k:Lea/c;

    invoke-virtual {v1}, Lea/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lea/e;->l:Lea/c;

    invoke-virtual {v0}, Lea/c;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lea/e;->m:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lea/e;->h:Ljava/lang/String;

    iget-object v1, p0, Lea/e;->i:Ljava/lang/String;

    iget-boolean v2, p0, Lea/e;->j:Z

    iget-object v3, p0, Lea/e;->k:Lea/c;

    iget-object v4, p0, Lea/e;->l:Lea/c;

    iget-object v5, p0, Lea/e;->m:Ljava/lang/Integer;

    const-string v6, "AdaptKitDeviceMode(id="

    const-string v7, ", name="

    const-string v8, ", autoGenerated="

    .line 1
    invoke-static {v6, v0, v7, v1, v8}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", leftAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lea/e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lea/e;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lea/e;->j:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lea/e;->k:Lea/c;

    invoke-virtual {v0, p1, p2}, Lea/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lea/e;->l:Lea/c;

    invoke-virtual {v0, p1, p2}, Lea/c;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lea/e;->m:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
