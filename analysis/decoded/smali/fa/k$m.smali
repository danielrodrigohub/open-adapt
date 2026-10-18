.class public final Lfa/k$m;
.super Ljava/lang/Object;
.source "FirmwareUpdateState.kt"

# interfaces
.implements Lfa/k;
.implements Lfa/p;
.implements Lfa/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfa/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfa/k$m;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lfa/k$m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfa/k$m;

    invoke-direct {v0}, Lfa/k$m;-><init>()V

    sput-object v0, Lfa/k$m;->h:Lfa/k$m;

    new-instance v0, Lfa/k$m$a;

    invoke-direct {v0}, Lfa/k$m$a;-><init>()V

    sput-object v0, Lfa/k$m;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "FlashError"

    return-object v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lfa/k;

    .line 2
    invoke-static {p0, p1}, Lfa/k$i;->a(Lfa/k;Lfa/k;)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lfa/k$c0;
    .locals 1

    sget-object v0, Lfa/k$c0;->k:Lfa/k$c0;

    return-object v0
.end method

.method public final m()F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    return v0
.end method

.method public final w()Lfa/e;
    .locals 1

    sget-object v0, Lfa/e$c;->k:Lfa/e$c;

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
