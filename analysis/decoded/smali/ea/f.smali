.class public final enum Lea/f;
.super Ljava/lang/Enum;
.source "AdaptKitDeviceType.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lea/f;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lea/f;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum i:Lea/f;

.field public static final enum j:Lea/f;

.field public static final enum k:Lea/f;

.field public static final synthetic l:[Lea/f;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lea/f;

    const-string v1, "BIGFOOT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lea/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lea/f;->i:Lea/f;

    .line 2
    new-instance v1, Lea/f;

    const-string v3, "TRILLIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lea/f;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lea/f;->j:Lea/f;

    .line 3
    new-instance v3, Lea/f;

    const-string v5, "SESSION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lea/f;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lea/f;->k:Lea/f;

    const/4 v5, 0x3

    new-array v5, v5, [Lea/f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lea/f;->l:[Lea/f;

    new-instance v0, Lea/f$a;

    invoke-direct {v0}, Lea/f$a;-><init>()V

    sput-object v0, Lea/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lea/f;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lea/f;
    .locals 1

    const-class v0, Lea/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lea/f;

    return-object p0
.end method

.method public static values()[Lea/f;
    .locals 1

    sget-object v0, Lea/f;->l:[Lea/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lea/f;

    return-object v0
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

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
