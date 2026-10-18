.class public final Lw9/x;
.super Ljava/lang/Object;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lw9/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw9/x$a;
    }
.end annotation


# instance fields
.field public final A:Ljava/lang/Object;

.field public final B:Ljava/lang/Object;

.field public final C:Ljava/lang/Object;

.field public final D:Lfd/h;

.field public final E:Lw9/x$q0;

.field public final F:Lfd/d;

.field public final b:Lea/m;

.field public final c:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/z;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lea/g;

.field public final e:Lfb/d0;

.field public final f:Lfb/k;

.field public final g:Lfb/a;

.field public final h:Lfb/m;

.field public final i:Ljd/f;

.field public final j:Lkotlinx/coroutines/CoroutineScope;

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lqd/l<",
            "Lea/m;",
            "Lfd/o;",
            ">;>;"
        }
    .end annotation
.end field

.field public l:Lea/m;

.field public final m:Lfd/d;

.field public n:Lfb/n;

.field public final o:Lfd/d;

.field public final p:Lfd/d;

.field public final q:Lfd/d;

.field public final r:Lfd/d;

.field public final s:Lfd/d;

.field public final t:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv9/i;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv9/s;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv9/t0;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv9/o;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfb/d;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Ljava/lang/Object;

.field public final z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lea/m;Lqd/l;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea/m;",
            "Lqd/l<",
            "-",
            "Lv9/z;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw9/x;->b:Lea/m;

    .line 3
    iput-object p2, p0, Lw9/x;->c:Lqd/l;

    .line 4
    new-instance p2, Lea/g;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lea/g;-><init>(Ljava/lang/String;Ljava/util/List;Lea/i;Lea/i;Lea/d;Lea/d;ILrd/h;)V

    iput-object p2, p0, Lw9/x;->d:Lea/g;

    .line 5
    new-instance v0, Lfb/d0;

    invoke-direct {v0}, Lfb/d0;-><init>()V

    iput-object v0, p0, Lw9/x;->e:Lfb/d0;

    .line 6
    new-instance v0, Lfb/k;

    invoke-direct {v0}, Lfb/k;-><init>()V

    iput-object v0, p0, Lw9/x;->f:Lfb/k;

    .line 7
    sget-object v0, Lfb/a$a;->a:Lfb/a$a;

    invoke-virtual {v0}, Lfb/a$a;->a()Lfb/a;

    move-result-object v0

    iput-object v0, p0, Lw9/x;->g:Lfb/a;

    .line 8
    new-instance v0, Lfb/m;

    invoke-direct {v0, p1}, Lfb/m;-><init>(Lea/m;)V

    iput-object v0, p0, Lw9/x;->h:Lfb/m;

    .line 9
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljd/a;->plus(Ljd/f;)Ljd/f;

    move-result-object v0

    iput-object v0, p0, Lw9/x;->i:Ljd/f;

    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Ljd/f;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lw9/x;->j:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lw9/x;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    iget-object v0, p1, Lea/m;->m:Ljava/lang/String;

    .line 13
    iget-object v1, p1, Lea/m;->o:Ljava/util/List;

    const-string v3, "modes"

    .line 14
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object v0, p2, Lea/g;->a:Ljava/lang/String;

    .line 16
    iput-object v1, p2, Lea/g;->b:Ljava/util/List;

    .line 17
    iput-object p1, p0, Lw9/x;->l:Lea/m;

    .line 18
    new-instance p1, Lw9/x$b1;

    invoke-direct {p1}, Lw9/x$b1;-><init>()V

    invoke-static {v2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 19
    iput-object p1, p0, Lw9/x;->m:Lfd/d;

    .line 20
    new-instance p1, Lw9/x$c1;

    invoke-direct {p1, p0}, Lw9/x$c1;-><init>(Lw9/x;)V

    invoke-static {v2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 21
    iput-object p1, p0, Lw9/x;->o:Lfd/d;

    .line 22
    new-instance p1, Lw9/x$d1;

    invoke-direct {p1, p0}, Lw9/x$d1;-><init>(Lw9/x;)V

    invoke-static {v2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 23
    iput-object p1, p0, Lw9/x;->p:Lfd/d;

    .line 24
    new-instance p1, Lw9/x$e1;

    invoke-direct {p1}, Lw9/x$e1;-><init>()V

    invoke-static {v2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 25
    iput-object p1, p0, Lw9/x;->q:Lfd/d;

    .line 26
    new-instance p1, Lw9/x$f1;

    invoke-direct {p1, p0}, Lw9/x$f1;-><init>(Lw9/x;)V

    invoke-static {v2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lw9/x;->r:Lfd/d;

    .line 28
    new-instance p1, Lw9/x$g1;

    invoke-direct {p1, p0}, Lw9/x$g1;-><init>(Lw9/x;)V

    invoke-static {v2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 29
    iput-object p1, p0, Lw9/x;->s:Lfd/d;

    .line 30
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lw9/x;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lw9/x;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lw9/x;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lw9/x;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 34
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lw9/x;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 35
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw9/x;->y:Ljava/lang/Object;

    .line 36
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw9/x;->z:Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw9/x;->A:Ljava/lang/Object;

    .line 38
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw9/x;->B:Ljava/lang/Object;

    .line 39
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw9/x;->C:Ljava/lang/Object;

    .line 40
    sget-object p1, Lw9/x$r;->h:Lw9/x$r;

    invoke-static {p1}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p1

    check-cast p1, Lfd/h;

    iput-object p1, p0, Lw9/x;->D:Lfd/h;

    .line 41
    new-instance p1, Lw9/x$q0;

    invoke-direct {p1, p0}, Lw9/x$q0;-><init>(Lw9/x;)V

    .line 42
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lya/b;->D(Lv9/p0;)V

    .line 43
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object p2

    invoke-interface {p2, p1}, Lya/b;->D(Lv9/p0;)V

    .line 44
    iput-object p1, p0, Lw9/x;->E:Lw9/x$q0;

    .line 45
    new-instance p1, Lw9/x$h1;

    invoke-direct {p1}, Lw9/x$h1;-><init>()V

    invoke-static {v2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lw9/x;->F:Lfd/d;

    return-void
.end method

.method public static final m0(Lw9/x;Lw9/a;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 2
    new-instance v1, Lw9/j0;

    invoke-direct {v1, p1, p0}, Lw9/j0;-><init>(Lw9/a;Lw9/x;)V

    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lw9/l0;

    invoke-direct {v1, p0, p1}, Lw9/l0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public static final n0(Lw9/x;)Lbb/a;
    .locals 0

    iget-object p0, p0, Lw9/x;->q:Lfd/d;

    invoke-interface {p0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbb/a;

    return-object p0
.end method

.method public static final o0(Lw9/x;)Lka/d;
    .locals 0

    iget-object p0, p0, Lw9/x;->r:Lfd/d;

    invoke-interface {p0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lka/d;

    return-object p0
.end method

.method public static final p0(Lw9/x;)Lka/d;
    .locals 0

    iget-object p0, p0, Lw9/x;->s:Lfd/d;

    invoke-interface {p0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lka/d;

    return-object p0
.end method

.method public static final q0(Lw9/x;ZLw9/a;Lea/c;Lqd/l;)V
    .locals 8

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p3, Lea/c;->h:Lea/i;

    .line 3
    iget-object v3, v0, Lea/i;->i:Lea/h$a;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    .line 4
    invoke-static/range {v1 .. v7}, Lw9/d$b;->a(Lw9/d;Lw9/a;Lea/h;Lqd/l;Lqd/l;ILjava/lang/Object;)V

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p3, Lea/c;->i:Lea/d;

    .line 6
    invoke-virtual {p0, p2, p1, p4}, Lw9/x;->E(Lw9/a;Lea/d;Lqd/l;)V

    :cond_0
    return-void
.end method

.method public static final r0(Lw9/x;Lea/a;)V
    .locals 11

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lea/a;->b:[Lea/a$a;

    .line 3
    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lv9/t;->a:Lv9/t;

    .line 5
    sget-object v0, Lv9/t;->i:Leb/f;

    new-array v1, v1, [Leb/g;

    .line 6
    new-instance v3, Leb/c;

    new-instance v4, Leb/a;

    iget-object v5, p0, Lw9/x;->l:Lea/m;

    .line 7
    iget-object v6, v5, Lea/m;->k:Lea/b;

    .line 8
    iget-object v6, v6, Lea/b;->j:Ljava/lang/String;

    .line 9
    iget-object v5, v5, Lea/m;->l:Lea/b;

    .line 10
    iget-object v5, v5, Lea/b;->j:Ljava/lang/String;

    .line 11
    iget-object v7, p1, Lea/a;->a:Lea/e;

    if-eqz v7, :cond_1

    .line 12
    invoke-virtual {v7}, Lea/e;->b()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const-string v8, "UserInModeDetected[left: "

    const-string v9, " right: "

    const-string v10, " userInModeDetected: "

    .line 13
    invoke-static {v8, v6, v9, v5, v10}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 14
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Leb/a;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Leb/c;-><init>(Leb/d;)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Leb/f;->a([Leb/g;)V

    .line 15
    iget-object p0, p0, Lw9/x;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-array v0, v2, [Lv9/s;

    .line 16
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p0, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    array-length v0, p0

    :goto_2
    if-ge v2, v0, :cond_2

    aget-object v1, p0, v2

    check-cast v1, Lv9/s;

    .line 18
    new-instance v3, Lea/q;

    .line 19
    iget-object v4, p1, Lea/a;->a:Lea/e;

    .line 20
    invoke-direct {v3, v4}, Lea/q;-><init>(Lea/e;)V

    invoke-virtual {v1, v3}, Lv9/s;->d(Lea/l;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public static final s0(Lw9/x;Lya/b;Ljd/d;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p2, Lw9/o1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lw9/o1;

    iget v1, v0, Lw9/o1;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lw9/o1;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lw9/o1;

    invoke-direct {v0, p0, p2}, Lw9/o1;-><init>(Lw9/x;Ljd/d;)V

    :goto_0
    iget-object p0, v0, Lw9/o1;->j:Ljava/lang/Object;

    sget-object p2, Lkd/a;->h:Lkd/a;

    .line 3
    iget v1, v0, Lw9/o1;->l:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v0, Lw9/o1;->i:Lrd/w;

    iget-object p2, v0, Lw9/o1;->h:Lya/b;

    invoke-static {p0}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    invoke-static {p0}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 6
    new-instance p0, Lrd/w;

    invoke-direct {p0}, Lrd/w;-><init>()V

    const-wide/16 v3, 0xbb8

    .line 7
    new-instance v1, Lw9/t1;

    const/4 v5, 0x0

    invoke-direct {v1, p0, p1, v5}, Lw9/t1;-><init>(Lrd/w;Lya/b;Ljd/d;)V

    iput-object p1, v0, Lw9/o1;->h:Lya/b;

    iput-object p0, v0, Lw9/o1;->i:Lrd/w;

    iput v2, v0, Lw9/o1;->l:I

    invoke-static {v3, v4, v1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_3

    goto :goto_2

    :cond_3
    move-object p2, p1

    move-object p1, p0

    move-object p0, v0

    .line 8
    :goto_1
    move-object v0, p0

    check-cast v0, Lba/e;

    .line 9
    iget-object p1, p1, Lrd/w;->h:Ljava/lang/Object;

    check-cast p1, Lv9/i;

    if-eqz p1, :cond_4

    invoke-interface {p2, p1}, Lya/b;->h(Lv9/p0;)V

    :cond_4
    move-object p2, p0

    :goto_2
    return-object p2
.end method

.method public static final t0(Lw9/x;Lfa/g;Lya/b;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p0, p1, Lfa/g$a;

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lfa/k$k;->h:Lfa/k$k;

    .line 4
    invoke-interface {p2, p0}, Lya/b;->i(Lfa/k;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p0, p1, Lfa/g$b;

    if-eqz p0, :cond_1

    .line 6
    sget-object p0, Lfa/k$j;->h:Lfa/k$j;

    .line 7
    invoke-interface {p2, p0}, Lya/b;->i(Lfa/k;)V

    goto :goto_1

    .line 8
    :cond_1
    instance-of p0, p1, Lfa/g$c;

    if-eqz p0, :cond_2

    .line 9
    new-instance p0, Lfa/k$p;

    check-cast p1, Lfa/g$c;

    .line 10
    iget-object v0, p1, Lfa/g$c;->a:Ljava/lang/String;

    .line 11
    iget-object p1, p1, Lfa/g$c;->b:Ljava/lang/String;

    .line 12
    invoke-direct {p0, v0, p1}, Lfa/k$p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {p2, p0}, Lya/b;->i(Lfa/k;)V

    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public static final u0(Lw9/x;Lya/b;Lfa/b;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lya/b;->a()Lfb/c;

    move-result-object p0

    .line 3
    instance-of v0, p2, Lfa/b$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lfd/e;

    .line 4
    new-instance v2, Lfa/k$v;

    check-cast p2, Lfa/b$b;

    invoke-direct {v2, p2}, Lfa/k$v;-><init>(Lfa/b$b;)V

    .line 5
    new-instance p2, Lfa/n$b;

    invoke-direct {p2, p0}, Lfa/n$b;-><init>(Lfb/c;)V

    .line 6
    invoke-direct {v0, v2, p2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 7
    :cond_0
    instance-of v0, p2, Lfa/b$c;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lfd/e;

    new-instance v2, Lfa/k$w;

    check-cast p2, Lfa/b$c;

    invoke-direct {v2, p2}, Lfa/k$w;-><init>(Lfa/b$c;)V

    new-instance p2, Lfa/n$d;

    invoke-direct {p2, p0}, Lfa/n$d;-><init>(Lfb/c;)V

    invoke-direct {v0, v2, p2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 9
    :cond_1
    instance-of v0, p2, Lfa/b$a;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    .line 10
    new-instance v2, Lfd/e;

    .line 11
    new-instance v3, Lfa/k$d;

    if-eqz v0, :cond_4

    .line 12
    check-cast p2, Lfa/b$a;

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    :goto_2
    if-nez p2, :cond_5

    .line 13
    new-instance p2, Lfa/b$a;

    const-string v0, "Result was null"

    invoke-direct {p2, p0, v0}, Lfa/b$a;-><init>(Lfb/c;Ljava/lang/String;)V

    .line 14
    :cond_5
    invoke-direct {v3, p2}, Lfa/k$d;-><init>(Lfa/b$a;)V

    .line 15
    new-instance p2, Lfa/n$c;

    invoke-direct {p2, p0}, Lfa/n$c;-><init>(Lfb/c;)V

    .line 16
    invoke-direct {v2, v3, p2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 17
    :goto_3
    iget-object p0, v0, Lfd/e;->h:Ljava/lang/Object;

    .line 18
    check-cast p0, Lfa/k;

    .line 19
    iget-object p2, v0, Lfd/e;->i:Ljava/lang/Object;

    .line 20
    check-cast p2, Lfa/n;

    invoke-interface {p1, p0, p2, v1}, Lya/b;->M(Lfa/k;Lfa/n;Z)V

    return-void

    .line 21
    :cond_6
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0
.end method

.method public static final v0(Lw9/x;Lya/b;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p1}, Lya/b;->L()Lfa/c;

    move-result-object p0

    .line 3
    iget-object p0, p0, Lfa/c;->j:Lfa/k;

    .line 4
    instance-of v0, p0, Lfa/p;

    if-eqz v0, :cond_0

    check-cast p0, Lfa/p;

    invoke-interface {p0}, Lfa/p;->m()F

    move-result p0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p0, Lfa/k$a0;

    if-eqz v0, :cond_1

    check-cast p0, Lfa/k$a0;

    invoke-virtual {p0}, Lfa/k$a0;->m()F

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 6
    :goto_0
    new-instance v0, Lfa/k$a0$c;

    invoke-direct {v0, p0}, Lfa/k$a0$c;-><init>(F)V

    invoke-interface {p1, v0}, Lya/b;->i(Lfa/k;)V

    return-void
.end method


# virtual methods
.method public final A()Lda/f;
    .locals 5

    .line 1
    new-instance v0, Lda/f;

    .line 2
    new-instance v1, Lda/b;

    .line 3
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->e()Lda/d;

    move-result-object v2

    invoke-static {v2}, Lda/e;->j(Lda/d;)Lv9/e;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v3

    invoke-interface {v3}, Lya/b;->l()Lda/a;

    move-result-object v3

    .line 5
    invoke-direct {v1, v2, v3}, Lda/b;-><init>(Lv9/e;Lda/a;)V

    .line 6
    new-instance v2, Lda/b;

    .line 7
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v3

    invoke-interface {v3}, Lya/b;->e()Lda/d;

    move-result-object v3

    invoke-static {v3}, Lda/e;->j(Lda/d;)Lv9/e;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v4

    invoke-interface {v4}, Lya/b;->l()Lda/a;

    move-result-object v4

    .line 9
    invoke-direct {v2, v3, v4}, Lda/b;-><init>(Lv9/e;Lda/a;)V

    .line 10
    invoke-direct {v0, v1, v2}, Lda/f;-><init>(Lda/b;Lda/b;)V

    return-object v0
.end method

.method public final A0()Lya/b;
    .locals 3

    .line 1
    sget-object v0, Lya/a;->a:Lya/a;

    .line 2
    iget-object v1, p0, Lw9/x;->l:Lea/m;

    .line 3
    iget-object v2, v1, Lea/m;->h:Ljava/lang/String;

    .line 4
    iget-object v1, v1, Lea/m;->k:Lea/b;

    .line 5
    invoke-virtual {v0, v2, v1}, Lya/a;->b(Ljava/lang/String;Lea/b;)Lya/b;

    move-result-object v0

    return-object v0
.end method

.method public final B(Lw9/a;Lv9/s6;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "sessionStopRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "SessionStop"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lw9/x$z0;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$z0;-><init>(Lw9/x;Lw9/a;Lv9/s6;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final B0()Lya/b;
    .locals 3

    .line 1
    sget-object v0, Lya/a;->a:Lya/a;

    .line 2
    iget-object v1, p0, Lw9/x;->l:Lea/m;

    .line 3
    iget-object v2, v1, Lea/m;->h:Ljava/lang/String;

    .line 4
    iget-object v1, v1, Lea/m;->l:Lea/b;

    .line 5
    invoke-virtual {v0, v2, v1}, Lya/a;->b(Ljava/lang/String;Lea/b;)Lya/b;

    move-result-object v0

    return-object v0
.end method

.method public final C(Lw9/a;Lea/h;Lqd/l;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lea/h;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Lv9/r;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "laceTightness"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notConnected"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidInput"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lw9/x;->w0(Lea/h;Lw9/a;)Lea/h$a;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 2
    invoke-virtual {p0, p1, p3}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 3
    new-instance p3, Lx9/g;

    invoke-direct {p3, p1, p2, p4}, Lx9/g;-><init>(Lw9/a;Lea/h$a;Lqd/l;)V

    const/4 p4, 0x1

    aput-object p3, v0, p4

    .line 4
    new-instance p3, Lw9/x$i0;

    invoke-direct {p3, p0, p1, p2}, Lw9/x$i0;-><init>(Lw9/x;Lw9/a;Lea/h$a;)V

    invoke-virtual {p0, v0, p3}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final C0()Lcb/a;
    .locals 1

    iget-object v0, p0, Lw9/x;->F:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcb/a;

    return-object v0
.end method

.method public final D(Lw9/a;Lv9/z5;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "sessionDownloadStopRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "SessionDownloadStop"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lw9/x$v0;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$v0;-><init>(Lw9/x;Lw9/a;Lv9/z5;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final D0()Lea/a;
    .locals 13

    .line 1
    iget-object v0, p0, Lw9/x;->d:Lea/g;

    invoke-virtual {v0}, Lea/g;->a()Lea/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lea/a;->a:Lea/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v6, v0, Lea/e;->i:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 4
    iget-object v0, p0, Lw9/x;->l:Lea/m;

    .line 5
    iget-object v0, v0, Lea/m;->m:Ljava/lang/String;

    .line 6
    invoke-static {v0, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v1, p0, Lw9/x;->l:Lea/m;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    const/16 v12, 0x17df

    .line 9
    invoke-static/range {v1 .. v12}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw9/x;->G0(Lea/m;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lw9/x;->d:Lea/g;

    invoke-virtual {v0}, Lea/g;->a()Lea/a;

    move-result-object v0

    return-object v0
.end method

.method public final E(Lw9/a;Lea/d;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lea/d;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptKitColor"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notConnected"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p3}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 2
    new-instance p3, Lw9/x$n;

    invoke-direct {p3, p0, p1, p2}, Lw9/x$n;-><init>(Lw9/x;Lw9/a;Lea/d;)V

    invoke-virtual {p0, v0, p3}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final E0(Lw9/u1;Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/u1;",
            "Lqd/l<",
            "-",
            "Lya/b;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object p1

    invoke-interface {p2, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final F(Lv9/t0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw9/x;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lw9/x;->v:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final F0(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$r0;

    invoke-direct {p2, p0, p1}, Lw9/x$r0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final G(Lw9/a;Lv9/x0;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.1.7"
    .end annotation

    const-string v0, "animationStartRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 1
    iget-object v1, p2, Lv9/x0;->c:Lqd/l;

    const-string v2, "AnimationStart"

    .line 2
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 5
    new-instance v1, Lx9/f;

    .line 6
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 9
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 10
    new-instance v1, Lw9/x$e;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$e;-><init>(Lw9/x;Lw9/a;Lv9/x0;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final G0(Lea/m;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lw9/x;->z0()Lab/a;

    move-result-object v1

    invoke-interface {v1}, Lab/a;->c()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lea/m;

    .line 3
    iget-object v3, v3, Lea/m;->h:Ljava/lang/String;

    .line 4
    iget-object v4, p0, Lw9/x;->l:Lea/m;

    .line 5
    iget-object v4, v4, Lea/m;->h:Ljava/lang/String;

    .line 6
    invoke-static {v3, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    check-cast v2, Lea/m;

    if-eqz v2, :cond_2

    .line 7
    iput-object v2, p0, Lw9/x;->l:Lea/m;

    .line 8
    :cond_2
    iget-object v1, p0, Lw9/x;->l:Lea/m;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "other"

    .line 9
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p1, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 11
    iget-object v2, v1, Lea/m;->i:Ljava/lang/String;

    iget-object v5, p1, Lea/m;->i:Ljava/lang/String;

    invoke-static {v2, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 12
    iget-boolean v5, v1, Lea/m;->j:Z

    iget-boolean v6, p1, Lea/m;->j:Z

    if-ne v5, v6, :cond_3

    move v5, v3

    goto :goto_1

    :cond_3
    move v5, v4

    .line 13
    :goto_1
    iget-object v6, v1, Lea/m;->k:Lea/b;

    iget-object v7, p1, Lea/m;->k:Lea/b;

    invoke-static {v6, v7}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    .line 14
    iget-object v7, v1, Lea/m;->l:Lea/b;

    iget-object v8, p1, Lea/m;->l:Lea/b;

    invoke-static {v7, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    .line 15
    iget-object v8, v1, Lea/m;->m:Ljava/lang/String;

    iget-object v9, p1, Lea/m;->m:Ljava/lang/String;

    invoke-static {v8, v9}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 16
    iget-object v9, v1, Lea/m;->n:Ljava/lang/String;

    iget-object v10, p1, Lea/m;->n:Ljava/lang/String;

    invoke-static {v9, v10}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 17
    iget-object v10, v1, Lea/m;->o:Ljava/util/List;

    iget-object v11, p1, Lea/m;->o:Ljava/util/List;

    invoke-static {v10, v11}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    .line 18
    iget-boolean v11, v1, Lea/m;->t:Z

    iget-boolean v12, p1, Lea/m;->t:Z

    if-ne v11, v12, :cond_4

    move v11, v3

    goto :goto_2

    :cond_4
    move v11, v4

    .line 19
    :goto_2
    iget-object v1, v1, Lea/m;->r:Lea/f;

    iget-object v12, p1, Lea/m;->r:Lea/f;

    if-ne v1, v12, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    if-eqz v8, :cond_7

    if-eqz v9, :cond_7

    if-eqz v10, :cond_7

    if-eqz v11, :cond_7

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    move v3, v4

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/16 v11, 0x17ff

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v0

    iput-object v0, p0, Lw9/x;->l:Lea/m;

    .line 21
    invoke-virtual {p0}, Lw9/x;->z0()Lab/a;

    move-result-object v0

    .line 22
    sget-object v1, Lv9/a;->i:Lv9/a$a;

    .line 23
    sget-object v1, Lv9/a;->j:Lv9/a;

    .line 24
    iget-object v2, p0, Lw9/x;->l:Lea/m;

    .line 25
    new-instance v3, Lw9/x$a;

    invoke-direct {v3, p0, v2}, Lw9/x$a;-><init>(Lw9/x;Lea/m;)V

    .line 26
    invoke-interface {v0, v1, v2, v3}, Lab/a;->d(Lv9/a;Lea/m;Lv9/p0;)V

    .line 27
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lw9/x$b;

    invoke-direct {v1, p0}, Lw9/x$b;-><init>(Lw9/x;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    goto :goto_5

    .line 28
    :cond_8
    iput-object p1, p0, Lw9/x;->l:Lea/m;

    .line 29
    :goto_5
    iget-object v0, p0, Lw9/x;->d:Lea/g;

    iget-object v1, p0, Lw9/x;->l:Lea/m;

    .line 30
    iget-object v2, v1, Lea/m;->m:Ljava/lang/String;

    .line 31
    iget-object v1, v1, Lea/m;->o:Ljava/util/List;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "modes"

    .line 33
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object v2, v0, Lea/g;->a:Ljava/lang/String;

    .line 35
    iput-object v1, v0, Lea/g;->b:Ljava/util/List;

    return-void
.end method

.method public final H(Lw9/a;Lqd/l;Lqd/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/h;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Lv9/l0;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "alreadyConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionNotGranted"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    .line 1
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v2, Lx9/l;

    invoke-direct {v2, v1, p1, p3}, Lx9/l;-><init>(Ljava/util/List;Lw9/a;Lqd/l;)V

    const/4 p3, 0x0

    aput-object v2, v0, p3

    .line 3
    new-instance p3, Lw9/x$p;

    invoke-direct {p3, p0, p1, p2}, Lw9/x$p;-><init>(Lw9/x;Lw9/a;Lqd/l;)V

    invoke-virtual {p0, v0, p3}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final H0(ZLv9/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lw9/x;->z:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object p1, p0, Lw9/x;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lw9/x;->t:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final I(Lfa/j;Lw9/a;Lqd/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/j;",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "highSpeedTransfer"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "notConnected"

    invoke-static {p3, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object p1

    .line 2
    sget-object v0, Lfa/k$r;->h:Lfa/k$r;

    .line 3
    new-instance v1, Lfa/n$c;

    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v2

    invoke-direct {v1, v2}, Lfa/n$c;-><init>(Lfb/c;)V

    const/4 v2, 0x0

    .line 4
    invoke-interface {p1, v0, v1, v2}, Lya/b;->M(Lfa/k;Lfa/n;Z)V

    .line 5
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object p1

    .line 6
    new-instance v1, Lfa/n$c;

    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v3

    invoke-interface {v3}, Lya/b;->a()Lfb/c;

    move-result-object v3

    invoke-direct {v1, v3}, Lfa/n$c;-><init>(Lfb/c;)V

    .line 7
    invoke-interface {p1, v0, v1, v2}, Lya/b;->M(Lfa/k;Lfa/n;Z)V

    const/4 p1, 0x1

    new-array p1, p1, [Lx9/b;

    .line 8
    invoke-virtual {p0, p2, p3}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p3

    aput-object p3, p1, v2

    .line 9
    new-instance p3, Lw9/x$v;

    invoke-direct {p3, p0, p2}, Lw9/x$v;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, p1, p3}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final J(Lv9/a;Lea/e;Lqd/l;Lqd/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Lea/e;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Lv9/y;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitDeviceMode"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notConnected"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeDoesNotExist"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    new-instance v1, Lx9/h;

    .line 2
    new-instance v2, Lw9/a;

    sget-object v3, Lw9/u1;->l:Lw9/u1;

    invoke-direct {v2, p1, v3}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 3
    iget-object v3, p0, Lw9/x;->l:Lea/m;

    .line 4
    invoke-direct {v1, v2, p2, v3, p4}, Lx9/h;-><init>(Lw9/a;Lea/e;Lea/m;Lqd/l;)V

    const/4 p4, 0x0

    aput-object v1, v0, p4

    .line 5
    new-instance p4, Lw9/x$l0;

    invoke-direct {p4, p0, p2, p1, p3}, Lw9/x$l0;-><init>(Lw9/x;Lea/e;Lv9/a;Lqd/l;)V

    invoke-virtual {p0, v0, p4}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final K(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$j;

    invoke-direct {p2, p0, p1}, Lw9/x$j;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final L(Lv9/a;Lea/e;Lqd/l;Lqd/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Lea/e;",
            "Lqd/l<",
            "-",
            "Lv9/r;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Lv9/y;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitDeviceMode"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidInput"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeAlreadyExists"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v0, v0, [Lx9/b;

    .line 1
    new-instance v1, Lw9/a;

    sget-object v2, Lw9/u1;->l:Lw9/u1;

    invoke-direct {v1, p1, v2}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 2
    iget-object v3, p2, Lea/e;->i:Ljava/lang/String;

    .line 3
    new-instance v4, Lx9/j;

    invoke-direct {v4, v1, v3, p3}, Lx9/j;-><init>(Lw9/a;Ljava/lang/String;Lqd/l;)V

    const/4 v1, 0x0

    aput-object v4, v0, v1

    .line 4
    new-instance v1, Lw9/a;

    sget-object v3, Lw9/u1;->j:Lw9/u1;

    invoke-direct {v1, p1, v3}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 5
    iget-object v4, p2, Lea/e;->k:Lea/c;

    .line 6
    iget-object v4, v4, Lea/c;->h:Lea/i;

    .line 7
    iget-object v4, v4, Lea/i;->i:Lea/h$a;

    .line 8
    new-instance v5, Lx9/g;

    invoke-direct {v5, v1, v4, p3}, Lx9/g;-><init>(Lw9/a;Lea/h$a;Lqd/l;)V

    const/4 v1, 0x1

    aput-object v5, v0, v1

    .line 9
    new-instance v1, Lw9/a;

    sget-object v4, Lw9/u1;->k:Lw9/u1;

    invoke-direct {v1, p1, v4}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 10
    iget-object v5, p2, Lea/e;->l:Lea/c;

    .line 11
    iget-object v5, v5, Lea/c;->h:Lea/i;

    .line 12
    iget-object v5, v5, Lea/i;->i:Lea/h$a;

    .line 13
    new-instance v6, Lx9/g;

    invoke-direct {v6, v1, v5, p3}, Lx9/g;-><init>(Lw9/a;Lea/h$a;Lqd/l;)V

    const/4 v1, 0x2

    aput-object v6, v0, v1

    .line 14
    new-instance v1, Lw9/a;

    invoke-direct {v1, p1, v3}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 15
    iget-object v3, p2, Lea/e;->k:Lea/c;

    .line 16
    iget-object v3, v3, Lea/c;->i:Lea/d;

    .line 17
    new-instance v5, Lx9/a;

    invoke-direct {v5, v3, v1, p3}, Lx9/a;-><init>(Lea/d;Lw9/a;Lqd/l;)V

    const/4 v1, 0x3

    aput-object v5, v0, v1

    .line 18
    new-instance v1, Lw9/a;

    invoke-direct {v1, p1, v4}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 19
    iget-object v3, p2, Lea/e;->l:Lea/c;

    .line 20
    iget-object v3, v3, Lea/c;->i:Lea/d;

    .line 21
    new-instance v4, Lx9/a;

    invoke-direct {v4, v3, v1, p3}, Lx9/a;-><init>(Lea/d;Lw9/a;Lqd/l;)V

    const/4 p3, 0x4

    aput-object v4, v0, p3

    .line 22
    new-instance p3, Lx9/i;

    .line 23
    new-instance v1, Lw9/a;

    invoke-direct {v1, p1, v2}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 24
    iget-object p1, p0, Lw9/x;->l:Lea/m;

    .line 25
    invoke-direct {p3, v1, p2, p1, p4}, Lx9/i;-><init>(Lw9/a;Lea/e;Lea/m;Lqd/l;)V

    const/4 p1, 0x5

    aput-object p3, v0, p1

    .line 26
    new-instance p1, Lw9/x$j0;

    invoke-direct {p1, p0, p2}, Lw9/x$j0;-><init>(Lw9/x;Lea/e;)V

    invoke-virtual {p0, v0, p1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final M(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$s0;

    invoke-direct {p2, p0, p1}, Lw9/x$s0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final N(Lv9/s;)V
    .locals 2

    const-string v0, "modeListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lw9/x;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lw9/x;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final O(Lw9/a;Lv9/w5;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "sessionDownloadStartRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "SessionDownloadStart"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lw9/x$u0;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$u0;-><init>(Lw9/x;Lw9/a;Lv9/w5;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final P(Lw9/a;Lv9/k1;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "autoAdaptCurrentActivityRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "AutoAdaptCurrentActivity"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 9
    new-instance p2, Lw9/x$g;

    invoke-direct {p2, p0, p1}, Lw9/x$g;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final Q(Lv9/a;Lea/e;Lqd/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Lea/e;",
            "Lqd/l<",
            "-",
            "Lv9/y;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitDeviceMode"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeDoesNotExist"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    new-instance v1, Lx9/h;

    .line 2
    new-instance v2, Lw9/a;

    sget-object v3, Lw9/u1;->l:Lw9/u1;

    invoke-direct {v2, p1, v3}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 3
    iget-object p1, p0, Lw9/x;->l:Lea/m;

    .line 4
    invoke-direct {v1, v2, p2, p1, p3}, Lx9/h;-><init>(Lw9/a;Lea/e;Lea/m;Lqd/l;)V

    const/4 p1, 0x0

    aput-object v1, v0, p1

    .line 5
    new-instance p1, Lw9/x$k0;

    invoke-direct {p1, p0, p2}, Lw9/x$k0;-><init>(Lw9/x;Lea/e;)V

    invoke-virtual {p0, v0, p1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final R(Lw9/a;Lv9/e6;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "sessionGetRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "SessionGet"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lw9/x$w0;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$w0;-><init>(Lw9/x;Lw9/a;Lv9/e6;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final S(Lw9/a;Lv9/i6;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "sessionPauseRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "SessionPause"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lw9/x$x0;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$x0;-><init>(Lw9/x;Lw9/a;Lv9/i6;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final T(Lv9/a;)V
    .locals 1

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lw9/x;->n:Lfb/n;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lfb/n;->cancel()V

    :cond_0
    return-void
.end method

.method public final U(Lw9/a;Lv9/g5;)V
    .locals 3
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "1.4.1"
    .end annotation

    const-string v0, "adaptKitDeviceRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lw9/x$p0;->h:Lw9/x$p0;

    invoke-virtual {p0, p1, v0}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    .line 2
    iget-object p1, p2, Lv9/k;->a:Lfb/c;

    .line 3
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object p2

    invoke-interface {p2}, Lya/b;->a()Lfb/c;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v0

    invoke-interface {v0}, Lya/b;->a()Lfb/c;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lw9/x;->l:Lea/m;

    const-string v2, "leftFirmwareVersion"

    .line 6
    invoke-static {p2, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "rightFirmwareVersion"

    invoke-static {v0, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adaptKitPairedDevices"

    invoke-static {v1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "requiredFirmwareVersion"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, "productInformation"

    .line 7
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public final V(Lv9/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw9/x;->C:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lw9/x;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final W(Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/l<",
            "-",
            "Lea/m;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pairUpdated"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw9/x;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final X(Lv9/i;)V
    .locals 1

    const-string v0, "adaptKitDeviceResultListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lw9/x;->H0(ZLv9/i;)V

    return-void
.end method

.method public final Y(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$e0;

    invoke-direct {p2, p0, p1}, Lw9/x$e0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final Z(Lw9/a;Lv9/i3;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 1
    iget-object v1, p2, Lv9/i3;->c:Lqd/l;

    const-string v2, "GestureConfigurationSet"

    .line 2
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 5
    new-instance v1, Lx9/f;

    .line 6
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 9
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 10
    new-instance v1, Lw9/x$z;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$z;-><init>(Lw9/x;Lw9/a;Lv9/i3;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final a(Lw9/a;Lv9/v0;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "1.5.0"
    .end annotation

    const-string v0, "animationGetRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 1
    iget-object v1, p2, Lv9/v0;->b:Lqd/l;

    const-string v2, "AnimationGet"

    .line 2
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 5
    new-instance v1, Lx9/f;

    .line 6
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 9
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 10
    new-instance p2, Lw9/x$c;

    invoke-direct {p2, p0, p1}, Lw9/x$c;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final a0(Lw9/a;Lv9/u1;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "autoAdaptStopRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "AutoAdaptStop"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 9
    new-instance p2, Lw9/x$i;

    invoke-direct {p2, p0, p1}, Lw9/x$i;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final b(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$c0;

    invoke-direct {p2, p0, p1}, Lw9/x$c0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final b0(Lw9/a;Lv9/z0;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "1.5.0"
    .end annotation

    const-string v0, "animationStartRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 1
    iget-object v1, p2, Lv9/z0;->c:Lqd/l;

    const-string v2, "AnimationStart"

    .line 2
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 5
    new-instance v1, Lx9/f;

    .line 6
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 9
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 10
    new-instance v1, Lw9/x$d;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$d;-><init>(Lw9/x;Lw9/a;Lv9/z0;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final c(Lw9/a;Lv9/o6;)V
    .locals 1
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "sessionStartRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string v0, "SessionStart"

    .line 1
    invoke-static {p2, v0}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    .line 3
    throw p2
.end method

.method public final c0(Lw9/a;Lv9/w6;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "sessionsGetRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "SessionsGet"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 9
    new-instance p2, Lw9/x$a1;

    invoke-direct {p2, p0, p1}, Lw9/x$a1;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final d(Lv9/o;)V
    .locals 2

    const-string v0, "firmwareUpdateListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lw9/x;->C:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lw9/x;->w:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final d0(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$f0;

    invoke-direct {p2, p0, p1}, Lw9/x$f0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final e(Lw9/a;Lv9/m3;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 1
    iget-object v1, p2, Lv9/m3;->b:Lqd/l;

    const-string v2, "GestureStatisticsGet"

    .line 2
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 5
    new-instance v1, Lx9/f;

    .line 6
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 9
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 10
    new-instance p2, Lw9/x$a0;

    invoke-direct {p2, p0, p1}, Lw9/x$a0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final e0()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lea/e;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw9/x;->z0()Lab/a;

    move-result-object v0

    invoke-interface {v0}, Lab/a;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lea/m;

    .line 3
    iget-object v2, v2, Lea/m;->h:Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lw9/x;->l:Lea/m;

    .line 5
    iget-object v3, v3, Lea/m;->h:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lea/m;

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0, v1}, Lw9/x;->G0(Lea/m;)V

    .line 8
    iget-object v0, v1, Lea/m;->o:Ljava/util/List;

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lw9/x;->c:Lqd/l;

    .line 10
    new-instance v1, Lv9/z;

    .line 11
    sget-object v2, Lv9/a;->i:Lv9/a$a;

    .line 12
    sget-object v2, Lv9/a;->j:Lv9/a;

    .line 13
    iget-object v3, p0, Lw9/x;->l:Lea/m;

    .line 14
    iget-object v3, v3, Lea/m;->h:Ljava/lang/String;

    .line 15
    invoke-direct {v1, v2, v3}, Lv9/z;-><init>(Lv9/a;Ljava/lang/String;)V

    .line 16
    invoke-interface {v0, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw9/x;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw9/x;

    iget-object v1, p0, Lw9/x;->b:Lea/m;

    iget-object v3, p1, Lw9/x;->b:Lea/m;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lw9/x;->c:Lqd/l;

    iget-object p1, p1, Lw9/x;->c:Lqd/l;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final f(Lw9/a;)V
    .locals 3

    const-string v0, "adaptKitIdentifierShoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lw9/x;->i:Ljd/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/JobKt;->cancelChildren$default(Ljd/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p1, Lw9/a;->i:Lw9/u1;

    .line 3
    sget-object v1, Lw9/u1;->j:Lw9/u1;

    if-eq v0, v1, :cond_0

    sget-object v1, Lw9/u1;->l:Lw9/u1;

    if-ne v0, v1, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lw9/x;->C0()Lcb/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lw9/x;->r:Lfd/d;

    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lka/d;

    .line 6
    invoke-interface {v0, v1}, Lcb/a;->c(Lka/d;)V

    .line 7
    :cond_1
    iget-object v0, p1, Lw9/a;->i:Lw9/u1;

    .line 8
    sget-object v1, Lw9/u1;->k:Lw9/u1;

    if-eq v0, v1, :cond_2

    sget-object v1, Lw9/u1;->l:Lw9/u1;

    if-ne v0, v1, :cond_3

    .line 9
    :cond_2
    invoke-virtual {p0}, Lw9/x;->C0()Lcb/a;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lw9/x;->s:Lfd/d;

    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lka/d;

    .line 11
    invoke-interface {v0, v1}, Lcb/a;->c(Lka/d;)V

    .line 12
    :cond_3
    iget-object v0, p1, Lw9/a;->i:Lw9/u1;

    .line 13
    new-instance v1, Lw9/x$s;

    invoke-direct {v1, p1}, Lw9/x$s;-><init>(Lw9/a;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->E0(Lw9/u1;Lqd/l;)V

    return-void
.end method

.method public final f0(Lw9/a;Lv9/p3;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 1
    iget-object v1, p2, Lv9/p3;->b:Lqd/l;

    const-string v2, "GestureStatisticsReset"

    .line 2
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 5
    new-instance v1, Lx9/f;

    .line 6
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 9
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 10
    new-instance p2, Lw9/x$b0;

    invoke-direct {p2, p0, p1}, Lw9/x$b0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final g(Lw9/a;Lea/h;Lqd/l;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lea/h;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Lv9/r;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "laceTightness"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notConnected"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidInput"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2, p1}, Lw9/x;->w0(Lea/h;Lw9/a;)Lea/h$a;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 2
    invoke-virtual {p0, p1, p3}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p3

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 3
    new-instance p3, Lx9/m;

    invoke-direct {p3, p1, p2, p4}, Lx9/m;-><init>(Lw9/a;Lea/h$a;Lqd/l;)V

    const/4 p4, 0x1

    aput-object p3, v0, p4

    .line 4
    new-instance p3, Lw9/x$g0;

    invoke-direct {p3, p0, p1, p2}, Lw9/x$g0;-><init>(Lw9/x;Lw9/a;Lea/h$a;)V

    invoke-virtual {p0, v0, p3}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final g0(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$w;

    invoke-direct {p2, p0, p1}, Lw9/x$w;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final h(Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/l<",
            "-",
            "Lea/m;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pairUpdated"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lw9/x;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h0(Lw9/a;Lv9/l6;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "sessionResumeRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "SessionResume"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lw9/x$y0;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$y0;-><init>(Lw9/x;Lw9/a;Lv9/l6;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lw9/x;->b:Lea/m;

    invoke-virtual {v0}, Lea/m;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lw9/x;->c:Lqd/l;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(Lw9/a;)Lfb/c;
    .locals 1

    .line 1
    iget-object p1, p1, Lw9/a;->i:Lw9/u1;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object p1

    invoke-interface {p1}, Lya/b;->a()Lfb/c;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v0

    invoke-interface {v0}, Lya/b;->a()Lfb/c;

    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Lhd/b;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Lfb/c;

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object p1

    invoke-interface {p1}, Lya/b;->a()Lfb/c;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object p1

    invoke-interface {p1}, Lya/b;->a()Lfb/c;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final i0(Lfb/d;)V
    .locals 2

    const-string v0, "fitCalibrateListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lw9/x;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lw9/x;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final j(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$x;

    invoke-direct {p2, p0, p1}, Lw9/x$x;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final j0(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$m;

    invoke-direct {p2, p0, p1}, Lw9/x$m;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final k(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$h0;

    invoke-direct {p2, p0, p1}, Lw9/x$h0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final k0(Lfb/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw9/x;->B:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lw9/x;->x:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final l(Lw9/a;Lv9/r1;)V
    .locals 4
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "autoAdaptStartRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "AutoAdaptStart"

    .line 1
    invoke-static {v0, v1}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    .line 3
    iget-object p1, p2, Lv9/k;->a:Lfb/c;

    .line 4
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object p2

    invoke-interface {p2}, Lya/b;->a()Lfb/c;

    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v1

    invoke-interface {v1}, Lya/b;->a()Lfb/c;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lw9/x;->l:Lea/m;

    const-string v3, "leftFirmwareVersion"

    .line 7
    invoke-static {p2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "rightFirmwareVersion"

    invoke-static {v1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adaptKitPairedDevices"

    invoke-static {v2, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "requiredFirmwareVersion"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lw9/x;->l:Lea/m;

    .line 9
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v1

    invoke-interface {v1}, Lya/b;->Q()Lla/c;

    .line 10
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v1

    invoke-interface {v1}, Lya/b;->Q()Lla/c;

    .line 11
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "publishConditionError"

    invoke-static {v0, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "autoAdaptConfiguration"

    .line 12
    invoke-static {v0, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method public final l0(Lw9/a;Lv9/s5;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "sessionDownloadDeleteRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "SessionDownloadDelete"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Lw9/x$t0;

    invoke-direct {v1, p0, p1, p2}, Lw9/x$t0;-><init>(Lw9/x;Lw9/a;Lv9/s5;)V

    invoke-virtual {p0, v0, v1}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final m(Lw9/a;Lv9/d1;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "1.5.0"
    .end annotation

    const-string v0, "animationStopRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 1
    iget-object v1, p2, Lv9/d1;->b:Lqd/l;

    const-string v2, "AnimationStop"

    .line 2
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 5
    new-instance v1, Lx9/f;

    .line 6
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 9
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 10
    new-instance p2, Lw9/x$f;

    invoke-direct {p2, p0, p1}, Lw9/x$f;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final n(Lv9/i;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lw9/x;->H0(ZLv9/i;)V

    return-void
.end method

.method public final o(Lw9/a;Lqd/l;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/h;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptKitIdentifierShoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alreadyConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    new-instance v7, Lx9/e;

    .line 2
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v1

    invoke-interface {v1}, Lya/b;->e()Lda/d;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v1

    invoke-interface {v1}, Lya/b;->e()Lda/d;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lw9/x;->l:Lea/m;

    move-object v1, v7

    move-object v2, p1

    move-object v6, p2

    .line 5
    invoke-direct/range {v1 .. v6}, Lx9/e;-><init>(Lw9/a;Lda/d;Lda/d;Lea/m;Lqd/l;)V

    const/4 p2, 0x0

    aput-object v7, v0, p2

    .line 6
    new-instance p2, Lw9/x$o;

    invoke-direct {p2, p1, p0}, Lw9/x$o;-><init>(Lw9/a;Lw9/x;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final p(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$u;

    invoke-direct {p2, p0, p1}, Lw9/x$u;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final q(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$k;

    invoke-direct {p2, p0, p1}, Lw9/x$k;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final r(Lw9/a;Lv9/o1;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.3.0"
    .end annotation

    const-string v0, "autoAdaptCurrentStateRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    const/4 v1, 0x0

    const-string v2, "AutoAdaptCurrentState"

    .line 1
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 2
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 4
    new-instance v1, Lx9/f;

    .line 5
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 7
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 8
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 9
    new-instance p2, Lw9/x$h;

    invoke-direct {p2, p0, p1}, Lw9/x$h;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final s(Lv9/a;Lqd/l;Lqd/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notConnectedLeft"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notConnectedRight"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lw9/x;->n:Lfb/n;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lfb/n;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v0

    invoke-interface {v0}, Lya/b;->e()Lda/d;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v1

    invoke-interface {v1}, Lya/b;->e()Lda/d;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lda/d;->g()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Lv9/j;

    .line 7
    new-instance v4, Lw9/a;

    sget-object v5, Lw9/u1;->j:Lw9/u1;

    invoke-direct {v4, p1, v5}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 8
    iget-object v5, p0, Lw9/x;->l:Lea/m;

    .line 9
    iget-object v5, v5, Lea/m;->k:Lea/b;

    .line 10
    iget-object v5, v5, Lea/b;->j:Ljava/lang/String;

    .line 11
    invoke-direct {v2, v4, v5}, Lv9/j;-><init>(Lw9/a;Ljava/lang/String;)V

    .line 12
    invoke-interface {p2, v2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object v3, p0, Lw9/x;->n:Lfb/n;

    .line 14
    :cond_1
    invoke-virtual {v0}, Lda/d;->g()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    new-instance p2, Lv9/j;

    .line 16
    new-instance v2, Lw9/a;

    sget-object v4, Lw9/u1;->k:Lw9/u1;

    invoke-direct {v2, p1, v4}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 17
    iget-object v4, p0, Lw9/x;->l:Lea/m;

    .line 18
    iget-object v4, v4, Lea/m;->l:Lea/b;

    .line 19
    iget-object v4, v4, Lea/b;->j:Ljava/lang/String;

    .line 20
    invoke-direct {p2, v2, v4}, Lv9/j;-><init>(Lw9/a;Ljava/lang/String;)V

    .line 21
    invoke-interface {p3, p2}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object v3, p0, Lw9/x;->n:Lfb/n;

    .line 23
    :cond_2
    invoke-virtual {v1}, Lda/d;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lda/d;->b()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 24
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object p2

    .line 25
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object p3

    .line 26
    iget-object v0, p0, Lw9/x;->p:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfb/d;

    const-string v1, "fitCalibrateListener"

    .line 27
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v1, Lfb/o;

    invoke-direct {v1, p1, p2, p3, v0}, Lfb/o;-><init>(Lv9/a;Lya/b;Lya/b;Lfb/d;)V

    .line 29
    iput-object v1, p0, Lw9/x;->n:Lfb/n;

    const/4 p1, 0x2

    const/4 p2, 0x1

    .line 30
    iget-object p3, v1, Lfb/o;->j:Ljava/util/Timer;

    new-instance v0, Lfb/p;

    invoke-direct {v0, v1}, Lfb/p;-><init>(Lfb/o;)V

    .line 31
    iget-wide v2, v1, Lfb/o;->i:J

    .line 32
    invoke-virtual {p3, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 33
    iget-object p3, v1, Lfb/o;->b:Lya/b;

    invoke-interface {p3}, Lya/b;->e()Lda/d;

    move-result-object p3

    sget-object v0, Lda/d;->o:Lda/d;

    if-eq p3, v0, :cond_3

    .line 34
    new-instance p3, Lba/y;

    invoke-direct {p3, p2}, Lba/y;-><init>(I)V

    goto :goto_0

    .line 35
    :cond_3
    new-instance p3, Lba/m0;

    invoke-direct {p3, p2}, Lba/m0;-><init>(I)V

    .line 36
    :goto_0
    iput-object p3, v1, Lfb/o;->e:Lba/v;

    .line 37
    iget-object p2, v1, Lfb/o;->c:Lya/b;

    invoke-interface {p2}, Lya/b;->e()Lda/d;

    move-result-object p2

    if-eq p2, v0, :cond_4

    .line 38
    new-instance p2, Lba/y;

    invoke-direct {p2, p1}, Lba/y;-><init>(I)V

    goto :goto_1

    .line 39
    :cond_4
    new-instance p2, Lba/m0;

    invoke-direct {p2, p1}, Lba/m0;-><init>(I)V

    .line 40
    :goto_1
    iput-object p2, v1, Lfb/o;->f:Lba/v;

    .line 41
    invoke-virtual {v1}, Lfb/o;->d()V

    :cond_5
    return-void
.end method

.method public final t()Lfa/d;
    .locals 3

    .line 1
    new-instance v0, Lfa/d;

    .line 2
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v1

    invoke-interface {v1}, Lya/b;->L()Lfa/c;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->L()Lfa/c;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2}, Lfa/d;-><init>(Lfa/c;Lfa/c;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lw9/x;->b:Lea/m;

    iget-object v1, p0, Lw9/x;->c:Lqd/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdaptKitPairedDevicesControllerImpl(adaptKitPairedDevices="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pairNoLongerExists="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljd/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfa/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lw9/x$t;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lw9/x$t;-><init>(Lw9/x;Ljd/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final updatePair(Lea/m;)V
    .locals 13

    const-string v0, "adaptKitPairedDevices"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lea/m;->h:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lw9/x;->l:Lea/m;

    .line 3
    iget-object v1, v1, Lea/m;->h:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    const/16 v12, 0x17ff

    move-object v1, p1

    invoke-static/range {v1 .. v12}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lw9/x;->G0(Lea/m;)V

    :cond_0
    return-void
.end method

.method public final v(Lv9/a;Lqd/l;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Lqd/l<",
            "-",
            "Lv9/b;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "adaptIdentifier"

    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "connectedThroughOtherApp"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Lw9/x;->A()Lda/f;

    move-result-object v3

    .line 2
    iget-object v4, v3, Lda/f;->h:Lda/b;

    .line 3
    iget-object v4, v4, Lda/b;->h:Lv9/e;

    .line 4
    sget-object v5, Lv9/e;->p:Lv9/e;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    .line 5
    :goto_0
    iget-object v3, v3, Lda/f;->i:Lda/b;

    .line 6
    iget-object v3, v3, Lda/b;->h:Lv9/e;

    if-ne v3, v5, :cond_1

    move v3, v6

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance v2, Lw9/a;

    sget-object v3, Lw9/u1;->j:Lw9/u1;

    invoke-direct {v2, v1, v3}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 8
    sget-object v3, Lw9/v;->h:Lw9/v;

    .line 9
    invoke-virtual {v0, v2, v3}, Lw9/x;->F0(Lw9/a;Lqd/l;)V

    .line 10
    new-instance v2, Lw9/a;

    sget-object v4, Lw9/u1;->k:Lw9/u1;

    invoke-direct {v2, v1, v4}, Lw9/a;-><init>(Lv9/a;Lw9/u1;)V

    .line 11
    invoke-virtual {v0, v2, v3}, Lw9/x;->F0(Lw9/a;Lqd/l;)V

    .line 12
    iget-object v8, v0, Lw9/x;->l:Lea/m;

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x1

    const/16 v19, 0xfff

    const/4 v4, 0x0

    move-object v12, v4

    invoke-static/range {v8 .. v19}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v5

    .line 13
    invoke-virtual {v0, v5}, Lw9/x;->G0(Lea/m;)V

    .line 14
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v9

    iget-object v5, v0, Lw9/x;->l:Lea/m;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deletePair: about to delete "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x5

    move-object v10, v2

    move-object v14, v3

    invoke-static/range {v9 .. v14}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lw9/x;->z0()Lab/a;

    move-result-object v2

    new-array v3, v6, [Lea/m;

    .line 16
    iget-object v4, v0, Lw9/x;->l:Lea/m;

    aput-object v4, v3, v7

    invoke-static {v3}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    .line 17
    new-instance v4, Lw9/x$q;

    invoke-direct {v4, v0}, Lw9/x$q;-><init>(Lw9/x;)V

    .line 18
    invoke-interface {v2, v1, v3, v4}, Lab/a;->b(Lv9/a;Ljava/util/List;Lv9/p0;)V

    goto :goto_4

    .line 19
    :cond_3
    :goto_2
    new-instance v5, Lv9/b;

    const-string v6, ","

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 20
    iget-object v3, v0, Lw9/x;->l:Lea/m;

    .line 21
    iget-object v4, v3, Lea/m;->k:Lea/b;

    .line 22
    iget-object v4, v4, Lea/b;->j:Ljava/lang/String;

    .line 23
    iget-object v3, v3, Lea/m;->l:Lea/b;

    .line 24
    iget-object v3, v3, Lea/b;->j:Ljava/lang/String;

    .line 25
    invoke-static {v4, v6, v3}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    if-eqz v4, :cond_5

    .line 26
    iget-object v3, v0, Lw9/x;->l:Lea/m;

    .line 27
    iget-object v3, v3, Lea/m;->k:Lea/b;

    .line 28
    iget-object v3, v3, Lea/b;->j:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    .line 29
    iget-object v3, v0, Lw9/x;->l:Lea/m;

    .line 30
    iget-object v3, v3, Lea/m;->l:Lea/b;

    .line 31
    iget-object v3, v3, Lea/b;->j:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const-string v3, ""

    .line 32
    :goto_3
    iget-object v4, v0, Lw9/x;->l:Lea/m;

    .line 33
    iget-object v7, v4, Lea/m;->k:Lea/b;

    .line 34
    iget-object v7, v7, Lea/b;->j:Ljava/lang/String;

    .line 35
    iget-object v4, v4, Lea/m;->l:Lea/b;

    .line 36
    iget-object v4, v4, Lea/b;->j:Ljava/lang/String;

    .line 37
    invoke-static {v7, v6, v4}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-direct {v5, v1, v3, v4}, Lv9/b;-><init>(Lv9/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-interface {v2, v5}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void
.end method

.method public final w(Lv9/s;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw9/x;->z:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lw9/x;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final w0(Lea/h;Lw9/a;)Lea/h$a;
    .locals 5

    .line 1
    instance-of v0, p1, Lea/h$c;

    if-eqz v0, :cond_4

    .line 2
    check-cast p1, Lea/h$c;

    .line 3
    iget-object v0, p0, Lw9/x;->l:Lea/m;

    .line 4
    iget-object v0, v0, Lea/m;->k:Lea/b;

    .line 5
    iget v0, v0, Lea/b;->m:I

    const/4 v1, 0x1

    const-string v2, "relative"

    .line 6
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 7
    iget v4, p1, Lea/h$c;->j:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    int-to-float v0, v0

    mul-float/2addr v4, v0

    .line 8
    invoke-static {v4}, Lf1/b;->l(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 9
    :goto_0
    new-instance v4, Lea/h$a;

    invoke-direct {v4, v0}, Lea/h$a;-><init>(I)V

    .line 10
    iget-object v0, p0, Lw9/x;->l:Lea/m;

    .line 11
    iget-object v0, v0, Lea/m;->l:Lea/b;

    .line 12
    iget v0, v0, Lea/b;->m:I

    if-lez v0, :cond_1

    .line 13
    iget p1, p1, Lea/h$c;->j:I

    int-to-float p1, p1

    div-float/2addr p1, v2

    int-to-float v0, v0

    mul-float/2addr p1, v0

    .line 14
    invoke-static {p1}, Lf1/b;->l(F)I

    move-result v3

    .line 15
    :cond_1
    new-instance p1, Lea/h$a;

    invoke-direct {p1, v3}, Lea/h$a;-><init>(I)V

    .line 16
    iget-object p2, p2, Lw9/a;->i:Lw9/u1;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_5

    if-eq p2, v1, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 18
    iget p2, p1, Lea/h$a;->j:I

    iget v0, v4, Lea/h$a;->j:I

    if-le p2, v0, :cond_3

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    :cond_3
    move-object v4, p1

    goto :goto_1

    .line 20
    :cond_4
    instance-of p2, p1, Lea/h$a;

    if-eqz p2, :cond_6

    move-object v4, p1

    check-cast v4, Lea/h$a;

    :cond_5
    :goto_1
    return-object v4

    :cond_6
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1
.end method

.method public final x(Lw9/a;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "notConnected"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lx9/b;

    .line 1
    invoke-virtual {p0, p1, p2}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 2
    new-instance p2, Lw9/x$d0;

    invoke-direct {p2, p0, p1}, Lw9/x$d0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final x0([Lx9/b;Lqd/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lx9/b<",
            "+",
            "Lv9/m;",
            ">;",
            "Lqd/a<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw9/x;->o:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx9/k;

    .line 2
    invoke-virtual {v0}, Lx9/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 4
    invoke-virtual {v2}, Lx9/b;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p2}, Lqd/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final y(Lw9/a;Lv9/d5;)V
    .locals 10
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "1.4.1"
    .end annotation

    const-string v0, "productInformationGetRequest"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 1
    sget-object v1, Lw9/x$n0;->h:Lw9/x$n0;

    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 3
    new-instance v1, Lx9/f;

    .line 4
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 5
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 6
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 7
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 8
    new-instance p2, Lw9/x$o0;

    invoke-direct {p2, p0, p1}, Lw9/x$o0;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final y0(Lw9/a;Lqd/l;)Lx9/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;)",
            "Lx9/c;"
        }
    .end annotation

    .line 1
    new-instance v6, Lx9/c;

    .line 2
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v0

    invoke-interface {v0}, Lya/b;->e()Lda/d;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v0

    invoke-interface {v0}, Lya/b;->e()Lda/d;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lw9/x;->l:Lea/m;

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    .line 5
    invoke-direct/range {v0 .. v5}, Lx9/c;-><init>(Lw9/a;Lda/d;Lda/d;Lea/m;Lqd/l;)V

    return-object v6
.end method

.method public final z(Lw9/a;Lv9/f3;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Lx9/b;

    .line 1
    iget-object v1, p2, Lv9/f3;->b:Lqd/l;

    const-string v2, "GestureConfigurationGet"

    .line 2
    invoke-static {v1, v2}, Landroidx/emoji2/text/b;->f(Lqd/l;Ljava/lang/String;)Lqd/l;

    move-result-object v1

    .line 3
    invoke-virtual {p0, p1, v1}, Lw9/x;->y0(Lw9/a;Lqd/l;)Lx9/c;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4
    iget-object v8, p2, Lv9/k;->a:Lfb/c;

    .line 5
    new-instance v1, Lx9/f;

    .line 6
    invoke-virtual {p0}, Lw9/x;->A0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lw9/x;->B0()Lya/b;

    move-result-object v2

    invoke-interface {v2}, Lya/b;->a()Lfb/c;

    move-result-object v6

    .line 8
    iget-object v7, p0, Lw9/x;->l:Lea/m;

    move-object v3, v1

    move-object v4, p1

    move-object v9, p2

    .line 9
    invoke-direct/range {v3 .. v9}, Lx9/f;-><init>(Lw9/a;Lfb/c;Lfb/c;Lea/m;Lfb/c;Lv9/k;)V

    const/4 p2, 0x1

    aput-object v1, v0, p2

    .line 10
    new-instance p2, Lw9/x$y;

    invoke-direct {p2, p0, p1}, Lw9/x$y;-><init>(Lw9/x;Lw9/a;)V

    invoke-virtual {p0, v0, p2}, Lw9/x;->x0([Lx9/b;Lqd/a;)V

    return-void
.end method

.method public final z0()Lab/a;
    .locals 1

    iget-object v0, p0, Lw9/x;->D:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lab/a;

    return-object v0
.end method
