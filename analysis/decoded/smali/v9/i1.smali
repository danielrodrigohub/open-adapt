.class public final Lv9/i1;
.super Lv9/f;
.source "AdaptKitControllerError.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv9/i1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final n:Ljava/lang/Throwable;

.field public final o:Ljava/lang/String;

.field public final p:Lv9/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/i1$a;

    invoke-direct {v0}, Lv9/i1$a;-><init>()V

    sput-object v0, Lv9/i1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Lv9/a;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptIdentifier"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2, p3, p1}, Lv9/f;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lv9/i1;->n:Ljava/lang/Throwable;

    .line 3
    iput-object p2, p0, Lv9/i1;->o:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lv9/i1;->p:Lv9/a;

    return-void
.end method


# virtual methods
.method public final a()Lv9/a;
    .locals 1

    iget-object v0, p0, Lv9/i1;->p:Lv9/a;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "AutoAdaptCurrentActivityError"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv9/i1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv9/i1;

    iget-object v1, p0, Lv9/i1;->n:Ljava/lang/Throwable;

    iget-object v3, p1, Lv9/i1;->n:Ljava/lang/Throwable;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lv9/i1;->o:Ljava/lang/String;

    iget-object v3, p1, Lv9/i1;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1
    :cond_3
    iget-object v1, p0, Lv9/i1;->p:Lv9/a;

    iget-object p1, p1, Lv9/i1;->p:Lv9/a;

    .line 2
    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lv9/i1;->n:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lv9/i1;->o:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget-object v1, p0, Lv9/i1;->p:Lv9/a;

    .line 3
    invoke-virtual {v1}, Lv9/a;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lv9/i1;->n:Ljava/lang/Throwable;

    iget-object v1, p0, Lv9/i1;->o:Ljava/lang/String;

    .line 1
    iget-object v2, p0, Lv9/i1;->p:Lv9/a;

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoAdaptCurrentActivityError(throwable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", adaptIdentifier="

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

    iget-object v0, p0, Lv9/i1;->n:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lv9/i1;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lv9/i1;->p:Lv9/a;

    invoke-virtual {v0, p1, p2}, Lv9/a;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
