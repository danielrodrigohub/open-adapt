.class public final Lp4/n;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lp4/x$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/n$b;,
        Lp4/n$a;
    }
.end annotation


# instance fields
.field public final a:Lp4/n$a;

.field public b:Ll5/j$a;

.field public c:Ll5/c0;

.field public d:J

.field public e:J

.field public f:J

.field public g:F

.field public h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls3/l;)V
    .locals 1

    .line 1
    new-instance v0, Ll5/q$a;

    invoke-direct {v0, p1}, Ll5/q$a;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lp4/n;->b:Ll5/j$a;

    .line 4
    new-instance p1, Lp4/n$a;

    invoke-direct {p1, p2}, Lp4/n$a;-><init>(Ls3/l;)V

    iput-object p1, p0, Lp4/n;->a:Lp4/n$a;

    .line 5
    iget-object p2, p1, Lp4/n$a;->e:Ll5/j$a;

    if-eq v0, p2, :cond_0

    .line 6
    iput-object v0, p1, Lp4/n$a;->e:Ll5/j$a;

    .line 7
    iget-object p2, p1, Lp4/n$a;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 8
    iget-object p1, p1, Lp4/n$a;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lp4/n;->d:J

    .line 10
    iput-wide p1, p0, Lp4/n;->e:J

    .line 11
    iput-wide p1, p0, Lp4/n;->f:J

    const p1, -0x800001

    .line 12
    iput p1, p0, Lp4/n;->g:F

    .line 13
    iput p1, p0, Lp4/n;->h:F

    return-void
.end method

