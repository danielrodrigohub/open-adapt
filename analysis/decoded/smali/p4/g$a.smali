.class public final Lp4/g$a;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"

# interfaces
.implements Lp4/e0;
.implements Lr3/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public i:Lp4/e0$a;

.field public j:Lr3/k$a;

.field public final synthetic k:Lp4/g;


# direct methods
.method public constructor <init>(Lp4/g;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lp4/g$a;->k:Lp4/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lp4/a;->s(Lp4/x$b;)Lp4/e0$a;

    move-result-object v1

    iput-object v1, p0, Lp4/g$a;->i:Lp4/e0$a;

    .line 3
    invoke-virtual {p1, v0}, Lp4/a;->r(Lp4/x$b;)Lr3/k$a;

    move-result-object p1

    iput-object p1, p0, Lp4/g$a;->j:Lr3/k$a;

    .line 4
    iput-object p2, p0, Lp4/g$a;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final H(ILp4/x$b;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->i:Lp4/e0$a;

    invoke-virtual {p0, p3}, Lp4/g$a;->e(Lp4/u;)Lp4/u;

    move-result-object p2

    invoke-virtual {p1, p2}, Lp4/e0$a;->c(Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final J(ILp4/x$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->j:Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->f()V

    :cond_0
    return-void
.end method

.method public final M(ILp4/x$b;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->i:Lp4/e0$a;

    invoke-virtual {p0, p3}, Lp4/g$a;->e(Lp4/u;)Lp4/u;

    move-result-object p2

    invoke-virtual {p1, p2}, Lp4/e0$a;->q(Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final O(ILp4/x$b;Lp4/r;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->i:Lp4/e0$a;

    .line 3
    invoke-virtual {p0, p4}, Lp4/g$a;->e(Lp4/u;)Lp4/u;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lp4/e0$a;->o(Lp4/r;Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final P(ILp4/x$b;Lp4/r;Lp4/u;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->i:Lp4/e0$a;

    .line 3
    invoke-virtual {p0, p4}, Lp4/g$a;->e(Lp4/u;)Lp4/u;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2, p5, p6}, Lp4/e0$a;->l(Lp4/r;Lp4/u;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final Q(ILp4/x$b;Lp4/r;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->i:Lp4/e0$a;

    .line 3
    invoke-virtual {p0, p4}, Lp4/g$a;->e(Lp4/u;)Lp4/u;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lp4/e0$a;->f(Lp4/r;Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final T(ILp4/x$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->j:Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->c()V

    :cond_0
    return-void
.end method

.method public final Y(ILp4/x$b;Lp4/r;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->i:Lp4/e0$a;

    .line 3
    invoke-virtual {p0, p4}, Lp4/g$a;->e(Lp4/u;)Lp4/u;

    move-result-object p2

    .line 4
    invoke-virtual {p1, p3, p2}, Lp4/e0$a;->i(Lp4/r;Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final b(ILp4/x$b;)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lp4/g$a;->k:Lp4/g;

    iget-object v1, p0, Lp4/g$a;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Lp4/g;->y(Ljava/lang/Object;Lp4/x$b;)Lp4/x$b;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x0

    .line 2
    :cond_1
    iget-object v0, p0, Lp4/g$a;->k:Lp4/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp4/g$a;->i:Lp4/e0$a;

    iget v1, v0, Lp4/e0$a;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lp4/e0$a;->b:Lp4/x$b;

    .line 4
    invoke-static {v0, p2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_2
    iget-object v0, p0, Lp4/g$a;->k:Lp4/g;

    const-wide/16 v1, 0x0

    .line 6
    iget-object v0, v0, Lp4/a;->j:Lp4/e0$a;

    invoke-virtual {v0, p1, p2, v1, v2}, Lp4/e0$a;->r(ILp4/x$b;J)Lp4/e0$a;

    move-result-object v0

    .line 7
    iput-object v0, p0, Lp4/g$a;->i:Lp4/e0$a;

    .line 8
    :cond_3
    iget-object v0, p0, Lp4/g$a;->j:Lr3/k$a;

    iget v1, v0, Lr3/k$a;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lr3/k$a;->b:Lp4/x$b;

    .line 9
    invoke-static {v0, p2}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    :cond_4
    iget-object v0, p0, Lp4/g$a;->k:Lp4/g;

    .line 11
    iget-object v0, v0, Lp4/a;->k:Lr3/k$a;

    invoke-virtual {v0, p1, p2}, Lr3/k$a;->g(ILp4/x$b;)Lr3/k$a;

    move-result-object p1

    .line 12
    iput-object p1, p0, Lp4/g$a;->j:Lr3/k$a;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public final d0(ILp4/x$b;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->j:Lr3/k$a;

    invoke-virtual {p1, p3}, Lr3/k$a;->e(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final e(Lp4/u;)Lp4/u;
    .locals 11

    .line 1
    iget-object v0, p0, Lp4/g$a;->k:Lp4/g;

    iget-wide v7, p1, Lp4/u;->f:J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lp4/g$a;->k:Lp4/g;

    iget-wide v9, p1, Lp4/u;->g:J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v0, p1, Lp4/u;->f:J

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lp4/u;->g:J

    cmp-long v0, v9, v0

    if-nez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lp4/u;

    iget v2, p1, Lp4/u;->a:I

    iget v3, p1, Lp4/u;->b:I

    iget-object v4, p1, Lp4/u;->c:Ln3/s0;

    iget v5, p1, Lp4/u;->d:I

    iget-object v6, p1, Lp4/u;->e:Ljava/lang/Object;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lp4/u;-><init>(IILn3/s0;ILjava/lang/Object;JJ)V

    return-object v0
.end method

.method public final i0(ILp4/x$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->j:Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->b()V

    :cond_0
    return-void
.end method

.method public final k0(ILp4/x$b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->j:Lr3/k$a;

    invoke-virtual {p1, p3}, Lr3/k$a;->d(I)V

    :cond_0
    return-void
.end method

.method public final p0(ILp4/x$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lp4/g$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lp4/g$a;->j:Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->a()V

    :cond_0
    return-void
.end method
