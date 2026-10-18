.class public final Ljd/i;
.super Ljava/lang/Object;
.source "SafeContinuationJvm.kt"

# interfaces
.implements Ljd/d;
.implements Lld/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljd/d<",
        "TT;>;",
        "Lld/d;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Ljd/i<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final h:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljd/i;

    const-class v1, Ljava/lang/Object;

    const-string v2, "result"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljd/i;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljd/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkd/a;->i:Lkd/a;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ljd/i;->h:Ljd/d;

    .line 4
    iput-object v0, p0, Ljd/i;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkd/a;->h:Lkd/a;

    iget-object v1, p0, Ljd/i;->result:Ljava/lang/Object;

    .line 2
    sget-object v2, Lkd/a;->i:Lkd/a;

    if-ne v1, v2, :cond_3

    .line 3
    sget-object v3, Ljd/i;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v3, p0, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-object v0

    .line 4
    :cond_2
    iget-object v1, p0, Ljd/i;->result:Ljava/lang/Object;

    .line 5
    :cond_3
    sget-object v2, Lkd/a;->j:Lkd/a;

    if-ne v1, v2, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    instance-of v0, v1, Lfd/f$a;

    if-nez v0, :cond_5

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_5
    check-cast v1, Lfd/f$a;

    iget-object v0, v1, Lfd/f$a;->h:Ljava/lang/Throwable;

    throw v0
.end method

.method public final getCallerFrame()Lld/d;
    .locals 2

    iget-object v0, p0, Ljd/i;->h:Ljd/d;

    instance-of v1, v0, Lld/d;

    if-eqz v1, :cond_0

    check-cast v0, Lld/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getContext()Ljd/f;
    .locals 1

    iget-object v0, p0, Ljd/i;->h:Ljd/d;

    invoke-interface {v0}, Ljd/d;->getContext()Ljd/f;

    move-result-object v0

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 6

    .line 1
    :cond_0
    iget-object v0, p0, Ljd/i;->result:Ljava/lang/Object;

    .line 2
    sget-object v1, Lkd/a;->i:Lkd/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    sget-object v4, Ljd/i;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    invoke-virtual {v4, p0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_1

    :goto_0
    if-eqz v2, :cond_0

    return-void

    .line 3
    :cond_3
    sget-object v1, Lkd/a;->h:Lkd/a;

    if-ne v0, v1, :cond_6

    sget-object v0, Ljd/i;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v4, Lkd/a;->j:Lkd/a;

    :cond_4
    invoke-virtual {v0, p0, v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v1, :cond_4

    :goto_1
    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Ljd/i;->h:Ljd/d;

    invoke-interface {v0, p1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SafeContinuation for "

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ljd/i;->h:Ljd/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
