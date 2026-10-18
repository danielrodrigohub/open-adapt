.class public final Lz4/o;
.super Ln3/f;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public A:I

.field public B:Ln3/s0;

.field public C:Lz4/h;

.field public D:Lz4/l;

.field public E:Lz4/m;

.field public F:Lz4/m;

.field public G:I

.field public H:J

.field public final t:Landroid/os/Handler;

.field public final u:Lz4/n;

.field public final v:Lz4/j;

.field public final w:Ly0/r;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lz4/n;Landroid/os/Looper;)V
    .locals 2

    .line 1
    sget-object v0, Lz4/j;->a:Lz4/j$a;

    const/4 v1, 0x3

    .line 2
    invoke-direct {p0, v1}, Ln3/f;-><init>(I)V

    .line 3
    iput-object p1, p0, Lz4/o;->u:Lz4/n;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lm5/g0;->a:I

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 6
    :goto_0
    iput-object p1, p0, Lz4/o;->t:Landroid/os/Handler;

    .line 7
    iput-object v0, p0, Lz4/o;->v:Lz4/j;

    .line 8
    new-instance p1, Ly0/r;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ly0/r;-><init>(I)V

    iput-object p1, p0, Lz4/o;->w:Ly0/r;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lz4/o;->H:J

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lz4/o;->B:Ln3/s0;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Lz4/o;->H:J

    .line 3
    invoke-virtual {p0}, Lz4/o;->J()V

    .line 4
    invoke-virtual {p0}, Lz4/o;->M()V

    .line 5
    iget-object v1, p0, Lz4/o;->C:Lz4/h;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {v1}, Lq3/d;->a()V

    .line 8
    iput-object v0, p0, Lz4/o;->C:Lz4/h;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lz4/o;->A:I

    return-void
.end method

