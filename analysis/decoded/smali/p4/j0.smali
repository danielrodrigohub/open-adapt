.class public final Lp4/j0;
.super Lp4/a;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lp4/i0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/j0$b;
    }
.end annotation


# instance fields
.field public final o:Ln3/y0;

.field public final p:Ln3/y0$h;

.field public final q:Ll5/j$a;

.field public final r:Lp4/h0$a;

.field public final s:Lr3/l;

.field public final t:Ll5/c0;

.field public final u:I

.field public v:Z

.field public w:J

.field public x:Z

.field public y:Z

.field public z:Ll5/j0;


# direct methods
.method public constructor <init>(Ln3/y0;Ll5/j$a;Lp4/h0$a;Lr3/l;Ll5/c0;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp4/a;-><init>()V

    .line 2
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lp4/j0;->p:Ln3/y0$h;

    .line 5
    iput-object p1, p0, Lp4/j0;->o:Ln3/y0;

    .line 6
    iput-object p2, p0, Lp4/j0;->q:Ll5/j$a;

    .line 7
    iput-object p3, p0, Lp4/j0;->r:Lp4/h0$a;

    .line 8
    iput-object p4, p0, Lp4/j0;->s:Lr3/l;

    .line 9
    iput-object p5, p0, Lp4/j0;->t:Ll5/c0;

    .line 10
    iput p6, p0, Lp4/j0;->u:I

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lp4/j0;->v:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 12
    iput-wide p1, p0, Lp4/j0;->w:J

    return-void
.end method


# virtual methods
.method public final a()Ln3/y0;
    .locals 1

    iget-object v0, p0, Lp4/j0;->o:Ln3/y0;

    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d(Lp4/v;)V
    .locals 4

    .line 1
    check-cast p1, Lp4/i0;

    .line 2
    iget-boolean v0, p1, Lp4/i0;->C:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lp4/i0;->z:[Lp4/l0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Lp4/l0;->z()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p1, Lp4/i0;->r:Ll5/d0;

    invoke-virtual {v0, p1}, Ll5/d0;->f(Ll5/d0$e;)V

    .line 6
    iget-object v0, p1, Lp4/i0;->w:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    iput-object v1, p1, Lp4/i0;->x:Lp4/v$a;

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Lp4/i0;->S:Z

    return-void
.end method

.method public final q(Lp4/x$b;Ll5/b;J)Lp4/v;
    .locals 14

    move-object v12, p0

    .line 1
    iget-object v0, v12, Lp4/j0;->q:Ll5/j$a;

    invoke-interface {v0}, Ll5/j$a;->a()Ll5/j;

    move-result-object v2

    .line 2
    iget-object v0, v12, Lp4/j0;->z:Ll5/j0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v2, v0}, Ll5/j;->j(Ll5/j0;)V

    .line 4
    :cond_0
    new-instance v13, Lp4/i0;

    iget-object v0, v12, Lp4/j0;->p:Ln3/y0$h;

    iget-object v1, v0, Ln3/y0$g;->a:Landroid/net/Uri;

    iget-object v0, v12, Lp4/j0;->r:Lp4/h0$a;

    .line 5
    iget-object v3, v12, Lp4/a;->n:Lo3/v0;

    invoke-static {v3}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    check-cast v0, Ln3/z;

    iget-object v0, v0, Ln3/z;->c:Ljava/lang/Object;

    check-cast v0, Ls3/l;

    .line 7
    new-instance v3, Lp4/c;

    invoke-direct {v3, v0}, Lp4/c;-><init>(Ls3/l;)V

    .line 8
    iget-object v4, v12, Lp4/j0;->s:Lr3/l;

    .line 9
    invoke-virtual {p0, p1}, Lp4/a;->r(Lp4/x$b;)Lr3/k$a;

    move-result-object v5

    iget-object v6, v12, Lp4/j0;->t:Ll5/c0;

    .line 10
    invoke-virtual {p0, p1}, Lp4/a;->s(Lp4/x$b;)Lp4/e0$a;

    move-result-object v7

    iget-object v0, v12, Lp4/j0;->p:Ln3/y0$h;

    iget-object v10, v0, Ln3/y0$g;->e:Ljava/lang/String;

    iget v11, v12, Lp4/j0;->u:I

    move-object v0, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lp4/i0;-><init>(Landroid/net/Uri;Ll5/j;Lp4/h0;Lr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;Lp4/i0$b;Ll5/b;Ljava/lang/String;I)V

    return-object v13
.end method

.method public final v(Ll5/j0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lp4/j0;->z:Ll5/j0;

    .line 2
    iget-object p1, p0, Lp4/j0;->s:Lr3/l;

    invoke-interface {p1}, Lr3/l;->b()V

    .line 3
    iget-object p1, p0, Lp4/j0;->s:Lr3/l;

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lp4/a;->n:Lo3/v0;

    invoke-static {v1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1, v0, v1}, Lr3/l;->f(Landroid/os/Looper;Lo3/v0;)V

    .line 8
    invoke-virtual {p0}, Lp4/j0;->y()V

    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lp4/j0;->s:Lr3/l;

    invoke-interface {v0}, Lr3/l;->a()V

    return-void
.end method

.method public final y()V
    .locals 7

    .line 1
    new-instance v6, Lp4/p0;

    iget-wide v1, p0, Lp4/j0;->w:J

    iget-boolean v3, p0, Lp4/j0;->x:Z

    iget-boolean v4, p0, Lp4/j0;->y:Z

    iget-object v5, p0, Lp4/j0;->o:Ln3/y0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lp4/p0;-><init>(JZZLn3/y0;)V

    .line 2
    iget-boolean v0, p0, Lp4/j0;->v:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lp4/j0$a;

    invoke-direct {v0, v6}, Lp4/j0$a;-><init>(Ln3/b2;)V

    move-object v6, v0

    .line 4
    :cond_0
    invoke-virtual {p0, v6}, Lp4/a;->w(Ln3/b2;)V

    return-void
.end method

.method public final z(JZZ)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    iget-wide p1, p0, Lp4/j0;->w:J

    .line 2
    :cond_0
    iget-boolean v0, p0, Lp4/j0;->v:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lp4/j0;->w:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lp4/j0;->x:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lp4/j0;->y:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 3
    :cond_1
    iput-wide p1, p0, Lp4/j0;->w:J

    .line 4
    iput-boolean p3, p0, Lp4/j0;->x:Z

    .line 5
    iput-boolean p4, p0, Lp4/j0;->y:Z

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lp4/j0;->v:Z

    .line 7
    invoke-virtual {p0}, Lp4/j0;->y()V

    return-void
.end method
