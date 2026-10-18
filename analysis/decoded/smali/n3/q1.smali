.class public final Ln3/q1;
.super Ln3/a;
.source "PlaylistTimeline.java"


# instance fields
.field public final m:I

.field public final n:I

.field public final o:[I

.field public final p:[I

.field public final q:[Ln3/b2;

.field public final r:[Ljava/lang/Object;

.field public final s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lp4/o0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ln3/f1;",
            ">;",
            "Lp4/o0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Ln3/a;-><init>(Lp4/o0;)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 3
    new-array v0, p2, [I

    iput-object v0, p0, Ln3/q1;->o:[I

    .line 4
    new-array v0, p2, [I

    iput-object v0, p0, Ln3/q1;->p:[I

    .line 5
    new-array v0, p2, [Ln3/b2;

    iput-object v0, p0, Ln3/q1;->q:[Ln3/b2;

    .line 6
    new-array p2, p2, [Ljava/lang/Object;

    iput-object p2, p0, Ln3/q1;->r:[Ljava/lang/Object;

    .line 7
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Ln3/q1;->s:Ljava/util/HashMap;

    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/f1;

    .line 9
    iget-object v3, p0, Ln3/q1;->q:[Ln3/b2;

    invoke-interface {v2}, Ln3/f1;->b()Ln3/b2;

    move-result-object v4

    aput-object v4, v3, v1

    .line 10
    iget-object v3, p0, Ln3/q1;->p:[I

    aput p2, v3, v1

    .line 11
    iget-object v3, p0, Ln3/q1;->o:[I

    aput v0, v3, v1

    .line 12
    iget-object v3, p0, Ln3/q1;->q:[Ln3/b2;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ln3/b2;->r()I

    move-result v3

    add-int/2addr p2, v3

    .line 13
    iget-object v3, p0, Ln3/q1;->q:[Ln3/b2;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ln3/b2;->k()I

    move-result v3

    add-int/2addr v0, v3

    .line 14
    iget-object v3, p0, Ln3/q1;->r:[Ljava/lang/Object;

    invoke-interface {v2}, Ln3/f1;->a()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v1

    .line 15
    iget-object v2, p0, Ln3/q1;->s:Ljava/util/HashMap;

    iget-object v3, p0, Ln3/q1;->r:[Ljava/lang/Object;

    aget-object v3, v3, v1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    goto :goto_0

    .line 16
    :cond_0
    iput p2, p0, Ln3/q1;->m:I

    .line 17
    iput v0, p0, Ln3/q1;->n:I

    return-void
.end method


# virtual methods
.method public final k()I
    .locals 1

    iget v0, p0, Ln3/q1;->n:I

    return v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Ln3/q1;->m:I

    return v0
.end method

.method public final u(I)I
    .locals 2

    iget-object v0, p0, Ln3/q1;->p:[I

    add-int/lit8 p1, p1, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lm5/g0;->e([IIZZ)I

    move-result p1

    return p1
.end method
