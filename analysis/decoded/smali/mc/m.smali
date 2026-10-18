.class public final enum Lmc/m;
.super Ljava/lang/Enum;
.source "Gesture.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmc/m;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmc/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum i:Lmc/m;

.field public static final enum j:Lmc/m;

.field public static final enum k:Lmc/m;

.field public static final enum l:Lmc/m;

.field public static final synthetic m:[Lmc/m;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lmc/m;

    const-string v1, "CLASSIFICATION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lmc/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmc/m;->i:Lmc/m;

    .line 2
    new-instance v1, Lmc/m;

    const-string v3, "CLASSIFICATION_NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lmc/m;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lmc/m;->j:Lmc/m;

    .line 3
    new-instance v3, Lmc/m;

    const-string v5, "CLASSIFICATION_DOUBLETAP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lmc/m;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lmc/m;->k:Lmc/m;

    .line 4
    new-instance v5, Lmc/m;

    const-string v7, "CLASSIFICATION_DOUBLETAP_TRAINING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lmc/m;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lmc/m;->l:Lmc/m;

    const/4 v7, 0x4

    new-array v7, v7, [Lmc/m;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lmc/m;->m:[Lmc/m;

    new-instance v0, Lmc/m$a;

    invoke-direct {v0}, Lmc/m$a;-><init>()V

    sput-object v0, Lmc/m;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput p3, p0, Lmc/m;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmc/m;
    .locals 1

    const-class v0, Lmc/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmc/m;

    return-object p0
.end method

.method public static values()[Lmc/m;
    .locals 1

    sget-object v0, Lmc/m;->m:[Lmc/m;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmc/m;

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
