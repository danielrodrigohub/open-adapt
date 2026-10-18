.class public abstract Lu6/b;
.super Lu6/y0;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lu6/y0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public h:I

.field public i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu6/y0;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lu6/b;->h:I

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public final hasNext()Z
    .locals 5
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .line 1
    iget v0, p0, Lu6/b;->h:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-eqz v4, :cond_4

    .line 2
    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    .line 3
    iput v2, p0, Lu6/b;->h:I

    .line 4
    invoke-virtual {p0}, Lu6/b;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lu6/b;->i:Ljava/lang/Object;

    .line 5
    iget v0, p0, Lu6/b;->h:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 6
    iput v1, p0, Lu6/b;->h:I

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    return v1

    :cond_2
    return v3

    :cond_3
    return v1

    .line 7
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lu6/b;->h:I

    .line 3
    iget-object v0, p0, Lu6/b;->i:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lu6/b;->i:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
