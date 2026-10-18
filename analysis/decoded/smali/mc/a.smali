.class public final enum Lmc/a;
.super Ljava/lang/Enum;
.source "ActivityClassification.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmc/a;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmc/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum h:Lmc/a;

.field public static final enum i:Lmc/a;

.field public static final enum j:Lmc/a;

.field public static final enum k:Lmc/a;

.field public static final enum l:Lmc/a;

.field public static final enum m:Lmc/a;

.field public static final synthetic n:[Lmc/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lmc/a;

    const-string v1, "ACTIVITY_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmc/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmc/a;->h:Lmc/a;

    .line 2
    new-instance v1, Lmc/a;

    const-string v3, "ACTIVITY_IDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmc/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmc/a;->i:Lmc/a;

    .line 3
    new-instance v3, Lmc/a;

    const-string v5, "ACTIVITY_WALK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lmc/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmc/a;->j:Lmc/a;

    .line 4
    new-instance v5, Lmc/a;

    const-string v7, "ACTIVITY_JOG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lmc/a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmc/a;->k:Lmc/a;

    .line 5
    new-instance v7, Lmc/a;

    const-string v9, "ACTIVITY_RUN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lmc/a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmc/a;->l:Lmc/a;

    .line 6
    new-instance v9, Lmc/a;

    const-string v11, "ACTIVITY_SPRINT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lmc/a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lmc/a;->m:Lmc/a;

    const/4 v11, 0x6

    new-array v11, v11, [Lmc/a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lmc/a;->n:[Lmc/a;

    new-instance v0, Lmc/a$a;

    invoke-direct {v0}, Lmc/a$a;-><init>()V

    sput-object v0, Lmc/a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmc/a;
    .locals 1

    const-class v0, Lmc/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmc/a;

    return-object p0
.end method

.method public static values()[Lmc/a;
    .locals 1

    sget-object v0, Lmc/a;->n:[Lmc/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmc/a;

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
