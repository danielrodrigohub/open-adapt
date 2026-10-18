.class public final Lv7/e;
.super Lv7/j;
.source "OnBoarding.kt"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv7/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv7/e$a;

    invoke-direct {v0}, Lv7/e$a;-><init>()V

    sput-object v0, Lv7/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lv7/j;-><init>()V

    .line 2
    sget-object v0, Lv7/g;->p:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 3
    sget-object v0, Lv7/g;->r:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 4
    sget-object v0, Lv7/g;->q:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    .line 5
    sget-object v0, Lv7/g;->s:Lv7/g;

    invoke-virtual {p0, v0}, Lv7/j;->c(Lv7/g;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x1

    return v0
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
