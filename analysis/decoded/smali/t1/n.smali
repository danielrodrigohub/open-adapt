.class public final Lt1/n;
.super Ljava/lang/Object;
.source "WorkProgressDao_Impl.java"

# interfaces
.implements Lt1/m;


# instance fields
.field public final a:Ly0/d0;

.field public final b:Lt1/n$a;

.field public final c:Lt1/n$b;


# direct methods
.method public constructor <init>(Ly0/d0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lt1/n;->a:Ly0/d0;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4
    new-instance v0, Lt1/n$a;

    invoke-direct {v0, p1}, Lt1/n$a;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/n;->b:Lt1/n$a;

    .line 5
    new-instance v0, Lt1/n$b;

    invoke-direct {v0, p1}, Lt1/n$b;-><init>(Ly0/d0;)V

    iput-object v0, p0, Lt1/n;->c:Lt1/n$b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lt1/n;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/n;->b:Lt1/n$a;

    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ld1/e;->t(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Ld1/e;->l(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lt1/n;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->c()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    .line 7
    iget-object p1, p0, Lt1/n;->a:Ly0/d0;

    invoke-virtual {p1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Lt1/n;->a:Ly0/d0;

    .line 9
    invoke-virtual {p1}, Ly0/d0;->l()V

    .line 10
    iget-object p1, p0, Lt1/n;->b:Lt1/n$a;

    invoke-virtual {p1, v0}, Ly0/h0;->d(Ld1/g;)V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    iget-object v1, p0, Lt1/n;->a:Ly0/d0;

    .line 12
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 13
    iget-object v1, p0, Lt1/n;->b:Lt1/n$a;

    invoke-virtual {v1, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 14
    throw p1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt1/n;->a:Ly0/d0;

    invoke-virtual {v0}, Ly0/d0;->b()V

    .line 2
    iget-object v0, p0, Lt1/n;->c:Lt1/n$b;

    invoke-virtual {v0}, Ly0/h0;->a()Ld1/g;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lt1/n;->a:Ly0/d0;

    invoke-virtual {v1}, Ly0/d0;->c()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Ld1/g;->p()I

    .line 5
    iget-object v1, p0, Lt1/n;->a:Ly0/d0;

    invoke-virtual {v1}, Ly0/d0;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lt1/n;->a:Ly0/d0;

    .line 7
    invoke-virtual {v1}, Ly0/d0;->l()V

    .line 8
    iget-object v1, p0, Lt1/n;->c:Lt1/n$b;

    invoke-virtual {v1, v0}, Ly0/h0;->d(Ld1/g;)V

    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-object v2, p0, Lt1/n;->a:Ly0/d0;

    .line 10
    invoke-virtual {v2}, Ly0/d0;->l()V

    .line 11
    iget-object v2, p0, Lt1/n;->c:Lt1/n$b;

    invoke-virtual {v2, v0}, Ly0/h0;->d(Ld1/g;)V

    .line 12
    throw v1
.end method
