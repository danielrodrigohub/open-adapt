.class public final enum Lv7/n;
.super Ljava/lang/Enum;
.source "SettingsNavigation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv7/n;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv7/n;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum i:Lv7/n;

.field public static final enum j:Lv7/n;

.field public static final enum k:Lv7/n;

.field public static final synthetic l:[Lv7/n;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lv7/n;

    const-string v1, "ABOUT_THIS_VERSION"

    const/4 v2, 0x0

    const v3, 0x7f1101a8

    invoke-direct {v0, v1, v2, v3}, Lv7/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lv7/n;->i:Lv7/n;

    .line 2
    new-instance v1, Lv7/n;

    const-string v3, "MODEL_INFO"

    const/4 v4, 0x1

    const v5, 0x7f1101f6

    invoke-direct {v1, v3, v4, v5}, Lv7/n;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lv7/n;->j:Lv7/n;

    .line 3
    new-instance v3, Lv7/n;

    const-string v5, "FIRMWARE_VERSION"

    const/4 v6, 0x2

    const v7, 0x7f1101ef

    invoke-direct {v3, v5, v6, v7}, Lv7/n;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lv7/n;->k:Lv7/n;

    const/4 v5, 0x3

    new-array v5, v5, [Lv7/n;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lv7/n;->l:[Lv7/n;

    new-instance v0, Lv7/n$a;

    invoke-direct {v0}, Lv7/n$a;-><init>()V

    sput-object v0, Lv7/n;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput p3, p0, Lv7/n;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv7/n;
    .locals 1

    const-class v0, Lv7/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv7/n;

    return-object p0
.end method

.method public static values()[Lv7/n;
    .locals 1

    sget-object v0, Lv7/n;->l:[Lv7/n;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv7/n;

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
