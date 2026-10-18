.class public final Lya/d;
.super Ljava/lang/Object;
.source "AdaptKitControlsRepositories.kt"

# interfaces
.implements Lya/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lya/d$e;,
        Lya/d$a;,
        Lya/d$b;,
        Lya/d$d;,
        Lya/d$c;
    }
.end annotation


# instance fields
.field public A:Lhc/l0;

.field public final B:Lfd/d;

.field public final C:Lya/d$k;

.field public final D:Lya/d$w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/String;

.field public b:Lea/b;

.field public c:Lhc/a;

.field public d:Lhc/a;

.field public e:Lfb/c;

.field public final f:Ljava/lang/String;

.field public volatile g:Z

.field public h:Z

.field public final i:Lfb/a;

.field public j:I

.field public k:Lfb/s;

.field public l:Lla/c;

.field public volatile m:Lv9/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lfa/c;

.field public final o:Lxa/b;

.field public final p:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "Lya/h0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/concurrent/ExecutorService;

.field public t:Lda/a;

.field public final u:Lwa/c;

.field public v:Lv9/e;

.field public w:Lya/h0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lya/h0<",
            "*>;"
        }
    .end annotation
.end field

.field public x:Z

.field public final y:Lya/d$m0;

.field public final z:Lfd/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lea/b;)V
    .locals 3

    const-string v0, "pairId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitDevice"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lya/d;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lya/d;->b:Lea/b;

    .line 4
    new-instance p1, Lfb/c;

    const-string p2, "1.1.0"

    invoke-direct {p1, p2}, Lfb/c;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lya/d;->e:Lfb/c;

    .line 5
    iget-object p1, p0, Lya/d;->b:Lea/b;

    .line 6
    iget-object p1, p1, Lea/b;->j:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lya/d;->f:Ljava/lang/String;

    .line 8
    sget-object p2, Lfb/a$a;->a:Lfb/a$a;

    invoke-virtual {p2}, Lfb/a$a;->a()Lfb/a;

    move-result-object p2

    iput-object p2, p0, Lya/d;->i:Lfb/a;

    .line 9
    new-instance p2, Lfa/c;

    .line 10
    iget-object v0, p0, Lya/d;->e:Lfb/c;

    .line 11
    new-instance v1, Lfa/n$c;

    sget-object v2, Lfb/c;->i:Lfb/c$a;

    .line 12
    sget-object v2, Lfb/c;->j:Lfb/c;

    .line 13
    invoke-direct {v1, v2}, Lfa/n$c;-><init>(Lfb/c;)V

    .line 14
    sget-object v2, Lfa/k$r;->h:Lfa/k$r;

    .line 15
    invoke-direct {p2, v0, v1, v2}, Lfa/c;-><init>(Lfb/c;Lfa/n;Lfa/k;)V

    iput-object p2, p0, Lya/d;->n:Lfa/c;

    .line 16
    sget-object p2, Lxa/b;->a:Lxa/b;

    iput-object p2, p0, Lya/d;->o:Lxa/b;

    .line 17
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lya/d;->q:Ljava/lang/Object;

    .line 19
    new-instance p2, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0x14

    sget-object v1, Lj5/e;->j:Lj5/e;

    invoke-direct {p2, v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p2, p0, Lya/d;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 20
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    const-string v0, "newSingleThreadExecutor()"

    invoke-static {p2, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lya/d;->s:Ljava/util/concurrent/ExecutorService;

    .line 21
    sget-object p2, Lda/a;->j:Lda/a;

    iput-object p2, p0, Lya/d;->t:Lda/a;

    .line 22
    new-instance p2, Lwa/c;

    new-instance v0, Lya/d$k0;

    invoke-direct {v0, p0}, Lya/d$k0;-><init>(Lya/d;)V

    invoke-direct {p2, p1, v0}, Lwa/c;-><init>(Ljava/lang/String;Lqd/p;)V

    iput-object p2, p0, Lya/d;->u:Lwa/c;

    .line 23
    invoke-virtual {p0}, Lya/d;->p0()V

    .line 24
    new-instance p2, Lya/d$m0;

    invoke-direct {p2, p0}, Lya/d$m0;-><init>(Lya/d;)V

    iput-object p2, p0, Lya/d;->y:Lya/d$m0;

    .line 25
    new-instance p2, Lya/d$l;

    invoke-direct {p2, p0}, Lya/d$l;-><init>(Lya/d;)V

    invoke-static {p2}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object p2

    check-cast p2, Lfd/h;

    iput-object p2, p0, Lya/d;->z:Lfd/h;

    .line 26
    new-instance p2, Lhc/l;

    invoke-direct {p2, p1}, Lhc/l;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lya/d;->A:Lhc/l0;

    const/4 p1, 0x1

    .line 28
    new-instance p2, Lya/d$s0;

    invoke-direct {p2}, Lya/d$s0;-><init>()V

    invoke-static {p1, p2}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    .line 29
    iput-object p1, p0, Lya/d;->B:Lfd/d;

    .line 30
    new-instance p1, Lya/d$k;

    invoke-direct {p1, p0}, Lya/d$k;-><init>(Lya/d;)V

    iput-object p1, p0, Lya/d;->C:Lya/d$k;

    .line 31
    new-instance p1, Lya/d$w0;

    invoke-direct {p1, p0}, Lya/d$w0;-><init>(Lya/d;)V

    iput-object p1, p0, Lya/d;->D:Lya/d$w0;

    return-void
.end method

.method public static final Y(Lya/d;Lya/h0;)V
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "createAnimation"

    .line 2
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    invoke-virtual {p1}, Lya/h0;->t()Ljava/lang/String;

    move-result-object v2

    const-string v3, "added "

    const-string v4, " to queue"

    .line 3
    invoke-static {v3, v2, v4}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "QUEUE_BIGFOOT"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 4
    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lya/d;->k0()Lic/s;

    move-result-object v1

    iget-object v2, p0, Lya/d;->f:Ljava/lang/String;

    invoke-interface {v1, v2}, Lic/s;->a(Ljava/lang/String;)Lf8/b;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    instance-of v2, v1, Lic/u;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    instance-of v1, v1, Lic/b;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_6

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lya/h0;->p()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8
    iget-object v1, p0, Lya/d;->w:Lya/h0;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lya/h0;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, v0}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    if-eqz v3, :cond_4

    .line 9
    iget-object v0, p0, Lya/d;->c:Lhc/a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lhc/a;->a()V

    .line 10
    :cond_3
    iput-object v2, p0, Lya/d;->c:Lhc/a;

    .line 11
    :cond_4
    iget-object v0, p0, Lya/d;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    sget-object v1, Lya/c;->a:Lya/c;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->removeIf(Ljava/util/function/Predicate;)Z

    .line 12
    :cond_5
    iget-object v0, p0, Lya/d;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    const-string v2, "QUEUE_BIGFOOT"

    .line 14
    iget-object v0, p0, Lya/d;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->size()I

    move-result v0

    .line 15
    iget-object v3, p0, Lya/d;->r:Ljava/util/concurrent/PriorityBlockingQueue;

    const/4 v4, 0x0

    const-string v5, "items: ["

    const-string v6, "]"

    sget-object v7, Lya/l;->h:Lya/l;

    const/16 v8, 0x19

    invoke-static/range {v3 .. v8}, Lgd/n;->d0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lqd/l;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queue size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 16
    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 17
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 19
    new-instance v3, Lv9/z6;

    iget-object p0, p0, Lya/d;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lya/h0;->n()Lv9/a;

    move-result-object p1

    invoke-direct {v3, p0, p1, v0}, Lv9/z6;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    const-string p0, "QUEUE_BIGFOOT"

    .line 20
    invoke-virtual {v1, p0, v2}, Lfb/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public static final synthetic Z(Lya/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic a0(Lya/d;)Lhc/l0;
    .locals 0

    iget-object p0, p0, Lya/d;->A:Lhc/l0;

    return-object p0
.end method

.method public static final synthetic b0(Lya/d;)Lv9/p0;
    .locals 0

    iget-object p0, p0, Lya/d;->m:Lv9/p0;

    return-object p0
.end method

.method public static final synthetic c0(Lya/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lya/d;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d0(Lya/d;)Lfb/r;
    .locals 0

    iget-object p0, p0, Lya/d;->k:Lfb/s;

    return-object p0
.end method

.method public static final e0(Lya/d;ZLv9/g;Lv9/f;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    const/4 v2, 0x0

    if-eqz p1, :cond_47

    .line 1
    iget-object p1, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    instance-of p3, p2, Lv9/p2;

    if-eqz p3, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    instance-of p3, p2, Lv9/a1;

    if-eqz p3, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    instance-of p3, p2, Lv9/w0;

    if-eqz p3, :cond_2

    goto/16 :goto_0

    .line 5
    :cond_2
    instance-of p3, p2, Lv9/e1;

    if-eqz p3, :cond_3

    goto/16 :goto_0

    .line 6
    :cond_3
    instance-of p3, p2, Lv9/p6;

    if-eqz p3, :cond_4

    goto/16 :goto_0

    .line 7
    :cond_4
    instance-of p3, p2, Lv9/f6;

    if-eqz p3, :cond_5

    goto/16 :goto_1

    .line 8
    :cond_5
    instance-of p3, p2, Lv9/x6;

    if-eqz p3, :cond_6

    goto/16 :goto_0

    .line 9
    :cond_6
    instance-of p3, p2, Lv9/m6;

    if-eqz p3, :cond_7

    goto/16 :goto_0

    .line 10
    :cond_7
    instance-of p3, p2, Lv9/j6;

    if-eqz p3, :cond_8

    goto/16 :goto_0

    .line 11
    :cond_8
    instance-of p3, p2, Lv9/t6;

    if-eqz p3, :cond_9

    goto/16 :goto_0

    .line 12
    :cond_9
    instance-of p3, p2, Lv9/q5;

    if-eqz p3, :cond_a

    goto/16 :goto_0

    .line 13
    :cond_a
    instance-of p3, p2, Lv9/x5;

    if-eqz p3, :cond_b

    goto/16 :goto_0

    .line 14
    :cond_b
    instance-of p3, p2, Lv9/a6;

    if-eqz p3, :cond_c

    goto/16 :goto_0

    .line 15
    :cond_c
    instance-of p3, p2, Lv9/t5;

    if-eqz p3, :cond_d

    goto/16 :goto_0

    .line 16
    :cond_d
    instance-of p3, p2, Lv9/u5;

    if-eqz p3, :cond_e

    goto/16 :goto_1

    .line 17
    :cond_e
    instance-of p3, p2, Lv9/c6;

    if-eqz p3, :cond_f

    goto/16 :goto_0

    .line 18
    :cond_f
    instance-of p3, p2, Lv9/q6;

    if-eqz p3, :cond_10

    goto/16 :goto_1

    .line 19
    :cond_10
    instance-of p3, p2, Lv9/o5;

    if-eqz p3, :cond_11

    goto/16 :goto_1

    .line 20
    :cond_11
    instance-of p3, p2, Lv9/g6;

    if-eqz p3, :cond_12

    goto/16 :goto_1

    .line 21
    :cond_12
    instance-of p3, p2, Lv9/p5;

    if-eqz p3, :cond_13

    goto/16 :goto_1

    .line 22
    :cond_13
    instance-of p3, p2, Lv9/c1;

    if-eqz p3, :cond_14

    goto/16 :goto_0

    .line 23
    :cond_14
    instance-of p3, p2, Lv9/t4;

    if-eqz p3, :cond_15

    goto/16 :goto_0

    .line 24
    :cond_15
    instance-of p3, p2, Lv9/l4;

    if-eqz p3, :cond_16

    goto/16 :goto_0

    .line 25
    :cond_16
    instance-of p3, p2, Lv9/y1;

    if-eqz p3, :cond_17

    goto/16 :goto_0

    .line 26
    :cond_17
    instance-of p3, p2, Lv9/c4;

    if-eqz p3, :cond_18

    goto/16 :goto_0

    .line 27
    :cond_18
    instance-of p3, p2, Lv9/y4;

    if-eqz p3, :cond_19

    goto/16 :goto_0

    .line 28
    :cond_19
    instance-of p3, p2, Lv9/w4;

    if-eqz p3, :cond_1a

    goto/16 :goto_0

    .line 29
    :cond_1a
    instance-of p3, p2, Lv9/t3;

    if-eqz p3, :cond_1b

    goto/16 :goto_0

    .line 30
    :cond_1b
    instance-of p3, p2, Lv9/n5;

    if-eqz p3, :cond_1c

    goto/16 :goto_0

    .line 31
    :cond_1c
    instance-of p3, p2, Lv9/e5;

    if-eqz p3, :cond_1d

    goto/16 :goto_0

    .line 32
    :cond_1d
    instance-of p3, p2, Lv9/h5;

    if-eqz p3, :cond_1e

    goto/16 :goto_0

    .line 33
    :cond_1e
    instance-of p3, p2, Lv9/i4;

    if-eqz p3, :cond_1f

    goto/16 :goto_0

    .line 34
    :cond_1f
    instance-of p3, p2, Lv9/q4;

    if-eqz p3, :cond_20

    goto/16 :goto_0

    .line 35
    :cond_20
    instance-of p3, p2, Lv9/j5;

    if-eqz p3, :cond_21

    goto/16 :goto_0

    .line 36
    :cond_21
    instance-of p3, p2, Lv9/z3;

    if-eqz p3, :cond_22

    goto/16 :goto_0

    .line 37
    :cond_22
    instance-of p3, p2, Lv9/f4;

    if-eqz p3, :cond_23

    goto/16 :goto_0

    .line 38
    :cond_23
    instance-of p3, p2, Lv9/f2;

    if-eqz p3, :cond_24

    goto/16 :goto_0

    .line 39
    :cond_24
    instance-of p3, p2, Lv9/w3;

    if-eqz p3, :cond_25

    goto/16 :goto_0

    .line 40
    :cond_25
    instance-of p3, p2, Lv9/n4;

    if-eqz p3, :cond_26

    goto/16 :goto_0

    .line 41
    :cond_26
    instance-of p3, p2, Lv9/a2;

    if-eqz p3, :cond_27

    goto/16 :goto_0

    .line 42
    :cond_27
    instance-of p3, p2, Lv9/g1;

    if-eqz p3, :cond_28

    goto/16 :goto_0

    .line 43
    :cond_28
    instance-of p3, p2, Lv9/s2;

    if-eqz p3, :cond_29

    goto/16 :goto_0

    .line 44
    :cond_29
    instance-of p3, p2, Lv9/h1;

    if-eqz p3, :cond_2a

    goto :goto_0

    .line 45
    :cond_2a
    instance-of p3, p2, Lv9/d3;

    if-eqz p3, :cond_2b

    goto :goto_0

    .line 46
    :cond_2b
    instance-of p3, p2, Lv9/a3;

    if-eqz p3, :cond_2c

    goto :goto_0

    .line 47
    :cond_2c
    instance-of p3, p2, Lv9/k5;

    if-eqz p3, :cond_2d

    goto :goto_0

    .line 48
    :cond_2d
    instance-of p3, p2, Lv9/k2;

    if-eqz p3, :cond_2e

    goto :goto_0

    .line 49
    :cond_2e
    instance-of p3, p2, Lv9/s1;

    if-eqz p3, :cond_2f

    goto :goto_0

    .line 50
    :cond_2f
    instance-of p3, p2, Lv9/v1;

    if-eqz p3, :cond_30

    goto :goto_0

    .line 51
    :cond_30
    instance-of p3, p2, Lv9/p1;

    if-eqz p3, :cond_31

    goto :goto_0

    .line 52
    :cond_31
    instance-of p3, p2, Lv9/n1;

    if-eqz p3, :cond_32

    goto :goto_0

    .line 53
    :cond_32
    instance-of p3, p2, Lv9/l1;

    if-eqz p3, :cond_33

    goto :goto_0

    .line 54
    :cond_33
    instance-of p3, p2, Lv9/j1;

    if-eqz p3, :cond_34

    goto :goto_0

    .line 55
    :cond_34
    instance-of p3, p2, Lv9/g3;

    if-eqz p3, :cond_35

    goto :goto_0

    .line 56
    :cond_35
    instance-of p3, p2, Lv9/j3;

    if-eqz p3, :cond_36

    goto :goto_0

    .line 57
    :cond_36
    instance-of p3, p2, Lv9/n3;

    if-eqz p3, :cond_37

    goto :goto_0

    .line 58
    :cond_37
    instance-of p3, p2, Lv9/q3;

    if-eqz p3, :cond_38

    goto :goto_0

    .line 59
    :cond_38
    instance-of p3, p2, Lv9/k3;

    if-eqz p3, :cond_39

    :goto_0
    const/4 p3, 0x2

    goto :goto_2

    .line 60
    :cond_39
    instance-of p3, p2, Lv9/u2;

    if-eqz p3, :cond_3a

    goto :goto_1

    .line 61
    :cond_3a
    instance-of p3, p2, Lv9/y6;

    if-eqz p3, :cond_46

    :goto_1
    move p3, v0

    .line 62
    :goto_2
    new-instance v3, Leb/c;

    invoke-direct {v3, p2}, Leb/c;-><init>(Leb/d;)V

    .line 63
    invoke-static {p3}, Lq/g;->a(I)I

    move-result p3

    if-eqz p3, :cond_3c

    if-eq p3, v0, :cond_3b

    goto :goto_3

    .line 64
    :cond_3b
    sget-object p3, Lv9/t;->a:Lv9/t;

    .line 65
    sget-object p3, Lv9/t;->i:Leb/f;

    new-array v4, v0, [Leb/g;

    aput-object v3, v4, v2

    .line 66
    invoke-virtual {p3, v4}, Leb/f;->a([Leb/g;)V

    goto :goto_3

    .line 67
    :cond_3c
    sget-object p3, Lv9/t;->a:Lv9/t;

    .line 68
    sget-object p3, Lv9/t;->i:Leb/f;

    .line 69
    invoke-virtual {p3, v3}, Leb/f;->c(Leb/g;)V

    .line 70
    :goto_3
    iget-object p3, p0, Lya/d;->m:Lv9/p0;

    if-eqz p3, :cond_3d

    .line 71
    invoke-interface {p3, p2}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_3d
    new-array p3, v2, [Lv9/p0;

    .line 72
    invoke-virtual {p1, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    check-cast p1, [Lv9/p0;

    .line 74
    array-length p3, p1

    :goto_4
    if-ge v2, p3, :cond_3e

    aget-object v1, p1, v2

    .line 75
    sget-object v3, Lz9/a;->j:Lz9/a;

    new-instance v4, Lya/u;

    invoke-direct {v4, v1, p2}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v3, v4}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 76
    :cond_3e
    iget-object p1, p0, Lya/d;->A:Lhc/l0;

    .line 77
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_4f

    invoke-virtual {p2}, Lv9/g;->a()Lv9/a;

    move-result-object p1

    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-nez p1, :cond_4f

    .line 78
    instance-of p1, p2, Lv9/n4;

    if-eqz p1, :cond_3f

    move p1, v0

    goto :goto_5

    .line 79
    :cond_3f
    instance-of p1, p2, Lv9/a2;

    :goto_5
    if-eqz p1, :cond_40

    move p1, v0

    goto :goto_6

    .line 80
    :cond_40
    instance-of p1, p2, Lv9/f2;

    :goto_6
    if-eqz p1, :cond_41

    move p1, v0

    goto :goto_7

    .line 81
    :cond_41
    instance-of p1, p2, Lv9/w4;

    :goto_7
    if-eqz p1, :cond_42

    move p1, v0

    goto :goto_8

    .line 82
    :cond_42
    instance-of p1, p2, Lv9/f4;

    :goto_8
    if-eqz p1, :cond_43

    move p1, v0

    goto :goto_9

    .line 83
    :cond_43
    instance-of p1, p2, Lv9/z3;

    :goto_9
    if-eqz p1, :cond_44

    move p1, v0

    goto :goto_a

    .line 84
    :cond_44
    instance-of p1, p2, Lv9/w3;

    :goto_a
    if-eqz p1, :cond_45

    goto :goto_b

    .line 85
    :cond_45
    instance-of v0, p2, Lv9/y1;

    :goto_b
    if-eqz v0, :cond_4f

    .line 86
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p3, Lya/w;

    invoke-direct {p3, p2, p0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p1, p3}, Lz9/a;->b(Lqd/a;)V

    goto/16 :goto_13

    .line 87
    :cond_46
    new-instance p0, Lj2/a;

    invoke-direct {p0}, Lj2/a;-><init>()V

    throw p0

    .line 88
    :cond_47
    iget-object p1, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    sget-object p2, Lv9/t;->a:Lv9/t;

    .line 90
    sget-object p2, Lv9/t;->i:Leb/f;

    new-array v3, v0, [Leb/g;

    .line 91
    new-instance v4, Leb/b;

    invoke-direct {v4, p3}, Leb/b;-><init>(Leb/d;)V

    aput-object v4, v3, v2

    invoke-virtual {p2, v3}, Leb/f;->a([Leb/g;)V

    new-array p2, v2, [Lv9/p0;

    .line 92
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    check-cast p1, [Lv9/p0;

    .line 94
    array-length p2, p1

    :goto_c
    if-ge v2, p2, :cond_48

    aget-object v1, p1, v2

    .line 95
    sget-object v3, Lz9/a;->j:Lz9/a;

    new-instance v4, Lya/r;

    invoke-direct {v4, v1, p3}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v3, v4}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 96
    :cond_48
    iget-object p1, p0, Lya/d;->A:Lhc/l0;

    .line 97
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_4f

    invoke-virtual {p3}, Lv9/f;->a()Lv9/a;

    move-result-object p1

    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 98
    instance-of p1, p3, Lv9/m4;

    if-eqz p1, :cond_49

    move p1, v0

    goto :goto_d

    .line 99
    :cond_49
    instance-of p1, p3, Lv9/z1;

    :goto_d
    if-eqz p1, :cond_4a

    move p1, v0

    goto :goto_e

    .line 100
    :cond_4a
    instance-of p1, p3, Lv9/u4;

    :goto_e
    if-eqz p1, :cond_4b

    move p1, v0

    goto :goto_f

    .line 101
    :cond_4b
    instance-of p1, p3, Lv9/d4;

    :goto_f
    if-eqz p1, :cond_4c

    move p1, v0

    goto :goto_10

    .line 102
    :cond_4c
    instance-of p1, p3, Lv9/x3;

    :goto_10
    if-eqz p1, :cond_4d

    move p1, v0

    goto :goto_11

    .line 103
    :cond_4d
    instance-of p1, p3, Lv9/u3;

    :goto_11
    if-eqz p1, :cond_4e

    goto :goto_12

    .line 104
    :cond_4e
    instance-of v0, p3, Lv9/w1;

    :goto_12
    if-eqz v0, :cond_4f

    .line 105
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p2, Lya/t;

    invoke-direct {p2, p0, p3}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, p2}, Lz9/a;->b(Lqd/a;)V

    :cond_4f
    :goto_13
    return-void
.end method


# virtual methods
.method public final A(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$n;

    invoke-direct {v0, p0, p1}, Lya/d$n;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final B(Lv9/p0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptKitResultListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " success: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final C(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$v;

    invoke-direct {v0, p0, p1}, Lya/d$v;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final D(Lv9/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lya/d;->m:Lv9/p0;

    return-void
.end method

.method public final E(Lv9/a;)V
    .locals 1

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lya/d;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final G(Lv9/a;)V
    .locals 1

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    throw p1
.end method

.method public final H(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$w;

    invoke-direct {v0, p0, p1}, Lya/d$w;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final I(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$u0;

    invoke-direct {v0, p0, p1}, Lya/d$u0;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final J(Lv9/a;)V
    .locals 8
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "1.4.0"
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lfb/c;

    const-string v1, "1.4.0"

    invoke-direct {v0, v1}, Lfb/c;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lya/d;->e:Lfb/c;

    .line 3
    invoke-virtual {v1, v0}, Lfb/c;->b(Lfb/c;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 4
    new-instance v0, Lya/d$b0;

    invoke-direct {v0, p0, p1}, Lya/d$b0;-><init>(Lya/d;Lv9/a;)V

    .line 5
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    goto/16 :goto_7

    .line 6
    :cond_0
    iget-object v2, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Lv9/c5;

    .line 7
    iget-object v4, p0, Lya/d;->f:Ljava/lang/String;

    .line 8
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 9
    iget-object v1, v1, Lfb/c;->h:Ljava/lang/String;

    iget-object v0, v0, Lfb/c;->h:Ljava/lang/String;

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not invoke getProductInformation currentFirmwareVersion "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is less than the required "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-direct {v3, v4, p1, v5}, Lv9/c5;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 12
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 13
    sget-object p1, Lv9/t;->i:Leb/f;

    const/4 v0, 0x1

    new-array v1, v0, [Leb/g;

    .line 14
    new-instance v4, Leb/b;

    invoke-direct {v4, v3}, Leb/b;-><init>(Leb/d;)V

    const/4 v5, 0x0

    aput-object v4, v1, v5

    invoke-virtual {p1, v1}, Leb/f;->a([Leb/g;)V

    new-array p1, v5, [Lv9/p0;

    .line 15
    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    check-cast p1, [Lv9/p0;

    .line 17
    array-length v1, p1

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v2, p1, v5

    .line 18
    sget-object v4, Lz9/a;->j:Lz9/a;

    new-instance v6, Lya/r;

    invoke-direct {v6, v2, v3}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v4, v6}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lya/d;->A:Lhc/l0;

    .line 20
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_8

    .line 21
    iget-object p1, v3, Lv9/c5;->o:Lv9/a;

    .line 22
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    instance-of p1, v3, Lv9/m4;

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    .line 24
    :cond_2
    instance-of p1, v3, Lv9/z1;

    :goto_1
    if-eqz p1, :cond_3

    move p1, v0

    goto :goto_2

    .line 25
    :cond_3
    instance-of p1, v3, Lv9/u4;

    :goto_2
    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_3

    .line 26
    :cond_4
    instance-of p1, v3, Lv9/d4;

    :goto_3
    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_4

    .line 27
    :cond_5
    instance-of p1, v3, Lv9/x3;

    :goto_4
    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_5

    .line 28
    :cond_6
    instance-of p1, v3, Lv9/u3;

    :goto_5
    if-eqz p1, :cond_7

    goto :goto_6

    .line 29
    :cond_7
    instance-of v0, v3, Lv9/w1;

    :goto_6
    if-eqz v0, :cond_8

    .line 30
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v0, Lya/t;

    invoke-direct {v0, p0, v3}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v0}, Lz9/a;->b(Lqd/a;)V

    :cond_8
    :goto_7
    return-void
.end method

.method public final K(Lv9/a;Lba/h;)V
    .locals 1
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.1.7"
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/j;

    invoke-direct {v0, p0, p1, p2}, Lya/j;-><init>(Lya/d;Lv9/a;Lba/h;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p2, Lv9/s0;

    invoke-direct {p2, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final L()Lfa/c;
    .locals 3

    iget-object v0, p0, Lya/d;->n:Lfa/c;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, v1, v1, v2}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object v0

    return-object v0
.end method

.method public final M(Lfa/k;Lfa/n;Z)V
    .locals 3

    const-string v0, "state"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "version"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d;->n:Lfa/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p2, p1, v2}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lya/d;->m0(Lfa/c;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lya/d;->n:Lfa/c;

    :goto_0
    return-void
.end method

.method public final N(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$y;

    invoke-direct {v0, p0, p1}, Lya/d$y;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final O(Lv9/a;Lea/h$a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "absolute"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lya/d$g0;

    invoke-direct {v0, p0, p1}, Lya/d$g0;-><init>(Lya/d;Lv9/a;)V

    new-instance v1, Lya/d$h0;

    invoke-direct {v1, p0, p1}, Lya/d$h0;-><init>(Lya/d;Lv9/a;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lya/d;->l0(Lv9/a;Lea/h$a;Lqd/l;Lqd/l;)V

    return-void
.end method

.method public final P(Lv9/a;)V
    .locals 2
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "1.5.0"
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$t0;

    invoke-direct {v0, p0, p1}, Lya/d$t0;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final Q()Lla/c;
    .locals 3

    iget-object v0, p0, Lya/d;->l:Lla/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x3f

    invoke-static {v0, v1, v2}, Lla/c;->a(Lla/c;II)Lla/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final R(Lv9/a;)V
    .locals 3
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.0.0"
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$d0;

    invoke-direct {v0, p0}, Lya/d$d0;-><init>(Lya/d;)V

    new-instance v1, Lya/d$e0;

    invoke-direct {v1, p0}, Lya/d$e0;-><init>(Lya/d;)V

    .line 2
    new-instance v2, Lya/o;

    invoke-direct {v2, p0, p1, v1, v0}, Lya/o;-><init>(Lya/d;Lv9/a;Lqd/l;Lqd/l;)V

    .line 3
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v0, Lv9/s0;

    invoke-direct {v0, v2, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final S(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$u;

    invoke-direct {v0, p0, p1}, Lya/d$u;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final T(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lya/d;->g:Z

    .line 2
    new-instance v0, Lya/d$o;

    invoke-direct {v0, p0, p1}, Lya/d$o;-><init>(Lya/d;Lv9/a;)V

    .line 3
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final U(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$x;

    invoke-direct {v0, p0, p1}, Lya/d$x;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final V(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$c0;

    invoke-direct {v0, p0, p1}, Lya/d$c0;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final W(Lv9/a;)V
    .locals 2
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.0.0"
    .end annotation

    const/4 v0, 0x0

    const-string v1, "sessionId"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adaptIdentifier"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    throw v0
.end method

.method public final X(Lv9/a;)V
    .locals 1

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Lfb/c;
    .locals 2

    .line 1
    new-instance v0, Lfb/c;

    iget-object v1, p0, Lya/d;->A:Lhc/l0;

    invoke-interface {v1}, Lhc/l0;->a()Lmc/e;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lmc/e;->h:Ljava/lang/String;

    .line 3
    invoke-direct {v0, v1}, Lfb/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lv9/a;Lfa/g$b;Ljd/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Lfa/j;",
            "Lfa/g$b;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lya/b0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lya/b0;

    iget v1, v0, Lya/b0;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lya/b0;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lya/b0;

    invoke-direct {v0, p0, p3}, Lya/b0;-><init>(Lya/d;Ljd/d;)V

    :goto_0
    iget-object p3, v0, Lya/b0;->k:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lya/b0;->m:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p2, v0, Lya/b0;->j:Lfa/g$b;

    iget-object p1, v0, Lya/b0;->i:Lv9/a;

    iget-object v0, v0, Lya/b0;->h:Lya/d;

    invoke-static {p3}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lya/d;->l:Lla/c;

    if-eqz p3, :cond_3

    .line 5
    iget-object p1, p0, Lya/d;->n:Lfa/c;

    new-instance p2, Lfa/k$x;

    const-string p3, "An Active session is detected. Session needs to be stopped"

    invoke-direct {p2, p3}, Lfa/k$x;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v5, p2, v3}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object p1

    .line 6
    iput-object p1, p0, Lya/d;->n:Lfa/c;

    .line 7
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 8
    :cond_3
    iput-object p0, v0, Lya/b0;->h:Lya/d;

    iput-object p1, v0, Lya/b0;->i:Lv9/a;

    iput-object p2, v0, Lya/b0;->j:Lfa/g$b;

    iput v4, v0, Lya/b0;->m:I

    invoke-virtual {p0, p2, v0}, Lya/d;->n0(Lfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 9
    :goto_1
    check-cast p3, Lfa/o;

    .line 10
    invoke-interface {p3}, Lfa/o;->A()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    iget-object p1, v0, Lya/d;->n:Lfa/c;

    .line 12
    new-instance p2, Lfa/k$e;

    .line 13
    invoke-interface {p3}, Lfa/o;->y()Lfa/l$d;

    move-result-object v1

    .line 14
    invoke-interface {p3}, Lfa/o;->p()Lfa/l$a;

    move-result-object v2

    .line 15
    invoke-interface {p3}, Lfa/o;->o()Lfa/l$b;

    move-result-object p3

    .line 16
    invoke-direct {p2, v1, v2, p3}, Lfa/k$e;-><init>(Lfa/l$d;Lfa/l$a;Lfa/l$b;)V

    .line 17
    new-instance p3, Lfa/n$a;

    .line 18
    iget-object v1, v0, Lya/d;->e:Lfb/c;

    .line 19
    invoke-direct {p3, v1}, Lfa/n$a;-><init>(Lfb/c;)V

    .line 20
    invoke-static {p1, v5, p3, p2, v4}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Lya/d;->m0(Lfa/c;)V

    .line 22
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 23
    :cond_5
    iget-object v1, v0, Lya/d;->n:Lfa/c;

    .line 24
    new-instance v2, Lfa/k$f;

    .line 25
    invoke-interface {p3}, Lfa/o;->y()Lfa/l$d;

    move-result-object v4

    .line 26
    invoke-interface {p3}, Lfa/o;->p()Lfa/l$a;

    move-result-object v6

    .line 27
    invoke-interface {p3}, Lfa/o;->o()Lfa/l$b;

    move-result-object p3

    .line 28
    invoke-direct {v2, v4, v6, p3}, Lfa/k$f;-><init>(Lfa/l$d;Lfa/l$a;Lfa/l$b;)V

    .line 29
    invoke-static {v1, v5, v5, v2, v3}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object p3

    .line 30
    invoke-virtual {v0, p3}, Lya/d;->m0(Lfa/c;)V

    .line 31
    new-instance p3, Lya/c0;

    invoke-direct {p3, v0, p1, p2}, Lya/c0;-><init>(Lya/d;Lv9/a;Lfa/g$b;)V

    .line 32
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p2, Lv9/s0;

    invoke-direct {p2, p3, v0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lz9/a;->b(Lqd/a;)V

    .line 33
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final c(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$f;

    invoke-direct {v0, p0, p1}, Lya/d$f;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final d(Lv9/a;Lea/d;)V
    .locals 1

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitDeviceColor"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$h;

    invoke-direct {v0, p0, p1, p2}, Lya/d$h;-><init>(Lya/d;Lv9/a;Lea/d;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p2, Lv9/s0;

    invoke-direct {p2, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final e()Lda/d;
    .locals 1

    invoke-virtual {p0}, Lya/d;->g0()Lda/d;

    move-result-object v0

    return-object v0
.end method

.method public final f(Lv9/a;)V
    .locals 7

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lv9/a;->i:Lv9/a$a;

    .line 2
    sget-object v0, Lv9/a;->l:Lv9/a;

    .line 3
    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lya/d;->g:Z

    .line 4
    iget-object v0, p0, Lya/d;->A:Lhc/l0;

    instance-of v0, v0, Lza/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 5
    iget-object v0, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lv9/n2;

    .line 6
    iget-object v3, p0, Lya/d;->f:Ljava/lang/String;

    .line 7
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Detected connection through other application. Disconnect is disabled"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-direct {v2, v3, p1, v4}, Lv9/n2;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 9
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 10
    sget-object p1, Lv9/t;->i:Leb/f;

    const/4 v3, 0x1

    new-array v4, v3, [Leb/g;

    .line 11
    new-instance v5, Leb/b;

    invoke-direct {v5, v2}, Leb/b;-><init>(Leb/d;)V

    aput-object v5, v4, v1

    invoke-virtual {p1, v4}, Leb/f;->a([Leb/g;)V

    new-array p1, v1, [Lv9/p0;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    check-cast p1, [Lv9/p0;

    .line 14
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, p1, v1

    .line 15
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v6, Lya/r;

    invoke-direct {v6, v4, v2}, Lya/r;-><init>(Lv9/p0;Lv9/f;)V

    invoke-virtual {v5, v6}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lya/d;->A:Lhc/l0;

    .line 17
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_8

    .line 18
    iget-object p1, v2, Lv9/n2;->o:Lv9/a;

    .line 19
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 20
    instance-of p1, v2, Lv9/m4;

    if-eqz p1, :cond_1

    move p1, v3

    goto :goto_1

    .line 21
    :cond_1
    instance-of p1, v2, Lv9/z1;

    :goto_1
    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_2

    .line 22
    :cond_2
    instance-of p1, v2, Lv9/u4;

    :goto_2
    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_3

    .line 23
    :cond_3
    instance-of p1, v2, Lv9/d4;

    :goto_3
    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_4

    .line 24
    :cond_4
    instance-of p1, v2, Lv9/x3;

    :goto_4
    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_5

    .line 25
    :cond_5
    instance-of p1, v2, Lv9/u3;

    :goto_5
    if-eqz p1, :cond_6

    goto :goto_6

    .line 26
    :cond_6
    instance-of v3, v2, Lv9/w1;

    :goto_6
    if-eqz v3, :cond_8

    .line 27
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v0, Lya/t;

    invoke-direct {v0, p0, v2}, Lya/t;-><init>(Lya/d;Lv9/f;)V

    invoke-virtual {p1, v0}, Lz9/a;->b(Lqd/a;)V

    goto :goto_7

    .line 28
    :cond_7
    iput-boolean v1, p0, Lya/d;->x:Z

    .line 29
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/d$p;

    invoke-direct {v1, p0, p1}, Lya/d$p;-><init>(Lya/d;Lv9/a;)V

    invoke-virtual {v0, v1}, Lz9/a;->b(Lqd/a;)V

    :cond_8
    :goto_7
    return-void
.end method

.method public final f0(Lla/b;)Lfb/r;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lya/d;->q0()V

    .line 2
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lya/d;->f:Ljava/lang/String;

    .line 4
    iget-object v5, p0, Lya/d;->A:Lhc/l0;

    .line 5
    new-instance v6, Lya/d$m;

    invoke-direct {v6, p0}, Lya/d$m;-><init>(Lya/d;)V

    .line 6
    iget-object v7, p0, Lya/d;->D:Lya/d$w0;

    .line 7
    iget-object v8, p0, Lya/d;->y:Lya/d$m0;

    const-string v0, "deviceId"

    .line 8
    invoke-static {v3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device"

    invoke-static {v5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    invoke-static {v7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressEmission"

    invoke-static {v8, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lfb/s;

    move-object v1, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Lfb/s;-><init>(Landroid/content/Context;Ljava/lang/String;Lla/b;Lhc/l0;Lqd/l;Lqd/l;Lfb/c0;)V

    .line 10
    iput-object v0, p0, Lya/d;->k:Lfb/s;

    return-object v0
.end method

.method public final g(Lv9/p0;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "adaptKitResultListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    new-array v3, v2, [Lv9/p0;

    .line 3
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v1, [Lv9/p0;

    .line 5
    invoke-static {v1, p1}, Lgd/i;->t([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    .line 6
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final g0()Lda/d;
    .locals 4

    .line 1
    sget-object v0, Lda/d;->h:Lda/d;

    iget-object v1, p0, Lya/d;->v:Lv9/e;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lda/d;->r:Lda/d;

    goto :goto_1

    .line 4
    :pswitch_1
    sget-object v0, Lda/d;->q:Lda/d;

    goto :goto_1

    .line 5
    :pswitch_2
    sget-object v0, Lda/d;->p:Lda/d;

    goto :goto_1

    .line 6
    :pswitch_3
    sget-object v0, Lda/d;->o:Lda/d;

    goto :goto_1

    .line 7
    :pswitch_4
    sget-object v0, Lda/d;->m:Lda/d;

    goto :goto_1

    .line 8
    :pswitch_5
    sget-object v0, Lda/d;->t:Lda/d;

    goto :goto_1

    .line 9
    :pswitch_6
    sget-object v0, Lda/d;->l:Lda/d;

    goto :goto_1

    .line 10
    :pswitch_7
    sget-object v0, Lda/d;->j:Lda/d;

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lya/d;->k0()Lic/s;

    move-result-object v0

    iget-object v1, p0, Lya/d;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lic/s;->a(Ljava/lang/String;)Lf8/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lya/d;->r0(Lf8/b;Z)Lda/d;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_8
    goto :goto_0

    .line 13
    :pswitch_9
    sget-object v2, Lda/a;->k:Lda/a;

    iput-object v2, p0, Lya/d;->t:Lda/a;

    goto :goto_0

    :pswitch_a
    const/4 v2, 0x0

    .line 14
    iput-object v2, p0, Lya/d;->c:Lhc/a;

    .line 15
    sget-object v2, Lda/a;->j:Lda/a;

    iput-object v2, p0, Lya/d;->t:Lda/a;

    .line 16
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v1, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    iput-boolean v1, p0, Lya/d;->x:Z

    :goto_1
    :pswitch_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public final h(Lv9/p0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptKitResultListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " success: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final h0(Ljava/lang/Throwable;)Z
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v0, Lya/d$q;

    invoke-direct {v0, p0}, Lya/d$q;-><init>(Lya/d;)V

    invoke-virtual {p1, v0}, Lz9/a;->b(Lqd/a;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p1, p1, Lkc/f;

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v0, Lya/d$r;

    invoke-direct {v0, p0}, Lya/d$r;-><init>(Lya/d;)V

    invoke-virtual {p1, v0}, Lz9/a;->b(Lqd/a;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final i(Lfa/k;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lya/d;->n:Lfa/c;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, p1, v2}, Lfa/c;->a(Lfa/c;Lfb/c;Lfa/n;Lfa/k;I)Lfa/c;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lya/d;->m0(Lfa/c;)V

    return-void
.end method

.method public final i0()Lea/b;
    .locals 1

    iget-object v0, p0, Lya/d;->b:Lea/b;

    return-object v0
.end method

.method public final j(Lv9/a;Lea/h$a;)V
    .locals 5

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "absolute"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p2, Lea/h$a;->j:I

    if-ltz v0, :cond_1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lya/d$p0;

    invoke-direct {v0, p0, p1, p2}, Lya/d$p0;-><init>(Lya/d;Lv9/a;Lea/h$a;)V

    .line 3
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p2, Lv9/s0;

    invoke-direct {p2, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lz9/a;->b(Lqd/a;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lgd/n;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv9/p0;

    .line 6
    new-instance v2, Lv9/o4;

    .line 7
    iget-object v3, p0, Lya/d;->f:Ljava/lang/String;

    .line 8
    new-instance v4, Ly9/b;

    invoke-direct {v4, p1, p2}, Ly9/b;-><init>(Lv9/a;Lea/h$a;)V

    .line 9
    invoke-direct {v2, v3, p1, v4}, Lv9/o4;-><init>(Ljava/lang/String;Lv9/a;Ljava/lang/Throwable;)V

    .line 10
    invoke-interface {v1, v2}, Lv9/p0;->b(Lv9/m;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final j0()Z
    .locals 4

    .line 1
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Laa/a;->a:Ljava/util/List;

    .line 2
    invoke-static {}, Laa/a;->a()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    return v3

    .line 5
    :cond_4
    iget-boolean v0, p0, Lya/d;->g:Z

    return v0
.end method

.method public final k(Lv9/a;)V
    .locals 2
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "1.5.0"
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lya/d;->e:Lfb/c;

    sget-object v1, Lfb/c;->i:Lfb/c$a;

    .line 2
    sget-object v1, Lfb/c;->l:Lfb/c;

    .line 3
    invoke-virtual {v0, v1}, Lfb/c;->b(Lfb/c;)I

    move-result v0

    if-gez v0, :cond_0

    .line 4
    new-instance v0, Lya/d$s;

    invoke-direct {v0, p0, p1}, Lya/d$s;-><init>(Lya/d;Lv9/a;)V

    .line 5
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lya/d$t;

    invoke-direct {v0, p0, p1}, Lya/d$t;-><init>(Lya/d;Lv9/a;)V

    .line 7
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    :goto_0
    return-void
.end method

.method public final k0()Lic/s;
    .locals 1

    iget-object v0, p0, Lya/d;->B:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic/s;

    return-object v0
.end method

.method public final l()Lda/a;
    .locals 1

    iget-object v0, p0, Lya/d;->t:Lda/a;

    return-object v0
.end method

.method public final l0(Lv9/a;Lea/h$a;Lqd/l;Lqd/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Lea/h$a;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget v0, p2, Lea/h$a;->j:I

    if-ltz v0, :cond_1

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lya/d$j0;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lya/d$j0;-><init>(Lya/d;Lv9/a;Lea/h$a;Lqd/l;Lqd/l;)V

    .line 3
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p2, Lv9/s0;

    invoke-direct {p2, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lz9/a;->b(Lqd/a;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    sget-object p3, Lz9/a;->j:Lz9/a;

    new-instance p4, Lya/d$i0;

    invoke-direct {p4, p0, p1, p2}, Lya/d$i0;-><init>(Lya/d;Lv9/a;Lea/h$a;)V

    invoke-virtual {p3, p4}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final m(Lv9/a;Z)V
    .locals 1

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$n0;

    invoke-direct {v0, p0, p1, p2}, Lya/d$n0;-><init>(Lya/d;Lv9/a;Z)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p2, Lv9/s0;

    invoke-direct {p2, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final m0(Lfa/c;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lya/d;->n:Lfa/c;

    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iput-object p1, p0, Lya/d;->n:Lfa/c;

    if-eqz v0, :cond_45

    .line 3
    iget-object v0, p1, Lfa/c;->j:Lfa/k;

    .line 4
    invoke-interface {v0}, Lfa/k;->h()Lfa/k$c0;

    move-result-object v0

    sget-object v2, Lfa/k$c0;->l:Lfa/k$c0;

    if-eq v0, v2, :cond_45

    .line 5
    iget-object v0, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    new-instance v2, Lv9/u2;

    .line 7
    iget-object v3, p0, Lya/d;->f:Ljava/lang/String;

    .line 8
    invoke-direct {v2, p1, v3}, Lv9/u2;-><init>(Lfa/c;Ljava/lang/String;)V

    .line 9
    instance-of p1, v2, Lv9/p2;

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 10
    :cond_0
    instance-of p1, v2, Lv9/a1;

    if-eqz p1, :cond_1

    goto/16 :goto_0

    .line 11
    :cond_1
    instance-of p1, v2, Lv9/w0;

    if-eqz p1, :cond_2

    goto/16 :goto_0

    .line 12
    :cond_2
    instance-of p1, v2, Lv9/e1;

    if-eqz p1, :cond_3

    goto/16 :goto_0

    .line 13
    :cond_3
    instance-of p1, v2, Lv9/p6;

    if-eqz p1, :cond_4

    goto/16 :goto_0

    .line 14
    :cond_4
    instance-of p1, v2, Lv9/f6;

    if-eqz p1, :cond_5

    goto/16 :goto_1

    .line 15
    :cond_5
    instance-of p1, v2, Lv9/x6;

    if-eqz p1, :cond_6

    goto/16 :goto_0

    .line 16
    :cond_6
    instance-of p1, v2, Lv9/m6;

    if-eqz p1, :cond_7

    goto/16 :goto_0

    .line 17
    :cond_7
    instance-of p1, v2, Lv9/j6;

    if-eqz p1, :cond_8

    goto/16 :goto_0

    .line 18
    :cond_8
    instance-of p1, v2, Lv9/t6;

    if-eqz p1, :cond_9

    goto/16 :goto_0

    .line 19
    :cond_9
    instance-of p1, v2, Lv9/q5;

    if-eqz p1, :cond_a

    goto/16 :goto_0

    .line 20
    :cond_a
    instance-of p1, v2, Lv9/x5;

    if-eqz p1, :cond_b

    goto/16 :goto_0

    .line 21
    :cond_b
    instance-of p1, v2, Lv9/a6;

    if-eqz p1, :cond_c

    goto/16 :goto_0

    .line 22
    :cond_c
    instance-of p1, v2, Lv9/t5;

    if-eqz p1, :cond_d

    goto/16 :goto_0

    .line 23
    :cond_d
    instance-of p1, v2, Lv9/u5;

    if-eqz p1, :cond_e

    goto/16 :goto_1

    .line 24
    :cond_e
    instance-of p1, v2, Lv9/c6;

    if-eqz p1, :cond_f

    goto/16 :goto_0

    .line 25
    :cond_f
    instance-of p1, v2, Lv9/q6;

    if-eqz p1, :cond_10

    goto/16 :goto_1

    .line 26
    :cond_10
    instance-of p1, v2, Lv9/o5;

    if-eqz p1, :cond_11

    goto/16 :goto_1

    .line 27
    :cond_11
    instance-of p1, v2, Lv9/g6;

    if-eqz p1, :cond_12

    goto/16 :goto_1

    .line 28
    :cond_12
    instance-of p1, v2, Lv9/p5;

    if-eqz p1, :cond_13

    goto/16 :goto_1

    .line 29
    :cond_13
    instance-of p1, v2, Lv9/c1;

    if-eqz p1, :cond_14

    goto/16 :goto_0

    .line 30
    :cond_14
    instance-of p1, v2, Lv9/t4;

    if-eqz p1, :cond_15

    goto/16 :goto_0

    .line 31
    :cond_15
    instance-of p1, v2, Lv9/l4;

    if-eqz p1, :cond_16

    goto/16 :goto_0

    .line 32
    :cond_16
    instance-of p1, v2, Lv9/y1;

    if-eqz p1, :cond_17

    goto/16 :goto_0

    .line 33
    :cond_17
    instance-of p1, v2, Lv9/c4;

    if-eqz p1, :cond_18

    goto/16 :goto_0

    .line 34
    :cond_18
    instance-of p1, v2, Lv9/y4;

    if-eqz p1, :cond_19

    goto/16 :goto_0

    .line 35
    :cond_19
    instance-of p1, v2, Lv9/w4;

    if-eqz p1, :cond_1a

    goto/16 :goto_0

    .line 36
    :cond_1a
    instance-of p1, v2, Lv9/t3;

    if-eqz p1, :cond_1b

    goto/16 :goto_0

    .line 37
    :cond_1b
    instance-of p1, v2, Lv9/n5;

    if-eqz p1, :cond_1c

    goto/16 :goto_0

    .line 38
    :cond_1c
    instance-of p1, v2, Lv9/e5;

    if-eqz p1, :cond_1d

    goto/16 :goto_0

    .line 39
    :cond_1d
    instance-of p1, v2, Lv9/h5;

    if-eqz p1, :cond_1e

    goto/16 :goto_0

    .line 40
    :cond_1e
    instance-of p1, v2, Lv9/i4;

    if-eqz p1, :cond_1f

    goto/16 :goto_0

    .line 41
    :cond_1f
    instance-of p1, v2, Lv9/q4;

    if-eqz p1, :cond_20

    goto/16 :goto_0

    .line 42
    :cond_20
    instance-of p1, v2, Lv9/j5;

    if-eqz p1, :cond_21

    goto/16 :goto_0

    .line 43
    :cond_21
    instance-of p1, v2, Lv9/z3;

    if-eqz p1, :cond_22

    goto/16 :goto_0

    .line 44
    :cond_22
    instance-of p1, v2, Lv9/f4;

    if-eqz p1, :cond_23

    goto/16 :goto_0

    .line 45
    :cond_23
    instance-of p1, v2, Lv9/f2;

    if-eqz p1, :cond_24

    goto/16 :goto_0

    .line 46
    :cond_24
    instance-of p1, v2, Lv9/w3;

    if-eqz p1, :cond_25

    goto/16 :goto_0

    .line 47
    :cond_25
    instance-of p1, v2, Lv9/n4;

    if-eqz p1, :cond_26

    goto/16 :goto_0

    .line 48
    :cond_26
    instance-of p1, v2, Lv9/a2;

    if-eqz p1, :cond_27

    goto/16 :goto_0

    .line 49
    :cond_27
    instance-of p1, v2, Lv9/g1;

    if-eqz p1, :cond_28

    goto/16 :goto_0

    .line 50
    :cond_28
    instance-of p1, v2, Lv9/s2;

    if-eqz p1, :cond_29

    goto/16 :goto_0

    .line 51
    :cond_29
    instance-of p1, v2, Lv9/h1;

    if-eqz p1, :cond_2a

    goto :goto_0

    .line 52
    :cond_2a
    instance-of p1, v2, Lv9/d3;

    if-eqz p1, :cond_2b

    goto :goto_0

    .line 53
    :cond_2b
    instance-of p1, v2, Lv9/a3;

    if-eqz p1, :cond_2c

    goto :goto_0

    .line 54
    :cond_2c
    instance-of p1, v2, Lv9/k5;

    if-eqz p1, :cond_2d

    goto :goto_0

    .line 55
    :cond_2d
    instance-of p1, v2, Lv9/k2;

    if-eqz p1, :cond_2e

    goto :goto_0

    .line 56
    :cond_2e
    instance-of p1, v2, Lv9/s1;

    if-eqz p1, :cond_2f

    goto :goto_0

    .line 57
    :cond_2f
    instance-of p1, v2, Lv9/v1;

    if-eqz p1, :cond_30

    goto :goto_0

    .line 58
    :cond_30
    instance-of p1, v2, Lv9/p1;

    if-eqz p1, :cond_31

    goto :goto_0

    .line 59
    :cond_31
    instance-of p1, v2, Lv9/n1;

    if-eqz p1, :cond_32

    goto :goto_0

    .line 60
    :cond_32
    instance-of p1, v2, Lv9/l1;

    if-eqz p1, :cond_33

    goto :goto_0

    .line 61
    :cond_33
    instance-of p1, v2, Lv9/j1;

    if-eqz p1, :cond_34

    goto :goto_0

    .line 62
    :cond_34
    instance-of p1, v2, Lv9/g3;

    if-eqz p1, :cond_35

    goto :goto_0

    .line 63
    :cond_35
    instance-of p1, v2, Lv9/j3;

    if-eqz p1, :cond_36

    goto :goto_0

    .line 64
    :cond_36
    instance-of p1, v2, Lv9/n3;

    if-eqz p1, :cond_37

    goto :goto_0

    .line 65
    :cond_37
    instance-of p1, v2, Lv9/q3;

    if-eqz p1, :cond_38

    goto :goto_0

    .line 66
    :cond_38
    instance-of p1, v2, Lv9/k3;

    if-eqz p1, :cond_39

    :goto_0
    const/4 p1, 0x2

    goto :goto_2

    :cond_39
    :goto_1
    move p1, v1

    .line 67
    :goto_2
    new-instance v3, Leb/c;

    invoke-direct {v3, v2}, Leb/c;-><init>(Leb/d;)V

    .line 68
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_3b

    if-eq p1, v1, :cond_3a

    goto :goto_3

    .line 69
    :cond_3a
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 70
    sget-object p1, Lv9/t;->i:Leb/f;

    new-array v5, v1, [Leb/g;

    aput-object v3, v5, v4

    .line 71
    invoke-virtual {p1, v5}, Leb/f;->a([Leb/g;)V

    goto :goto_3

    .line 72
    :cond_3b
    sget-object p1, Lv9/t;->a:Lv9/t;

    .line 73
    sget-object p1, Lv9/t;->i:Leb/f;

    .line 74
    invoke-virtual {p1, v3}, Leb/f;->c(Leb/g;)V

    .line 75
    :goto_3
    iget-object p1, p0, Lya/d;->m:Lv9/p0;

    if-eqz p1, :cond_3c

    .line 76
    invoke-interface {p1, v2}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_3c
    new-array p1, v4, [Lv9/p0;

    .line 77
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    check-cast p1, [Lv9/p0;

    .line 79
    array-length v0, p1

    :goto_4
    if-ge v4, v0, :cond_3d

    aget-object v3, p1, v4

    .line 80
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v6, Lya/u;

    invoke-direct {v6, v3, v2}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v5, v6}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 81
    :cond_3d
    iget-object p1, p0, Lya/d;->A:Lhc/l0;

    .line 82
    instance-of p1, p1, Lza/a;

    if-nez p1, :cond_45

    .line 83
    iget-object p1, v2, Lv9/g;->k:Lv9/a;

    .line 84
    invoke-virtual {p1}, Lv9/a;->b()Z

    move-result p1

    if-nez p1, :cond_45

    .line 85
    instance-of p1, v2, Lv9/n4;

    if-eqz p1, :cond_3e

    move p1, v1

    goto :goto_5

    .line 86
    :cond_3e
    instance-of p1, v2, Lv9/a2;

    :goto_5
    if-eqz p1, :cond_3f

    move p1, v1

    goto :goto_6

    .line 87
    :cond_3f
    instance-of p1, v2, Lv9/f2;

    :goto_6
    if-eqz p1, :cond_40

    move p1, v1

    goto :goto_7

    .line 88
    :cond_40
    instance-of p1, v2, Lv9/w4;

    :goto_7
    if-eqz p1, :cond_41

    move p1, v1

    goto :goto_8

    .line 89
    :cond_41
    instance-of p1, v2, Lv9/f4;

    :goto_8
    if-eqz p1, :cond_42

    move p1, v1

    goto :goto_9

    .line 90
    :cond_42
    instance-of p1, v2, Lv9/z3;

    :goto_9
    if-eqz p1, :cond_43

    move p1, v1

    goto :goto_a

    .line 91
    :cond_43
    instance-of p1, v2, Lv9/w3;

    :goto_a
    if-eqz p1, :cond_44

    goto :goto_b

    .line 92
    :cond_44
    instance-of v1, v2, Lv9/y1;

    :goto_b
    if-eqz v1, :cond_45

    .line 93
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v0, Lya/w;

    invoke-direct {v0, v2, p0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p1, v0}, Lz9/a;->b(Lqd/a;)V

    :cond_45
    return-void
.end method

.method public final n(Lv9/a;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/a;",
            "Ljava/util/List<",
            "+",
            "Lga/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gestureConfigurations"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$o0;

    invoke-direct {v0, p0, p1, p2}, Lya/d$o0;-><init>(Lya/d;Lv9/a;Ljava/util/List;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance p2, Lv9/s0;

    invoke-direct {p2, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final n0(Lfa/g$b;Ljd/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfa/g$b;",
            "Ljd/d<",
            "-",
            "Lfa/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lya/d$q0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lya/d$q0;

    iget v1, v0, Lya/d$q0;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lya/d$q0;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lya/d$q0;

    invoke-direct {v0, p0, p2}, Lya/d$q0;-><init>(Lya/d;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lya/d$q0;->k:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lya/d$q0;->m:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lya/d$q0;->i:Ljava/lang/Object;

    check-cast p1, Lfa/l$c;

    iget-object v0, v0, Lya/d$q0;->h:Ljava/lang/Object;

    check-cast v0, Lfa/l$c;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lya/d$q0;->j:Lfa/l$c;

    iget-object v2, v0, Lya/d$q0;->i:Ljava/lang/Object;

    check-cast v2, Lfa/g$b;

    iget-object v3, v0, Lya/d$q0;->h:Ljava/lang/Object;

    check-cast v3, Lya/d;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p1, v0, Lya/d$q0;->i:Ljava/lang/Object;

    check-cast p1, Lfa/g$b;

    iget-object v2, v0, Lya/d$q0;->h:Ljava/lang/Object;

    check-cast v2, Lya/d;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v3, v2

    goto :goto_1

    :cond_4
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Lya/d$q0;->h:Ljava/lang/Object;

    iput-object p1, v0, Lya/d$q0;->i:Ljava/lang/Object;

    iput v3, v0, Lya/d$q0;->m:I

    invoke-virtual {p0, v3, p1, v0}, Lya/d;->o0(ILfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v3, p0

    .line 5
    :goto_1
    check-cast p2, Lfa/l$c;

    .line 6
    iput-object v3, v0, Lya/d$q0;->h:Ljava/lang/Object;

    iput-object p1, v0, Lya/d$q0;->i:Ljava/lang/Object;

    iput-object p2, v0, Lya/d$q0;->j:Lfa/l$c;

    iput v4, v0, Lya/d$q0;->m:I

    invoke-virtual {v3, v4, p1, v0}, Lya/d;->o0(ILfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v6, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v6

    .line 7
    :goto_2
    check-cast p2, Lfa/l$c;

    .line 8
    iput-object p1, v0, Lya/d$q0;->h:Ljava/lang/Object;

    iput-object p2, v0, Lya/d$q0;->i:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v0, Lya/d$q0;->j:Lfa/l$c;

    iput v5, v0, Lya/d$q0;->m:I

    invoke-virtual {v3, v5, v2, v0}, Lya/d;->o0(ILfa/g$b;Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_7

    return-object v1

    :cond_7
    move-object v6, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v6

    .line 9
    :goto_3
    check-cast p2, Lfa/l$c;

    .line 10
    new-instance v1, Lya/d$r0;

    invoke-direct {v1, v0, p1, p2}, Lya/d$r0;-><init>(Lfa/l$c;Lfa/l$c;Lfa/l$c;)V

    return-object v1
.end method

.method public final o(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$z;

    invoke-direct {v0, p0, p1}, Lya/d$z;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final o0(ILfa/g$b;Ljd/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lfa/g$b;",
            "Ljd/d<",
            "-",
            "Lfa/l$c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    sget-object v3, Lrc/b;->k:Lrc/b;

    sget-object v4, Lrc/b;->j:Lrc/b;

    sget-object v5, Lrc/b;->i:Lrc/b;

    instance-of v6, v2, Lya/x;

    if-eqz v6, :cond_0

    move-object v6, v2

    check-cast v6, Lya/x;

    iget v7, v6, Lya/x;->l:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Lya/x;->l:I

    goto :goto_0

    :cond_0
    new-instance v6, Lya/x;

    invoke-direct {v6, v1, v2}, Lya/x;-><init>(Lya/d;Ljd/d;)V

    :goto_0
    iget-object v2, v6, Lya/x;->j:Ljava/lang/Object;

    sget-object v7, Lkd/a;->h:Lkd/a;

    .line 1
    iget v8, v6, Lya/x;->l:I

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v8, :cond_2

    if-ne v8, v10, :cond_1

    iget-object v0, v6, Lya/x;->i:Lrc/b;

    iget-object v6, v6, Lya/x;->h:Lfa/g$b;

    invoke-static {v2}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v2}, Ld3/e;->p(Ljava/lang/Object;)V

    if-eqz v0, :cond_15

    add-int/lit8 v2, v0, -0x1

    if-eqz v2, :cond_5

    if-eq v2, v10, :cond_4

    if-ne v2, v9, :cond_3

    move-object v2, v3

    goto :goto_1

    .line 4
    :cond_3
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :cond_4
    move-object v2, v4

    goto :goto_1

    :cond_5
    move-object v2, v5

    :goto_1
    move-object/from16 v8, p2

    .line 5
    iput-object v8, v6, Lya/x;->h:Lfa/g$b;

    iput-object v2, v6, Lya/x;->i:Lrc/b;

    iput v10, v6, Lya/x;->l:I

    .line 6
    new-instance v12, Ljd/i;

    invoke-static {v6}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object v6

    invoke-direct {v12, v6}, Ljd/i;-><init>(Ljd/d;)V

    .line 7
    new-instance v6, Lya/q;

    invoke-direct {v6, v0, v1, v12}, Lya/q;-><init>(ILya/d;Ljd/d;)V

    .line 8
    sget-object v0, Lz9/a;->j:Lz9/a;

    new-instance v13, Lv9/s0;

    invoke-direct {v13, v6, v1}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v13}, Lz9/a;->b(Lqd/a;)V

    .line 9
    invoke-virtual {v12}, Ljd/i;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_6

    return-object v7

    :cond_6
    move-object v6, v8

    .line 10
    :goto_2
    move-object v7, v0

    check-cast v7, Lmc/k;

    .line 11
    iget-object v0, v6, Lfa/g$b;->b:[B

    .line 12
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-static {v0}, Lrc/a;->b([B)Z

    move-result v12

    const/4 v13, 0x0

    if-nez v12, :cond_7

    goto :goto_5

    .line 14
    :cond_7
    aget-byte v12, v0, v9

    const/4 v14, 0x3

    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v12, v14

    int-to-short v12, v12

    const/4 v14, 0x4

    add-int/2addr v12, v14

    .line 15
    :try_start_0
    invoke-static {v0, v14, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 16
    invoke-static {v12}, Lgc/a;->E([B)Lgc/a;

    move-result-object v12

    .line 17
    invoke-virtual {v12}, Lgc/a;->C()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgc/c;

    .line 18
    invoke-virtual {v14}, Lgc/c;->F()Lgc/c$b;

    move-result-object v15

    invoke-virtual {v15}, Lgc/c$b;->a()I

    move-result v15

    if-nez v15, :cond_8

    move-object v15, v5

    goto :goto_4

    :cond_8
    if-ne v15, v10, :cond_9

    move-object v15, v4

    goto :goto_4

    :cond_9
    if-ne v15, v9, :cond_a

    move-object v15, v3

    goto :goto_4

    .line 19
    :cond_a
    sget-object v15, Lrc/b;->o:Lrc/b;

    .line 20
    :goto_4
    invoke-virtual {v14}, Lgc/c;->D()I

    move-result v9

    invoke-virtual {v14}, Lgc/c;->E()I

    move-result v14

    invoke-static {v0, v9, v14}, Lrc/a;->a([BII)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x2

    goto :goto_3

    :catch_0
    move-exception v0

    .line 21
    invoke-static {}, Landroidx/lifecycle/o;->q()Lhc/g0;

    move-result-object v3

    const-string v4, "InvalidProtocolBufferException"

    const-string v5, "FirmwareArchiveUtil"

    invoke-interface {v3, v4, v0, v13, v5}, Lhc/g0;->c(Ljava/lang/String;Ljava/lang/Throwable;ZLjava/lang/String;)V

    .line 22
    :cond_b
    :goto_5
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 23
    new-instance v2, Lfb/c;

    .line 24
    iget-object v3, v7, Lmc/k;->a:Ljava/lang/String;

    .line 25
    invoke-direct {v2, v3}, Lfb/c;-><init>(Ljava/lang/String;)V

    .line 26
    iget v3, v7, Lmc/k;->d:I

    if-nez v0, :cond_c

    goto :goto_6

    .line 27
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_e

    :goto_6
    new-instance v2, Lfa/l$c$a;

    if-eqz v0, :cond_d

    .line 28
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_7

    :cond_d
    const/4 v0, -0x1

    .line 29
    :goto_7
    iget v3, v7, Lmc/k;->d:I

    .line 30
    invoke-direct {v2, v0, v3}, Lfa/l$c$a;-><init>(II)V

    goto :goto_9

    .line 31
    :cond_e
    iget v0, v7, Lmc/k;->b:I

    if-eqz v0, :cond_14

    const/4 v3, 0x5

    if-eq v0, v3, :cond_10

    const/4 v3, 0x6

    if-ne v0, v3, :cond_f

    goto :goto_8

    :cond_f
    move v10, v13

    :cond_10
    :goto_8
    if-nez v10, :cond_11

    .line 32
    new-instance v2, Lfa/l$c$d;

    .line 33
    invoke-static {v0}, Lfa/m;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-direct {v2, v0}, Lfa/l$c$d;-><init>(Ljava/lang/String;)V

    goto :goto_9

    .line 35
    :cond_11
    iget-object v0, v6, Lfa/g$b;->a:Lfb/c;

    .line 36
    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Lfa/l$c$e;

    .line 37
    iget-object v3, v6, Lfa/g$b;->a:Lfb/c;

    .line 38
    invoke-direct {v0, v3, v2}, Lfa/l$c$e;-><init>(Lfb/c;Lfb/c;)V

    move-object v2, v0

    goto :goto_9

    .line 39
    :cond_12
    iget v0, v7, Lmc/k;->f:I

    if-nez v0, :cond_13

    .line 40
    sget-object v2, Lfa/l$c$c;->h:Lfa/l$c$c;

    goto :goto_9

    .line 41
    :cond_13
    sget-object v2, Lfa/l$c$f;->h:Lfa/l$c$f;

    :goto_9
    return-object v2

    .line 42
    :cond_14
    throw v11

    .line 43
    :cond_15
    throw v11
.end method

.method public final p(Lv9/a;)V
    .locals 1
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "2.0.0"
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method

.method public final p0()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lya/d;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Ly0/t;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Ly0/t;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "QUEUE_BIGFOOT"

    invoke-static/range {v1 .. v6}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final q(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$x0;

    invoke-direct {v0, p0, p1}, Lya/d$x0;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final q0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lya/d;->k:Lfb/s;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lya/d;->g0()Lda/d;

    move-result-object v2

    sget-object v3, Lda/d;->o:Lda/d;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lfb/s;->j(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lya/d;->k:Lfb/s;

    return-void
.end method

.method public final r(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$v0;

    invoke-direct {v0, p0, p1}, Lya/d$v0;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final r0(Lf8/b;Z)Lda/d;
    .locals 7

    .line 1
    instance-of v0, p1, Lic/t;

    if-eqz v0, :cond_0

    sget-object p1, Lda/d;->h:Lda/d;

    goto/16 :goto_c

    .line 2
    :cond_0
    instance-of v0, p1, Lic/n;

    if-eqz v0, :cond_1

    sget-object p1, Lda/d;->i:Lda/d;

    goto/16 :goto_c

    .line 3
    :cond_1
    instance-of v0, p1, Lic/f;

    if-eqz v0, :cond_2

    sget-object p1, Lda/d;->j:Lda/d;

    goto/16 :goto_c

    .line 4
    :cond_2
    instance-of v0, p1, Lic/e;

    if-eqz v0, :cond_3

    sget-object p1, Lda/d;->k:Lda/d;

    goto/16 :goto_c

    .line 5
    :cond_3
    instance-of v0, p1, Lic/c;

    if-eqz v0, :cond_4

    sget-object p1, Lda/d;->l:Lda/d;

    goto/16 :goto_c

    .line 6
    :cond_4
    instance-of v0, p1, Lic/d;

    if-eqz v0, :cond_5

    sget-object p1, Lda/d;->m:Lda/d;

    goto/16 :goto_c

    .line 7
    :cond_5
    instance-of v0, p1, Lic/u;

    if-eqz v0, :cond_6

    sget-object p1, Lda/d;->n:Lda/d;

    goto/16 :goto_c

    .line 8
    :cond_6
    instance-of v0, p1, Lic/b;

    if-eqz v0, :cond_3c

    .line 9
    check-cast p1, Lic/b;

    .line 10
    iget-object v0, p1, Lic/b;->d:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lya/d;->b:Lea/b;

    .line 12
    iget-object v1, v1, Lea/b;->l:Ljava/lang/String;

    .line 13
    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    if-nez p2, :cond_3b

    .line 14
    iget-object p2, p0, Lya/d;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lv9/h1;

    .line 15
    iget-object v1, p0, Lya/d;->b:Lea/b;

    const/4 v2, 0x0

    .line 16
    iget-object v3, p1, Lic/b;->d:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x6f

    .line 17
    invoke-static/range {v1 .. v6}, Lea/b;->a(Lea/b;Ljava/lang/String;Ljava/lang/String;IZI)Lea/b;

    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Lv9/h1;-><init>(Lea/b;)V

    .line 19
    instance-of v1, v0, Lv9/p2;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    goto/16 :goto_1

    .line 20
    :cond_7
    instance-of v1, v0, Lv9/a1;

    if-eqz v1, :cond_8

    goto/16 :goto_1

    .line 21
    :cond_8
    instance-of v1, v0, Lv9/w0;

    if-eqz v1, :cond_9

    goto/16 :goto_1

    .line 22
    :cond_9
    instance-of v1, v0, Lv9/e1;

    if-eqz v1, :cond_a

    goto/16 :goto_1

    .line 23
    :cond_a
    instance-of v1, v0, Lv9/p6;

    if-eqz v1, :cond_b

    goto/16 :goto_1

    .line 24
    :cond_b
    instance-of v1, v0, Lv9/f6;

    if-eqz v1, :cond_c

    goto :goto_0

    .line 25
    :cond_c
    instance-of v1, v0, Lv9/x6;

    if-eqz v1, :cond_d

    goto/16 :goto_1

    .line 26
    :cond_d
    instance-of v1, v0, Lv9/m6;

    if-eqz v1, :cond_e

    goto/16 :goto_1

    .line 27
    :cond_e
    instance-of v1, v0, Lv9/j6;

    if-eqz v1, :cond_f

    goto/16 :goto_1

    .line 28
    :cond_f
    instance-of v1, v0, Lv9/t6;

    if-eqz v1, :cond_10

    goto/16 :goto_1

    .line 29
    :cond_10
    instance-of v1, v0, Lv9/q5;

    if-eqz v1, :cond_11

    goto/16 :goto_1

    .line 30
    :cond_11
    instance-of v1, v0, Lv9/x5;

    if-eqz v1, :cond_12

    goto/16 :goto_1

    .line 31
    :cond_12
    instance-of v1, v0, Lv9/a6;

    if-eqz v1, :cond_13

    goto/16 :goto_1

    .line 32
    :cond_13
    instance-of v1, v0, Lv9/t5;

    if-eqz v1, :cond_14

    goto/16 :goto_1

    .line 33
    :cond_14
    instance-of v1, v0, Lv9/u5;

    if-eqz v1, :cond_15

    goto :goto_0

    .line 34
    :cond_15
    instance-of v1, v0, Lv9/c6;

    if-eqz v1, :cond_16

    goto/16 :goto_1

    .line 35
    :cond_16
    instance-of v1, v0, Lv9/q6;

    if-eqz v1, :cond_17

    goto :goto_0

    .line 36
    :cond_17
    instance-of v1, v0, Lv9/o5;

    if-eqz v1, :cond_18

    goto :goto_0

    .line 37
    :cond_18
    instance-of v1, v0, Lv9/g6;

    if-eqz v1, :cond_19

    goto :goto_0

    .line 38
    :cond_19
    instance-of v1, v0, Lv9/p5;

    if-eqz v1, :cond_1a

    :goto_0
    move v1, v2

    goto/16 :goto_2

    .line 39
    :cond_1a
    instance-of v1, v0, Lv9/c1;

    if-eqz v1, :cond_1b

    goto/16 :goto_1

    .line 40
    :cond_1b
    instance-of v1, v0, Lv9/t4;

    if-eqz v1, :cond_1c

    goto/16 :goto_1

    .line 41
    :cond_1c
    instance-of v1, v0, Lv9/l4;

    if-eqz v1, :cond_1d

    goto/16 :goto_1

    .line 42
    :cond_1d
    instance-of v1, v0, Lv9/y1;

    if-eqz v1, :cond_1e

    goto/16 :goto_1

    .line 43
    :cond_1e
    instance-of v1, v0, Lv9/c4;

    if-eqz v1, :cond_1f

    goto/16 :goto_1

    .line 44
    :cond_1f
    instance-of v1, v0, Lv9/y4;

    if-eqz v1, :cond_20

    goto :goto_1

    .line 45
    :cond_20
    instance-of v1, v0, Lv9/w4;

    if-eqz v1, :cond_21

    goto :goto_1

    .line 46
    :cond_21
    instance-of v1, v0, Lv9/t3;

    if-eqz v1, :cond_22

    goto :goto_1

    .line 47
    :cond_22
    instance-of v1, v0, Lv9/n5;

    if-eqz v1, :cond_23

    goto :goto_1

    .line 48
    :cond_23
    instance-of v1, v0, Lv9/e5;

    if-eqz v1, :cond_24

    goto :goto_1

    .line 49
    :cond_24
    instance-of v1, v0, Lv9/h5;

    if-eqz v1, :cond_25

    goto :goto_1

    .line 50
    :cond_25
    instance-of v1, v0, Lv9/i4;

    if-eqz v1, :cond_26

    goto :goto_1

    .line 51
    :cond_26
    instance-of v1, v0, Lv9/q4;

    if-eqz v1, :cond_27

    goto :goto_1

    .line 52
    :cond_27
    instance-of v1, v0, Lv9/j5;

    if-eqz v1, :cond_28

    goto :goto_1

    .line 53
    :cond_28
    instance-of v1, v0, Lv9/z3;

    if-eqz v1, :cond_29

    goto :goto_1

    .line 54
    :cond_29
    instance-of v1, v0, Lv9/f4;

    if-eqz v1, :cond_2a

    goto :goto_1

    .line 55
    :cond_2a
    instance-of v1, v0, Lv9/f2;

    if-eqz v1, :cond_2b

    goto :goto_1

    .line 56
    :cond_2b
    instance-of v1, v0, Lv9/w3;

    if-eqz v1, :cond_2c

    goto :goto_1

    .line 57
    :cond_2c
    instance-of v1, v0, Lv9/n4;

    if-eqz v1, :cond_2d

    goto :goto_1

    .line 58
    :cond_2d
    instance-of v1, v0, Lv9/a2;

    if-eqz v1, :cond_2e

    goto :goto_1

    .line 59
    :cond_2e
    instance-of v1, v0, Lv9/g1;

    if-eqz v1, :cond_2f

    goto :goto_1

    .line 60
    :cond_2f
    instance-of v1, v0, Lv9/s2;

    :goto_1
    const/4 v1, 0x2

    .line 61
    :goto_2
    new-instance v3, Leb/c;

    invoke-direct {v3, v0}, Leb/c;-><init>(Leb/d;)V

    .line 62
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_31

    if-eq v1, v2, :cond_30

    goto :goto_3

    .line 63
    :cond_30
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 64
    sget-object v1, Lv9/t;->i:Leb/f;

    new-array v5, v2, [Leb/g;

    aput-object v3, v5, v4

    .line 65
    invoke-virtual {v1, v5}, Leb/f;->a([Leb/g;)V

    goto :goto_3

    .line 66
    :cond_31
    sget-object v1, Lv9/t;->a:Lv9/t;

    .line 67
    sget-object v1, Lv9/t;->i:Leb/f;

    .line 68
    invoke-virtual {v1, v3}, Leb/f;->c(Leb/g;)V

    .line 69
    :goto_3
    iget-object v1, p0, Lya/d;->m:Lv9/p0;

    if-eqz v1, :cond_32

    .line 70
    invoke-interface {v1, v0}, Lv9/p0;->a(Landroid/os/Parcelable;)V

    :cond_32
    new-array v1, v4, [Lv9/p0;

    .line 71
    invoke-virtual {p2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p2, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    check-cast p2, [Lv9/p0;

    .line 73
    array-length v1, p2

    :goto_4
    if-ge v4, v1, :cond_33

    aget-object v3, p2, v4

    .line 74
    sget-object v5, Lz9/a;->j:Lz9/a;

    new-instance v6, Lya/u;

    invoke-direct {v6, v3, v0}, Lya/u;-><init>(Lv9/p0;Lv9/g;)V

    invoke-virtual {v5, v6}, Lz9/a;->b(Lqd/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 75
    :cond_33
    iget-object p2, p0, Lya/d;->A:Lhc/l0;

    .line 76
    instance-of p2, p2, Lza/a;

    if-nez p2, :cond_3b

    .line 77
    iget-object p2, v0, Lv9/g;->k:Lv9/a;

    .line 78
    invoke-virtual {p2}, Lv9/a;->b()Z

    move-result p2

    if-nez p2, :cond_3b

    .line 79
    instance-of p2, v0, Lv9/n4;

    if-eqz p2, :cond_34

    move p2, v2

    goto :goto_5

    .line 80
    :cond_34
    instance-of p2, v0, Lv9/a2;

    :goto_5
    if-eqz p2, :cond_35

    move p2, v2

    goto :goto_6

    .line 81
    :cond_35
    instance-of p2, v0, Lv9/f2;

    :goto_6
    if-eqz p2, :cond_36

    move p2, v2

    goto :goto_7

    .line 82
    :cond_36
    instance-of p2, v0, Lv9/w4;

    :goto_7
    if-eqz p2, :cond_37

    move p2, v2

    goto :goto_8

    .line 83
    :cond_37
    instance-of p2, v0, Lv9/f4;

    :goto_8
    if-eqz p2, :cond_38

    move p2, v2

    goto :goto_9

    .line 84
    :cond_38
    instance-of p2, v0, Lv9/z3;

    :goto_9
    if-eqz p2, :cond_39

    move p2, v2

    goto :goto_a

    .line 85
    :cond_39
    instance-of p2, v0, Lv9/w3;

    :goto_a
    if-eqz p2, :cond_3a

    goto :goto_b

    .line 86
    :cond_3a
    instance-of v2, v0, Lv9/y1;

    :goto_b
    if-eqz v2, :cond_3b

    .line 87
    sget-object p2, Lz9/a;->j:Lz9/a;

    new-instance v1, Lya/w;

    invoke-direct {v1, v0, p0}, Lya/w;-><init>(Lv9/g;Lya/d;)V

    invoke-virtual {p2, v1}, Lz9/a;->b(Lqd/a;)V

    .line 88
    :cond_3b
    new-instance p2, Lfb/c;

    .line 89
    iget-object p1, p1, Lic/b;->c:Ljava/lang/String;

    .line 90
    invoke-direct {p2, p1}, Lfb/c;-><init>(Ljava/lang/String;)V

    .line 91
    iput-object p2, p0, Lya/d;->e:Lfb/c;

    .line 92
    sget-object p1, Lda/d;->o:Lda/d;

    goto :goto_c

    .line 93
    :cond_3c
    instance-of p2, p1, Lic/r;

    if-eqz p2, :cond_3d

    sget-object p1, Lda/d;->s:Lda/d;

    goto :goto_c

    .line 94
    :cond_3d
    instance-of p2, p1, Lic/v;

    if-eqz p2, :cond_3e

    sget-object p1, Lda/d;->t:Lda/d;

    goto :goto_c

    .line 95
    :cond_3e
    instance-of p2, p1, Lic/w;

    if-eqz p2, :cond_3f

    sget-object p1, Lda/d;->u:Lda/d;

    goto :goto_c

    .line 96
    :cond_3f
    instance-of p2, p1, Lic/x;

    if-eqz p2, :cond_40

    sget-object p1, Lda/d;->q:Lda/d;

    goto :goto_c

    .line 97
    :cond_40
    instance-of p1, p1, Lic/a;

    if-eqz p1, :cond_41

    sget-object p1, Lda/d;->r:Lda/d;

    :goto_c
    return-object p1

    :cond_41
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1
.end method

.method public final s(Lv9/a;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lya/d;->g:Z

    .line 2
    iget-object v1, p0, Lya/d;->b:Lea/b;

    .line 3
    iget-object v1, v1, Lea/b;->k:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lya/d;->i:Lfb/a;

    invoke-interface {v2, v1}, Lfb/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v0, Lya/d$i;

    invoke-direct {v0, p0}, Lya/d$i;-><init>(Lya/d;)V

    invoke-virtual {p1, v0}, Lz9/a;->b(Lqd/a;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lya/d;->h:Z

    if-nez v2, :cond_1

    .line 7
    sget-object v2, Lv9/t;->a:Lv9/t;

    invoke-virtual {v2}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lw0/a;->b(Landroid/content/Context;)Lw0/a;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lya/d;->z:Lfd/h;

    invoke-virtual {v4}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    .line 9
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 10
    sget-object v6, Lhc/f0;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3, v4, v5}, Lw0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 12
    iget-object v3, p0, Lya/d;->u:Lwa/c;

    invoke-virtual {v2}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v3, v2}, Lwa/a;->d(Landroid/content/Context;)V

    .line 13
    iput-boolean v0, p0, Lya/d;->h:Z

    .line 14
    :cond_1
    iget-object v4, p0, Lya/d;->o:Lxa/b;

    .line 15
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->d()Landroid/app/Application;

    move-result-object v5

    .line 16
    iget-object v6, p0, Lya/d;->f:Ljava/lang/String;

    const-string v7, "com.nike.android.adaptkit.ACTION_ADAPT_KIT_CONNECTION_STATE"

    .line 17
    new-instance v9, Lya/d$j;

    invoke-direct {v9, p0, p1, v1}, Lya/d$j;-><init>(Lya/d;Lv9/a;Ljava/lang/String;)V

    .line 18
    sget-object v8, Lxa/a;->h:Lxa/a;

    .line 19
    invoke-virtual/range {v4 .. v9}, Lxa/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lqd/l;Lqd/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final t(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$g;

    invoke-direct {v0, p0, p1}, Lya/d$g;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final u(Lv9/a;Lba/a;)V
    .locals 17
    .annotation runtime Lv9/n;
        minimumFirmwareVersion = "1.5.0"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "adaptIdentifier"

    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "animation"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v0, Lya/d;->e:Lfb/c;

    sget-object v4, Lfb/c;->i:Lfb/c$a;

    .line 2
    sget-object v4, Lfb/c;->l:Lfb/c;

    .line 3
    invoke-virtual {v3, v4}, Lfb/c;->b(Lfb/c;)I

    move-result v3

    if-gez v3, :cond_0

    .line 4
    new-instance v3, Lya/k;

    invoke-direct {v3, v0, v1, v2}, Lya/k;-><init>(Lya/d;Lv9/a;Lba/a;)V

    .line 5
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v2, Lv9/s0;

    invoke-direct {v2, v3, v0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lz9/a;->b(Lqd/a;)V

    goto/16 :goto_4

    .line 6
    :cond_0
    new-instance v3, Lba/b;

    new-instance v4, Lba/g0;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lba/g0;-><init>(I)V

    new-instance v6, Lba/x;

    invoke-direct {v6, v5}, Lba/x;-><init>(I)V

    new-instance v7, Lba/o;

    invoke-direct {v7, v5}, Lba/o;-><init>(I)V

    invoke-direct {v3, v4, v6, v7}, Lba/b;-><init>(Lba/g0;Lba/x;Lba/o;)V

    const/4 v4, 0x3

    new-array v4, v4, [Lba/b;

    aput-object v3, v4, v5

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const/4 v6, 0x2

    aput-object v3, v4, v6

    .line 7
    invoke-static {v4}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 8
    iget-object v4, v2, Lba/a;->l:Lba/b;

    .line 9
    iget-object v6, v4, Lba/b;->h:Lba/g0;

    .line 10
    iget v6, v6, Lba/g0;->h:I

    .line 11
    iget-object v7, v4, Lba/b;->i:Lba/x;

    .line 12
    iget v7, v7, Lba/x;->h:I

    .line 13
    iget-object v8, v4, Lba/b;->j:Lba/o;

    .line 14
    iget v8, v8, Lba/o;->h:I

    .line 15
    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    .line 16
    iget-object v7, v2, Lba/a;->i:Lba/d;

    .line 17
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/high16 v8, 0x41c00000    # 24.0f

    const-wide v9, 0x408f400000000000L    # 1000.0

    float-to-double v12, v8

    div-double/2addr v9, v12

    double-to-int v8, v9

    .line 18
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 19
    iget-object v10, v7, Lba/d;->h:Lba/f0;

    .line 20
    iget v10, v10, Lba/f0;->h:I

    if-lez v10, :cond_1

    .line 21
    new-instance v12, Lba/c;

    invoke-direct {v12, v10, v3}, Lba/c;-><init>(ILjava/util/List;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_1
    iget-object v10, v7, Lba/d;->i:Lba/t;

    .line 23
    iget v10, v10, Lba/t;->h:I

    if-lez v10, :cond_4

    .line 24
    invoke-static {v5, v10}, Landroidx/activity/k;->w(II)Lvd/e;

    move-result-object v5

    invoke-static {v5, v8}, Landroidx/activity/k;->r(Lvd/c;I)Lvd/c;

    move-result-object v5

    .line 25
    iget v10, v5, Lvd/c;->h:I

    .line 26
    iget v12, v5, Lvd/c;->i:I

    .line 27
    iget v5, v5, Lvd/c;->j:I

    if-lez v5, :cond_2

    if-le v10, v12, :cond_3

    :cond_2
    if-gez v5, :cond_4

    if-gt v12, v10, :cond_4

    :cond_3
    :goto_0
    int-to-float v13, v10

    .line 28
    iget-object v14, v7, Lba/d;->i:Lba/t;

    .line 29
    iget v14, v14, Lba/t;->h:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/high16 v14, -0x1000000

    .line 30
    invoke-static {v9, v13, v14, v6}, Landroidx/appcompat/widget/p;->f(Landroid/animation/ArgbEvaluator;FII)Lba/b;

    move-result-object v13

    .line 31
    new-instance v14, Lba/c;

    const/4 v15, 0x3

    new-array v15, v15, [Lba/b;

    const/16 v16, 0x0

    aput-object v13, v15, v16

    const/16 v16, 0x1

    aput-object v13, v15, v16

    const/16 v16, 0x2

    aput-object v13, v15, v16

    .line 32
    invoke-static {v15}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    .line 33
    invoke-direct {v14, v8, v13}, Lba/c;-><init>(ILjava/util/List;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v10, v12, :cond_4

    add-int/2addr v10, v5

    goto :goto_0

    .line 34
    :cond_4
    iget-object v5, v7, Lba/d;->j:Lba/e0;

    .line 35
    iget v5, v5, Lba/e0;->h:I

    if-lez v5, :cond_5

    .line 36
    new-instance v10, Lba/c;

    const/4 v12, 0x3

    new-array v12, v12, [Lba/b;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v14, 0x1

    aput-object v4, v12, v14

    const/4 v14, 0x2

    aput-object v4, v12, v14

    .line 37
    invoke-static {v12}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 38
    invoke-direct {v10, v5, v4}, Lba/c;-><init>(ILjava/util/List;)V

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    .line 39
    :goto_1
    iget-object v4, v7, Lba/d;->k:Lba/u;

    .line 40
    iget v4, v4, Lba/u;->h:I

    if-lez v4, :cond_8

    .line 41
    invoke-static {v13, v4}, Landroidx/activity/k;->w(II)Lvd/e;

    move-result-object v4

    invoke-static {v4, v8}, Landroidx/activity/k;->r(Lvd/c;I)Lvd/c;

    move-result-object v4

    .line 42
    iget v5, v4, Lvd/c;->h:I

    .line 43
    iget v10, v4, Lvd/c;->i:I

    .line 44
    iget v4, v4, Lvd/c;->j:I

    if-lez v4, :cond_6

    if-le v5, v10, :cond_7

    :cond_6
    if-gez v4, :cond_8

    if-gt v10, v5, :cond_8

    :cond_7
    :goto_2
    int-to-float v12, v5

    .line 45
    iget-object v13, v7, Lba/d;->k:Lba/u;

    .line 46
    iget v13, v13, Lba/u;->h:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/high16 v13, -0x1000000

    .line 47
    invoke-static {v9, v12, v6, v13}, Landroidx/appcompat/widget/p;->f(Landroid/animation/ArgbEvaluator;FII)Lba/b;

    move-result-object v12

    .line 48
    new-instance v13, Lba/c;

    const/4 v14, 0x3

    new-array v14, v14, [Lba/b;

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    const/4 v15, 0x2

    aput-object v12, v14, v15

    .line 49
    invoke-static {v14}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 50
    invoke-direct {v13, v8, v12}, Lba/c;-><init>(ILjava/util/List;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v5, v10, :cond_8

    add-int/2addr v5, v4

    goto :goto_2

    .line 51
    :cond_8
    iget-object v4, v7, Lba/d;->m:Lba/h0;

    .line 52
    iget v4, v4, Lba/h0;->h:I

    if-lez v4, :cond_9

    .line 53
    new-instance v5, Lba/c;

    invoke-direct {v5, v4, v3}, Lba/c;-><init>(ILjava/util/List;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_9
    iget-object v4, v7, Lba/d;->l:Lba/d0;

    .line 55
    iget v4, v4, Lba/d0;->h:I

    if-lez v4, :cond_a

    .line 56
    new-instance v5, Lba/c;

    invoke-direct {v5, v4, v3}, Lba/c;-><init>(ILjava/util/List;)V

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_a
    iget-object v3, v7, Lba/d;->h:Lba/f0;

    .line 58
    iget v3, v3, Lba/f0;->h:I

    .line 59
    iget-object v4, v7, Lba/d;->i:Lba/t;

    .line 60
    iget v4, v4, Lba/t;->h:I

    add-int/2addr v3, v4

    .line 61
    iget-object v4, v7, Lba/d;->j:Lba/e0;

    .line 62
    iget v4, v4, Lba/e0;->h:I

    add-int/2addr v3, v4

    .line 63
    iget-object v4, v7, Lba/d;->k:Lba/u;

    .line 64
    iget v4, v4, Lba/u;->h:I

    add-int/2addr v3, v4

    .line 65
    iget-object v4, v7, Lba/d;->m:Lba/h0;

    .line 66
    iget v4, v4, Lba/h0;->h:I

    add-int/2addr v3, v4

    .line 67
    iget-object v4, v7, Lba/d;->l:Lba/d0;

    .line 68
    iget v4, v4, Lba/d0;->h:I

    add-int/2addr v3, v4

    if-gtz v3, :cond_b

    const/4 v3, -0x1

    move v10, v3

    goto :goto_3

    .line 69
    :cond_b
    iget-object v4, v2, Lba/a;->j:Lba/s;

    .line 70
    iget v4, v4, Lba/s;->h:I

    mul-int/lit16 v4, v4, 0x3e8

    .line 71
    div-int/2addr v4, v3

    move v10, v4

    .line 72
    :goto_3
    iget v9, v2, Lba/a;->k:I

    .line 73
    new-instance v2, Lba/h;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Lba/h;-><init>(IILjava/util/List;IZZ)V

    .line 74
    new-instance v3, Lya/j;

    invoke-direct {v3, v0, v1, v2}, Lya/j;-><init>(Lya/d;Lv9/a;Lba/h;)V

    .line 75
    sget-object v1, Lz9/a;->j:Lz9/a;

    new-instance v2, Lv9/s0;

    invoke-direct {v2, v3, v0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lz9/a;->b(Lqd/a;)V

    :goto_4
    return-void
.end method

.method public final v(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$f0;

    invoke-direct {v0, p0, p1}, Lya/d$f0;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final w(Lv9/a;)V
    .locals 1

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3
    throw p1
.end method

.method public final x(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$l0;

    invoke-direct {v0, p0, p1}, Lya/d$l0;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final y(Lv9/a;)V
    .locals 2

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lya/d$a0;

    invoke-direct {v0, p0, p1}, Lya/d$a0;-><init>(Lya/d;Lv9/a;)V

    .line 2
    sget-object p1, Lz9/a;->j:Lz9/a;

    new-instance v1, Lv9/s0;

    invoke-direct {v1, v0, p0}, Lv9/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    return-void
.end method

.method public final z(Lv9/a;)V
    .locals 1

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "sessionId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method
