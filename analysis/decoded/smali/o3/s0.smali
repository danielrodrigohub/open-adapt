.class public final Lo3/s0;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/s0$a;
    }
.end annotation


# static fields
.field public static final g:Ljava/util/Random;


# instance fields
.field public final a:Ln3/b2$d;

.field public final b:Ln3/b2$b;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo3/s0$a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lo3/u0;

.field public e:Ln3/b2;

.field public f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lo3/s0;->g:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/b2$d;

    invoke-direct {v0}, Ln3/b2$d;-><init>()V

    iput-object v0, p0, Lo3/s0;->a:Ln3/b2$d;

    .line 3
    new-instance v0, Ln3/b2$b;

    invoke-direct {v0}, Ln3/b2$b;-><init>()V

    iput-object v0, p0, Lo3/s0;->b:Ln3/b2$b;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo3/s0;->c:Ljava/util/HashMap;

    .line 5
    sget-object v0, Ln3/b2;->h:Ln3/b2$a;

    iput-object v0, p0, Lo3/s0;->e:Ln3/b2;

    return-void
.end method


# virtual methods
.method public final a(ILp4/x$b;)Lo3/s0$a;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v0, Lo3/s0;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const-wide v5, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo3/s0$a;

    .line 2
    iget-wide v8, v7, Lo3/s0$a;->c:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget v8, v7, Lo3/s0$a;->b:I

    if-ne v1, v8, :cond_1

    if-eqz v2, :cond_1

    .line 3
    iget-wide v8, v2, Lp4/w;->d:J

    iput-wide v8, v7, Lo3/s0$a;->c:J

    :cond_1
    if-nez v2, :cond_3

    .line 4
    iget v12, v7, Lo3/s0$a;->b:I

    if-ne v1, v12, :cond_2

    :goto_1
    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 5
    :cond_3
    iget-object v12, v7, Lo3/s0$a;->d:Lp4/x$b;

    if-nez v12, :cond_4

    .line 6
    invoke-virtual/range {p2 .. p2}, Lp4/w;->a()Z

    move-result v12

    if-nez v12, :cond_2

    iget-wide v12, v2, Lp4/w;->d:J

    iget-wide v14, v7, Lo3/s0$a;->c:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    goto :goto_1

    .line 7
    :cond_4
    iget-wide v13, v2, Lp4/w;->d:J

    iget-wide v8, v12, Lp4/w;->d:J

    cmp-long v8, v13, v8

    if-nez v8, :cond_2

    iget v8, v2, Lp4/w;->b:I

    iget v9, v12, Lp4/w;->b:I

    if-ne v8, v9, :cond_2

    iget v8, v2, Lp4/w;->c:I

    iget v9, v12, Lp4/w;->c:I

    if-ne v8, v9, :cond_2

    goto :goto_1

    :goto_2
    if-eqz v8, :cond_0

    .line 8
    iget-wide v8, v7, Lo3/s0$a;->c:J

    cmp-long v10, v8, v10

    if-eqz v10, :cond_6

    cmp-long v10, v8, v5

    if-gez v10, :cond_5

    goto :goto_3

    :cond_5
    if-nez v10, :cond_0

    .line 9
    sget v8, Lm5/g0;->a:I

    .line 10
    iget-object v8, v4, Lo3/s0$a;->d:Lp4/x$b;

    if-eqz v8, :cond_0

    .line 11
    iget-object v8, v7, Lo3/s0$a;->d:Lp4/x$b;

    if-eqz v8, :cond_0

    move-object v4, v7

    goto :goto_0

    :cond_6
    :goto_3
    move-object v4, v7

    move-wide v5, v8

    goto :goto_0

    :cond_7
    if-nez v4, :cond_8

    const/16 v3, 0xc

    new-array v3, v3, [B

    .line 12
    sget-object v4, Lo3/s0;->g:Ljava/util/Random;

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    const/16 v4, 0xa

    .line 13
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 14
    new-instance v4, Lo3/s0$a;

    invoke-direct {v4, v0, v3, v1, v2}, Lo3/s0$a;-><init>(Lo3/s0;Ljava/lang/String;ILp4/x$b;)V

    .line 15
    iget-object v1, v0, Lo3/s0;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v4
.end method

.method public final declared-synchronized b(Ln3/b2;Lp4/x$b;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p2, Lp4/w;->a:Ljava/lang/Object;

    iget-object v1, p0, Lo3/s0;->b:Ln3/b2$b;

    invoke-virtual {p1, v0, v1}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object p1

    iget p1, p1, Ln3/b2$b;->j:I

    .line 2
    invoke-virtual {p0, p1, p2}, Lo3/s0;->a(ILp4/x$b;)Lo3/s0$a;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lo3/s0$a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Lo3/b$a;)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lo3/b$a;->b:Ln3/b2;

    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lo3/s0;->f:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lo3/s0;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lo3/s0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/s0$a;

    .line 4
    iget v1, p1, Lo3/b$a;->c:I

    iget-object v2, p1, Lo3/b$a;->d:Lp4/x$b;

    .line 5
    invoke-virtual {p0, v1, v2}, Lo3/s0;->a(ILp4/x$b;)Lo3/s0$a;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lo3/s0$a;->a:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lo3/s0;->f:Ljava/lang/String;

    .line 8
    invoke-virtual {p0, p1}, Lo3/s0;->d(Lo3/b$a;)V

    .line 9
    iget-object v1, p1, Lo3/b$a;->d:Lp4/x$b;

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {v1}, Lp4/w;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 11
    iget-wide v1, v0, Lo3/s0$a;->c:J

    .line 12
    iget-object v3, p1, Lo3/b$a;->d:Lp4/x$b;

    iget-wide v4, v3, Lp4/w;->d:J

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    .line 13
    iget-object v0, v0, Lo3/s0$a;->d:Lp4/x$b;

    if-eqz v0, :cond_1

    .line 14
    iget v1, v0, Lp4/w;->b:I

    iget v2, v3, Lp4/w;->b:I

    if-ne v1, v2, :cond_1

    .line 15
    iget v0, v0, Lp4/w;->c:I

    iget v1, v3, Lp4/w;->c:I

    if-eq v0, v1, :cond_2

    .line 16
    :cond_1
    new-instance v0, Lp4/x$b;

    iget-object v1, p1, Lo3/b$a;->d:Lp4/x$b;

    iget-object v2, v1, Lp4/w;->a:Ljava/lang/Object;

    iget-wide v3, v1, Lp4/w;->d:J

    invoke-direct {v0, v2, v3, v4}, Lp4/x$b;-><init>(Ljava/lang/Object;J)V

    .line 17
    iget p1, p1, Lo3/b$a;->c:I

    .line 18
    invoke-virtual {p0, p1, v0}, Lo3/s0;->a(ILp4/x$b;)Lo3/s0$a;

    .line 19
    iget-object p1, p0, Lo3/s0;->d:Lo3/u0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final declared-synchronized d(Lo3/b$a;)V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lo3/s0;->d:Lo3/u0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p1, Lo3/b$a;->b:Ln3/b2;

    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo3/s0;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lo3/s0;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/s0$a;

    .line 6
    iget-object v1, p1, Lo3/b$a;->d:Lp4/x$b;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 7
    iget-wide v3, v0, Lo3/s0$a;->c:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 8
    iget v0, v0, Lo3/s0$a;->b:I

    .line 9
    iget v3, p1, Lo3/b$a;->c:I

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 10
    :cond_1
    iget-wide v7, v1, Lp4/w;->d:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v7, v3

    if-gez v0, :cond_2

    :goto_0
    move v6, v2

    :cond_2
    if-eqz v6, :cond_3

    .line 11
    monitor-exit p0

    return-void

    .line 12
    :cond_3
    :try_start_2
    iget v0, p1, Lo3/b$a;->c:I

    .line 13
    invoke-virtual {p0, v0, v1}, Lo3/s0;->a(ILp4/x$b;)Lo3/s0$a;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lo3/s0;->f:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 15
    iget-object v1, v0, Lo3/s0$a;->a:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lo3/s0;->f:Ljava/lang/String;

    .line 17
    :cond_4
    iget-object v1, p1, Lo3/b$a;->d:Lp4/x$b;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lp4/w;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    new-instance v1, Lp4/x$b;

    iget-object v3, p1, Lo3/b$a;->d:Lp4/x$b;

    iget-object v4, v3, Lp4/w;->a:Ljava/lang/Object;

    iget-wide v5, v3, Lp4/w;->d:J

    iget v3, v3, Lp4/w;->b:I

    invoke-direct {v1, v4, v5, v6, v3}, Lp4/x$b;-><init>(Ljava/lang/Object;JI)V

    .line 19
    iget v3, p1, Lo3/b$a;->c:I

    .line 20
    invoke-virtual {p0, v3, v1}, Lo3/s0;->a(ILp4/x$b;)Lo3/s0$a;

    move-result-object v1

    .line 21
    iget-boolean v3, v1, Lo3/s0$a;->e:Z

    if-nez v3, :cond_5

    .line 22
    iput-boolean v2, v1, Lo3/s0$a;->e:Z

    .line 23
    iget-object v1, p1, Lo3/b$a;->b:Ln3/b2;

    iget-object v3, p1, Lo3/b$a;->d:Lp4/x$b;

    iget-object v3, v3, Lp4/w;->a:Ljava/lang/Object;

    iget-object v4, p0, Lo3/s0;->b:Ln3/b2$b;

    invoke-virtual {v1, v3, v4}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 24
    iget-object v1, p0, Lo3/s0;->b:Ln3/b2$b;

    iget-object v3, p1, Lo3/b$a;->d:Lp4/x$b;

    iget v3, v3, Lp4/w;->b:I

    .line 25
    invoke-virtual {v1, v3}, Ln3/b2$b;->e(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Lm5/g0;->X(J)J

    move-result-wide v3

    iget-object v1, p0, Lo3/s0;->b:Ln3/b2$b;

    .line 26
    iget-wide v5, v1, Ln3/b2$b;->l:J

    invoke-static {v5, v6}, Lm5/g0;->X(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x0

    .line 27
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 28
    iget-object v1, p0, Lo3/s0;->d:Lo3/u0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_5
    iget-boolean v1, v0, Lo3/s0$a;->e:Z

    if-nez v1, :cond_6

    .line 30
    iput-boolean v2, v0, Lo3/s0$a;->e:Z

    .line 31
    iget-object v1, p0, Lo3/s0;->d:Lo3/u0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_6
    iget-object v1, v0, Lo3/s0$a;->a:Ljava/lang/String;

    .line 33
    iget-object v3, p0, Lo3/s0;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 34
    iget-boolean v1, v0, Lo3/s0$a;->f:Z

    if-nez v1, :cond_7

    .line 35
    iput-boolean v2, v0, Lo3/s0$a;->f:Z

    .line 36
    iget-object v1, p0, Lo3/s0;->d:Lo3/u0;

    .line 37
    iget-object v0, v0, Lo3/s0$a;->a:Ljava/lang/String;

    .line 38
    check-cast v1, Lo3/t0;

    invoke-virtual {v1, p1, v0}, Lo3/t0;->o(Lo3/b$a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
