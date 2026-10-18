.class public final Lfa/i$a;
.super Lfa/i;
.source "FirmwareStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfa/i$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Lba/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfa/i$a$a;

    invoke-direct {v0}, Lfa/i$a$a;-><init>()V

    sput-object v0, Lfa/i$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lba/e;)V
    .locals 1

    const-string v0, "adaptKitBattery"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lfa/i;-><init>()V

    .line 2
    iput-object p1, p0, Lfa/i$a;->h:Lba/e;

    return-void
.end method


# virtual methods
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
    instance-of v1, p1, Lfa/i$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfa/i$a;

    iget-object v1, p0, Lfa/i$a;->h:Lba/e;

    iget-object p1, p1, Lfa/i$a;->h:Lba/e;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lfa/i$a;->h:Lba/e;

    invoke-virtual {v0}, Lba/e;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfa/i$a;->h:Lba/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BatteryTooLow(adaptKitBattery="

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

    iget-object v0, p0, Lfa/i$a;->h:Lba/e;

    invoke-virtual {v0, p1, p2}, Lba/e;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
