.class public final Lp4/t;
.super Lp4/g;
.source "MaskingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/t$b;,
        Lp4/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp4/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lp4/x;

.field public final s:Z

.field public final t:Ln3/b2$d;

.field public final u:Ln3/b2$b;

.field public v:Lp4/t$a;

.field public w:Lp4/s;

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Lp4/x;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp4/g;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/t;->r:Lp4/x;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lp4/x;->e()V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lp4/t;->s:Z

    .line 4
    new-instance p2, Ln3/b2$d;

    invoke-direct {p2}, Ln3/b2$d;-><init>()V

    iput-object p2, p0, Lp4/t;->t:Ln3/b2$d;

    .line 5
    new-instance p2, Ln3/b2$b;

    invoke-direct {p2}, Ln3/b2$b;-><init>()V

    iput-object p2, p0, Lp4/t;->u:Ln3/b2$b;

    .line 6
    invoke-interface {p1}, Lp4/x;->i()V

    .line 7
    invoke-interface {p1}, Lp4/x;->a()Ln3/y0;

    move-result-object p1

    .line 8
    new-instance p2, Lp4/t$a;

    new-instance v0, Lp4/t$b;

    invoke-direct {v0, p1}, Lp4/t$b;-><init>(Ln3/y0;)V

    sget-object p1, Ln3/b2$d;->y:Ljava/lang/Object;

    sget-object v1, Lp4/t$a;->l:Ljava/lang/Object;

    invoke-direct {p2, v0, p1, v1}, Lp4/t$a;-><init>(Ln3/b2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iput-object p2, p0, Lp4/t;->v:Lp4/t$a;

    return-void
.end method


# virtual methods
.method public final B(Lp4/x$b;Ll5/b;J)Lp4/s;
    .locals 1

    .line 1
    new-instance v0, Lp4/s;

    invoke-direct {v0, p1, p2, p3, p4}, Lp4/s;-><init>(Lp4/x$b;Ll5/b;J)V

    .line 2
    iget-object p2, p0, Lp4/t;->r:Lp4/x;

    invoke-virtual {v0, p2}, Lp4/s;->k(Lp4/x;)V

    .line 3
    iget-boolean p2, p0, Lp4/t;->y:Z

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p1, Lp4/w;->a:Ljava/lang/Object;

    .line 5
    iget-object p3, p0, Lp4/t;->v:Lp4/t$a;

    .line 6
    iget-object p3, p3, Lp4/t$a;->k:Ljava/lang/Object;

    if-eqz p3, :cond_0

    .line 7
    sget-object p3, Lp4/t$a;->l:Ljava/lang/Object;

    .line 8
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 9
    iget-object p2, p0, Lp4/t;->v:Lp4/t$a;

    .line 10
    iget-object p2, p2, Lp4/t$a;->k:Ljava/lang/Object;

    .line 11
    :cond_0
    invoke-virtual {p1, p2}, Lp4/x$b;->b(Ljava/lang/Object;)Lp4/x$b;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lp4/s;->b(Lp4/x$b;)V

    goto :goto_0

    .line 13
    :cond_1
    iput-object v0, p0, Lp4/t;->w:Lp4/s;

    .line 14
    iget-boolean p1, p0, Lp4/t;->x:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lp4/t;->x:Z

    const/4 p1, 0x0

    .line 16
    iget-object p2, p0, Lp4/t;->r:Lp4/x;

    invoke-virtual {p0, p1, p2}, Lp4/g;->A(Ljava/lang/Object;Lp4/x;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public final C(J)V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "unpreparedMaskingMediaPeriod"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/t;->w:Lp4/s;

    .line 2
    iget-object v1, p0, Lp4/t;->v:Lp4/t$a;

    iget-object v2, v0, Lp4/s;->h:Lp4/x$b;

    iget-object v2, v2, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lp4/t$a;->d(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v2, p0, Lp4/t;->v:Lp4/t$a;

    iget-object v3, p0, Lp4/t;->u:Ln3/b2$b;

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v2, v1, v3, v4}, Lp4/t$a;->i(ILn3/b2$b;Z)Ln3/b2$b;

    .line 5
    iget-wide v1, v3, Ln3/b2$b;->k:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    const-wide/16 p1, 0x0

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    .line 6
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 7
    :cond_1
    iput-wide p1, v0, Lp4/s;->p:J

    return-void
.end method

.method public final a()Ln3/y0;
    .locals 1

    iget-object v0, p0, Lp4/t;->r:Lp4/x;

    invoke-interface {v0}, Lp4/x;->a()Ln3/y0;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d(Lp4/v;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lp4/s;

    invoke-virtual {v0}, Lp4/s;->h()V

    .line 2
    iget-object v0, p0, Lp4/t;->w:Lp4/s;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lp4/t;->w:Lp4/s;

    :cond_0
    return-void
.end method

.method public final bridge synthetic q(Lp4/x$b;Ll5/b;J)Lp4/v;
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lp4/t;->B(Lp4/x$b;Ll5/b;J)Lp4/s;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ll5/j0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lp4/g;->v(Ll5/j0;)V

    .line 2
    iget-boolean p1, p0, Lp4/t;->s:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lp4/t;->x:Z

    const/4 p1, 0x0

    .line 4
    iget-object v0, p0, Lp4/t;->r:Lp4/x;

    invoke-virtual {p0, p1, v0}, Lp4/g;->A(Ljava/lang/Object;Lp4/x;)V

    :cond_0
    return-void
.end method

.method public final x()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lp4/t;->y:Z

    .line 2
    iput-boolean v0, p0, Lp4/t;->x:Z

    .line 3
    invoke-super {p0}, Lp4/g;->x()V

    return-void
.end method

.method public final y(Ljava/lang/Object;Lp4/x$b;)Lp4/x$b;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p2, Lp4/w;->a:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp4/t;->v:Lp4/t$a;

    .line 4
    iget-object v0, v0, Lp4/t$a;->k:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object p1, Lp4/t$a;->l:Ljava/lang/Object;

    .line 7
    :cond_0
    invoke-virtual {p2, p1}, Lp4/x$b;->b(Ljava/lang/Object;)Lp4/x$b;

    move-result-object p1

    return-object p1
.end method

.method public final z(Ljava/lang/Object;Lp4/x;Ln3/b2;)V
    .locals 9

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/lang/Void;

    .line 2
    iget-boolean v0, p0, Lp4/t;->y:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lp4/t;->v:Lp4/t$a;

    invoke-virtual {v0, p3}, Lp4/t$a;->u(Ln3/b2;)Lp4/t$a;

    move-result-object v0

    iput-object v0, p0, Lp4/t;->v:Lp4/t$a;

    .line 4
    iget-object v0, p0, Lp4/t;->w:Lp4/s;

    if-eqz v0, :cond_6

    .line 5
    iget-wide v0, v0, Lp4/s;->p:J

    .line 6
    invoke-virtual {p0, v0, v1}, Lp4/t;->C(J)V

    goto/16 :goto_3

    .line 7
    :cond_0
    invoke-virtual {p3}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-boolean v0, p0, Lp4/t;->z:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lp4/t;->v:Lp4/t$a;

    invoke-virtual {v0, p3}, Lp4/t$a;->u(Ln3/b2;)Lp4/t$a;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_1
    sget-object v0, Ln3/b2$d;->y:Ljava/lang/Object;

    sget-object v1, Lp4/t$a;->l:Ljava/lang/Object;

    .line 11
    new-instance v2, Lp4/t$a;

    invoke-direct {v2, p3, v0, v1}, Lp4/t$a;-><init>(Ln3/b2;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 12
    :goto_0
    iput-object v0, p0, Lp4/t;->v:Lp4/t$a;

    goto/16 :goto_3

    .line 13
    :cond_2
    iget-object v0, p0, Lp4/t;->t:Ln3/b2$d;

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 14
    iget-object v0, p0, Lp4/t;->t:Ln3/b2$d;

    .line 15
    iget-wide v2, v0, Ln3/b2$d;->t:J

    .line 16
    iget-object v6, v0, Ln3/b2$d;->h:Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lp4/t;->w:Lp4/s;

    if-eqz v0, :cond_3

    .line 18
    iget-wide v4, v0, Lp4/s;->i:J

    .line 19
    iget-object v7, p0, Lp4/t;->v:Lp4/t$a;

    iget-object v0, v0, Lp4/s;->h:Lp4/x$b;

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    iget-object v8, p0, Lp4/t;->u:Ln3/b2$b;

    invoke-virtual {v7, v0, v8}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 20
    iget-object v0, p0, Lp4/t;->u:Ln3/b2$b;

    .line 21
    iget-wide v7, v0, Ln3/b2$b;->l:J

    add-long/2addr v7, v4

    .line 22
    iget-object v0, p0, Lp4/t;->v:Lp4/t$a;

    iget-object v4, p0, Lp4/t;->t:Ln3/b2$d;

    .line 23
    invoke-virtual {v0, v1, v4}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v0

    .line 24
    iget-wide v0, v0, Ln3/b2$d;->t:J

    cmp-long v0, v7, v0

    if-eqz v0, :cond_3

    move-wide v4, v7

    goto :goto_1

    :cond_3
    move-wide v4, v2

    .line 25
    :goto_1
    iget-object v1, p0, Lp4/t;->t:Ln3/b2$d;

    iget-object v2, p0, Lp4/t;->u:Ln3/b2$b;

    const/4 v3, 0x0

    move-object v0, p3

    .line 26
    invoke-virtual/range {v0 .. v5}, Ln3/b2;->l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 27
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 28
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 29
    iget-boolean v0, p0, Lp4/t;->z:Z

    if-eqz v0, :cond_4

    .line 30
    iget-object v0, p0, Lp4/t;->v:Lp4/t$a;

    invoke-virtual {v0, p3}, Lp4/t$a;->u(Ln3/b2;)Lp4/t$a;

    move-result-object v0

    goto :goto_2

    .line 31
    :cond_4
    new-instance v0, Lp4/t$a;

    invoke-direct {v0, p3, v6, v1}, Lp4/t$a;-><init>(Ln3/b2;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    :goto_2
    iput-object v0, p0, Lp4/t;->v:Lp4/t$a;

    .line 33
    iget-object v0, p0, Lp4/t;->w:Lp4/s;

    if-eqz v0, :cond_6

    .line 34
    invoke-virtual {p0, v2, v3}, Lp4/t;->C(J)V

    .line 35
    iget-object v0, v0, Lp4/s;->h:Lp4/x$b;

    iget-object v1, v0, Lp4/w;->a:Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lp4/t;->v:Lp4/t$a;

    .line 37
    iget-object v2, v2, Lp4/t$a;->k:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 38
    sget-object v2, Lp4/t$a;->l:Ljava/lang/Object;

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 40
    iget-object v1, p0, Lp4/t;->v:Lp4/t$a;

    .line 41
    iget-object v1, v1, Lp4/t$a;->k:Ljava/lang/Object;

    .line 42
    :cond_5
    invoke-virtual {v0, v1}, Lp4/x$b;->b(Ljava/lang/Object;)Lp4/x$b;

    move-result-object v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v0, 0x0

    :goto_4
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lp4/t;->z:Z

    .line 44
    iput-boolean v1, p0, Lp4/t;->y:Z

    .line 45
    iget-object v1, p0, Lp4/t;->v:Lp4/t$a;

    invoke-virtual {p0, v1}, Lp4/a;->w(Ln3/b2;)V

    if-eqz v0, :cond_7

    .line 46
    iget-object v1, p0, Lp4/t;->w:Lp4/s;

    .line 47
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v1, v0}, Lp4/s;->b(Lp4/x$b;)V

    :cond_7
    return-void
.end method
