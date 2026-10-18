.class public final Lde/y;
.super Lgd/c;
.source "Options.kt"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgd/c<",
        "Lde/g;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field public static final j:Lde/y$a;


# instance fields
.field public final h:[Lde/g;

.field public final i:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lde/y$a;

    invoke-direct {v0}, Lde/y$a;-><init>()V

    sput-object v0, Lde/y;->j:Lde/y$a;

    return-void
.end method

.method public constructor <init>([Lde/g;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgd/c;-><init>()V

    .line 2
    iput-object p1, p0, Lde/y;->h:[Lde/g;

    .line 3
    iput-object p2, p0, Lde/y;->i:[I

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lde/g;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lde/g;

    .line 2
    invoke-super {p0, p1}, Lgd/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lde/y;->h:[Lde/g;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lde/g;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lde/g;

    .line 2
    invoke-super {p0, p1}, Lgd/c;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lde/y;->h:[Lde/g;

    array-length v0, v0

    return v0
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .line 1
    instance-of v0, p1, Lde/g;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lde/g;

    .line 2
    invoke-super {p0, p1}, Lgd/c;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
