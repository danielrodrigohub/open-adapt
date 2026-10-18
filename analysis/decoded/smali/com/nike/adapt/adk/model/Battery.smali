.class public final Lcom/nike/adapt/adk/model/Battery;
.super Ljava/lang/Object;
.source "Battery.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/Battery;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final percent:I

.field private final state:Lcom/nike/adapt/adk/model/BatteryState;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/Battery$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/Battery$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/Battery;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;ILrd/h;)V

    return-void
.end method

.method public constructor <init>(ILcom/nike/adapt/adk/model/BatteryState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/nike/adapt/adk/model/Battery;->percent:I

    iput-object p2, p0, Lcom/nike/adapt/adk/model/Battery;->state:Lcom/nike/adapt/adk/model/BatteryState;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/nike/adapt/adk/model/BatteryState;ILrd/h;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 3
    sget-object p2, Lcom/nike/adapt/adk/model/BatteryState;->ERROR:Lcom/nike/adapt/adk/model/BatteryState;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/Battery;ILcom/nike/adapt/adk/model/BatteryState;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/Battery;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/nike/adapt/adk/model/Battery;->percent:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/adk/model/Battery;->state:Lcom/nike/adapt/adk/model/BatteryState;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/model/Battery;->copy(ILcom/nike/adapt/adk/model/BatteryState;)Lcom/nike/adapt/adk/model/Battery;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/Battery;->percent:I

    return v0
.end method

.method public final component2()Lcom/nike/adapt/adk/model/BatteryState;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/Battery;->state:Lcom/nike/adapt/adk/model/BatteryState;

    return-object v0
.end method

.method public final copy(ILcom/nike/adapt/adk/model/BatteryState;)Lcom/nike/adapt/adk/model/Battery;
    .locals 1

    const-string v0, "state"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/Battery;

    invoke-direct {v0, p1, p2}, Lcom/nike/adapt/adk/model/Battery;-><init>(ILcom/nike/adapt/adk/model/BatteryState;)V

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
    instance-of v1, p1, Lcom/nike/adapt/adk/model/Battery;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/Battery;

    iget v1, p0, Lcom/nike/adapt/adk/model/Battery;->percent:I

    iget v3, p1, Lcom/nike/adapt/adk/model/Battery;->percent:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/nike/adapt/adk/model/Battery;->state:Lcom/nike/adapt/adk/model/BatteryState;

    iget-object p1, p1, Lcom/nike/adapt/adk/model/Battery;->state:Lcom/nike/adapt/adk/model/BatteryState;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPercent()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/Battery;->percent:I

    return v0
.end method

.method public final getState()Lcom/nike/adapt/adk/model/BatteryState;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/Battery;->state:Lcom/nike/adapt/adk/model/BatteryState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/nike/adapt/adk/model/Battery;->percent:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/nike/adapt/adk/model/Battery;->state:Lcom/nike/adapt/adk/model/BatteryState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/nike/adapt/adk/model/Battery;->percent:I

    iget-object v1, p0, Lcom/nike/adapt/adk/model/Battery;->state:Lcom/nike/adapt/adk/model/BatteryState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Battery(percent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/nike/adapt/adk/model/Battery;->percent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/nike/adapt/adk/model/Battery;->state:Lcom/nike/adapt/adk/model/BatteryState;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
