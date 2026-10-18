.class public final Lfb/w;
.super Ljava/lang/Object;
.source "SessionDownload.kt"

# interfaces
.implements Lnc/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/b<",
        "Ljava/lang/Boolean;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lfb/s;

.field public final synthetic i:Lla/c;

.field public final synthetic j:Lmc/b0;

.field public final synthetic k:Lfb/s$a;

.field public final synthetic l:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfb/s;Lla/c;Lmc/b0;Lfb/s$a;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfb/s;",
            "Lla/c;",
            "Lmc/b0;",
            "Lfb/s$a;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfb/w;->h:Lfb/s;

    iput-object p2, p0, Lfb/w;->i:Lla/c;

    iput-object p3, p0, Lfb/w;->j:Lmc/b0;

    iput-object p4, p0, Lfb/w;->k:Lfb/s$a;

    iput-object p5, p0, Lfb/w;->l:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lfb/w;->l:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Lfd/o;->a:Lfd/o;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, [B

    const/16 v0, 0x2f

    .line 2
    :try_start_0
    iget-object v1, p0, Lfb/w;->h:Lfb/s;

    .line 3
    iget-boolean v2, v1, Lfb/s;->k:Z

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v1}, Lfb/s;->g()[B

    move-result-object v1

    .line 5
    array-length v1, v1

    array-length v2, p1

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lfb/w;->j:Lmc/b0;

    .line 6
    iget v2, v2, Lmc/b0;->c:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/16 v2, 0x64

    int-to-float v3, v2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 7
    iget-object v3, p0, Lfb/w;->h:Lfb/s;

    invoke-static {v3, p1}, Lfb/s;->a(Lfb/s;[B)V

    .line 8
    iget-object p1, p0, Lfb/w;->h:Lfb/s;

    .line 9
    invoke-virtual {p1}, Lfb/s;->g()[B

    move-result-object p1

    .line 10
    iget-object v3, p0, Lfb/w;->i:Lla/c;

    array-length v4, p1

    invoke-static {v3, v4, v0}, Lla/c;->a(Lla/c;II)Lla/c;

    move-result-object v3

    if-lt v1, v2, :cond_0

    .line 11
    iget-object v1, p0, Lfb/w;->h:Lfb/s;

    iget-object v2, p0, Lfb/w;->j:Lmc/b0;

    invoke-static {v1, v2}, Lfb/s;->c(Lfb/s;Lmc/b0;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lfb/w;->h:Lfb/s;

    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v1, Lfb/s;->k:Z

    .line 14
    iget-object v1, v1, Lfb/s;->j:Lfb/y;

    .line 15
    invoke-virtual {v1, v3}, Lfb/y;->c(Lla/c;)V

    .line 16
    iget-object v1, p0, Lfb/w;->h:Lfb/s;

    .line 17
    iget-object v1, v1, Lfb/s;->j:Lfb/y;

    .line 18
    new-instance v2, Lfd/e;

    iget-object v3, p0, Lfb/w;->j:Lmc/b0;

    invoke-direct {v2, v3, p1}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v1, v2}, Lfb/y;->a(Lfd/e;)V

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lfb/w;->h:Lfb/s;

    .line 21
    iget-object p1, p1, Lfb/s;->j:Lfb/y;

    .line 22
    invoke-virtual {p1, v3}, Lfb/y;->c(Lla/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    instance-of v1, p1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_1

    .line 24
    iget-object p1, p0, Lfb/w;->i:Lla/c;

    iget-object v1, p0, Lfb/w;->h:Lfb/s;

    .line 25
    invoke-virtual {v1}, Lfb/s;->g()[B

    move-result-object v1

    .line 26
    array-length v1, v1

    invoke-static {p1, v1, v0}, Lla/c;->a(Lla/c;II)Lla/c;

    move-result-object p1

    .line 27
    iget-object v0, p0, Lfb/w;->h:Lfb/s;

    .line 28
    iget-object v0, v0, Lfb/s;->j:Lfb/y;

    .line 29
    invoke-virtual {v0, p1}, Lfb/y;->c(Lla/c;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lfb/w;->h:Lfb/s;

    .line 31
    iget-object v0, v0, Lfb/s;->j:Lfb/y;

    .line 32
    invoke-virtual {v0, p1}, Lfb/y;->d(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :cond_2
    :goto_0
    iget-object p1, p0, Lfb/w;->k:Lfb/s$a;

    sget-object v0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, v0}, Lya/h0;->j(Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lfb/w;->a()V

    return-void

    :catchall_1
    move-exception p1

    .line 35
    iget-object v0, p0, Lfb/w;->k:Lfb/s$a;

    sget-object v1, Lfd/o;->a:Lfd/o;

    invoke-virtual {v0, v1}, Lya/h0;->j(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0}, Lfb/w;->a()V

    throw p1
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfb/w;->h:Lfb/s;

    .line 2
    iget-object v0, v0, Lfb/s;->j:Lfb/y;

    .line 3
    iget-object v1, p0, Lfb/w;->i:Lla/c;

    invoke-virtual {v0, v1}, Lfb/y;->c(Lla/c;)V

    return-void
.end method

.method public final i(FF)V
    .locals 0

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    iget-object p1, p0, Lfb/w;->h:Lfb/s;

    .line 3
    iget-object p1, p1, Lfb/s;->j:Lfb/y;

    .line 4
    new-instance v0, Lv9/u6;

    .line 5
    iget-object v1, p0, Lfb/w;->h:Lfb/s;

    .line 6
    iget-object v2, v1, Lfb/s;->b:Ljava/lang/String;

    .line 7
    sget-object v3, Lv9/a;->i:Lv9/a$a;

    .line 8
    sget-object v3, Lv9/a;->j:Lv9/a;

    .line 9
    iget-object v1, v1, Lfb/s;->c:Lla/b;

    const-string v4, "Un expected response called. This should not be invoked. CRITICAL FAILURE"

    .line 10
    invoke-direct {v0, v2, v3, v1, v4}, Lv9/u6;-><init>(Ljava/lang/String;Lv9/a;Lla/b;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Lfb/y;->d(Ljava/lang/Throwable;)V

    .line 12
    iget-object p1, p0, Lfb/w;->k:Lfb/s$a;

    sget-object v0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, v0}, Lya/h0;->j(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Lfb/w;->a()V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lfb/w;->k:Lfb/s$a;

    invoke-virtual {v0, p1}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lfb/w;->h:Lfb/s;

    .line 3
    iget-object v0, v0, Lfb/s;->j:Lfb/y;

    .line 4
    invoke-virtual {v0, p1}, Lfb/y;->d(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0}, Lfb/w;->a()V

    return-void
.end method
