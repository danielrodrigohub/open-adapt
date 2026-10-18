.class public final Lp4/g0;
.super Lp4/g;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/g0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp4/g<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:Ln3/y0;


# instance fields
.field public final r:[Lp4/x;

.field public final s:[Ln3/b2;

.field public final t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp4/x;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lp4/h;

.field public final v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lu6/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/i0<",
            "Ljava/lang/Object;",
            "Lp4/d;",
            ">;"
        }
    .end annotation
.end field

.field public x:I

.field public y:[[J

.field public z:Lp4/g0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/y0$b;

    invoke-direct {v0}, Ln3/y0$b;-><init>()V

    const-string v1, "MergingMediaSource"

    .line 2
    iput-object v1, v0, Ln3/y0$b;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ln3/y0$b;->a()Ln3/y0;

    move-result-object v0

    sput-object v0, Lp4/g0;->A:Ln3/y0;

    return-void
.end method

.method public varargs constructor <init>([Lp4/x;)V
    .locals 2

    .line 1
    new-instance v0, Lp4/h;

    invoke-direct {v0}, Lp4/h;-><init>()V

    .line 2
    invoke-direct {p0}, Lp4/g;-><init>()V

    .line 3
    iput-object p1, p0, Lp4/g0;->r:[Lp4/x;

    .line 4
    iput-object v0, p0, Lp4/g0;->u:Lp4/h;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lp4/g0;->t:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lp4/g0;->x:I

    .line 7
    array-length p1, p1

    new-array p1, p1, [Ln3/b2;

    iput-object p1, p0, Lp4/g0;->s:[Ln3/b2;

    const/4 p1, 0x0

    new-array p1, p1, [[J

    .line 8
    iput-object p1, p0, Lp4/g0;->y:[[J

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lp4/g0;->v:Ljava/util/HashMap;

    const/16 p1, 0x8

    const-string v0, "expectedKeys"

    .line 10
    invoke-static {p1, v0}, Lu6/h;->b(ILjava/lang/String;)I

    const/4 v0, 0x2

    const-string v1, "expectedValuesPerKey"

    .line 11
    invoke-static {v0, v1}, Lu6/h;->b(ILjava/lang/String;)I

    .line 12
    new-instance v1, Lu6/m;

    invoke-direct {v1, p1}, Lu6/m;-><init>(I)V

    .line 13
    new-instance p1, Lu6/j0;

    invoke-direct {p1, v0}, Lu6/j0;-><init>(I)V

    .line 14
    new-instance v0, Lu6/k0;

    invoke-direct {v0, v1, p1}, Lu6/k0;-><init>(Ljava/util/Map;Lt6/o;)V

    .line 15
    iput-object v0, p0, Lp4/g0;->w:Lu6/k0;

    return-void
.end method


# virtual methods
.method public final a()Ln3/y0;
    .locals 2

    iget-object v0, p0, Lp4/g0;->r:[Lp4/x;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Lp4/x;->a()Ln3/y0;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lp4/g0;->A:Ln3/y0;

    :goto_0
    return-object v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/g0;->z:Lp4/g0$a;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lp4/g;->b()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public final d(Lp4/v;)V
    .locals 4

    .line 1
    check-cast p1, Lp4/f0;

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lp4/g0;->r:[Lp4/x;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 3
    aget-object v1, v1, v0

    .line 4
    iget-object v2, p1, Lp4/f0;->h:[Lp4/v;

    aget-object v3, v2, v0

    instance-of v3, v3, Lp4/f0$b;

    if-eqz v3, :cond_0

    .line 5
    aget-object v2, v2, v0

    check-cast v2, Lp4/f0$b;

    .line 6
    iget-object v2, v2, Lp4/f0$b;->h:Lp4/v;

    goto :goto_1

    .line 7
    :cond_0
    aget-object v2, v2, v0

    .line 8
    :goto_1
    invoke-interface {v1, v2}, Lp4/x;->d(Lp4/v;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final q(Lp4/x$b;Ll5/b;J)Lp4/v;
    .locals 9

    .line 1
    iget-object v0, p0, Lp4/g0;->r:[Lp4/x;

    array-length v0, v0

    new-array v1, v0, [Lp4/v;

    .line 2
    iget-object v2, p0, Lp4/g0;->s:[Ln3/b2;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p1, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 3
    iget-object v4, p0, Lp4/g0;->s:[Ln3/b2;

    aget-object v4, v4, v3

    .line 4
    invoke-virtual {v4, v2}, Ln3/b2;->o(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lp4/x$b;->b(Ljava/lang/Object;)Lp4/x$b;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lp4/g0;->r:[Lp4/x;

    aget-object v5, v5, v3

    iget-object v6, p0, Lp4/g0;->y:[[J

    aget-object v6, v6, v2

    aget-wide v7, v6, v3

    sub-long v6, p3, v7

    .line 6
    invoke-interface {v5, v4, p2, v6, v7}, Lp4/x;->q(Lp4/x$b;Ll5/b;J)Lp4/v;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lp4/f0;

    iget-object p2, p0, Lp4/g0;->u:Lp4/h;

    iget-object p3, p0, Lp4/g0;->y:[[J

    aget-object p3, p3, v2

    invoke-direct {p1, p2, p3, v1}, Lp4/f0;-><init>(Lp4/h;[J[Lp4/v;)V

    return-object p1
.end method

.method public final v(Ll5/j0;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lp4/g;->v(Ll5/j0;)V

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lp4/g0;->r:[Lp4/x;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lp4/g0;->r:[Lp4/x;

    aget-object v1, v1, p1

    invoke-virtual {p0, v0, v1}, Lp4/g;->A(Ljava/lang/Object;Lp4/x;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    invoke-super {p0}, Lp4/g;->x()V

    .line 2
    iget-object v0, p0, Lp4/g0;->s:[Ln3/b2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lp4/g0;->x:I

    .line 4
    iput-object v1, p0, Lp4/g0;->z:Lp4/g0$a;

    .line 5
    iget-object v0, p0, Lp4/g0;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lp4/g0;->t:Ljava/util/ArrayList;

    iget-object v1, p0, Lp4/g0;->r:[Lp4/x;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final y(Ljava/lang/Object;Lp4/x$b;)Lp4/x$b;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public final z(Ljava/lang/Object;Lp4/x;Ln3/b2;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    iget-object v0, p0, Lp4/g0;->z:Lp4/g0$a;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget v0, p0, Lp4/g0;->x:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p3}, Ln3/b2;->k()I

    move-result v0

    iput v0, p0, Lp4/g0;->x:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p3}, Ln3/b2;->k()I

    move-result v0

    iget v1, p0, Lp4/g0;->x:I

    if-eq v0, v1, :cond_2

    .line 6
    new-instance p1, Lp4/g0$a;

    invoke-direct {p1}, Lp4/g0$a;-><init>()V

    iput-object p1, p0, Lp4/g0;->z:Lp4/g0$a;

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lp4/g0;->y:[[J

    array-length v0, v0

    if-nez v0, :cond_3

    .line 8
    iget v0, p0, Lp4/g0;->x:I

    iget-object v1, p0, Lp4/g0;->s:[Ln3/b2;

    array-length v1, v1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    const-class v0, J

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lp4/g0;->y:[[J

    .line 9
    :cond_3
    iget-object v0, p0, Lp4/g0;->t:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10
    iget-object p2, p0, Lp4/g0;->s:[Ln3/b2;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput-object p3, p2, p1

    .line 11
    iget-object p1, p0, Lp4/g0;->t:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lp4/g0;->s:[Ln3/b2;

    aget-object p1, p1, v2

    .line 13
    invoke-virtual {p0, p1}, Lp4/a;->w(Ln3/b2;)V

    :cond_4
    :goto_1
    return-void
.end method
