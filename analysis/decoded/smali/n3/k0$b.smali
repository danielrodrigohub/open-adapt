.class public final Ln3/k0$b;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ln5/s;
.implements Lp3/p;
.implements Lz4/n;
.implements Lf4/e;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lo5/j$b;
.implements Ln3/d$b;
.implements Ln3/b$b;
.implements Ln3/z1$a;
.implements Ln3/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic h:Ln3/k0;


# direct methods
.method public constructor <init>(Ln3/k0;)V
    .locals 0

    iput-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(IJJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v1, v0, Ln3/k0;->r:Lo3/a;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 3
    invoke-interface/range {v1 .. v6}, Lo3/a;->A(IJJ)V

    return-void
.end method

.method public final B(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lo3/a;->B(IJ)V

    return-void
.end method

.method public final C(Lf4/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v1, v0, Ln3/k0;->i0:Ln3/a1;

    .line 3
    invoke-virtual {v1}, Ln3/a1;->b()Ln3/a1$a;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p1, Lf4/a;->h:[Lf4/a$b;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 5
    aget-object v3, v3, v2

    .line 6
    invoke-interface {v3, v1}, Lf4/a$b;->i(Ln3/a1$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1}, Ln3/a1$a;->a()Ln3/a1;

    move-result-object v1

    .line 8
    iput-object v1, v0, Ln3/k0;->i0:Ln3/a1;

    .line 9
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 10
    invoke-virtual {v0}, Ln3/k0;->g0()Ln3/a1;

    move-result-object v0

    .line 11
    iget-object v1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 12
    iget-object v1, v1, Ln3/k0;->O:Ln3/a1;

    .line 13
    invoke-virtual {v0, v1}, Ln3/a1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 15
    iput-object v0, v1, Ln3/k0;->O:Ln3/a1;

    .line 16
    iget-object v0, v1, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0xe

    .line 17
    new-instance v2, Ln3/x;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ln3/x;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->b(ILm5/o$a;)V

    .line 18
    :cond_1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 19
    iget-object v0, v0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0x1c

    .line 20
    new-instance v2, Ly0/c0;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Ly0/c0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->b(ILm5/o$a;)V

    .line 21
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 22
    iget-object p1, p1, Ln3/k0;->l:Lm5/o;

    .line 23
    invoke-virtual {p1}, Lm5/o;->a()V

    return-void
.end method

.method public final D(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lo3/a;->D(JI)V

    return-void
.end method

.method public final b(Ln5/t;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iput-object p1, v0, Ln3/k0;->h0:Ln5/t;

    .line 3
    iget-object v0, v0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0x19

    .line 4
    new-instance v2, Lm0/b;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lm0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->d(ILm5/o$a;)V

    return-void
.end method

.method public final c(Lq3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1}, Lo3/a;->c(Lq3/e;)V

    .line 4
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1}, Lo3/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    invoke-virtual {v0, p1}, Ln3/k0;->z0(Ljava/lang/Object;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Lo3/a;->f(Ljava/lang/Object;J)V

    .line 4
    iget-object p2, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 5
    iget-object p3, p2, Ln3/k0;->Q:Ljava/lang/Object;

    if-ne p3, p1, :cond_0

    .line 6
    iget-object p1, p2, Ln3/k0;->l:Lm5/o;

    const/16 p2, 0x1a

    .line 7
    sget-object p3, Ln3/n;->e:Ln3/n;

    invoke-virtual {p1, p2, p3}, Lm5/o;->d(ILm5/o$a;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v1, v0, Ln3/k0;->r:Lo3/a;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 3
    invoke-interface/range {v1 .. v6}, Lo3/a;->g(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final h(Ln3/s0;Lq3/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 4
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 5
    invoke-interface {v0, p1, p2}, Lo3/a;->h(Ln3/s0;Lq3/i;)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    invoke-virtual {v0}, Ln3/k0;->G0()V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ln3/k0;->z0(Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-boolean v1, v0, Ln3/k0;->c0:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 3
    :cond_0
    iput-boolean p1, v0, Ln3/k0;->c0:Z

    .line 4
    iget-object v0, v0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0x17

    .line 5
    new-instance v2, Ln3/m0;

    invoke-direct {v2, p1}, Ln3/m0;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->d(ILm5/o$a;)V

    return-void
.end method

.method public final m(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1}, Lo3/a;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lz4/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0x1b

    .line 3
    new-instance v2, Ly0/b0;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Ly0/b0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->d(ILm5/o$a;)V

    return-void
.end method

.method public final o(Lz4/c;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iput-object p1, v0, Ln3/k0;->d0:Lz4/c;

    .line 3
    iget-object v0, v0, Ln3/k0;->l:Lm5/o;

    .line 4
    new-instance v1, Ln3/w;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ln3/w;-><init>(Ljava/lang/Object;I)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lm5/o;->d(ILm5/o$a;)V

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 4
    invoke-virtual {v0, v1}, Ln3/k0;->z0(Ljava/lang/Object;)V

    .line 5
    iput-object v1, v0, Ln3/k0;->R:Landroid/view/Surface;

    .line 6
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 7
    invoke-virtual {p1, p2, p3}, Ln3/k0;->r0(II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ln3/k0;->z0(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0, v0}, Ln3/k0;->r0(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    invoke-virtual {p1, p2, p3}, Ln3/k0;->r0(II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final p(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1, p2}, Lo3/a;->p(J)V

    return-void
.end method

.method public final q(Lq3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 4
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 5
    invoke-interface {v0, p1}, Lo3/a;->q(Lq3/e;)V

    return-void
.end method

.method public final s(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1}, Lo3/a;->s(Ljava/lang/Exception;)V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    invoke-virtual {p1, p3, p4}, Ln3/k0;->r0(II)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-boolean v1, v0, Ln3/k0;->U:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Ln3/k0;->z0(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-boolean v0, p1, Ln3/k0;->U:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ln3/k0;->z0(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0, v0}, Ln3/k0;->r0(II)V

    return-void
.end method

.method public final t(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1}, Lo3/a;->t(Ljava/lang/Exception;)V

    return-void
.end method

.method public final u(Ln3/s0;Lq3/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 4
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 5
    invoke-interface {v0, p1, p2}, Lo3/a;->u(Ln3/s0;Lq3/i;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1}, Lo3/a;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final w(Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v1, v0, Ln3/k0;->r:Lo3/a;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 3
    invoke-interface/range {v1 .. v6}, Lo3/a;->w(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final x(Lq3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 3
    invoke-interface {v0, p1}, Lo3/a;->x(Lq3/e;)V

    .line 4
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final y(Lq3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Ln3/k0$b;->h:Ln3/k0;

    .line 4
    iget-object v0, v0, Ln3/k0;->r:Lo3/a;

    .line 5
    invoke-interface {v0, p1}, Lo3/a;->y(Lq3/e;)V

    return-void
.end method
