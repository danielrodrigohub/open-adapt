.class public final Lha/k;
.super Lha/u;
.source "PairingState.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lha/k;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lha/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lha/k;

    invoke-direct {v0}, Lha/k;-><init>()V

    sput-object v0, Lha/k;->h:Lha/k;

    new-instance v0, Lha/k$a;

    invoke-direct {v0}, Lha/k$a;-><init>()V

    sput-object v0, Lha/k;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lha/u;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ConnectingRightPairingState"

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
