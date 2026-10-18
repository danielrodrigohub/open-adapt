.class public final Lfb/c;
.super Ljava/lang/Object;
.source "AdaptKitFirmwareVersion.kt"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfb/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lfb/c;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lfb/c;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lfb/c$a;

.field public static final j:Lfb/c;

.field public static final k:Lfb/c;

.field public static final l:Lfb/c;


# instance fields
.field public final h:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lfb/c$a;

    invoke-direct {v0}, Lfb/c$a;-><init>()V

    sput-object v0, Lfb/c;->i:Lfb/c$a;

    new-instance v0, Lfb/c$b;

    invoke-direct {v0}, Lfb/c$b;-><init>()V

    sput-object v0, Lfb/c;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1
    new-instance v0, Lfb/c;

    const-string v1, "2.0.0"

    invoke-direct {v0, v1}, Lfb/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v1, Lfb/c;

    const-string v2, "2.1.7"

    invoke-direct {v1, v2}, Lfb/c;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v2, Lfb/c;

    const-string v3, "1.1.0"

    invoke-direct {v2, v3}, Lfb/c;-><init>(Ljava/lang/String;)V

    sput-object v2, Lfb/c;->j:Lfb/c;

    .line 4
    sput-object v0, Lfb/c;->k:Lfb/c;

    .line 5
    sput-object v1, Lfb/c;->l:Lfb/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "version"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfb/c;->h:Ljava/lang/String;

    const-string v0, "[0-9]+(\\.[0-9]+)*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "compile(pattern)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid version format"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b(Lfb/c;)I
    .locals 7

    const-string v0, "other"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lfb/c;->h:Ljava/lang/String;

    new-instance v1, Lyd/g;

    const-string v2, "\\."

    invoke-direct {v1, v2}, Lyd/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lyd/g;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-nez v5, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lgd/n;->j0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Lgd/p;->h:Lgd/p;

    :goto_1
    new-array v1, v4, [Ljava/lang/String;

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v0, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast v0, [Ljava/lang/String;

    .line 11
    iget-object p1, p1, Lfb/c;->h:Ljava/lang/String;

    new-instance v5, Lyd/g;

    invoke-direct {v5, v2}, Lyd/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lyd/g;->b(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 14
    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 15
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    move v5, v3

    goto :goto_2

    :cond_4
    move v5, v4

    :goto_2
    if-nez v5, :cond_3

    .line 17
    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lgd/n;->j0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    .line 18
    :cond_5
    sget-object p1, Lgd/p;->h:Lgd/p;

    :goto_3
    new-array v2, v4, [Ljava/lang/String;

    .line 19
    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    check-cast p1, [Ljava/lang/String;

    .line 21
    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v4

    :goto_4
    if-ge v2, v1, :cond_a

    .line 22
    array-length v5, v0

    if-ge v2, v5, :cond_6

    .line 23
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_5

    :cond_6
    move v5, v4

    .line 24
    :goto_5
    array-length v6, p1

    if-ge v2, v6, :cond_7

    .line 25
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

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lfb/c;

    invoke-virtual {p0, p1}, Lfb/c;->b(Lfb/c;)I

    move-result p1

    return p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    const-class v2, Lfb/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 2
    :cond_3
    check-cast p1, Lfb/c;

    invoke-virtual {p0, p1}, Lfb/c;->b(Lfb/c;)I

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lfb/c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfb/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "out"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lfb/c;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