.method public static d(Ljava/lang/Class;Ll5/j$a;)Lp4/x$a;
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 1
    const-class v2, Ll5/j$a;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp4/x$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a(Lr3/m;)Lp4/x$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/n;->a:Lp4/n$a;

    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    invoke-static {p1, v1}, Lm5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, v0, Lp4/n$a;->f:Lr3/m;

    .line 4
    iget-object v0, v0, Lp4/n$a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/x$a;

    .line 5
    invoke-interface {v1, p1}, Lp4/x$a;->a(Lr3/m;)Lp4/x$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final b(Ll5/c0;)Lp4/x$a;
    .locals 2

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 1
    invoke-static {p1, v0}, Lm5/a;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp4/n;->c:Ll5/c0;

    .line 2
    iget-object v0, p0, Lp4/n;->a:Lp4/n$a;

    .line 3
    iput-object p1, v0, Lp4/n$a;->g:Ll5/c0;

    .line 4
    iget-object v0, v0, Lp4/n$a;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/x$a;

    .line 5
    invoke-interface {v1, p1}, Lp4/x$a;->b(Ll5/c0;)Lp4/x$a;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final c(Ln3/y0;)Lp4/x;
    .locals 13

    .line 1
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    iget-object v0, v0, Ln3/y0$g;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "ssai"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    iget-object v2, v0, Ln3/y0$g;->a:Landroid/net/Uri;

    iget-object v0, v0, Ln3/y0$g;->b:Ljava/lang/String;

    .line 7
    invoke-static {v2, v0}, Lm5/g0;->G(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 8
    iget-object v2, p0, Lp4/n;->a:Lp4/n$a;

    .line 9
    iget-object v3, v2, Lp4/n$a;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp4/x$a;

    if-eqz v3, :cond_2

    move-object v1, v3

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v2, v0}, Lp4/n$a;->a(I)Lt6/o;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {v3}, Lt6/o;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/x$a;

    .line 12
    iget-object v3, v2, Lp4/n$a;->f:Lr3/m;

    if-eqz v3, :cond_4

    .line 13
    invoke-interface {v1, v3}, Lp4/x$a;->a(Lr3/m;)Lp4/x$a;

    .line 14
    :cond_4
    iget-object v3, v2, Lp4/n$a;->g:Ll5/c0;

    if-eqz v3, :cond_5

    .line 15
    invoke-interface {v1, v3}, Lp4/x$a;->b(Ll5/c0;)Lp4/x$a;

    .line 16
    :cond_5
    iget-object v2, v2, Lp4/n$a;->d:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable media source factory found for content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lm5/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p1, Ln3/y0;->j:Ln3/y0$f;

    .line 19
    new-instance v2, Ln3/y0$f$a;

    invoke-direct {v2, v0}, Ln3/y0$f$a;-><init>(Ln3/y0$f;)V

    .line 20
    iget-object v0, p1, Ln3/y0;->j:Ln3/y0$f;

    iget-wide v3, v0, Ln3/y0$f;->h:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 21
    iget-wide v3, p0, Lp4/n;->d:J

    .line 22
    iput-wide v3, v2, Ln3/y0$f$a;->a:J

    .line 23
    :cond_6
    iget v3, v0, Ln3/y0$f;->k:F

    const v4, -0x800001

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    .line 24
    iget v3, p0, Lp4/n;->g:F

    .line 25
    iput v3, v2, Ln3/y0$f$a;->d:F

    .line 26
    :cond_7
    iget v3, v0, Ln3/y0$f;->l:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    .line 27
    iget v3, p0, Lp4/n;->h:F

    .line 28
    iput v3, v2, Ln3/y0$f$a;->e:F

    .line 29
    :cond_8
    iget-wide v3, v0, Ln3/y0$f;->i:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 30
    iget-wide v3, p0, Lp4/n;->e:J

    .line 31
    iput-wide v3, v2, Ln3/y0$f$a;->b:J

    .line 32
    :cond_9
    iget-wide v3, v0, Ln3/y0$f;->j:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_a

    .line 33
    iget-wide v3, p0, Lp4/n;->f:J

    .line 34
    iput-wide v3, v2, Ln3/y0$f$a;->c:J

    .line 35
    :cond_a
    new-instance v0, Ln3/y0$f;

    invoke-direct {v0, v2}, Ln3/y0$f;-><init>(Ln3/y0$f$a;)V

    .line 36
    iget-object v2, p1, Ln3/y0;->j:Ln3/y0$f;

    invoke-virtual {v0, v2}, Ln3/y0$f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 37
    invoke-virtual {p1}, Ln3/y0;->b()Ln3/y0$b;

    move-result-object p1

    .line 38
    new-instance v2, Ln3/y0$f$a;

    invoke-direct {v2, v0}, Ln3/y0$f$a;-><init>(Ln3/y0$f;)V

    .line 39
    iput-object v2, p1, Ln3/y0$b;->k:Ln3/y0$f$a;

    .line 40
    invoke-virtual {p1}, Ln3/y0$b;->a()Ln3/y0;

    move-result-object p1

    .line 41
    :cond_b
    invoke-interface {v1, p1}, Lp4/x$a;->c(Ln3/y0;)Lp4/x;

    move-result-object v0

    .line 42
    iget-object v1, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 43
    iget-object v1, v1, Ln3/y0$g;->f:Lu6/v;

    .line 44
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_e

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v3

    new-array v2, v2, [Lp4/x;

    const/4 v4, 0x0

    .line 46
    aput-object v0, v2, v4

    .line 47
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_d

    .line 48
    iget-object v0, p0, Lp4/n;->b:Ll5/j$a;

    .line 49
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v5, Ll5/u;

    invoke-direct {v5}, Ll5/u;-><init>()V

    .line 51
    iget-object v6, p0, Lp4/n;->c:Ll5/c0;

    if-eqz v6, :cond_c

    move-object v5, v6

    :cond_c
    add-int/lit8 v6, v4, 0x1

    .line 52
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/y0$k;

    .line 53
    new-instance v7, Lp4/r0;

    invoke-direct {v7, v4, v0, v5, v3}, Lp4/r0;-><init>(Ln3/y0$k;Ll5/j$a;Ll5/c0;Z)V

    .line 54
    aput-object v7, v2, v6

    move v4, v6

    goto :goto_2

    .line 55
    :cond_d
    new-instance v0, Lp4/g0;

    invoke-direct {v0, v2}, Lp4/g0;-><init>([Lp4/x;)V

    :cond_e
    move-object v5, v0

    .line 56
    iget-object v0, p1, Ln3/y0;->l:Ln3/y0$d;

    iget-wide v1, v0, Ln3/y0$c;->h:J

    const-wide/16 v6, 0x0

    cmp-long v4, v1, v6

    if-nez v4, :cond_f

    iget-wide v6, v0, Ln3/y0$c;->i:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v4, v6, v8

    if-nez v4, :cond_f

    iget-boolean v0, v0, Ln3/y0$c;->k:Z

    if-nez v0, :cond_f

    goto :goto_3

    .line 57
    :cond_f
    new-instance v0, Lp4/e;

    .line 58
    invoke-static {v1, v2}, Lm5/g0;->L(J)J

    move-result-wide v6

    iget-object v1, p1, Ln3/y0;->l:Ln3/y0$d;

    iget-wide v1, v1, Ln3/y0$c;->i:J

    .line 59
    invoke-static {v1, v2}, Lm5/g0;->L(J)J

    move-result-wide v8

    iget-object v1, p1, Ln3/y0;->l:Ln3/y0$d;

    iget-boolean v2, v1, Ln3/y0$c;->l:Z

    xor-int/lit8 v10, v2, 0x1

    iget-boolean v11, v1, Ln3/y0$c;->j:Z

    iget-boolean v12, v1, Ln3/y0$c;->k:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v12}, Lp4/e;-><init>(Lp4/x;JJZZZ)V

    move-object v5, v0

    .line 60
    :goto_3
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 61
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object p1, p1, Ln3/y0;->i:Ln3/y0$h;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5
.end method
