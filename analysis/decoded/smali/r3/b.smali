.class public final Lr3/b;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lr3/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/b$e;,
        Lr3/b$b;,
        Lr3/b$g;,
        Lr3/b$f;,
        Lr3/b$c;,
        Lr3/b$d;
    }
.end annotation


# instance fields
.field public final b:Ljava/util/UUID;

.field public final c:Lr3/s$c;

.field public final d:Lr3/y;

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:[I

.field public final h:Z

.field public final i:Lr3/b$f;

.field public final j:Ll5/c0;

.field public final k:Lr3/b$g;

.field public final l:J

.field public final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lr3/a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr3/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lr3/a;",
            ">;"
        }
    .end annotation
.end field

.field public p:I

.field public q:Lr3/s;

.field public r:Lr3/a;

.field public s:Lr3/a;

.field public t:Landroid/os/Looper;

.field public u:Landroid/os/Handler;

.field public v:I

.field public w:[B

.field public x:Lo3/v0;

.field public volatile y:Lr3/b$c;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lr3/s$c;Lr3/y;Ljava/util/HashMap;Z[IZLl5/c0;JLr3/b$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p11, Ln3/i;->b:Ljava/util/UUID;

    invoke-virtual {p11, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p11

    xor-int/lit8 p11, p11, 0x1

    const-string v0, "Use C.CLEARKEY_UUID instead"

    invoke-static {p11, v0}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lr3/b;->b:Ljava/util/UUID;

    .line 5
    iput-object p2, p0, Lr3/b;->c:Lr3/s$c;

    .line 6
    iput-object p3, p0, Lr3/b;->d:Lr3/y;

    .line 7
    iput-object p4, p0, Lr3/b;->e:Ljava/util/HashMap;

    .line 8
    iput-boolean p5, p0, Lr3/b;->f:Z

    .line 9
    iput-object p6, p0, Lr3/b;->g:[I

    .line 10
    iput-boolean p7, p0, Lr3/b;->h:Z

    .line 11
    iput-object p8, p0, Lr3/b;->j:Ll5/c0;

    .line 12
    new-instance p1, Lr3/b$f;

    invoke-direct {p1}, Lr3/b$f;-><init>()V

    iput-object p1, p0, Lr3/b;->i:Lr3/b$f;

    .line 13
    new-instance p1, Lr3/b$g;

    invoke-direct {p1, p0}, Lr3/b$g;-><init>(Lr3/b;)V

    iput-object p1, p0, Lr3/b;->k:Lr3/b$g;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lr3/b;->v:I

    .line 15
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr3/b;->m:Ljava/util/ArrayList;

    .line 16
    invoke-static {}, Lu6/v0;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lr3/b;->n:Ljava/util/Set;

    .line 17
    invoke-static {}, Lu6/v0;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lr3/b;->o:Ljava/util/Set;

    .line 18
    iput-wide p9, p0, Lr3/b;->l:J

    return-void
.end method

.method public static h(Lr3/e;)Z
    .locals 3

    .line 1
    check-cast p0, Lr3/a;

    .line 2
    iget v0, p0, Lr3/a;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    sget v0, Lm5/g0;->a:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lr3/a;->f()Lr3/e$a;

    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Landroid/media/ResourceBusyException;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static k(Lr3/d;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/d;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lr3/d$b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lr3/d;->k:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget v3, p0, Lr3/d;->k:I

    if-ge v2, v3, :cond_4

    .line 3
    iget-object v3, p0, Lr3/d;->h:[Lr3/d$b;

    aget-object v3, v3, v2

    .line 4
    invoke-virtual {v3, p1}, Lr3/d$b;->b(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Ln3/i;->c:Ljava/util/UUID;

    .line 5
    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ln3/i;->b:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Lr3/d$b;->b(Ljava/util/UUID;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_3

    .line 6
    iget-object v4, v3, Lr3/d$b;->l:[B

    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 7
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget v0, p0, Lr3/b;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr3/b;->p:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-wide v0, p0, Lr3/b;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lr3/b;->m:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lr3/a;->d(Lr3/k$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lr3/b;->n()V

    .line 7
    invoke-virtual {p0}, Lr3/b;->l()V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget v0, p0, Lr3/b;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lr3/b;->p:I

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lr3/b;->q:Lr3/s;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lr3/b;->c:Lr3/s$c;

    iget-object v1, p0, Lr3/b;->b:Ljava/util/UUID;

    invoke-interface {v0, v1}, Lr3/s$c;->a(Ljava/util/UUID;)Lr3/s;

    move-result-object v0

    iput-object v0, p0, Lr3/b;->q:Lr3/s;

    .line 4
    new-instance v1, Lr3/b$b;

    invoke-direct {v1, p0}, Lr3/b$b;-><init>(Lr3/b;)V

    invoke-interface {v0, v1}, Lr3/s;->k(Lr3/s$b;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-wide v2, p0, Lr3/b;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lr3/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 7
    iget-object v2, p0, Lr3/b;->m:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/a;

    invoke-virtual {v2, v1}, Lr3/a;->c(Lr3/k$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final c(Lr3/k$a;Ln3/s0;)Lr3/l$b;
    .locals 3

    .line 1
    iget v0, p0, Lr3/b;->p:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Lr3/b;->t:Landroid/os/Looper;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lr3/b$e;

    invoke-direct {v0, p0, p1}, Lr3/b$e;-><init>(Lr3/b;Lr3/k$a;)V

    .line 4
    iget-object p1, p0, Lr3/b;->u:Landroid/os/Handler;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Ly0/u;

    invoke-direct {v2, v0, p2, v1}, Ly0/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public final d(Lr3/k$a;Ln3/s0;)Lr3/e;
    .locals 2

    .line 1
    iget v0, p0, Lr3/b;->p:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Lr3/b;->t:Landroid/os/Looper;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lr3/b;->t:Landroid/os/Looper;

    invoke-virtual {p0, v0, p1, p2, v1}, Lr3/b;->g(Landroid/os/Looper;Lr3/k$a;Ln3/s0;Z)Lr3/e;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ln3/s0;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lr3/b;->q:Lr3/s;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lr3/s;->l()I

    move-result v0

    .line 4
    iget-object v1, p1, Ln3/s0;->v:Lr3/d;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 5
    iget-object p1, p1, Ln3/s0;->s:Ljava/lang/String;

    invoke-static {p1}, Lm5/s;->i(Ljava/lang/String;)I

    move-result p1

    .line 6
    iget-object v1, p0, Lr3/b;->g:[I

    sget v3, Lm5/g0;->a:I

    move v3, v2

    .line 7
    :goto_0
    array-length v4, v1

    const/4 v5, -0x1

    if-ge v3, v4, :cond_1

    .line 8
    aget v4, v1, v3

    if-ne v4, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_1
    if-eq v3, v5, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    return v0

    .line 9
    :cond_3
    iget-object p1, p0, Lr3/b;->w:[B

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    iget-object p1, p0, Lr3/b;->b:Ljava/util/UUID;

    invoke-static {v1, p1, v3}, Lr3/b;->k(Lr3/d;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget p1, v1, Lr3/d;->k:I

    if-ne p1, v3, :cond_9

    .line 13
    iget-object p1, v1, Lr3/d;->h:[Lr3/d$b;

    aget-object p1, p1, v2

    .line 14
    sget-object v4, Ln3/i;->b:Ljava/util/UUID;

    invoke-virtual {p1, v4}, Lr3/d$b;->b(Ljava/util/UUID;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    .line 15
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 16
    iget-object v4, p0, Lr3/b;->b:Ljava/util/UUID;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DefaultDrmSessionMgr"

    invoke-static {v4, p1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_5
    iget-object p1, v1, Lr3/d;->j:Ljava/lang/String;

    if-eqz p1, :cond_8

    const-string v1, "cenc"

    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "cbcs"

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 20
    sget p1, Lm5/g0;->a:I

    const/16 v1, 0x19

    if-lt p1, v1, :cond_9

    goto :goto_3

    :cond_7
    const-string v1, "cbc1"

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "cens"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    move v2, v3

    :cond_9
    :goto_4
    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    move v0, v3

    :goto_5
    return v0
.end method

.method public final f(Landroid/os/Looper;Lo3/v0;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lr3/b;->t:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Lr3/b;->t:Landroid/os/Looper;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lr3/b;->u:Landroid/os/Handler;

    goto :goto_1

    :cond_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Lm5/a;->e(Z)V

    .line 6
    iget-object p1, p0, Lr3/b;->u:Landroid/os/Handler;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :goto_1
    monitor-exit p0

    .line 9
    iput-object p2, p0, Lr3/b;->x:Lo3/v0;

    return-void

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    throw p1
.end method

.method public final g(Landroid/os/Looper;Lr3/k$a;Ln3/s0;Z)Lr3/e;
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/b;->y:Lr3/b$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lr3/b$c;

    invoke-direct {v0, p0, p1}, Lr3/b$c;-><init>(Lr3/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lr3/b;->y:Lr3/b$c;

    .line 3
    :cond_0
    iget-object p1, p3, Ln3/s0;->v:Lr3/d;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 4
    iget-object p1, p3, Ln3/s0;->s:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lm5/s;->i(Ljava/lang/String;)I

    move-result p1

    .line 6
    iget-object p2, p0, Lr3/b;->q:Lr3/s;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {p2}, Lr3/s;->l()I

    move-result p3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p3, v2, :cond_1

    sget-boolean p3, Lr3/t;->d:Z

    if-eqz p3, :cond_1

    move p3, v3

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    if-nez p3, :cond_6

    .line 9
    iget-object p3, p0, Lr3/b;->g:[I

    .line 10
    sget v2, Lm5/g0;->a:I

    .line 11
    :goto_1
    array-length v2, p3

    const/4 v4, -0x1

    if-ge v0, v2, :cond_3

    .line 12
    aget v2, p3, v0

    if-ne v2, p1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_2
    if-eq v0, v4, :cond_6

    .line 13
    invoke-interface {p2}, Lr3/s;->l()I

    move-result p1

    if-ne p1, v3, :cond_4

    goto :goto_4

    .line 14
    :cond_4
    iget-object p1, p0, Lr3/b;->r:Lr3/a;

    if-nez p1, :cond_5

    .line 15
    sget-object p1, Lu6/v;->i:Lu6/v$b;

    .line 16
    sget-object p1, Lu6/p0;->l:Lu6/p0;

    .line 17
    invoke-virtual {p0, p1, v3, v1, p4}, Lr3/b;->j(Ljava/util/List;ZLr3/k$a;Z)Lr3/a;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lr3/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iput-object p1, p0, Lr3/b;->r:Lr3/a;

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {p1, v1}, Lr3/a;->c(Lr3/k$a;)V

    .line 21
    :goto_3
    iget-object v1, p0, Lr3/b;->r:Lr3/a;

    :cond_6
    :goto_4
    return-object v1

    .line 22
    :cond_7
    iget-object p3, p0, Lr3/b;->w:[B

    if-nez p3, :cond_9

    .line 23
    iget-object p3, p0, Lr3/b;->b:Ljava/util/UUID;

    invoke-static {p1, p3, v0}, Lr3/b;->k(Lr3/d;Ljava/util/UUID;Z)Ljava/util/List;

    move-result-object p1

    .line 24
    move-object p3, p1

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 25
    new-instance p1, Lr3/b$d;

    iget-object p3, p0, Lr3/b;->b:Ljava/util/UUID;

    invoke-direct {p1, p3}, Lr3/b$d;-><init>(Ljava/util/UUID;)V

    const-string p3, "DefaultDrmSessionMgr"

    const-string p4, "DRM error"

    .line 26
    invoke-static {p3, p4, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p2, :cond_8

    .line 27
    invoke-virtual {p2, p1}, Lr3/k$a;->e(Ljava/lang/Exception;)V

    .line 28
    :cond_8
    new-instance p2, Lr3/r;

    new-instance p3, Lr3/e$a;

    const/16 p4, 0x1773

    invoke-direct {p3, p1, p4}, Lr3/e$a;-><init>(Ljava/lang/Throwable;I)V

    invoke-direct {p2, p3}, Lr3/r;-><init>(Lr3/e$a;)V

    return-object p2

    :cond_9
    move-object p1, v1

    .line 29
    :cond_a
    iget-boolean p3, p0, Lr3/b;->f:Z

    if-nez p3, :cond_b

    .line 30
    iget-object v1, p0, Lr3/b;->s:Lr3/a;

    goto :goto_5

    .line 31
    :cond_b
    iget-object p3, p0, Lr3/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr3/a;

    .line 32
    iget-object v3, v2, Lr3/a;->a:Ljava/util/List;

    invoke-static {v3, p1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v1, v2

    :cond_d
    :goto_5
    if-nez v1, :cond_f

    .line 33
    invoke-virtual {p0, p1, v0, p2, p4}, Lr3/b;->j(Ljava/util/List;ZLr3/k$a;Z)Lr3/a;

    move-result-object v1

    .line 34
    iget-boolean p1, p0, Lr3/b;->f:Z

    if-nez p1, :cond_e

    .line 35
    iput-object v1, p0, Lr3/b;->s:Lr3/a;

    .line 36
    :cond_e
    iget-object p1, p0, Lr3/b;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 37
    :cond_f
    invoke-virtual {v1, p2}, Lr3/a;->c(Lr3/k$a;)V

    :goto_6
    return-object v1
.end method

.method public final i(Ljava/util/List;ZLr3/k$a;)Lr3/a;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr3/d$b;",
            ">;Z",
            "Lr3/k$a;",
            ")",
            "Lr3/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lr3/b;->q:Lr3/s;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, v0, Lr3/b;->h:Z

    or-int v9, v1, p2

    .line 4
    new-instance v1, Lr3/a;

    iget-object v3, v0, Lr3/b;->b:Ljava/util/UUID;

    iget-object v4, v0, Lr3/b;->q:Lr3/s;

    iget-object v5, v0, Lr3/b;->i:Lr3/b$f;

    iget-object v6, v0, Lr3/b;->k:Lr3/b$g;

    iget v8, v0, Lr3/b;->v:I

    iget-object v11, v0, Lr3/b;->w:[B

    iget-object v12, v0, Lr3/b;->e:Ljava/util/HashMap;

    iget-object v13, v0, Lr3/b;->d:Lr3/y;

    iget-object v14, v0, Lr3/b;->t:Landroid/os/Looper;

    .line 5
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v15, v0, Lr3/b;->j:Ll5/c0;

    iget-object v10, v0, Lr3/b;->x:Lo3/v0;

    .line 7
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    move-object/from16 v7, p1

    move-object/from16 v16, v10

    move/from16 v10, p2

    .line 8
    invoke-direct/range {v2 .. v16}, Lr3/a;-><init>(Ljava/util/UUID;Lr3/s;Lr3/a$a;Lr3/a$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lr3/y;Landroid/os/Looper;Ll5/c0;Lo3/v0;)V

    move-object/from16 v2, p3

    .line 9
    invoke-virtual {v1, v2}, Lr3/a;->c(Lr3/k$a;)V

    .line 10
    iget-wide v2, v0, Lr3/b;->l:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lr3/a;->c(Lr3/k$a;)V

    :cond_0
    return-object v1
.end method

.method public final j(Ljava/util/List;ZLr3/k$a;Z)Lr3/a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lr3/d$b;",
            ">;Z",
            "Lr3/k$a;",
            "Z)",
            "Lr3/a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lr3/b;->i(Ljava/util/List;ZLr3/k$a;)Lr3/a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lr3/b;->h(Lr3/e;)Z

    move-result v1

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    iget-object v1, p0, Lr3/b;->o:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lr3/b;->m()V

    .line 4
    invoke-virtual {v0, p3}, Lr3/a;->d(Lr3/k$a;)V

    .line 5
    iget-wide v5, p0, Lr3/b;->l:J

    cmp-long v1, v5, v3

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Lr3/a;->d(Lr3/k$a;)V

    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lr3/b;->i(Ljava/util/List;ZLr3/k$a;)Lr3/a;

    move-result-object v0

    .line 8
    :cond_1
    invoke-static {v0}, Lr3/b;->h(Lr3/e;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    iget-object p4, p0, Lr3/b;->n:Ljava/util/Set;

    .line 9
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    .line 10
    invoke-virtual {p0}, Lr3/b;->n()V

    .line 11
    iget-object p4, p0, Lr3/b;->o:Ljava/util/Set;

    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    .line 12
    invoke-virtual {p0}, Lr3/b;->m()V

    .line 13
    :cond_2
    invoke-virtual {v0, p3}, Lr3/a;->d(Lr3/k$a;)V

    .line 14
    iget-wide v5, p0, Lr3/b;->l:J

    cmp-long p4, v5, v3

    if-eqz p4, :cond_3

    .line 15
    invoke-virtual {v0, v2}, Lr3/a;->d(Lr3/k$a;)V

    .line 16
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lr3/b;->i(Ljava/util/List;ZLr3/k$a;)Lr3/a;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lr3/b;->q:Lr3/s;

    if-eqz v0, :cond_0

    iget v0, p0, Lr3/b;->p:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lr3/b;->m:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr3/b;->n:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lr3/b;->q:Lr3/s;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-interface {v0}, Lr3/s;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lr3/b;->q:Lr3/s;

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr3/b;->o:Ljava/util/Set;

    invoke-static {v0}, Lu6/a0;->s(Ljava/util/Collection;)Lu6/a0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lu6/t;->p()Lu6/y0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/e;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, v2}, Lr3/e;->d(Lr3/k$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr3/b;->n:Ljava/util/Set;

    .line 2
    invoke-static {v0}, Lu6/a0;->s(Ljava/util/Collection;)Lu6/a0;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lu6/t;->p()Lu6/y0;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/b$e;

    .line 4
    iget-object v2, v1, Lr3/b$e;->e:Lr3/b;

    .line 5
    iget-object v2, v2, Lr3/b;->u:Landroid/os/Handler;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v3, Landroidx/appcompat/widget/k1;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, Landroidx/appcompat/widget/k1;-><init>(Ljava/lang/Object;I)V

    .line 8
    invoke-static {v2, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