.method public final D(JZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lz4/o;->J()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lz4/o;->x:Z

    .line 3
    iput-boolean p1, p0, Lz4/o;->y:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Lz4/o;->H:J

    .line 5
    iget p1, p0, Lz4/o;->A:I

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lz4/o;->N()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lz4/o;->M()V

    .line 8
    iget-object p1, p0, Lz4/o;->C:Lz4/h;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {p1}, Lq3/d;->flush()V

    :goto_0
    return-void
.end method

.method public final H([Ln3/s0;JJ)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    aget-object p1, p1, p2

    iput-object p1, p0, Lz4/o;->B:Ln3/s0;

    .line 2
    iget-object p2, p0, Lz4/o;->C:Lz4/h;

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 3
    iput p3, p0, Lz4/o;->A:I

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean p3, p0, Lz4/o;->z:Z

    .line 5
    iget-object p2, p0, Lz4/o;->v:Lz4/j;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    check-cast p2, Lz4/j$a;

    invoke-virtual {p2, p1}, Lz4/j$a;->a(Ln3/s0;)Lz4/h;

    move-result-object p1

    iput-object p1, p0, Lz4/o;->C:Lz4/h;

    :goto_0
    return-void
.end method

.method public final J()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lz4/o;->O(Ljava/util/List;)V

    return-void
.end method

.method public final K()J
    .locals 4

    .line 1
    iget v0, p0, Lz4/o;->G:I

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-wide v1

    .line 2
    :cond_0
    iget-object v0, p0, Lz4/o;->E:Lz4/m;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v0, p0, Lz4/o;->G:I

    iget-object v3, p0, Lz4/o;->E:Lz4/m;

    invoke-virtual {v3}, Lz4/m;->j()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lz4/o;->E:Lz4/m;

    iget v1, p0, Lz4/o;->G:I

    invoke-virtual {v0, v1}, Lz4/m;->g(I)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public final L(Lz4/i;)V
    .locals 2

    const-string v0, "Subtitle decoding failed. streamFormat="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lz4/o;->B:Ln3/s0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0}, Lz4/o;->J()V

    .line 4
    invoke-virtual {p0}, Lz4/o;->N()V

    return-void
.end method

.method public final M()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lz4/o;->D:Lz4/l;

    const/4 v1, -0x1

    .line 2
    iput v1, p0, Lz4/o;->G:I

    .line 3
    iget-object v1, p0, Lz4/o;->E:Lz4/m;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lq3/h;->o()V

    .line 5
    iput-object v0, p0, Lz4/o;->E:Lz4/m;

    .line 6
    :cond_0
    iget-object v1, p0, Lz4/o;->F:Lz4/m;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lq3/h;->o()V

    .line 8
    iput-object v0, p0, Lz4/o;->F:Lz4/m;

    :cond_1
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lz4/o;->M()V

    .line 2
    iget-object v0, p0, Lz4/o;->C:Lz4/h;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lq3/d;->a()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lz4/o;->C:Lz4/h;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lz4/o;->A:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lz4/o;->z:Z

    .line 8
    iget-object v0, p0, Lz4/o;->v:Lz4/j;

    iget-object v1, p0, Lz4/o;->B:Ln3/s0;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    check-cast v0, Lz4/j$a;

    invoke-virtual {v0, v1}, Lz4/j$a;->a(Ln3/s0;)Lz4/h;

    move-result-object v0

    iput-object v0, p0, Lz4/o;->C:Lz4/h;

    return-void
.end method

.method public final O(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz4/o;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lz4/o;->u:Lz4/n;

    invoke-interface {v0, p1}, Lz4/n;->n(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lz4/o;->u:Lz4/n;

    new-instance v1, Lz4/c;

    invoke-direct {v1, p1}, Lz4/c;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lz4/n;->o(Lz4/c;)V

    :goto_0
    return-void
.end method

.method public final a(Ln3/s0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lz4/o;->v:Lz4/j;

    check-cast v0, Lz4/j$a;

    invoke-virtual {v0, p1}, Lz4/j$a;->b(Ln3/s0;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget p1, p1, Ln3/s0;->L:I

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 3
    :goto_0
    invoke-static {p1}, Ln3/t1;->c(I)I

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object p1, p1, Ln3/s0;->s:Ljava/lang/String;

    invoke-static {p1}, Lm5/s;->m(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 5
    invoke-static {p1}, Ln3/t1;->c(I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Ln3/t1;->c(I)I

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lz4/o;->y:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 3
    iget-object v0, p0, Lz4/o;->u:Lz4/n;

    invoke-interface {v0, p1}, Lz4/n;->n(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lz4/o;->u:Lz4/n;

    new-instance v1, Lz4/c;

    invoke-direct {v1, p1}, Lz4/c;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lz4/n;->o(Lz4/c;)V

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final k(JJ)V
    .locals 9

    .line 1
    iget-boolean p3, p0, Ln3/f;->r:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    .line 2
    iget-wide v0, p0, Lz4/o;->H:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    .line 3
    invoke-virtual {p0}, Lz4/o;->M()V

    .line 4
    iput-boolean p4, p0, Lz4/o;->y:Z

    .line 5
    :cond_0
    iget-boolean p3, p0, Lz4/o;->y:Z

    if-eqz p3, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p3, p0, Lz4/o;->F:Lz4/m;

    if-nez p3, :cond_2

    .line 7
    iget-object p3, p0, Lz4/o;->C:Lz4/h;

    .line 8
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {p3, p1, p2}, Lz4/h;->b(J)V

    .line 10
    :try_start_0
    iget-object p3, p0, Lz4/o;->C:Lz4/h;

    .line 11
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {p3}, Lq3/d;->d()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lz4/m;

    iput-object p3, p0, Lz4/o;->F:Lz4/m;
    :try_end_0
    .catch Lz4/i; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p0, p1}, Lz4/o;->L(Lz4/i;)V

    return-void

    .line 14
    :cond_2
    :goto_0
    iget p3, p0, Ln3/f;->m:I

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    return-void

    .line 15
    :cond_3
    iget-object p3, p0, Lz4/o;->E:Lz4/m;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 16
    invoke-virtual {p0}, Lz4/o;->K()J

    move-result-wide v2

    move p3, v1

    :goto_1
    cmp-long v2, v2, p1

    if-gtz v2, :cond_5

    .line 17
    iget p3, p0, Lz4/o;->G:I

    add-int/2addr p3, p4

    iput p3, p0, Lz4/o;->G:I

    .line 18
    invoke-virtual {p0}, Lz4/o;->K()J

    move-result-wide v2

    move p3, p4

    goto :goto_1

    :cond_4
    move p3, v1

    .line 19
    :cond_5
    iget-object v2, p0, Lz4/o;->F:Lz4/m;

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eqz v2, :cond_9

    .line 20
    invoke-virtual {v2, v4}, Lq3/a;->l(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez p3, :cond_9

    .line 21
    invoke-virtual {p0}, Lz4/o;->K()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v2, v5, v7

    if-nez v2, :cond_9

    .line 22
    iget v2, p0, Lz4/o;->A:I

    if-ne v2, v0, :cond_6

    .line 23
    invoke-virtual {p0}, Lz4/o;->N()V

    goto :goto_2

    .line 24
    :cond_6
    invoke-virtual {p0}, Lz4/o;->M()V

    .line 25
    iput-boolean p4, p0, Lz4/o;->y:Z

    goto :goto_2

    .line 26
    :cond_7
    iget-wide v5, v2, Lq3/h;->i:J

    cmp-long v5, v5, p1

    if-gtz v5, :cond_9

    .line 27
    iget-object p3, p0, Lz4/o;->E:Lz4/m;

    if-eqz p3, :cond_8

    .line 28
    invoke-virtual {p3}, Lq3/h;->o()V

    .line 29
    :cond_8
    iget-object p3, v2, Lz4/m;->j:Lz4/g;

    .line 30
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-wide v5, v2, Lz4/m;->k:J

    sub-long v5, p1, v5

    invoke-interface {p3, v5, v6}, Lz4/g;->b(J)I

    move-result p3

    .line 32
    iput p3, p0, Lz4/o;->G:I

    .line 33
    iput-object v2, p0, Lz4/o;->E:Lz4/m;

    .line 34
    iput-object v3, p0, Lz4/o;->F:Lz4/m;

    move p3, p4

    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    .line 35
    iget-object p3, p0, Lz4/o;->E:Lz4/m;

    .line 36
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p3, p0, Lz4/o;->E:Lz4/m;

    invoke-virtual {p3, p1, p2}, Lz4/m;->i(J)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lz4/o;->O(Ljava/util/List;)V

    .line 38
    :cond_a
    iget p1, p0, Lz4/o;->A:I

    if-ne p1, v0, :cond_b

    return-void

    .line 39
    :cond_b
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lz4/o;->x:Z

    if-nez p1, :cond_13

    .line 40
    iget-object p1, p0, Lz4/o;->D:Lz4/l;

    if-nez p1, :cond_d

    .line 41
    iget-object p1, p0, Lz4/o;->C:Lz4/h;

    .line 42
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-interface {p1}, Lq3/d;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz4/l;

    if-nez p1, :cond_c

    return-void

    .line 44
    :cond_c
    iput-object p1, p0, Lz4/o;->D:Lz4/l;

    .line 45
    :cond_d
    iget p2, p0, Lz4/o;->A:I

    if-ne p2, p4, :cond_e

    .line 46
    iput v4, p1, Lq3/a;->h:I

    .line 47
    iget-object p2, p0, Lz4/o;->C:Lz4/h;

    .line 48
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-interface {p2, p1}, Lq3/d;->c(Ljava/lang/Object;)V

    .line 50
    iput-object v3, p0, Lz4/o;->D:Lz4/l;

    .line 51
    iput v0, p0, Lz4/o;->A:I

    return-void

    .line 52
    :cond_e
    iget-object p2, p0, Lz4/o;->w:Ly0/r;

    invoke-virtual {p0, p2, p1, v1}, Ln3/f;->I(Ly0/r;Lq3/g;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_12

    .line 53
    invoke-virtual {p1, v4}, Lq3/a;->l(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 54
    iput-boolean p4, p0, Lz4/o;->x:Z

    .line 55
    iput-boolean v1, p0, Lz4/o;->z:Z

    goto :goto_5

    .line 56
    :cond_f
    iget-object p2, p0, Lz4/o;->w:Ly0/r;

    iget-object p2, p2, Ly0/r;->c:Ljava/lang/Object;

    check-cast p2, Ln3/s0;

    if-nez p2, :cond_10

    return-void

    .line 57
    :cond_10
    iget-wide p2, p2, Ln3/s0;->w:J

    iput-wide p2, p1, Lz4/l;->p:J

    .line 58
    invoke-virtual {p1}, Lq3/g;->s()V

    .line 59
    iget-boolean p2, p0, Lz4/o;->z:Z

    .line 60
    invoke-virtual {p1, p4}, Lq3/a;->l(I)Z

    move-result p3

    if-nez p3, :cond_11

    move p3, p4

    goto :goto_4

    :cond_11
    move p3, v1

    :goto_4
    and-int/2addr p2, p3

    .line 61
    iput-boolean p2, p0, Lz4/o;->z:Z

    .line 62
    :goto_5
    iget-boolean p2, p0, Lz4/o;->z:Z

    if-nez p2, :cond_b

    .line 63
    iget-object p2, p0, Lz4/o;->C:Lz4/h;

    .line 64
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-interface {p2, p1}, Lq3/d;->c(Ljava/lang/Object;)V

    .line 66
    iput-object v3, p0, Lz4/o;->D:Lz4/l;
    :try_end_1
    .catch Lz4/i; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_12
    const/4 p1, -0x3

    if-ne p2, p1, :cond_b

    return-void

    :catch_1
    move-exception p1

    .line 67
    invoke-virtual {p0, p1}, Lz4/o;->L(Lz4/i;)V

    :cond_13
    return-void
.end method
