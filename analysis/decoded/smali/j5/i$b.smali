.class public final Lj5/i$b;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lj5/i$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Ln3/s0;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget p1, p1, Ln3/s0;->k:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lj5/i$b;->h:Z

    .line 3
    invoke-static {p2, v1}, Lj5/i;->h(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lj5/i$b;->i:Z

    return-void
.end method


# virtual methods
.method public final b(Lj5/i$b;)I
    .locals 3

    .line 1
    sget-object v0, Lu6/p;->a:Lu6/p$a;

    iget-boolean v1, p0, Lj5/i$b;->i:Z

    iget-boolean v2, p1, Lj5/i$b;->i:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lu6/p$a;->d(ZZ)Lu6/p;

    move-result-object v0

    iget-boolean v1, p0, Lj5/i$b;->h:Z

    iget-boolean p1, p1, Lj5/i$b;->h:Z

    .line 3
    invoke-virtual {v0, v1, p1}, Lu6/p;->d(ZZ)Lu6/p;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lu6/p;->f()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj5/i$b;

    invoke-virtual {p0, p1}, Lj5/i$b;->b(Lj5/i$b;)I

    move-result p1

    return p1
.end method
