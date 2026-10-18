.class public final Ln3/x1;
.super Ln3/e;
.source "SimpleExoPlayer.java"

# interfaces
.implements Ln3/r;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Ln3/k0;

.field public final c:Lm5/e;


# direct methods
.method public constructor <init>(Ln3/r$b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/e;-><init>()V

    .line 2
    new-instance v0, Lm5/e;

    invoke-direct {v0}, Lm5/e;-><init>()V

    iput-object v0, p0, Ln3/x1;->c:Lm5/e;

    .line 3
    :try_start_0
    new-instance v1, Ln3/k0;

    invoke-direct {v1, p1, p0}, Ln3/k0;-><init>(Ln3/r$b;Ln3/o1;)V

    iput-object v1, p0, Ln3/x1;->b:Ln3/k0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v0}, Lm5/e;->c()Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Ln3/x1;->c:Lm5/e;

    invoke-virtual {v0}, Lm5/e;->c()Z

    .line 5
    throw p1
.end method


# virtual methods
.method public final A()Ln5/t;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget-object v0, v0, Ln3/k0;->h0:Ln5/t;

    return-object v0
.end method

.method public final B()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->B()I

    move-result v0

    return v0
.end method

.method public final C()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->C()I

    move-result v0

    return v0
.end method

.method public final E(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->E(I)V

    return-void
.end method

.method public final G()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->G()I

    move-result v0

    return v0
.end method

.method public final H(Ln3/o1$c;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->H(Ln3/o1$c;)V

    return-void
.end method

.method public final I(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->I(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final J(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->J(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public final L()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->L()I

    move-result v0

    return v0
.end method

.method public final M()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget v0, v0, Ln3/k0;->F:I

    return v0
.end method

.method public final N()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public final O()Ln3/b2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->O()Ln3/b2;

    move-result-object v0

    return-object v0
.end method

.method public final P()Landroid/os/Looper;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    iget-object v0, v0, Ln3/k0;->s:Landroid/os/Looper;

    return-object v0
.end method

.method public final Q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget-boolean v0, v0, Ln3/k0;->G:Z

    return v0
.end method

.method public final S()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->S()J

    move-result-wide v0

    return-wide v0
.end method

.method public final V(Landroid/view/TextureView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->V(Landroid/view/TextureView;)V

    return-void
.end method

.method public final X()Ln3/a1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget-object v0, v0, Ln3/k0;->O:Ln3/a1;

    return-object v0
.end method

.method public final Y(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/y0;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->Y(Ljava/util/List;)V

    return-void
.end method

.method public final a0(Ln3/o1$c;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->a0(Ln3/o1$c;)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->b()V

    return-void
.end method

.method public final b0()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->b0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c0()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget-wide v0, v0, Ln3/k0;->u:J

    return-wide v0
.end method

.method public final d()Ln3/m1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget-object v0, v0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->n:Ln3/m1;

    return-object v0
.end method

.method public final g0()V
    .locals 1

    iget-object v0, p0, Ln3/x1;->c:Lm5/e;

    invoke-virtual {v0}, Lm5/e;->a()V

    return-void
.end method

.method public final h()Ln3/k1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->m0()Ln3/q;

    move-result-object v0

    return-object v0
.end method

.method public final h0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->t0()V

    return-void
.end method

.method public final i(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->i(Z)V

    return-void
.end method

.method public final i0(Ln3/m1;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->y0(Ln3/m1;)V

    return-void
.end method

.method public final j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->j()Z

    move-result v0

    return v0
.end method

.method public final j0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->B0()V

    return-void
.end method

.method public final k()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget-wide v0, v0, Ln3/k0;->v:J

    return-wide v0
.end method

.method public final l()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget-object v0, v0, Ln3/k0;->j0:Ln3/l1;

    iget-wide v0, v0, Ln3/l1;->q:J

    invoke-static {v0, v1}, Lm5/g0;->X(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final n(IJ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1, p2, p3}, Ln3/k0;->n(IJ)V

    return-void
.end method

.method public final o()Ln3/o1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget-object v0, v0, Ln3/k0;->N:Ln3/o1$a;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->p()Z

    move-result v0

    return v0
.end method

.method public final r(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0, p1}, Ln3/k0;->r(Z)V

    return-void
.end method

.method public final s()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->s()I

    move-result v0

    return v0
.end method

.method public final t()Ln3/c2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->t()Ln3/c2;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    return-void
.end method

.method public final x()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    invoke-virtual {v0}, Ln3/k0;->x()I

    move-result v0

    return v0
.end method

.method public final y()Lz4/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    .line 4
    iget-object v0, v0, Ln3/k0;->d0:Lz4/c;

    return-object v0
.end method

.method public final z(Landroid/view/TextureView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/x1;->g0()V

    .line 2
    iget-object v0, p0, Ln3/x1;->b:Ln3/k0;

    .line 3
    invoke-virtual {v0}, Ln3/k0;->H0()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v1, v0, Ln3/k0;->V:Landroid/view/TextureView;

    if-ne p1, v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ln3/k0;->h0()V

    :cond_0
    return-void
.end method
