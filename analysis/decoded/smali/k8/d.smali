.class public final Lk8/d;
.super Lk8/f;
.source "FetchProfileActionRequest.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lk8/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lk8/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk8/d;

    invoke-direct {v0}, Lk8/d;-><init>()V

    sput-object v0, Lk8/d;->h:Lk8/d;

    new-instance v0, Lk8/d$a;

    invoke-direct {v0}, Lk8/d$a;-><init>()V

    sput-object v0, Lk8/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk8/f;-><init>()V

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
