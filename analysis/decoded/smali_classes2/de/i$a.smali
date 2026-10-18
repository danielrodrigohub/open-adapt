.class public final Lde/i$a;
.super Ljava/lang/Object;
.source "FileHandle.kt"

# interfaces
.implements Lde/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final h:Lde/i;

.field public i:J

.field public j:Z


# direct methods
.method public constructor <init>(Lde/i;J)V
    .locals 1

    const-string v0, "fileHandle"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lde/i$a;->h:Lde/i;

    .line 3
    iput-wide p2, p0, Lde/i$a;->i:J

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lde/i$a;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lde/i$a;->j:Z

    .line 3
    iget-object v0, p0, Lde/i$a;->h:Lde/i;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lde/i$a;->h:Lde/i;

    .line 6
    iget v2, v1, Lde/i;->i:I

    add-int/lit8 v2, v2, -0x1

    .line 7
    iput v2, v1, Lde/i;->i:I

    if-nez v2, :cond_2

    .line 8
    iget-boolean v2, v1, Lde/i;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    monitor-exit v0

    .line 10
    invoke-virtual {v1}, Lde/i;->x()V

    return-void

    .line 11
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    throw v1
.end method

.method public final read(Lde/c;J)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "sink"

    invoke-static {v1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v4, v0, Lde/i$a;->j:Z

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    if-eqz v4, :cond_6

    .line 2
    iget-object v4, v0, Lde/i$a;->h:Lde/i;

    iget-wide v12, v0, Lde/i$a;->i:J

    .line 3
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_5

    add-long/2addr v2, v12

    move-wide v14, v12

    :goto_1
    cmp-long v6, v14, v2

    const-wide/16 v16, -0x1

    if-gez v6, :cond_3

    .line 4
    invoke-virtual {v1, v5}, Lde/c;->t0(I)Lde/e0;

    move-result-object v11

    .line 5
    iget-object v9, v11, Lde/e0;->a:[B

    .line 6
    iget v10, v11, Lde/e0;->c:I

    sub-long v6, v2, v14

    rsub-int v8, v10, 0x2000

    move-wide/from16 p2, v2

    int-to-long v2, v8

    .line 7
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    move-object v6, v4

    move-wide v7, v14

    move-object v3, v11

    move v11, v2

    .line 8
    invoke-virtual/range {v6 .. v11}, Lde/i;->Y(J[BII)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    .line 9
    iget v2, v3, Lde/e0;->b:I

    iget v4, v3, Lde/e0;->c:I

    if-ne v2, v4, :cond_1

    .line 10
    invoke-virtual {v3}, Lde/e0;->a()Lde/e0;

    move-result-object v2

    iput-object v2, v1, Lde/c;->h:Lde/e0;

    .line 11
    invoke-static {v3}, Lde/f0;->b(Lde/e0;)V

    :cond_1
    cmp-long v1, v12, v14

    if-nez v1, :cond_3

    move-wide/from16 v14, v16

    goto :goto_2

    .line 12
    :cond_2
    iget v6, v3, Lde/e0;->c:I

    add-int/2addr v6, v2

    iput v6, v3, Lde/e0;->c:I

    int-to-long v2, v2

    add-long/2addr v14, v2

    .line 13
    iget-wide v6, v1, Lde/c;->i:J

    add-long/2addr v6, v2

    .line 14
    iput-wide v6, v1, Lde/c;->i:J

    move-wide/from16 v2, p2

    goto :goto_1

    :cond_3
    sub-long/2addr v14, v12

    :goto_2
    cmp-long v1, v14, v16

    if-eqz v1, :cond_4

    .line 15
    iget-wide v1, v0, Lde/i$a;->i:J

    add-long/2addr v1, v14

    iput-wide v1, v0, Lde/i$a;->i:J

    :cond_4
    return-wide v14

    :cond_5
    const-string v1, "byteCount < 0: "

    .line 16
    invoke-static {v1, v2, v3}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final timeout()Lde/k0;
    .locals 1

    sget-object v0, Lde/k0;->NONE:Lde/k0;

    return-object v0
.end method
