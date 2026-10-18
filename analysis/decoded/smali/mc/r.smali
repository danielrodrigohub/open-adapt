.class public final Lmc/r;
.super Ljava/lang/Object;
.source "KeyExchangeComplete.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmc/r$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lmc/r$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmc/r$a;

    invoke-direct {v0}, Lmc/r$a;-><init>()V

    sput-object v0, Lmc/r;->CREATOR:Lmc/r$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
