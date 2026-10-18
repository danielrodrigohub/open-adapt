.class public final Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;
.super Ljava/lang/Object;
.source "BigfootDevice.kt"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authenticationKey:Ljava/lang/String;

.field private final connectionAddress:Ljava/lang/String;

.field private final maxTightness:I

.field private final scanningKey:Ljava/lang/String;

.field private final stringIdentifier:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "scanningKey"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringIdentifier"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionAddress"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationKey"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->scanningKey:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->stringIdentifier:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->connectionAddress:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->authenticationKey:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->maxTightness:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->scanningKey:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->stringIdentifier:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->connectionAddress:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->authenticationKey:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->maxTightness:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->scanningKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->stringIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->connectionAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->authenticationKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->maxTightness:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;
    .locals 7

    const-string v0, "scanningKey"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringIdentifier"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionAddress"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authenticationKey"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

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
    const-string v1, "null cannot be cast to non-null type com.nike.adapt.migration.oldbigfoot.BigfootDevice"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;

    .line 3
    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->scanningKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->scanningKey:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAuthenticationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->authenticationKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnectionAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->connectionAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxTightness()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->maxTightness:I

    return v0
.end method

.method public final getScanningKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->scanningKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getStringIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->stringIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->scanningKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->scanningKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->stringIdentifier:Ljava/lang/String;

    iget-object v2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->connectionAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->authenticationKey:Ljava/lang/String;

    iget v4, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->maxTightness:I

    const-string v5, "BigfootDevice(scanningKey="

    const-string v6, ", stringIdentifier="

    const-string v7, ", connectionAddress="

    .line 1
    invoke-static {v5, v0, v6, v1, v7}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", authenticationKey="

    const-string v5, ", maxTightness="

    .line 2
    invoke-static {v0, v2, v1, v3, v5}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    .line 3
    invoke-static {v0, v4, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->scanningKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->stringIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->connectionAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->authenticationKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/nike/adapt/migration/oldbigfoot/BigfootDevice;->maxTightness:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
