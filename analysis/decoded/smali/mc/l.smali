.class public final enum Lmc/l;
.super Ljava/lang/Enum;
.source "Gesture.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmc/l;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmc/l;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum i:Lmc/l;

.field public static final enum j:Lmc/l;

.field public static final enum k:Lmc/l;

.field public static final synthetic l:[Lmc/l;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lmc/l;

    const-string v1, "ACTION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmc/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmc/l;->i:Lmc/l;

    .line 2
    new-instance v1, Lmc/l;

    const-string v3, "ACTION_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lmc/l;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lmc/l;->j:Lmc/l;

    .line 3
    new-instance v3, Lmc/l;

    const-string v5, "ACTION_UNLACE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lmc/l;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lmc/l;->k:Lmc/l;

    const/4 v5, 0x3

    new-array v5, v5, [Lmc/l;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lmc/l;->l:[Lmc/l;

    new-instance v0, Lmc/l$a;

    invoke-direct {v0}, Lmc/l$a;-><init>()V

    sput-object v0, Lmc/l;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput p3, p0, Lmc/l;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmc/l;
    .locals 1

    const-class v0, Lmc/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmc/l;

    return-object p0
.end method

.method public static values()[Lmc/l;
    .locals 1

    sget-object v0, Lmc/l;->l:[Lmc/l;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmc/l;

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
