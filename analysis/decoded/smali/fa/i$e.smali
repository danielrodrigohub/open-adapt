.class public final Lfa/i$e;
.super Lfa/i;
.source "FirmwareStage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfa/i$e;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lfa/i$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfa/i$e;

    invoke-direct {v0}, Lfa/i$e;-><init>()V

    sput-object v0, Lfa/i$e;->h:Lfa/i$e;

    new-instance v0, Lfa/i$e$a;

    invoke-direct {v0}, Lfa/i$e$a;-><init>()V

    sput-object v0, Lfa/i$e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfa/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "FetchingData"

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
