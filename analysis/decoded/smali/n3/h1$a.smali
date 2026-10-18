.class public final Ln3/h1$a;
.super Ljava/lang/Object;
.source "MediaSourceList.java"

# interfaces
.implements Lp4/e0;
.implements Lr3/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/h1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final h:Ln3/h1$c;

.field public i:Lp4/e0$a;

.field public j:Lr3/k$a;

.field public final synthetic k:Ln3/h1;


# direct methods
.method public constructor <init>(Ln3/h1;Ln3/h1$c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ln3/h1$a;->k:Ln3/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ln3/h1;->f:Lp4/e0$a;

    .line 3
    iput-object v0, p0, Ln3/h1$a;->i:Lp4/e0$a;

    .line 4
    iget-object p1, p1, Ln3/h1;->g:Lr3/k$a;

    .line 5
    iput-object p1, p0, Ln3/h1$a;->j:Lr3/k$a;

    .line 6
    iput-object p2, p0, Ln3/h1$a;->h:Ln3/h1$c;

    return-void
.end method


# virtual methods
.method public final H(ILp4/x$b;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->i:Lp4/e0$a;

    invoke-virtual {p1, p3}, Lp4/e0$a;->c(Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final J(ILp4/x$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->j:Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->f()V

    :cond_0
    return-void
.end method

.method public final M(ILp4/x$b;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->i:Lp4/e0$a;

    invoke-virtual {p1, p3}, Lp4/e0$a;->q(Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final O(ILp4/x$b;Lp4/r;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->i:Lp4/e0$a;

    invoke-virtual {p1, p3, p4}, Lp4/e0$a;->o(Lp4/r;Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final P(ILp4/x$b;Lp4/r;Lp4/u;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->i:Lp4/e0$a;

    invoke-virtual {p1, p3, p4, p5, p6}, Lp4/e0$a;->l(Lp4/r;Lp4/u;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final Q(ILp4/x$b;Lp4/r;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->i:Lp4/e0$a;

    invoke-virtual {p1, p3, p4}, Lp4/e0$a;->f(Lp4/r;Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final T(ILp4/x$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->j:Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->c()V

    :cond_0
    return-void
.end method

.method public final Y(ILp4/x$b;Lp4/r;Lp4/u;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->i:Lp4/e0$a;

    invoke-virtual {p1, p3, p4}, Lp4/e0$a;->i(Lp4/r;Lp4/u;)V

    :cond_0
    return-void
.end method

.method public final b(ILp4/x$b;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1
    iget-object v1, p0, Ln3/h1$a;->h:Ln3/h1$c;

    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    iget-object v4, v1, Ln3/h1$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    iget-object v4, v1, Ln3/h1$c;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lp4/x$b;

    iget-wide v4, v4, Lp4/w;->d:J

    iget-wide v6, p2, Lp4/w;->d:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 4
    iget-object v0, p2, Lp4/w;->a:Ljava/lang/Object;

    .line 5
    iget-object v1, v1, Ln3/h1$c;->b:Ljava/lang/Object;

    sget v3, Ln3/a;->l:I

    .line 6
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 7
    invoke-virtual {p2, v0}, Lp4/x$b;->b(Ljava/lang/Object;)Lp4/x$b;

    move-result-object p2

    move-object v0, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    return v2

    .line 8
    :cond_2
    iget-object p2, p0, Ln3/h1$a;->h:Ln3/h1$c;

    .line 9
    iget p2, p2, Ln3/h1$c;->d:I

    add-int/2addr p1, p2

    .line 10
    iget-object p2, p0, Ln3/h1$a;->i:Lp4/e0$a;

    iget v1, p2, Lp4/e0$a;->a:I

    if-ne v1, p1, :cond_3

    iget-object p2, p2, Lp4/e0$a;->b:Lp4/x$b;

    .line 11
    invoke-static {p2, v0}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 12
    :cond_3
    iget-object p2, p0, Ln3/h1$a;->k:Ln3/h1;

    .line 13
    iget-object p2, p2, Ln3/h1;->f:Lp4/e0$a;

    const-wide/16 v1, 0x0

    .line 14
    invoke-virtual {p2, p1, v0, v1, v2}, Lp4/e0$a;->r(ILp4/x$b;J)Lp4/e0$a;

    move-result-object p2

    iput-object p2, p0, Ln3/h1$a;->i:Lp4/e0$a;

    .line 15
    :cond_4
    iget-object p2, p0, Ln3/h1$a;->j:Lr3/k$a;

    iget v1, p2, Lr3/k$a;->a:I

    if-ne v1, p1, :cond_5

    iget-object p2, p2, Lr3/k$a;->b:Lp4/x$b;

    .line 16
    invoke-static {p2, v0}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 17
    :cond_5
    iget-object p2, p0, Ln3/h1$a;->k:Ln3/h1;

    .line 18
    iget-object p2, p2, Ln3/h1;->g:Lr3/k$a;

    .line 19
    invoke-virtual {p2, p1, v0}, Lr3/k$a;->g(ILp4/x$b;)Lr3/k$a;

    move-result-object p1

    iput-object p1, p0, Ln3/h1$a;->j:Lr3/k$a;

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method public final d0(ILp4/x$b;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->j:Lr3/k$a;

    invoke-virtual {p1, p3}, Lr3/k$a;->e(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final i0(ILp4/x$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->j:Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->b()V

    :cond_0
    return-void
.end method

.method public final k0(ILp4/x$b;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->j:Lr3/k$a;

    invoke-virtual {p1, p3}, Lr3/k$a;->d(I)V

    :cond_0
    return-void
.end method

.method public final p0(ILp4/x$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Ln3/h1$a;->b(ILp4/x$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ln3/h1$a;->j:Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->a()V

    :cond_0
    return-void
.end method
