.class public final enum Lv7/m;
.super Ljava/lang/Enum;
.source "SettingsNavigation.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lv7/m;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lv7/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum i:Lv7/m;

.field public static final enum j:Lv7/m;

.field public static final enum k:Lv7/m;

.field public static final enum l:Lv7/m;

.field public static final enum m:Lv7/m;

.field public static final enum n:Lv7/m;

.field public static final synthetic o:[Lv7/m;


# instance fields
.field public final h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lv7/m;

    const-string v1, "FAQS"

    const/4 v2, 0x0

    const v3, 0x7f11021c

    invoke-direct {v0, v1, v2, v3}, Lv7/m;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lv7/m;->i:Lv7/m;

    .line 2
    new-instance v1, Lv7/m;

    const-string v3, "SUBMIT_FEEDBACK"

    const/4 v4, 0x1

    const v5, 0x7f110206

    invoke-direct {v1, v3, v4, v5}, Lv7/m;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lv7/m;->j:Lv7/m;

    .line 3
    new-instance v3, Lv7/m;

    const-string v5, "PRIVACY_POLICY"

    const/4 v6, 0x2

    const v7, 0x7f11017e

    invoke-direct {v3, v5, v6, v7}, Lv7/m;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lv7/m;->k:Lv7/m;

    .line 4
    new-instance v5, Lv7/m;

    const-string v7, "TERMS_OF_USE"

    const/4 v8, 0x3

    const v9, 0x7f110222

    invoke-direct {v5, v7, v8, v9}, Lv7/m;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lv7/m;->l:Lv7/m;

    .line 5
    new-instance v7, Lv7/m;

    const-string v9, "LEARN_MORE"

    const/4 v10, 0x4

    const v11, 0x7f110260

    invoke-direct {v7, v9, v10, v11}, Lv7/m;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lv7/m;->m:Lv7/m;

    .line 6
    new-instance v9, Lv7/m;

    const-string v11, "DECOMMISSION"

    const/4 v12, 0x5

    const v13, 0x7f110085

    invoke-direct {v9, v11, v12, v13}, Lv7/m;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lv7/m;->n:Lv7/m;

    const/4 v11, 0x6

    new-array v11, v11, [Lv7/m;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lv7/m;->o:[Lv7/m;

    new-instance v0, Lv7/m$a;

    invoke-direct {v0}, Lv7/m$a;-><init>()V

    sput-object v0, Lv7/m;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput p3, p0, Lv7/m;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lv7/m;
    .locals 1

    const-class v0, Lv7/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lv7/m;

    return-object p0
.end method

.method public static values()[Lv7/m;
    .locals 1

    sget-object v0, Lv7/m;->o:[Lv7/m;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lv7/m;

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
