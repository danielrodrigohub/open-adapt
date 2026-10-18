.class public final Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
.super Ljava/lang/Object;
.source "AdaptFirmwareVersion.kt"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/model/AdaptFirmwareVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion$Companion;


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->Companion:Lcom/nike/adapt/adk/model/AdaptFirmwareVersion$Companion;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion$Creator;

    invoke-direct {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion$Creator;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;Ljava/lang/String;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->copy(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)I
    .locals 7

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    new-instance v1, Lyd/g;

    const-string v2, "\\."

    invoke-direct {v1, v2}, Lyd/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lyd/g;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-nez v5, :cond_0

    .line 8
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lgd/n;->j0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_2
    sget-object v0, Lgd/p;->h:Lgd/p;

    :goto_1
    new-array v1, v4, [Ljava/lang/String;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast v0, [Ljava/lang/String;

    .line 12
    iget-object p1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    new-instance v5, Lyd/g;

    invoke-direct {v5, v2}, Lyd/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lyd/g;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 15
    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 16
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    if-nez v5, :cond_3

    .line 18
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lgd/n;->j0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 19
    :cond_5
    sget-object p1, Lgd/p;->h:Lgd/p;

    :goto_3
    new-array v2, v4, [Ljava/lang/String;

    .line 20
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    check-cast p1, [Ljava/lang/String;

    .line 22
    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v4

    :goto_4
    if-ge v2, v1, :cond_a

    .line 23
    array-length v5, v0

    if-ge v2, v5, :cond_6

    .line 24
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_5

    :cond_6
    move v5, v4

    .line 25
    :goto_5
    array-length v6, p1

    if-ge v2, v6, :cond_7

    .line 26
    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_6

    :cond_7
    move v6, v4

    :goto_6
    if-ge v5, v6, :cond_8

    const/4 p1, -0x1

    return p1

    :cond_8
    if-le v5, v6, :cond_9

    return v3

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->compareTo(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)I

    move-result p1

    return p1
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;)Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;
    .locals 1

    const-string v0, "version"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    invoke-direct {v0, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    iget-object p1, p1, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->version:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
