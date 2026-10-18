.class public final Lb9/i;
.super Lb9/e;
.source "MessagingCenter.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lb9/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lb9/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb9/i;

    invoke-direct {v0}, Lb9/i;-><init>()V

    sput-object v0, Lb9/i;->h:Lb9/i;

    new-instance v0, Lb9/i$a;

    invoke-direct {v0}, Lb9/i$a;-><init>()V

    sput-object v0, Lb9/i;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb9/e;-><init>()V

    return-void
.end method


# virtual methods
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
