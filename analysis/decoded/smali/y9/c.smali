.class public final Ly9/c;
.super Lv9/m;
.source "BluetoothDisabledException.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ly9/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly9/c$a;

    invoke-direct {v0}, Ly9/c$a;-><init>()V

    sput-object v0, Ly9/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Ly9/c;-><init>(Ljava/lang/String;ILrd/h;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lv9/a;->i:Lv9/a$a;

    .line 2
    sget-object v0, Lv9/a;->j:Lv9/a;

    .line 3
    invoke-direct {p0, v0}, Lv9/m;-><init>(Lv9/a;)V

    .line 4
    iput-object p1, p0, Ly9/c;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILrd/h;)V
    .locals 0

    const-string p1, "User has disabled the bluetooth connection"

    .line 5
    sget-object p2, Lv9/a;->i:Lv9/a$a;

    .line 6
    sget-object p2, Lv9/a;->j:Lv9/a;

    .line 7
    invoke-direct {p0, p2}, Lv9/m;-><init>(Lv9/a;)V

    .line 8
    iput-object p1, p0, Ly9/c;->i:Ljava/lang/String;

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
    instance-of v1, p1, Ly9/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ly9/c;

    .line 1
    iget-object v1, p0, Ly9/c;->i:Ljava/lang/String;

    .line 2
    iget-object p1, p1, Ly9/c;->i:Ljava/lang/String;

    .line 3
    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ly9/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/c;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ly9/c;->i:Ljava/lang/String;

    const-string v1, "BluetoothDisabledException(message="

    const-string v2, ")"

    .line 2
    invoke-static {v1, v0, v2}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Ly9/c;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
