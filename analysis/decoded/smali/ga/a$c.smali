.class public final Lga/a$c;
.super Lga/a;
.source "AdaptKitGestureConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lga/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Lga/a$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lga/a$c;

    invoke-direct {v0}, Lga/a$c;-><init>()V

    sput-object v0, Lga/a$c;->k:Lga/a$c;

    new-instance v0, Lga/a$c$a;

    invoke-direct {v0}, Lga/a$c$a;-><init>()V

    sput-object v0, Lga/a$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lga/a$e;->l:Lga/a$e;

    .line 2
    sget-object v1, Lga/a$f;->m:Lga/a$f;

    .line 3
    invoke-direct {p0, v0, v1}, Lga/a;-><init>(Lga/a$e;Lga/a$f;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "DoubleTapTraining"

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
