.class public final Lu4/g$d;
.super Lj5/c;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public g:I


# direct methods
.method public constructor <init>(Lp4/t0;[I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lj5/c;-><init>(Lp4/t0;[I)V

    const/4 v0, 0x0

    .line 2
    aget p2, p2, v0

    .line 3
    iget-object p1, p1, Lp4/t0;->k:[Ln3/s0;

    aget-object p1, p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lj5/c;->a(Ln3/s0;)I

    move-result p1

    iput p1, p0, Lu4/g$d;->g:I

    return-void
.end method


# virtual methods
.method public final g(JJJLjava/util/List;[Lr4/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lr4/m;",
            ">;[",
            "Lr4/n;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 2
    iget p3, p0, Lu4/g$d;->g:I

    invoke-virtual {p0, p3, p1, p2}, Lj5/c;->c(IJ)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget p3, p0, Lj5/c;->b:I

    :cond_1
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_2

    .line 4
    invoke-virtual {p0, p3, p1, p2}, Lj5/c;->c(IJ)Z

    move-result p4

    if-nez p4, :cond_1

    .line 5
    iput p3, p0, Lu4/g$d;->g:I

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()I
    .locals 1

    iget v0, p0, Lu4/g$d;->g:I

    return v0
.end method

.method public final q()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
