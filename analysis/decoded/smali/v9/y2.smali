.class public final Lv9/y2;
.super Lv9/f;
.source "AdaptKitControllerError.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv9/y2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final n:Ljava/lang/String;

.field public final o:Lv9/a;

.field public final p:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv9/y2$a;

    invoke-direct {v0}, Lv9/y2$a;-><init>()V

    sput-object v0, Lv9/y2;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V
    .locals 6

    const-string v1, "id"

    const-string v3, "adaptIdentifier"

    const-string v5, "error"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    .line 1
    invoke-static/range {v0 .. v5}, Landroidx/appcompat/widget/y0;->d(Ljava/lang/String;Ljava/lang/String;Lv9/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lv9/f;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 3
    iput-object p1, p0, Lv9/y2;->n:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lv9/y2;->o:Lv9/a;

    .line 5
    iput-object p3, p0, Lv9/y2;->p:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()Lv9/a;
    .locals 1

    iget-object v0, p0, Lv9/y2;->o:Lv9/a;

    return-object v0
.end method

.method public final d()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lv9/y2;->p:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "FootPresenceSensorDisableError"

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv9/y2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv9/y2;

    iget-object v1, p0, Lv9/y2;->n:Ljava/lang/String;

    iget-object v3, p1, Lv9/y2;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1
    :cond_2
    iget-object v1, p0, Lv9/y2;->o:Lv9/a;

    iget-object v3, p1, Lv9/y2;->o:Lv9/a;

    .line 2
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 3
    :cond_3
    iget-object v1, p0, Lv9/y2;->p:Ljava/lang/Throwable;

    iget-object p1, p1, Lv9/y2;->p:Ljava/lang/Throwable;

    .line 4
    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lv9/y2;->n:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-object v1, p0, Lv9/y2;->o:Lv9/a;

    const/16 v2, 0x1f

    .line 2
    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/e0;->c(Lv9/a;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lv9/y2;->p:Ljava/lang/Throwable;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lv9/y2;->n:Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lv9/y2;->o:Lv9/a;

    .line 2
    iget-object v2, p0, Lv9/y2;->p:Ljava/lang/Throwable;

    const-string v3, "FootPresenceSensorDisableError(id="

    const-string v4, ", adaptIdentifier="

    const-string v5, ", error="

    .line 3
    invoke-static {v3, v0, v4, v1, v5}, Led/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv9/a;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 4
    invoke-static {v0, v2, v1}, Ld1/c;->b(Ljava/lang/StringBuilder;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lv9/y2;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lv9/y2;->o:Lv9/a;

    invoke-virtual {v0, p1, p2}, Lv9/a;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lv9/y2;->p:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
