.class public final Lya/c0;
.super Lya/d$d;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lya/d$d<",
        "Ljava/lang/Boolean;",
        "[B",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final m:Ljava/lang/String;

.field public final n:Lv9/a;

.field public final o:J

.field public final p:Lya/c0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public q:F

.field public final r:[B

.field public final synthetic s:Lya/d;

.field public final synthetic t:Lfa/g$b;


# direct methods
.method public constructor <init>(Lya/d;Lv9/a;Lfa/g$b;)V
    .locals 2

    iput-object p1, p0, Lya/c0;->s:Lya/d;

    iput-object p3, p0, Lya/c0;->t:Lfa/g$b;

    .line 1
    invoke-direct {p0, p1}, Lya/d$d;-><init>(Lya/d;)V

    .line 2
    iget-object v0, p1, Lya/d;->f:Ljava/lang/String;

    const-string v1, "\tfirmwareUpdateStart"

    .line 3
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lya/c0;->m:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lya/c0;->n:Lv9/a;

    .line 6
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3c

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    iput-wide v0, p0, Lya/c0;->o:J

    .line 7
    new-instance p2, Lya/c0$a;

    invoke-direct {p2, p1, p0}, Lya/c0$a;-><init>(Lya/d;Lya/c0;)V

    .line 8
    iput-object p2, p0, Lya/c0;->p:Lya/c0$a;

    const/high16 p1, -0x40800000    # -1.0f

    .line 9
    iput p1, p0, Lya/c0;->q:F

    .line 10
    iget-object p1, p3, Lfa/g$b;->b:[B

    .line 11
    iput-object p1, p0, Lya/c0;->r:[B

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lya/c0;->s:Lya/d;

    .line 2
    sget-object v1, Lda/a;->m:Lda/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object v1, v0, Lya/d;->t:Lda/a;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lya/c0;->y(F)V

    return-void
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lya/c0;->r:[B

    return-object v0
.end method

.method public final i(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lya/c0;->s:Lya/d;

    .line 2
    sget-object v1, Lda/a;->m:Lda/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object v1, v0, Lya/d;->t:Lda/a;

    div-float/2addr p1, p2

    const/16 p2, 0x3e8

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-float p1, p1

    const/high16 p2, 0x41200000    # 10.0f

    div-float/2addr p1, p2

    .line 5
    invoke-virtual {p0, p1}, Lya/c0;->y(F)V

    return-void
.end method

.method public final m(Ljava/lang/Throwable;)Z
    .locals 5

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/c0;->s:Lya/d;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lya/d;->c:Lhc/a;

    .line 3
    iget-object v0, p0, Lya/d$d;->l:Lya/d;

    invoke-virtual {v0, p1}, Lya/d;->h0(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    instance-of p1, p1, Lya/d$e;

    if-eqz p1, :cond_1

    .line 5
    :cond_0
    iget-object p1, p0, Lya/c0;->s:Lya/d;

    .line 6
    iget-object v2, p1, Lya/d;->n:Lfa/c;

    .line 7
    new-instance v3, Lfa/k$h;

    invoke-direct {v3, v2}, Lfa/k$h;-><init>(Lfa/c;)V

    const/4 v4, 0x3

    .line 8
    invoke-static {v2, v1, v1, v3, v4}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v1

    .line 9
    invoke-virtual {p1, v1}, Lya/d;->m0(Lfa/c;)V

    :cond_1
    return v0
.end method

.method public final n()Lv9/a;
    .locals 1

    iget-object v0, p0, Lya/c0;->n:Lv9/a;

    return-object v0
.end method

.method public final o()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lya/c0;->p:Lya/c0$a;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lya/c0;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final q()J
    .locals 2

    iget-wide v0, p0, Lya/c0;->o:J

    return-wide v0
.end method

.method public final s(Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lkc/c;

    if-eqz v0, :cond_10

    .line 2
    move-object v0, p1

    check-cast v0, Lkc/c;

    .line 3
    instance-of v1, v0, Lkc/c$e$a;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Lkc/c$e$c;

    :goto_0
    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    .line 5
    :cond_1
    instance-of v1, v0, Lkc/c$e$b;

    :goto_1
    if-eqz v1, :cond_8

    .line 6
    check-cast p1, Lkc/c$e;

    .line 7
    instance-of v0, p1, Lkc/c$e$a;

    if-eqz v0, :cond_2

    new-instance v0, Lfa/l$c$a;

    .line 8
    move-object v1, p1

    check-cast v1, Lkc/c$e$a;

    .line 9
    iget v3, v1, Lkc/c$e$a;->j:I

    .line 10
    iget v1, v1, Lkc/c$e$a;->k:I

    .line 11
    invoke-direct {v0, v3, v1}, Lfa/l$c$a;-><init>(II)V

    goto :goto_2

    .line 12
    :cond_2
    instance-of v0, p1, Lkc/c$e$b;

    if-eqz v0, :cond_3

    new-instance v0, Lfa/l$c$d;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1}, Lfa/l$c$d;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 13
    :cond_3
    instance-of v0, p1, Lkc/c$e$c;

    if-eqz v0, :cond_7

    new-instance v0, Lfa/l$c$e;

    .line 14
    new-instance v1, Lfb/c;

    move-object v3, p1

    check-cast v3, Lkc/c$e$c;

    .line 15
    iget-object v4, v3, Lkc/c$e$c;->j:Ljava/lang/String;

    .line 16
    invoke-direct {v1, v4}, Lfb/c;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v4, Lfb/c;

    .line 18
    iget-object v3, v3, Lkc/c$e$c;->k:Ljava/lang/String;

    .line 19
    invoke-direct {v4, v3}, Lfb/c;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-direct {v0, v1, v4}, Lfa/l$c$e;-><init>(Lfb/c;Lfb/c;)V

    .line 21
    :goto_2
    invoke-virtual {p1}, Lkc/c$e;->a()I

    move-result p1

    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 22
    new-instance p1, Lya/g0;

    invoke-direct {p1, v0}, Lya/g0;-><init>(Lfa/l$c;)V

    goto :goto_3

    :cond_4
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 23
    :cond_5
    new-instance p1, Lya/f0;

    invoke-direct {p1, v0}, Lya/f0;-><init>(Lfa/l$c;)V

    goto :goto_3

    .line 24
    :cond_6
    new-instance p1, Lya/e0;

    invoke-direct {p1, v0}, Lya/e0;-><init>(Lfa/l$c;)V

    .line 25
    :goto_3
    new-instance v0, Lfa/k$a0$a;

    .line 26
    invoke-interface {p1}, Lfa/o;->y()Lfa/l$d;

    move-result-object v1

    .line 27
    invoke-interface {p1}, Lfa/o;->p()Lfa/l$a;

    move-result-object v2

    .line 28
    invoke-interface {p1}, Lfa/o;->o()Lfa/l$b;

    move-result-object p1

    .line 29
    invoke-direct {v0, v1, v2, p1}, Lfa/k$a0$a;-><init>(Lfa/l$d;Lfa/l$a;Lfa/l$b;)V

    goto :goto_a

    .line 30
    :cond_7
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 31
    :cond_8
    instance-of p1, v0, Lkc/c$a;

    if-eqz p1, :cond_9

    move p1, v2

    goto :goto_4

    .line 32
    :cond_9
    instance-of p1, v0, Lkc/c$b;

    :goto_4
    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_5

    .line 33
    :cond_a
    instance-of p1, v0, Lkc/c$c;

    :goto_5
    if-eqz p1, :cond_b

    move p1, v2

    goto :goto_6

    .line 34
    :cond_b
    instance-of p1, v0, Lkc/c$d;

    :goto_6
    if-eqz p1, :cond_c

    move p1, v2

    goto :goto_7

    .line 35
    :cond_c
    instance-of p1, v0, Lkc/c$f;

    :goto_7
    if-eqz p1, :cond_d

    move p1, v2

    goto :goto_8

    .line 36
    :cond_d
    instance-of p1, v0, Lkc/c$h;

    :goto_8
    if-eqz p1, :cond_e

    goto :goto_9

    .line 37
    :cond_e
    instance-of v2, v0, Lkc/c$g;

    :goto_9
    if-eqz v2, :cond_f

    .line 38
    new-instance p1, Lfa/k$a0$b;

    .line 39
    iget v1, p0, Lya/c0;->q:F

    .line 40
    iget-object v0, v0, Lkc/c;->h:Ljava/lang/String;

    .line 41
    invoke-direct {p1, v1, v0}, Lfa/k$a0$b;-><init>(FLjava/lang/String;)V

    move-object v0, p1

    .line 42
    :goto_a
    iget-object p1, p0, Lya/c0;->s:Lya/d;

    .line 43
    iget-object v1, p1, Lya/d;->n:Lfa/c;

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 44
    invoke-static {v1, v3, v3, v0, v2}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lya/d;->m0(Lfa/c;)V

    goto :goto_b

    .line 46
    :cond_f
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_10
    :goto_b
    return-void
.end method

.method public final x()V
    .locals 7

    .line 1
    iget-object v0, p0, Lya/c0;->s:Lya/d;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v0, 0x42c80000    # 100.0f

    .line 3
    invoke-virtual {p0, v0}, Lya/c0;->y(F)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Ljd/f;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lya/d0;

    iget-object v0, p0, Lya/c0;->s:Lya/d;

    iget-object v2, p0, Lya/c0;->t:Lfa/g$b;

    const/4 v3, 0x0

    invoke-direct {v4, v0, v2, v3}, Lya/d0;-><init>(Lya/d;Lfa/g$b;Ljd/d;)V

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final y(F)V
    .locals 11

    .line 1
    iput p1, p0, Lya/c0;->q:F

    .line 2
    iget-object v0, p0, Lya/c0;->s:Lya/d;

    .line 3
    iget-object v1, v0, Lya/d;->n:Lfa/c;

    .line 4
    iget-object v2, v1, Lfa/c;->j:Lfa/k;

    .line 5
    instance-of v3, v2, Lfa/p;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lfa/p;

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 6
    :goto_0
    new-instance v3, Lfa/k$b0;

    .line 7
    sget-object v5, Lfa/e;->h:Lfa/e$a;

    if-eqz v2, :cond_1

    .line 8
    invoke-interface {v2}, Lfa/p;->w()Lfa/e;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 9
    :goto_1
    instance-of v6, v2, Lfa/e$b;

    if-eqz v6, :cond_3

    .line 10
    move-object v6, v2

    check-cast v6, Lfa/e$b;

    .line 11
    iget v6, v6, Lfa/e$b;->k:F

    const v7, 0x3fdd70a4

    add-float/2addr v7, v6

    cmpg-float v7, p1, v7

    if-gez v7, :cond_2

    const/high16 v7, 0x42b40000    # 90.0f

    cmpg-float v7, p1, v7

    if-gez v7, :cond_2

    goto :goto_2

    :cond_2
    const v7, 0x3f5d70a4

    add-float/2addr v6, v7

    cmpl-float v6, p1, v6

    if-lez v6, :cond_7

    .line 12
    invoke-virtual {v5, p1, v2}, Lfa/e$a;->a(FLfa/e;)Lfa/e;

    move-result-object v2

    goto :goto_2

    .line 13
    :cond_3
    instance-of v6, v2, Lfa/e$d;

    if-eqz v6, :cond_4

    goto :goto_2

    .line 14
    :cond_4
    instance-of v6, v2, Lfa/e$e;

    if-eqz v6, :cond_6

    const v6, 0x405d70a4

    cmpg-float v6, p1, v6

    if-gez v6, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    invoke-virtual {v5, p1, v2}, Lfa/e$a;->a(FLfa/e;)Lfa/e;

    move-result-object v2

    goto :goto_2

    .line 16
    :cond_6
    new-instance v2, Lfa/e$e;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v5, v2

    move v6, p1

    .line 18
    invoke-direct/range {v5 .. v10}, Lfa/e$e;-><init>(FFFJ)V

    .line 19
    :cond_7
    :goto_2
    invoke-direct {v3, p1, v2}, Lfa/k$b0;-><init>(FLfa/e;)V

    .line 20
    new-instance p1, Lfa/n$d;

    .line 21
    iget-object v2, p0, Lya/c0;->t:Lfa/g$b;

    .line 22
    iget-object v2, v2, Lfa/g$b;->a:Lfb/c;

    .line 23
    invoke-direct {p1, v2}, Lfa/n$d;-><init>(Lfb/c;)V

    const/4 v2, 0x1

    .line 24
    invoke-static {v1, v4, p1, v3, v2}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lya/d;->m0(Lfa/c;)V

    return-void
.end method
