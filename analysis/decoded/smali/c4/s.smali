.class public final Lc4/s;
.super Ljava/lang/Object;
.source "PassthroughSectionPayloadReader.java"

# interfaces
.implements Lc4/x;


# instance fields
.field public a:Ln3/s0;

.field public b:Lm5/d0;

.field public c:Ls3/w;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/s0$a;

    invoke-direct {v0}, Ln3/s0$a;-><init>()V

    .line 3
    iput-object p1, v0, Ln3/s0$a;->k:Ljava/lang/String;

    .line 4
    new-instance p1, Ln3/s0;

    invoke-direct {p1, v0}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 5
    iput-object p1, p0, Lc4/s;->a:Ln3/s0;

    return-void
.end method


# virtual methods
.method public final b(Lm5/d0;Ls3/j;Lc4/d0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc4/s;->b:Lm5/d0;

    .line 2
    invoke-virtual {p3}, Lc4/d0$d;->a()V

    .line 3
    invoke-virtual {p3}, Lc4/d0$d;->c()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lc4/s;->c:Ls3/w;

    .line 4
    iget-object p2, p0, Lc4/s;->a:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method

.method public final c(Lm5/w;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lc4/s;->b:Lm5/d0;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Lm5/g0;->a:I

    .line 3
    iget-object v0, p0, Lc4/s;->b:Lm5/d0;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-wide v1, v0, Lm5/d0;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 6
    iget-wide v5, v0, Lm5/d0;->b:J

    add-long/2addr v1, v5

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lm5/d0;->c()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-wide v6, v1

    .line 8
    monitor-exit v0

    .line 9
    iget-object v0, p0, Lc4/s;->b:Lm5/d0;

    invoke-virtual {v0}, Lm5/d0;->d()J

    move-result-wide v0

    cmp-long v2, v6, v3

    if-eqz v2, :cond_3

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, p0, Lc4/s;->a:Ln3/s0;

    iget-wide v3, v2, Ln3/s0;->w:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    .line 11
    new-instance v3, Ln3/s0$a;

    invoke-direct {v3, v2}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 12
    iput-wide v0, v3, Ln3/s0$a;->o:J

    .line 13
    new-instance v0, Ln3/s0;

    invoke-direct {v0, v3}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 14
    iput-object v0, p0, Lc4/s;->a:Ln3/s0;

    .line 15
    iget-object v1, p0, Lc4/s;->c:Ls3/w;

    invoke-interface {v1, v0}, Ls3/w;->b(Ln3/s0;)V

    .line 16
    :cond_2
    iget v0, p1, Lm5/w;->c:I

    iget v1, p1, Lm5/w;->b:I

    sub-int v9, v0, v1

    .line 17
    iget-object v0, p0, Lc4/s;->c:Ls3/w;

    invoke-interface {v0, p1, v9}, Ls3/w;->f(Lm5/w;I)V

    .line 18
    iget-object v5, p0, Lc4/s;->c:Ls3/w;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Ls3/w;->c(JIIILs3/w$a;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0

    throw p1
.end method
