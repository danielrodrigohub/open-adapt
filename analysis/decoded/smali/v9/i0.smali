.class public final Lv9/i0;
.super Ljava/lang/Object;
.source "AdaptKitPairing.kt"


# instance fields
.field public final a:Lv9/k0;

.field public final b:Lv9/a;

.field public final c:Lfd/d;

.field public final d:Lfd/d;

.field public final e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final g:I

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile j:Lha/u;

.field public final k:Lfd/d;

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public final o:Lv9/i0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lha/u;

.field public q:Lea/b;

.field public r:Lea/b;

.field public s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public t:Lya/b;

.field public u:Lya/b;

.field public final v:Lfd/d;


# direct methods
.method public constructor <init>(Lv9/k0;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv9/i0;->a:Lv9/k0;

    .line 3
    sget-object p1, Lv9/a;->i:Lv9/a$a;

    .line 4
    sget-object p1, Lv9/a;->j:Lv9/a;

    .line 5
    iput-object p1, p0, Lv9/i0;->b:Lv9/a;

    .line 6
    new-instance p1, Lv9/i0$c;

    invoke-direct {p1}, Lv9/i0$c;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lv9/i0;->c:Lfd/d;

    .line 8
    new-instance p1, Lv9/i0$d;

    invoke-direct {p1}, Lv9/i0$d;-><init>()V

    invoke-static {v0, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lv9/i0;->d:Lfd/d;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lv9/i0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lv9/i0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x3

    .line 12
    iput p1, p0, Lv9/i0;->g:I

    .line 13
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lv9/i0;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lv9/i0;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance p1, Lv9/i0$e;

    invoke-direct {p1}, Lv9/i0$e;-><init>()V

    invoke-static {v0, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 16
    iput-object p1, p0, Lv9/i0;->k:Lfd/d;

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "randomUUID().toString()"

    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lv9/i0;->n:Ljava/lang/String;

    .line 18
    new-instance p1, Lv9/i0$a;

    invoke-direct {p1, p0}, Lv9/i0$a;-><init>(Lv9/i0;)V

    iput-object p1, p0, Lv9/i0;->o:Lv9/i0$a;

    .line 19
    sget-object p1, Lha/t;->h:Lha/t;

    iput-object p1, p0, Lv9/i0;->p:Lha/u;

    .line 20
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lv9/i0;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance p1, Lv9/i0$f;

    invoke-direct {p1, p0}, Lv9/i0$f;-><init>(Lv9/i0;)V

    invoke-static {v0, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 22
    iput-object p1, p0, Lv9/i0;->v:Lfd/d;

    return-void
.end method

.method public static final synthetic a(Lv9/i0;Lha/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lv9/i0;->d(Lha/u;)V

    return-void
.end method


# virtual methods
.method public final b()Lcb/a;
    .locals 1

    iget-object v0, p0, Lv9/i0;->c:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb/a;

    return-object v0
.end method

.method public final c()Lka/d;
    .locals 1

    iget-object v0, p0, Lv9/i0;->k:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lka/d;

    return-object v0
.end method

.method public final d(Lha/u;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lv9/i0;->p:Lha/u;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lv9/i0;->j:Lha/u;

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lv9/i0;->p:Lha/u;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v2, v1, [Lha/u;

    .line 3
    sget-object v3, Lha/a0;->h:Lha/a0;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4
    sget-object v3, Lha/b0;->h:Lha/b0;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 5
    invoke-static {v0, v2}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lha/u;

    .line 6
    sget-object v2, Lha/j;->h:Lha/j;

    aput-object v2, v0, v4

    .line 7
    sget-object v2, Lha/k;->h:Lha/k;

    aput-object v2, v0, v5

    .line 8
    sget-object v2, Lha/e;->h:Lha/e;

    aput-object v2, v0, v1

    .line 9
    sget-object v1, Lha/f;->h:Lha/f;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 10
    invoke-static {p1, v0}, Landroidx/appcompat/widget/p;->g(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    instance-of v0, p1, Lha/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lv9/i0;->p:Lha/u;

    instance-of v0, v0, Lha/e;

    if-eqz v0, :cond_1

    return-void

    .line 12
    :cond_1
    instance-of v0, p1, Lha/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv9/i0;->p:Lha/u;

    instance-of v0, v0, Lha/f;

    if-eqz v0, :cond_2

    return-void

    .line 13
    :cond_2
    iput-object p1, p0, Lv9/i0;->p:Lha/u;

    .line 14
    invoke-virtual {p1}, Lha/u;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv9/i0;->h(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lv9/i0;->j:Lha/u;

    .line 16
    iget-object v0, p0, Lv9/i0;->a:Lv9/k0;

    new-instance v1, Lha/b;

    invoke-direct {v1, p1}, Lha/b;-><init>(Lha/u;)V

    invoke-virtual {v0, v1}, Lv9/k0;->e(Lha/b;)V

    .line 17
    instance-of p1, p1, Lha/g;

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p0}, Lv9/i0;->b()Lcb/a;

    move-result-object p1

    invoke-virtual {p0}, Lv9/i0;->c()Lka/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lcb/a;->c(Lka/d;)V

    .line 19
    iget-object p1, p0, Lv9/i0;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->a()V

    .line 2
    iget-object v0, p0, Lv9/i0;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StartPairing"

    .line 3
    invoke-virtual {p0, v0}, Lv9/i0;->h(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lha/w;->h:Lha/w;

    invoke-virtual {p0, v0}, Lv9/i0;->d(Lha/u;)V

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lv9/i0;->n:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lv9/i0;->b()Lcb/a;

    move-result-object v0

    invoke-virtual {p0}, Lv9/i0;->c()Lka/d;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lv9/i0;->v:Lfd/d;

    invoke-interface {v2}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv9/p0;

    .line 8
    invoke-interface {v0, v1, v2}, Lcb/a;->b(Lka/d;Lv9/p0;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->a()V

    .line 2
    iget-object v0, p0, Lv9/i0;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "StartPairing"

    .line 3
    invoke-virtual {p0, v0}, Lv9/i0;->h(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lha/w;->h:Lha/w;

    invoke-virtual {p0, v0}, Lv9/i0;->d(Lha/u;)V

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lv9/i0;->n:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lv9/i0;->b()Lcb/a;

    move-result-object v0

    invoke-virtual {p0}, Lv9/i0;->c()Lka/d;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lv9/i0;->v:Lfd/d;

    invoke-interface {v2}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv9/p0;

    .line 8
    invoke-interface {v0, v1, v2}, Lcb/a;->a(Lka/d;Lv9/p0;)V

    return-void
.end method

.method public final g(Z)V
    .locals 4

    const-string v0, "StopPairing"

    .line 1
    invoke-virtual {p0, v0}, Lv9/i0;->h(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lha/z;->h:Lha/z;

    invoke-virtual {p0, v0}, Lv9/i0;->d(Lha/u;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lv9/i0;->q:Lea/b;

    .line 4
    iput-object v0, p0, Lv9/i0;->r:Lea/b;

    .line 5
    invoke-virtual {p0}, Lv9/i0;->b()Lcb/a;

    move-result-object v1

    invoke-virtual {p0}, Lv9/i0;->c()Lka/d;

    move-result-object v2

    invoke-interface {v1, v2}, Lcb/a;->c(Lka/d;)V

    .line 6
    iget-object v1, p0, Lv9/i0;->t:Lya/b;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lv9/i0;->o:Lv9/i0$a;

    invoke-interface {v1, v2}, Lya/b;->h(Lv9/p0;)V

    :cond_0
    if-nez p1, :cond_1

    .line 7
    iget-object v1, p0, Lv9/i0;->t:Lya/b;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lv9/i0;->b:Lv9/a;

    invoke-interface {v1, v2}, Lya/b;->f(Lv9/a;)V

    .line 8
    :cond_1
    iput-object v0, p0, Lv9/i0;->t:Lya/b;

    .line 9
    iget-object v1, p0, Lv9/i0;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 10
    iget-object v1, p0, Lv9/i0;->u:Lya/b;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lv9/i0;->o:Lv9/i0$a;

    invoke-interface {v1, v3}, Lya/b;->h(Lv9/p0;)V

    :cond_2
    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lv9/i0;->u:Lya/b;

    if-eqz p1, :cond_3

    iget-object v1, p0, Lv9/i0;->b:Lv9/a;

    invoke-interface {p1, v1}, Lya/b;->f(Lv9/a;)V

    .line 12
    :cond_3
    iput-object v0, p0, Lv9/i0;->u:Lya/b;

    .line 13
    iget-object p1, p0, Lv9/i0;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 14
    sget-object p1, Lha/t;->h:Lha/t;

    invoke-virtual {p0, p1}, Lv9/i0;->d(Lha/u;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 2
    sget-object v0, Lv9/t;->i:Leb/f;

    const/4 v1, 0x1

    new-array v1, v1, [Leb/g;

    .line 3
    new-instance v2, Leb/c;

    new-instance v3, Leb/a;

    const-string v4, "AdaptKitPairing: "

    .line 4
    invoke-static {v4, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v3, p1}, Leb/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Leb/c;-><init>(Leb/d;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-virtual {v0, v1}, Leb/f;->a([Leb/g;)V

    return-void
.end method
