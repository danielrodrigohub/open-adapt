.class public final Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;
.super Ljava/lang/Object;
.source "BigfootDeviceAttributes.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

.field private final percent:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;)V
    .locals 1

    const-string v0, "bigfootDeviceColor"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->percent:I

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;ILcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;ILjava/lang/Object;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->percent:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->copy(ILcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->percent:I

    return v0
.end method

.method public final component2()Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    return-object v0
.end method

.method public final copy(ILcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;
    .locals 1

    const-string v0, "bigfootDeviceColor"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    invoke-direct {v0, p1, p2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;-><init>(ILcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;

    iget v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->percent:I

    iget v3, p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->percent:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    iget-object p1, p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getBigfootDeviceColor()Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    return-object v0
.end method

.method public final getPercent()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->percent:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->percent:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    invoke-virtual {v1}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->percent:I

    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BigfootDeviceAttributes(percent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bigfootDeviceColor="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "out"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->percent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceAttributes;->bigfootDeviceColor:Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;

    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDeviceColor;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
