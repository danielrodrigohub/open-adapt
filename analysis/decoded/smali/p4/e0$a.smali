.class public final Lp4/e0$a;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/e0$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lp4/x$b;

.field public final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lp4/e0$a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lp4/e0$a;->a:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lp4/e0$a;->b:Lp4/x$b;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lp4/e0$a;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILp4/x$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lp4/e0$a$a;",
            ">;I",
            "Lp4/x$b;",
            "J)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 9
    iput p2, p0, Lp4/e0$a;->a:I

    .line 10
    iput-object p3, p0, Lp4/e0$a;->b:Lp4/x$b;

    .line 11
    iput-wide p4, p0, Lp4/e0$a;->d:J

    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lm5/g0;->X(J)J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-wide v0, p0, Lp4/e0$a;->d:J

    add-long/2addr v0, p1

    :goto_0
    return-wide v0
.end method

.method public final b(ILn3/s0;ILjava/lang/Object;J)V
    .locals 12

    move-object v0, p0

    .line 1
    new-instance v11, Lp4/u;

    move-wide/from16 v1, p5

    .line 2
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v7

    const/4 v2, 0x1

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v11

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v10}, Lp4/u;-><init>(IILn3/s0;ILjava/lang/Object;JJ)V

    .line 3
    invoke-virtual {p0, v11}, Lp4/e0$a;->c(Lp4/u;)V

    return-void
.end method

.method public final c(Lp4/u;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/e0$a$a;

    .line 2
    iget-object v2, v1, Lp4/e0$a$a;->b:Lp4/e0;

    .line 3
    iget-object v1, v1, Lp4/e0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lp4/y;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v2, p1, v4}, Lp4/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Lp4/r;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lp4/e0$a;->e(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final e(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    .line 1
    new-instance v11, Lp4/u;

    move-wide/from16 v1, p7

    .line 2
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lp4/u;-><init>(IILn3/s0;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 4
    invoke-virtual {p0, p1, v11}, Lp4/e0$a;->f(Lp4/r;Lp4/u;)V

    return-void
.end method

.method public final f(Lp4/r;Lp4/u;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/e0$a$a;

    .line 2
    iget-object v2, v1, Lp4/e0$a$a;->b:Lp4/e0;

    .line 3
    iget-object v1, v1, Lp4/e0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lp4/c0;

    invoke-direct {v3, p0, v2, p1, p2}, Lp4/c0;-><init>(Lp4/e0$a;Lp4/e0;Lp4/r;Lp4/u;)V

    invoke-static {v1, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lp4/r;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lp4/e0$a;->h(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final h(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    .line 1
    new-instance v11, Lp4/u;

    move-wide/from16 v1, p7

    .line 2
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lp4/u;-><init>(IILn3/s0;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 4
    invoke-virtual {p0, p1, v11}, Lp4/e0$a;->i(Lp4/r;Lp4/u;)V

    return-void
.end method

.method public final i(Lp4/r;Lp4/u;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/e0$a$a;

    .line 2
    iget-object v2, v1, Lp4/e0$a$a;->b:Lp4/e0;

    .line 3
    iget-object v1, v1, Lp4/e0$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lp4/b0;

    invoke-direct {v3, p0, v2, p1, p2}, Lp4/b0;-><init>(Lp4/e0$a;Lp4/e0;Lp4/r;Lp4/u;)V

    invoke-static {v1, v3}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Lp4/r;IILn3/s0;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12

    move-object v0, p0

    .line 1
    new-instance v11, Lp4/u;

    move-wide/from16 v1, p7

    .line 2
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lp4/u;-><init>(IILn3/s0;ILjava/lang/Object;JJ)V

    move-object v1, p1

    move-object/from16 v2, p11

    move/from16 v3, p12

    .line 4
    invoke-virtual {p0, p1, v11, v2, v3}, Lp4/e0$a;->l(Lp4/r;Lp4/u;Ljava/io/IOException;Z)V

    return-void
.end method

.method public final k(Lp4/r;ILjava/io/IOException;Z)V
    .locals 13

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v0 .. v12}, Lp4/e0$a;->j(Lp4/r;IILn3/s0;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    return-void
.end method

.method public final l(Lp4/r;Lp4/u;Ljava/io/IOException;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/e0$a$a;

    .line 2
    iget-object v4, v1, Lp4/e0$a$a;->b:Lp4/e0;

    .line 3
    iget-object v1, v1, Lp4/e0$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lp4/d0;

    move-object v2, v9

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lp4/d0;-><init>(Lp4/e0$a;Lp4/e0;Lp4/r;Lp4/u;Ljava/io/IOException;Z)V

    invoke-static {v1, v9}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final m(Lp4/r;I)V
    .locals 11

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v10}, Lp4/e0$a;->n(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final n(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V
    .locals 12

    move-object v0, p0

    .line 1
    new-instance v11, Lp4/u;

    move-wide/from16 v1, p7

    .line 2
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p9

    .line 3
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v9

    move-object v1, v11

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lp4/u;-><init>(IILn3/s0;ILjava/lang/Object;JJ)V

    move-object v1, p1

    .line 4
    invoke-virtual {p0, p1, v11}, Lp4/e0$a;->o(Lp4/r;Lp4/u;)V

    return-void
.end method

.method public final o(Lp4/r;Lp4/u;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/e0$a$a;

    .line 2
    iget-object v4, v1, Lp4/e0$a$a;->b:Lp4/e0;

    .line 3
    iget-object v1, v1, Lp4/e0$a$a;->a:Landroid/os/Handler;

    new-instance v8, Lp4/z;

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lp4/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v8}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final p(IJJ)V
    .locals 12

    move-object v0, p0

    .line 1
    new-instance v11, Lp4/u;

    move-wide v1, p2

    .line 2
    invoke-virtual {p0, p2, p3}, Lp4/e0$a;->a(J)J

    move-result-wide v7

    move-wide/from16 v1, p4

    .line 3
    invoke-virtual {p0, v1, v2}, Lp4/e0$a;->a(J)J

    move-result-wide v9

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, v11

    move v3, p1

    invoke-direct/range {v1 .. v10}, Lp4/u;-><init>(IILn3/s0;ILjava/lang/Object;JJ)V

    .line 4
    invoke-virtual {p0, v11}, Lp4/e0$a;->q(Lp4/u;)V

    return-void
.end method

.method public final q(Lp4/u;)V
    .locals 10

    .line 1
    iget-object v6, p0, Lp4/e0$a;->b:Lp4/x$b;

    .line 2
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp4/e0$a$a;

    .line 4
    iget-object v2, v0, Lp4/e0$a$a;->b:Lp4/e0;

    .line 5
    iget-object v8, v0, Lp4/e0$a$a;->a:Landroid/os/Handler;

    new-instance v9, Lp4/a0;

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v3, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lp4/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v8, v9}, Lm5/g0;->P(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final r(ILp4/x$b;J)Lp4/e0$a;
    .locals 7

    new-instance v6, Lp4/e0$a;

    iget-object v1, p0, Lp4/e0$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v0, v6

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lp4/e0$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILp4/x$b;J)V

    return-object v6
.end method
