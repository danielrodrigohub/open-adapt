.class public final Lf4/f;
.super Ln3/f;
.source "MetadataRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public A:J

.field public B:J

.field public C:Lf4/a;

.field public final t:Lf4/c;

.field public final u:Lf4/e;

.field public final v:Landroid/os/Handler;

.field public final w:Lf4/d;

.field public x:Lf4/b;

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lf4/e;Landroid/os/Looper;)V
    .locals 2

    .line 1
    sget-object v0, Lf4/c;->a:Lf4/c$a;

    const/4 v1, 0x5

    .line 2
    invoke-direct {p0, v1}, Ln3/f;-><init>(I)V

    .line 3
    iput-object p1, p0, Lf4/f;->u:Lf4/e;

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
    iput-object p1, p0, Lf4/f;->v:Landroid/os/Handler;

    .line 7
    iput-object v0, p0, Lf4/f;->t:Lf4/c;

    .line 8
    new-instance p1, Lf4/d;

    invoke-direct {p1}, Lf4/d;-><init>()V

    iput-object p1, p0, Lf4/f;->w:Lf4/d;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lf4/f;->B:J

    return-void
.end method


# virtual methods
.method public final B()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lf4/f;->C:Lf4/a;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v1, p0, Lf4/f;->B:J

    .line 3
    iput-object v0, p0, Lf4/f;->x:Lf4/b;

    return-void
.end method

