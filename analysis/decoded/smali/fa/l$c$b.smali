.class public final Lfa/l$c$b;
.super Lfa/l$c;
.source "SlotInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/l$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfa/l$c$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lfa/l$c$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfa/l$c$b;

    invoke-direct {v0}, Lfa/l$c$b;-><init>()V

    sput-object v0, Lfa/l$c$b;->h:Lfa/l$c$b;

    new-instance v0, Lfa/l$c$b$a;

    invoke-direct {v0}, Lfa/l$c$b$a;-><init>()V

    sput-object v0, Lfa/l$c$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfa/l$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "COULD_NOT_DETERMINE_STATUS"

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "COULD_NOT_DETERMINE_STATUS"

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
