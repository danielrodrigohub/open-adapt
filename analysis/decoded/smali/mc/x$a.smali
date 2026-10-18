.class public final Lmc/x$a;
.super Ljava/lang/Object;
.source "SessionData.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmc/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmc/x;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 11

    const-string v0, "parcel"

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-eq v6, v0, :cond_0

    sget-object v7, Lmc/y;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v8, 0x1

    .line 2
    invoke-static {v7, p1, v5, v6, v8}, Lcom/nike/adapt/adk/model/a;->c(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v6

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v1

    :goto_1
    if-eq v7, v0, :cond_1

    sget-object v8, Lmc/w;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v9, 0x1

    .line 4
    invoke-static {v8, p1, v6, v7, v9}, Lcom/nike/adapt/adk/model/a;->c(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v7

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v8, v1

    :goto_2
    if-eq v8, v0, :cond_2

    sget-object v9, Lmc/c0;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v10, 0x1

    .line 6
    invoke-static {v9, p1, v7, v8, v10}, Lcom/nike/adapt/adk/model/a;->c(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v8

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_3
    if-eq v1, v0, :cond_3

    sget-object v9, Lmc/d0;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v10, 0x1

    .line 8
    invoke-static {v9, p1, v8, v1, v10}, Lcom/nike/adapt/adk/model/a;->c(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v1

    goto :goto_3

    .line 9
    :cond_3
    new-instance p1, Lmc/x;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lmc/x;-><init>(IJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p1, p1, [Lmc/x;

    return-object p1
.end method
