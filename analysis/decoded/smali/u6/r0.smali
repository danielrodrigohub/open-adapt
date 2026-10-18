.class public final Lu6/r0;
.super Lu6/a0;
.source "RegularImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lu6/a0<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final p:[Ljava/lang/Object;

.field public static final q:Lu6/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/r0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient k:[Ljava/lang/Object;

.field public final transient l:I

.field public final transient m:[Ljava/lang/Object;

.field public final transient n:I

.field public final transient o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    .line 1
    sput-object v4, Lu6/r0;->p:[Ljava/lang/Object;

    .line 2
    new-instance v0, Lu6/r0;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v4

    invoke-direct/range {v1 .. v6}, Lu6/r0;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    sput-object v0, Lu6/r0;->q:Lu6/r0;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu6/a0;-><init>()V

    .line 2
    iput-object p1, p0, Lu6/r0;->k:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lu6/r0;->l:I

    .line 4
    iput-object p3, p0, Lu6/r0;->m:[Ljava/lang/Object;

    .line 5
    iput p4, p0, Lu6/r0;->n:I

    .line 6
    iput p5, p0, Lu6/r0;->o:I

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lu6/r0;->m:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Lu6/s;->b(Ljava/lang/Object;)I

    move-result v2

    .line 4
    :goto_0
    iget v3, p0, Lu6/r0;->n:I

    and-int/2addr v2, v3

    .line 5
    aget-object v3, v0, v2

    if-nez v3, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lu6/r0;->l:I

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lu6/r0;->p()Lu6/y0;

    move-result-object v0

    return-object v0
.end method

.method public final k([Ljava/lang/Object;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lu6/r0;->k:[Ljava/lang/Object;

    iget v1, p0, Lu6/r0;->o:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lu6/r0;->o:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final l()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu6/r0;->k:[Ljava/lang/Object;

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lu6/r0;->o:I

    return v0
.end method

.method public final n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final p()Lu6/y0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu6/y0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu6/a0;->h()Lu6/v;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lu6/v;->u(I)Lu6/a;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lu6/r0;->o:I

    return v0
.end method

.method public final t()Lu6/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu6/v<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lu6/r0;->k:[Ljava/lang/Object;

    iget v1, p0, Lu6/r0;->o:I

    invoke-static {v0, v1}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v0

    return-object v0
.end method
