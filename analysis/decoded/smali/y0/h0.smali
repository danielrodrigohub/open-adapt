.class public abstract Ly0/h0;
.super Ljava/lang/Object;
.source "SharedSQLiteStatement.java"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Ly0/d0;

.field public volatile c:Ld1/g;


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ly0/h0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Ly0/h0;->b:Ly0/d0;

    return-void
.end method


# virtual methods
.method public final a()Ld1/g;
    .locals 3

    .line 1
    iget-object v0, p0, Ly0/h0;->b:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->a()V

    .line 2
    iget-object v0, p0, Ly0/h0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ly0/h0;->c:Ld1/g;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ly0/h0;->b()Ld1/g;

    move-result-object v0

    iput-object v0, p0, Ly0/h0;->c:Ld1/g;

    .line 5
    :cond_0
    iget-object v0, p0, Ly0/h0;->c:Ld1/g;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ly0/h0;->b()Ld1/g;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final b()Ld1/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ly0/h0;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ly0/h0;->b:Ly0/d0;

    .line 3
    invoke-virtual {v1}, Ly0/d0;->a()V

    .line 4
    invoke-virtual {v1}, Ly0/d0;->b()V

    .line 5
    iget-object v1, v1, Ly0/d0;->c:Ld1/d;

    invoke-interface {v1}, Ld1/d;->X()Ld1/b;

    move-result-object v1

    invoke-interface {v1, v0}, Ld1/b;->q(Ljava/lang/String;)Ld1/g;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final d(Ld1/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ly0/h0;->c:Ld1/g;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Ly0/h0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
