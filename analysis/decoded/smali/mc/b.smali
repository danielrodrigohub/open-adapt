.class public final enum Lmc/b;
.super Ljava/lang/Enum;
.source "ActivityClassification.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmc/b;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmc/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum h:Lmc/b;

.field public static final enum i:Lmc/b;

.field public static final synthetic j:[Lmc/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lmc/b;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmc/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmc/b;->h:Lmc/b;

    .line 2
    new-instance v1, Lmc/b;

    const-string v3, "ENABLED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lmc/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmc/b;->i:Lmc/b;

    const/4 v3, 0x2

    new-array v3, v3, [Lmc/b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lmc/b;->j:[Lmc/b;

    new-instance v0, Lmc/b$a;

    invoke-direct {v0}, Lmc/b$a;-><init>()V

    sput-object v0, Lmc/b;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lmc/b;
    .locals 1

    const-class v0, Lmc/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmc/b;

    return-object p0
.end method

.method public static values()[Lmc/b;
    .locals 1

    sget-object v0, Lmc/b;->j:[Lmc/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmc/b;

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