.method public final D(JZ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lf4/f;->C:Lf4/a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide p1, p0, Lf4/f;->B:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lf4/f;->y:Z

    .line 4
    iput-boolean p1, p0, Lf4/f;->z:Z

    return-void
.end method

.method public final H([Ln3/s0;JJ)V
    .locals 0

    iget-object p2, p0, Lf4/f;->t:Lf4/c;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-interface {p2, p1}, Lf4/c;->b(Ln3/s0;)Lf4/b;

    move-result-object p1

    iput-object p1, p0, Lf4/f;->x:Lf4/b;

    return-void
.end method

.method public final J(Lf4/a;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf4/a;",
            "Ljava/util/List<",
            "Lf4/a$b;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Lf4/a;->h:[Lf4/a$b;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lf4/a$b;->s()Ln3/s0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lf4/f;->t:Lf4/c;

    invoke-interface {v2, v1}, Lf4/c;->a(Ln3/s0;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lf4/f;->t:Lf4/c;

    .line 6
    invoke-interface {v2, v1}, Lf4/c;->b(Ln3/s0;)Lf4/b;

    move-result-object v1

    .line 7
    iget-object v2, p1, Lf4/a;->h:[Lf4/a$b;

    aget-object v2, v2, v0

    .line 8
    invoke-interface {v2}, Lf4/a$b;->z()[B

    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v3, p0, Lf4/f;->w:Lf4/d;

    invoke-virtual {v3}, Lq3/g;->o()V

    .line 11
    iget-object v3, p0, Lf4/f;->w:Lf4/d;

    array-length v4, v2

    invoke-virtual {v3, v4}, Lq3/g;->q(I)V

    .line 12
    iget-object v3, p0, Lf4/f;->w:Lf4/d;

    iget-object v3, v3, Lq3/g;->j:Ljava/nio/ByteBuffer;

    sget v4, Lm5/g0;->a:I

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 13
    iget-object v2, p0, Lf4/f;->w:Lf4/d;

    invoke-virtual {v2}, Lq3/g;->s()V

    .line 14
    iget-object v2, p0, Lf4/f;->w:Lf4/d;

    invoke-interface {v1, v2}, Lf4/b;->c(Lf4/d;)Lf4/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0, v1, p2}, Lf4/f;->J(Lf4/a;Ljava/util/List;)V

    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p1, Lf4/a;->h:[Lf4/a$b;

    aget-object v1, v1, v0

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Ln3/s0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lf4/f;->t:Lf4/c;

    invoke-interface {v0, p1}, Lf4/c;->a(Ln3/s0;)Z

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

    :cond_1
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ln3/t1;->c(I)I

    move-result p1

    return p1
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lf4/f;->z:Z

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MetadataRenderer"

    return-object v0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf4/a;

    .line 3
    iget-object v0, p0, Lf4/f;->u:Lf4/e;

    invoke-interface {v0, p1}, Lf4/e;->C(Lf4/a;)V

    const/4 p1, 0x1

    return p1

    .line 4
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
    .locals 3

    const/4 p3, 0x1

    move p4, p3

    :cond_0
    :goto_0
    if-eqz p4, :cond_6

    .line 1
    iget-boolean p4, p0, Lf4/f;->y:Z

    const/4 v0, 0x0

    if-nez p4, :cond_3

    iget-object p4, p0, Lf4/f;->C:Lf4/a;

    if-nez p4, :cond_3

    .line 2
    iget-object p4, p0, Lf4/f;->w:Lf4/d;

    invoke-virtual {p4}, Lq3/g;->o()V

    .line 3
    invoke-virtual {p0}, Ln3/f;->A()Ly0/r;

    move-result-object p4

    .line 4
    iget-object v1, p0, Lf4/f;->w:Lf4/d;

    invoke-virtual {p0, p4, v1, v0}, Ln3/f;->I(Ly0/r;Lq3/g;I)I

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_2

    .line 5
    iget-object p4, p0, Lf4/f;->w:Lf4/d;

    const/4 v1, 0x4

    .line 6
    invoke-virtual {p4, v1}, Lq3/a;->l(I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 7
    iput-boolean p3, p0, Lf4/f;->y:Z

    goto :goto_1

    .line 8
    :cond_1
    iget-object p4, p0, Lf4/f;->w:Lf4/d;

    iget-wide v1, p0, Lf4/f;->A:J

    iput-wide v1, p4, Lf4/d;->p:J

    .line 9
    invoke-virtual {p4}, Lq3/g;->s()V

    .line 10
    iget-object p4, p0, Lf4/f;->x:Lf4/b;

    sget v1, Lm5/g0;->a:I

    iget-object v1, p0, Lf4/f;->w:Lf4/d;

    invoke-interface {p4, v1}, Lf4/b;->c(Lf4/d;)Lf4/a;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    iget-object v2, p4, Lf4/a;->h:[Lf4/a$b;

    array-length v2, v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-virtual {p0, p4, v1}, Lf4/f;->J(Lf4/a;Ljava/util/List;)V

    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_3

    .line 16
    new-instance p4, Lf4/a;

    invoke-direct {p4, v1}, Lf4/a;-><init>(Ljava/util/List;)V

    .line 17
    iput-object p4, p0, Lf4/f;->C:Lf4/a;

    .line 18
    iget-object p4, p0, Lf4/f;->w:Lf4/d;

    iget-wide v1, p4, Lq3/g;->l:J

    iput-wide v1, p0, Lf4/f;->B:J

    goto :goto_1

    :cond_2
    const/4 v2, -0x5

    if-ne v1, v2, :cond_3

    .line 19
    iget-object p4, p4, Ly0/r;->c:Ljava/lang/Object;

    check-cast p4, Ln3/s0;

    .line 20
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-wide v1, p4, Ln3/s0;->w:J

    iput-wide v1, p0, Lf4/f;->A:J

    .line 22
    :cond_3
    :goto_1
    iget-object p4, p0, Lf4/f;->C:Lf4/a;

    if-eqz p4, :cond_5

    iget-wide v1, p0, Lf4/f;->B:J

    cmp-long v1, v1, p1

    if-gtz v1, :cond_5

    .line 23
    iget-object v1, p0, Lf4/f;->v:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {v1, v0, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 25
    :cond_4
    iget-object v0, p0, Lf4/f;->u:Lf4/e;

    invoke-interface {v0, p4}, Lf4/e;->C(Lf4/a;)V

    :goto_2
    const/4 p4, 0x0

    .line 26
    iput-object p4, p0, Lf4/f;->C:Lf4/a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    iput-wide v0, p0, Lf4/f;->B:J

    move p4, p3

    goto :goto_3

    :cond_5
    move p4, v0

    .line 28
    :goto_3
    iget-boolean v0, p0, Lf4/f;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf4/f;->C:Lf4/a;

    if-nez v0, :cond_0

    .line 29
    iput-boolean p3, p0, Lf4/f;->z:Z

    goto/16 :goto_0

    :cond_6
    return-void
.end method
