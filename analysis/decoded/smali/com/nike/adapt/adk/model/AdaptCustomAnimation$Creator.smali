.class public final Lcom/nike/adapt/adk/model/AdaptCustomAnimation$Creator;
.super Ljava/lang/Object;
.source "AdaptCustomAnimation.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/model/AdaptCustomAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nike/adapt/adk/model/AdaptCustomAnimation;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;
    .locals 9

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_1
    if-eq v6, v4, :cond_1

    sget-object v7, Lcom/nike/adapt/adk/model/AdaptAppAnimationFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v8, 0x1

    .line 1
    invoke-static {v7, p1, v5, v6, v8}, Lcom/nike/adapt/adk/model/a;->c(Landroid/os/Parcelable$Creator;Landroid/os/Parcel;Ljava/util/ArrayList;II)I

    move-result v6

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    new-instance v8, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-object v1, v8

    move v3, v0

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;-><init>(IZLjava/util/List;ZII)V

    return-object v8
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation$Creator;->createFromParcel(Landroid/os/Parcel;)Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/nike/adapt/adk/model/AdaptCustomAnimation;
    .locals 0

    new-array p1, p1, [Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation$Creator;->newArray(I)[Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    move-result-object p1

    return-object p1
.end method
