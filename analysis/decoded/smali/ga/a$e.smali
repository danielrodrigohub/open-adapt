.class public final enum Lga/a$e;
.super Ljava/lang/Enum;
.source "AdaptKitGestureConfiguration.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Leb/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lga/a$e;",
        ">;",
        "Landroid/os/Parcelable;",
        "Leb/d;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lga/a$e;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum j:Lga/a$e;

.field public static final enum k:Lga/a$e;

.field public static final enum l:Lga/a$e;

.field public static final synthetic m:[Lga/a$e;


# instance fields
.field public final h:I

.field public final i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lga/a$e;

    const-string v1, "ACTION_UNKNOWN"

    const/4 v2, 0x0

    const-string v3, "Unknown"

    invoke-direct {v0, v1, v2, v2, v3}, Lga/a$e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lga/a$e;->j:Lga/a$e;

    .line 2
    new-instance v1, Lga/a$e;

    const-string v3, "ACTION_NONE"

    const/4 v4, 0x1

    const-string v5, "None"

    invoke-direct {v1, v3, v4, v4, v5}, Lga/a$e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lga/a$e;->k:Lga/a$e;

    .line 3
    new-instance v3, Lga/a$e;

    const-string v5, "ACTION_UNLACE"

    const/4 v6, 0x2

    const-string v7, "Unlace"

    invoke-direct {v3, v5, v6, v6, v7}, Lga/a$e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lga/a$e;->l:Lga/a$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lga/a$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lga/a$e;->m:[Lga/a$e;

    new-instance v0, Lga/a$e$a;

    invoke-direct {v0}, Lga/a$e$a;-><init>()V

    sput-object v0, Lga/a$e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lga/a$e;->h:I

    iput-object p4, p0, Lga/a$e;->i:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lga/a$e;
    .locals 1

    const-class v0, Lga/a$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lga/a$e;

    return-object p0
.end method

.method public static values()[Lga/a$e;
    .locals 1

    sget-object v0, Lga/a$e;->m:[Lga/a$e;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lga/a$e;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lga/a$e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgd/q;->h:Lgd/q;

    return-object v0
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
