.class public final Lo3/t0;
.super Ljava/lang/Object;
.source "MediaMetricsListener.java"

# interfaces
.implements Lo3/b;
.implements Lo3/u0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/t0$b;,
        Lo3/t0$a;
    }
.end annotation


# instance fields
.field public A:Z

.field public final a:Landroid/content/Context;

.field public final b:Lo3/s0;

.field public final c:Landroid/media/metrics/PlaybackSession;

.field public final d:J

.field public final e:Ln3/b2$d;

.field public final f:Ln3/b2$b;

.field public final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Landroid/media/metrics/PlaybackMetrics$Builder;

.field public k:I

.field public l:I

.field public m:I

.field public n:Ln3/k1;

.field public o:Lo3/t0$b;

.field public p:Lo3/t0$b;

.field public q:Lo3/t0$b;

.field public r:Ln3/s0;

.field public s:Ln3/s0;

.field public t:Ln3/s0;

.field public u:Z

.field public v:I

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lo3/t0;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lo3/t0;->c:Landroid/media/metrics/PlaybackSession;

    .line 5
    new-instance p1, Ln3/b2$d;

    invoke-direct {p1}, Ln3/b2$d;-><init>()V

    iput-object p1, p0, Lo3/t0;->e:Ln3/b2$d;

    .line 6
    new-instance p1, Ln3/b2$b;

    invoke-direct {p1}, Ln3/b2$b;-><init>()V

    iput-object p1, p0, Lo3/t0;->f:Ln3/b2$b;

    .line 7
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo3/t0;->h:Ljava/util/HashMap;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo3/t0;->g:Ljava/util/HashMap;

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lo3/t0;->d:J

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lo3/t0;->l:I

    .line 11
    iput p1, p0, Lo3/t0;->m:I

    .line 12
    new-instance p1, Lo3/s0;

    invoke-direct {p1}, Lo3/s0;-><init>()V

    iput-object p1, p0, Lo3/t0;->b:Lo3/s0;

    .line 13
    iput-object p0, p1, Lo3/s0;->d:Lo3/u0;

    return-void
.end method

.method public static g(I)I
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    invoke-static {p0}, Lm5/g0;->u(I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x1b

    return p0

    :pswitch_0
    const/16 p0, 0x1a

    return p0

    :pswitch_1
    const/16 p0, 0x19

    return p0

    :pswitch_2
    const/16 p0, 0x1c

    return p0

    :pswitch_3
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x1772
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final J(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iput-boolean v0, p0, Lo3/t0;->u:Z

    .line 2
    :cond_0
    iput p1, p0, Lo3/t0;->k:I

    return-void
.end method

.method public final J0(Lp4/u;)V
    .locals 0

    iget p1, p1, Lp4/u;->a:I

    iput p1, p0, Lo3/t0;->v:I

    return-void
.end method

.method public final L(Ln3/o1;Lo3/b$b;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    iget-object v2, v0, Lo3/b$b;->a:Lm5/j;

    invoke-virtual {v2}, Lm5/j;->c()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 2
    :goto_0
    iget-object v4, v0, Lo3/b$b;->a:Lm5/j;

    invoke-virtual {v4}, Lm5/j;->c()I

    move-result v4

    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v3, v4, :cond_c

    .line 3
    iget-object v4, v0, Lo3/b$b;->a:Lm5/j;

    invoke-virtual {v4, v3}, Lm5/j;->b(I)I

    move-result v4

    .line 4
    invoke-virtual {v0, v4}, Lo3/b$b;->b(I)Lo3/b$a;

    move-result-object v8

    if-nez v4, :cond_5

    .line 5
    iget-object v4, v1, Lo3/t0;->b:Lo3/s0;

    .line 6
    monitor-enter v4

    .line 7
    :try_start_0
    iget-object v5, v4, Lo3/s0;->d:Lo3/u0;

    .line 8
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v5, v4, Lo3/s0;->e:Ln3/b2;

    .line 10
    iget-object v7, v8, Lo3/b$a;->b:Ln3/b2;

    iput-object v7, v4, Lo3/s0;->e:Ln3/b2;

    .line 11
    iget-object v7, v4, Lo3/s0;->c:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 12
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 13
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo3/s0$a;

    .line 14
    iget-object v10, v4, Lo3/s0;->e:Ln3/b2;

    invoke-virtual {v9, v5, v10}, Lo3/s0$a;->b(Ln3/b2;Ln3/b2;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 15
    invoke-virtual {v9, v8}, Lo3/s0$a;->a(Lo3/b$a;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 16
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 17
    iget-boolean v10, v9, Lo3/s0$a;->e:Z

    if-eqz v10, :cond_1

    .line 18
    iget-object v10, v9, Lo3/s0$a;->a:Ljava/lang/String;

    .line 19
    iget-object v11, v4, Lo3/s0;->f:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 20
    iput-object v6, v4, Lo3/s0;->f:Ljava/lang/String;

    .line 21
    :cond_3
    iget-object v10, v4, Lo3/s0;->d:Lo3/u0;

    .line 22
    iget-object v9, v9, Lo3/s0$a;->a:Ljava/lang/String;

    .line 23
    check-cast v10, Lo3/t0;

    invoke-virtual {v10, v8, v9}, Lo3/t0;->p(Lo3/b$a;Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {v4, v8}, Lo3/s0;->c(Lo3/b$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v4

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_5
    if-ne v4, v5, :cond_b

    .line 26
    iget-object v4, v1, Lo3/t0;->b:Lo3/s0;

    iget v5, v1, Lo3/t0;->k:I

    .line 27
    monitor-enter v4

    .line 28
    :try_start_1
    iget-object v9, v4, Lo3/s0;->d:Lo3/u0;

    .line 29
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    move v7, v2

    .line 30
    :goto_2
    iget-object v5, v4, Lo3/s0;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 31
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 32
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo3/s0$a;

    .line 33
    invoke-virtual {v9, v8}, Lo3/s0$a;->a(Lo3/b$a;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 34
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 35
    iget-boolean v10, v9, Lo3/s0$a;->e:Z

    if-eqz v10, :cond_7

    .line 36
    iget-object v10, v9, Lo3/s0$a;->a:Ljava/lang/String;

    .line 37
    iget-object v11, v4, Lo3/s0;->f:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v7, :cond_8

    if-eqz v10, :cond_8

    .line 38
    iget-boolean v11, v9, Lo3/s0$a;->f:Z

    :cond_8
    if-eqz v10, :cond_9

    .line 39
    iput-object v6, v4, Lo3/s0;->f:Ljava/lang/String;

    .line 40
    :cond_9
    iget-object v10, v4, Lo3/s0;->d:Lo3/u0;

    .line 41
    iget-object v9, v9, Lo3/s0$a;->a:Ljava/lang/String;

    .line 42
    check-cast v10, Lo3/t0;

    invoke-virtual {v10, v8, v9}, Lo3/t0;->p(Lo3/b$a;Ljava/lang/String;)V

    goto :goto_3

    .line 43
    :cond_a
    invoke-virtual {v4, v8}, Lo3/s0;->c(Lo3/b$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    monitor-exit v4

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 45
    :cond_b
    iget-object v4, v1, Lo3/t0;->b:Lo3/s0;

    invoke-virtual {v4, v8}, Lo3/s0;->d(Lo3/b$a;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 46
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 47
    invoke-virtual {v0, v2}, Lo3/b$b;->a(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 48
    invoke-virtual {v0, v2}, Lo3/b$b;->b(I)Lo3/b$a;

    move-result-object v8

    .line 49
    iget-object v9, v1, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v9, :cond_d

    .line 50
    iget-object v9, v8, Lo3/b$a;->b:Ln3/b2;

    iget-object v8, v8, Lo3/b$a;->d:Lp4/x$b;

    invoke-virtual {v1, v9, v8}, Lo3/t0;->m(Ln3/b2;Lp4/x$b;)V

    :cond_d
    const/4 v8, 0x2

    .line 51
    invoke-virtual {v0, v8}, Lo3/b$b;->a(I)Z

    move-result v9

    if-eqz v9, :cond_15

    iget-object v9, v1, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v9, :cond_15

    .line 52
    invoke-interface/range {p1 .. p1}, Ln3/o1;->t()Ln3/c2;

    move-result-object v9

    .line 53
    iget-object v9, v9, Ln3/c2;->h:Lu6/v;

    .line 54
    invoke-virtual {v9, v2}, Lu6/v;->u(I)Lu6/a;

    move-result-object v9

    .line 55
    :cond_e
    invoke-virtual {v9}, Lu6/a;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v9}, Lu6/a;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ln3/c2$a;

    move v13, v2

    .line 56
    :goto_5
    iget v14, v12, Ln3/c2$a;->h:I

    if-ge v13, v14, :cond_e

    .line 57
    iget-object v14, v12, Ln3/c2$a;->l:[Z

    aget-boolean v14, v14, v13

    if-eqz v14, :cond_f

    .line 58
    iget-object v14, v12, Ln3/c2$a;->i:Lp4/t0;

    .line 59
    iget-object v14, v14, Lp4/t0;->k:[Ln3/s0;

    aget-object v14, v14, v13

    .line 60
    iget-object v14, v14, Ln3/s0;->v:Lr3/d;

    if-eqz v14, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_10
    move-object v14, v6

    :goto_6
    if-eqz v14, :cond_15

    .line 61
    iget-object v9, v1, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    sget v12, Lm5/g0;->a:I

    move v12, v2

    .line 62
    :goto_7
    iget v13, v14, Lr3/d;->k:I

    if-ge v12, v13, :cond_14

    .line 63
    iget-object v13, v14, Lr3/d;->h:[Lr3/d$b;

    aget-object v13, v13, v12

    .line 64
    iget-object v13, v13, Lr3/d$b;->i:Ljava/util/UUID;

    .line 65
    sget-object v15, Ln3/i;->d:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    const/4 v12, 0x3

    goto :goto_8

    .line 66
    :cond_11
    sget-object v15, Ln3/i;->e:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    move v12, v8

    goto :goto_8

    .line 67
    :cond_12
    sget-object v15, Ln3/i;->c:Ljava/util/UUID;

    invoke-virtual {v13, v15}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    const/4 v12, 0x6

    goto :goto_8

    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_14
    move v12, v7

    .line 68
    :goto_8
    invoke-virtual {v9, v12}, Landroid/media/metrics/PlaybackMetrics$Builder;->setDrmType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    :cond_15
    const/16 v9, 0x3f3

    .line 69
    invoke-virtual {v0, v9}, Lo3/b$b;->a(I)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 70
    iget v9, v1, Lo3/t0;->z:I

    add-int/2addr v9, v7

    iput v9, v1, Lo3/t0;->z:I

    .line 71
    :cond_16
    iget-object v9, v1, Lo3/t0;->n:Ln3/k1;

    const/16 v12, 0x9

    const/4 v13, 0x5

    const/4 v6, 0x4

    if-nez v9, :cond_17

    move v5, v7

    move v6, v8

    const/16 v7, 0xd

    const/4 v8, 0x7

    const/4 v10, 0x6

    goto/16 :goto_16

    .line 72
    :cond_17
    iget-object v5, v1, Lo3/t0;->a:Landroid/content/Context;

    iget v8, v1, Lo3/t0;->v:I

    if-ne v8, v6, :cond_18

    move v8, v7

    goto :goto_9

    :cond_18
    move v8, v2

    .line 73
    :goto_9
    iget v14, v9, Ln3/k1;->h:I

    const/16 v6, 0x3e9

    if-ne v14, v6, :cond_19

    .line 74
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x14

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto/16 :goto_d

    .line 75
    :cond_19
    instance-of v6, v9, Ln3/q;

    if-eqz v6, :cond_1b

    .line 76
    move-object v6, v9

    check-cast v6, Ln3/q;

    .line 77
    iget v14, v6, Ln3/q;->j:I

    if-ne v14, v7, :cond_1a

    move v14, v7

    goto :goto_a

    :cond_1a
    move v14, v2

    .line 78
    :goto_a
    iget v6, v6, Ln3/q;->n:I

    goto :goto_b

    :cond_1b
    move v6, v2

    move v14, v6

    .line 79
    :goto_b
    invoke-virtual {v9}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    .line 80
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    instance-of v10, v15, Ljava/io/IOException;

    const/16 v11, 0x12

    const/16 v7, 0x17

    if-eqz v10, :cond_30

    .line 82
    instance-of v6, v15, Ll5/z;

    if-eqz v6, :cond_1c

    .line 83
    check-cast v15, Ll5/z;

    iget v5, v15, Ll5/z;->k:I

    .line 84
    new-instance v6, Lo3/t0$a;

    invoke-direct {v6, v13, v5}, Lo3/t0$a;-><init>(II)V

    move-object v5, v6

    goto/16 :goto_d

    .line 85
    :cond_1c
    instance-of v6, v15, Ll5/y;

    if-nez v6, :cond_2e

    instance-of v6, v15, Ln3/i1;

    if-eqz v6, :cond_1d

    goto/16 :goto_f

    .line 86
    :cond_1d
    instance-of v6, v15, Ll5/x;

    if-nez v6, :cond_29

    instance-of v8, v15, Ll5/k0$a;

    if-eqz v8, :cond_1e

    goto/16 :goto_c

    .line 87
    :cond_1e
    iget v5, v9, Ln3/k1;->h:I

    const/16 v6, 0x3ea

    const/16 v8, 0x15

    if-ne v5, v6, :cond_1f

    .line 88
    new-instance v5, Lo3/t0$a;

    invoke-direct {v5, v8, v2}, Lo3/t0$a;-><init>(II)V

    goto/16 :goto_d

    .line 89
    :cond_1f
    instance-of v5, v15, Lr3/e$a;

    if-eqz v5, :cond_26

    .line 90
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 91
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget v6, Lm5/g0;->a:I

    if-lt v6, v8, :cond_20

    instance-of v8, v5, Landroid/media/MediaDrm$MediaDrmStateException;

    if-eqz v8, :cond_20

    .line 93
    check-cast v5, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {v5}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v5

    .line 94
    invoke-static {v5}, Lm5/g0;->v(Ljava/lang/String;)I

    move-result v5

    .line 95
    invoke-static {v5}, Lo3/t0;->g(I)I

    move-result v6

    .line 96
    new-instance v7, Lo3/t0$a;

    invoke-direct {v7, v6, v5}, Lo3/t0$a;-><init>(II)V

    move-object v5, v7

    goto/16 :goto_d

    :cond_20
    if-lt v6, v7, :cond_21

    .line 97
    instance-of v8, v5, Landroid/media/MediaDrmResetException;

    if-eqz v8, :cond_21

    .line 98
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x1b

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto/16 :goto_d

    :cond_21
    if-lt v6, v11, :cond_22

    .line 99
    instance-of v8, v5, Landroid/media/NotProvisionedException;

    if-eqz v8, :cond_22

    .line 100
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x18

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto/16 :goto_d

    :cond_22
    if-lt v6, v11, :cond_23

    .line 101
    instance-of v6, v5, Landroid/media/DeniedByServerException;

    if-eqz v6, :cond_23

    .line 102
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x1d

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto/16 :goto_d

    .line 103
    :cond_23
    instance-of v6, v5, Lr3/a0;

    if-eqz v6, :cond_24

    .line 104
    new-instance v5, Lo3/t0$a;

    invoke-direct {v5, v7, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_d

    .line 105
    :cond_24
    instance-of v5, v5, Lr3/b$d;

    if-eqz v5, :cond_25

    .line 106
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x1c

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_d

    .line 107
    :cond_25
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x1e

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_d

    .line 108
    :cond_26
    instance-of v5, v15, Ll5/v$b;

    if-eqz v5, :cond_28

    .line 109
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Ljava/io/FileNotFoundException;

    if-eqz v5, :cond_28

    .line 110
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 111
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 113
    sget v6, Lm5/g0;->a:I

    if-lt v6, v8, :cond_27

    instance-of v6, v5, Landroid/system/ErrnoException;

    if-eqz v6, :cond_27

    check-cast v5, Landroid/system/ErrnoException;

    iget v5, v5, Landroid/system/ErrnoException;->errno:I

    sget v6, Landroid/system/OsConstants;->EACCES:I

    if-ne v5, v6, :cond_27

    .line 114
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x20

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_d

    .line 115
    :cond_27
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x1f

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_d

    .line 116
    :cond_28
    new-instance v5, Lo3/t0$a;

    invoke-direct {v5, v12, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_d

    .line 117
    :cond_29
    :goto_c
    invoke-static {v5}, Lm5/u;->b(Landroid/content/Context;)Lm5/u;

    move-result-object v5

    invoke-virtual {v5}, Lm5/u;->c()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2a

    .line 118
    new-instance v5, Lo3/t0$a;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    :goto_d
    const/4 v10, 0x6

    goto :goto_e

    .line 119
    :cond_2a
    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    .line 120
    instance-of v7, v5, Ljava/net/UnknownHostException;

    if-eqz v7, :cond_2b

    .line 121
    new-instance v5, Lo3/t0$a;

    const/4 v10, 0x6

    invoke-direct {v5, v10, v2}, Lo3/t0$a;-><init>(II)V

    :goto_e
    const/16 v7, 0xd

    const/4 v8, 0x7

    goto/16 :goto_15

    :cond_2b
    const/4 v10, 0x6

    .line 122
    instance-of v5, v5, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_2c

    .line 123
    new-instance v5, Lo3/t0$a;

    const/4 v7, 0x7

    invoke-direct {v5, v7, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_11

    :cond_2c
    const/4 v7, 0x7

    if-eqz v6, :cond_2d

    .line 124
    check-cast v15, Ll5/x;

    iget v5, v15, Ll5/x;->j:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2d

    .line 125
    new-instance v5, Lo3/t0$a;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_11

    .line 126
    :cond_2d
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_11

    :cond_2e
    :goto_f
    const/16 v6, 0x8

    const/4 v7, 0x7

    const/4 v10, 0x6

    .line 127
    new-instance v5, Lo3/t0$a;

    if-eqz v8, :cond_2f

    const/16 v8, 0xa

    goto :goto_10

    :cond_2f
    const/16 v8, 0xb

    .line 128
    :goto_10
    invoke-direct {v5, v8, v2}, Lo3/t0$a;-><init>(II)V

    :goto_11
    move v8, v7

    goto :goto_12

    :cond_30
    const/16 v5, 0x8

    const/4 v8, 0x7

    const/4 v10, 0x6

    if-eqz v14, :cond_32

    if-eqz v6, :cond_31

    const/4 v5, 0x1

    if-ne v6, v5, :cond_32

    .line 129
    :cond_31
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x23

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_12

    :cond_32
    if-eqz v14, :cond_33

    const/4 v5, 0x3

    if-ne v6, v5, :cond_33

    .line 130
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0xf

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_12

    :cond_33
    if-eqz v14, :cond_34

    const/4 v5, 0x2

    if-ne v6, v5, :cond_34

    .line 131
    new-instance v5, Lo3/t0$a;

    invoke-direct {v5, v7, v2}, Lo3/t0$a;-><init>(II)V

    :goto_12
    const/16 v7, 0xd

    goto/16 :goto_15

    .line 132
    :cond_34
    instance-of v5, v15, Le4/o$b;

    if-eqz v5, :cond_35

    .line 133
    check-cast v15, Le4/o$b;

    iget-object v5, v15, Le4/o$b;->k:Ljava/lang/String;

    .line 134
    invoke-static {v5}, Lm5/g0;->v(Ljava/lang/String;)I

    move-result v5

    .line 135
    new-instance v6, Lo3/t0$a;

    const/16 v7, 0xd

    invoke-direct {v6, v7, v5}, Lo3/t0$a;-><init>(II)V

    :goto_13
    move-object v5, v6

    goto :goto_15

    :cond_35
    const/16 v7, 0xd

    .line 136
    instance-of v5, v15, Le4/m;

    const/16 v6, 0xe

    if-eqz v5, :cond_36

    .line 137
    check-cast v15, Le4/m;

    iget-object v5, v15, Le4/m;->h:Ljava/lang/String;

    .line 138
    invoke-static {v5}, Lm5/g0;->v(Ljava/lang/String;)I

    move-result v5

    .line 139
    new-instance v11, Lo3/t0$a;

    invoke-direct {v11, v6, v5}, Lo3/t0$a;-><init>(II)V

    :goto_14
    move-object v5, v11

    goto :goto_15

    .line 140
    :cond_36
    instance-of v5, v15, Ljava/lang/OutOfMemoryError;

    if-eqz v5, :cond_37

    .line 141
    new-instance v5, Lo3/t0$a;

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    goto :goto_15

    .line 142
    :cond_37
    instance-of v5, v15, Lp3/q$b;

    if-eqz v5, :cond_38

    .line 143
    check-cast v15, Lp3/q$b;

    iget v5, v15, Lp3/q$b;->h:I

    .line 144
    new-instance v6, Lo3/t0$a;

    const/16 v11, 0x11

    invoke-direct {v6, v11, v5}, Lo3/t0$a;-><init>(II)V

    goto :goto_13

    .line 145
    :cond_38
    instance-of v5, v15, Lp3/q$e;

    if-eqz v5, :cond_39

    .line 146
    check-cast v15, Lp3/q$e;

    iget v5, v15, Lp3/q$e;->h:I

    .line 147
    new-instance v6, Lo3/t0$a;

    invoke-direct {v6, v11, v5}, Lo3/t0$a;-><init>(II)V

    goto :goto_13

    .line 148
    :cond_39
    sget v5, Lm5/g0;->a:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_3a

    instance-of v5, v15, Landroid/media/MediaCodec$CryptoException;

    if-eqz v5, :cond_3a

    .line 149
    check-cast v15, Landroid/media/MediaCodec$CryptoException;

    invoke-virtual {v15}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v5

    .line 150
    invoke-static {v5}, Lo3/t0;->g(I)I

    move-result v6

    .line 151
    new-instance v11, Lo3/t0$a;

    invoke-direct {v11, v6, v5}, Lo3/t0$a;-><init>(II)V

    goto :goto_14

    .line 152
    :cond_3a
    new-instance v5, Lo3/t0$a;

    const/16 v6, 0x16

    invoke-direct {v5, v6, v2}, Lo3/t0$a;-><init>(II)V

    .line 153
    :goto_15
    iget-object v6, v1, Lo3/t0;->c:Landroid/media/metrics/PlaybackSession;

    new-instance v11, Landroid/media/metrics/PlaybackErrorEvent$Builder;

    invoke-direct {v11}, Landroid/media/metrics/PlaybackErrorEvent$Builder;-><init>()V

    iget-wide v14, v1, Lo3/t0;->d:J

    sub-long v14, v3, v14

    .line 154
    invoke-virtual {v11, v14, v15}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v11

    iget v14, v5, Lo3/t0$a;->a:I

    .line 155
    invoke-virtual {v11, v14}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v11

    iget v5, v5, Lo3/t0$a;->b:I

    .line 156
    invoke-virtual {v11, v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setSubErrorCode(I)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v5

    .line 157
    invoke-virtual {v5, v9}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->setException(Ljava/lang/Exception;)Landroid/media/metrics/PlaybackErrorEvent$Builder;

    move-result-object v5

    .line 158
    invoke-virtual {v5}, Landroid/media/metrics/PlaybackErrorEvent$Builder;->build()Landroid/media/metrics/PlaybackErrorEvent;

    move-result-object v5

    .line 159
    invoke-virtual {v6, v5}, Landroid/media/metrics/PlaybackSession;->reportPlaybackErrorEvent(Landroid/media/metrics/PlaybackErrorEvent;)V

    const/4 v5, 0x1

    .line 160
    iput-boolean v5, v1, Lo3/t0;->A:Z

    const/4 v6, 0x0

    .line 161
    iput-object v6, v1, Lo3/t0;->n:Ln3/k1;

    const/4 v6, 0x2

    .line 162
    :goto_16
    invoke-virtual {v0, v6}, Lo3/b$b;->a(I)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 163
    invoke-interface/range {p1 .. p1}, Ln3/o1;->t()Ln3/c2;

    move-result-object v9

    .line 164
    invoke-virtual {v9, v6}, Ln3/c2;->b(I)Z

    move-result v11

    .line 165
    invoke-virtual {v9, v5}, Ln3/c2;->b(I)Z

    move-result v6

    const/4 v5, 0x3

    .line 166
    invoke-virtual {v9, v5}, Ln3/c2;->b(I)Z

    move-result v9

    if-nez v11, :cond_3b

    if-nez v6, :cond_3b

    if-eqz v9, :cond_3e

    :cond_3b
    const/4 v5, 0x0

    if-nez v11, :cond_3c

    .line 167
    invoke-virtual {v1, v3, v4, v5, v2}, Lo3/t0;->n(JLn3/s0;I)V

    :cond_3c
    if-nez v6, :cond_3d

    .line 168
    invoke-virtual {v1, v3, v4, v5, v2}, Lo3/t0;->h(JLn3/s0;I)V

    :cond_3d
    if-nez v9, :cond_3e

    .line 169
    invoke-virtual {v1, v3, v4, v5, v2}, Lo3/t0;->l(JLn3/s0;I)V

    .line 170
    :cond_3e
    iget-object v5, v1, Lo3/t0;->o:Lo3/t0$b;

    invoke-virtual {v1, v5}, Lo3/t0;->d(Lo3/t0$b;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, v1, Lo3/t0;->o:Lo3/t0$b;

    iget-object v6, v5, Lo3/t0$b;->a:Ln3/s0;

    iget v9, v6, Ln3/s0;->y:I

    const/4 v11, -0x1

    if-eq v9, v11, :cond_3f

    .line 171
    iget v5, v5, Lo3/t0$b;->b:I

    invoke-virtual {v1, v3, v4, v6, v5}, Lo3/t0;->n(JLn3/s0;I)V

    const/4 v5, 0x0

    .line 172
    iput-object v5, v1, Lo3/t0;->o:Lo3/t0$b;

    .line 173
    :cond_3f
    iget-object v5, v1, Lo3/t0;->p:Lo3/t0$b;

    invoke-virtual {v1, v5}, Lo3/t0;->d(Lo3/t0$b;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 174
    iget-object v5, v1, Lo3/t0;->p:Lo3/t0$b;

    iget-object v6, v5, Lo3/t0$b;->a:Ln3/s0;

    iget v5, v5, Lo3/t0$b;->b:I

    invoke-virtual {v1, v3, v4, v6, v5}, Lo3/t0;->h(JLn3/s0;I)V

    const/4 v5, 0x0

    .line 175
    iput-object v5, v1, Lo3/t0;->p:Lo3/t0$b;

    goto :goto_17

    :cond_40
    const/4 v5, 0x0

    .line 176
    :goto_17
    iget-object v6, v1, Lo3/t0;->q:Lo3/t0$b;

    invoke-virtual {v1, v6}, Lo3/t0;->d(Lo3/t0$b;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 177
    iget-object v6, v1, Lo3/t0;->q:Lo3/t0$b;

    iget-object v9, v6, Lo3/t0$b;->a:Ln3/s0;

    iget v6, v6, Lo3/t0$b;->b:I

    invoke-virtual {v1, v3, v4, v9, v6}, Lo3/t0;->l(JLn3/s0;I)V

    .line 178
    iput-object v5, v1, Lo3/t0;->q:Lo3/t0$b;

    .line 179
    :cond_41
    iget-object v5, v1, Lo3/t0;->a:Landroid/content/Context;

    .line 180
    invoke-static {v5}, Lm5/u;->b(Landroid/content/Context;)Lm5/u;

    move-result-object v5

    invoke-virtual {v5}, Lm5/u;->c()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const/4 v14, 0x1

    goto :goto_18

    :pswitch_1
    move v14, v8

    goto :goto_18

    :pswitch_2
    const/16 v14, 0x8

    goto :goto_18

    :pswitch_3
    const/4 v14, 0x3

    goto :goto_18

    :pswitch_4
    move v14, v10

    goto :goto_18

    :pswitch_5
    move v14, v13

    goto :goto_18

    :pswitch_6
    const/4 v14, 0x4

    goto :goto_18

    :pswitch_7
    const/4 v14, 0x2

    goto :goto_18

    :pswitch_8
    move v14, v12

    goto :goto_18

    :pswitch_9
    move v14, v2

    .line 181
    :goto_18
    iget v5, v1, Lo3/t0;->m:I

    if-eq v14, v5, :cond_42

    .line 182
    iput v14, v1, Lo3/t0;->m:I

    .line 183
    iget-object v5, v1, Lo3/t0;->c:Landroid/media/metrics/PlaybackSession;

    new-instance v6, Landroid/media/metrics/NetworkEvent$Builder;

    invoke-direct {v6}, Landroid/media/metrics/NetworkEvent$Builder;-><init>()V

    .line 184
    invoke-virtual {v6, v14}, Landroid/media/metrics/NetworkEvent$Builder;->setNetworkType(I)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v6

    iget-wide v14, v1, Lo3/t0;->d:J

    sub-long v14, v3, v14

    .line 185
    invoke-virtual {v6, v14, v15}, Landroid/media/metrics/NetworkEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/NetworkEvent$Builder;

    move-result-object v6

    .line 186
    invoke-virtual {v6}, Landroid/media/metrics/NetworkEvent$Builder;->build()Landroid/media/metrics/NetworkEvent;

    move-result-object v6

    .line 187
    invoke-virtual {v5, v6}, Landroid/media/metrics/PlaybackSession;->reportNetworkEvent(Landroid/media/metrics/NetworkEvent;)V

    .line 188
    :cond_42
    invoke-interface/range {p1 .. p1}, Ln3/o1;->s()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_43

    .line 189
    iput-boolean v2, v1, Lo3/t0;->u:Z

    .line 190
    :cond_43
    invoke-interface/range {p1 .. p1}, Ln3/o1;->h()Ln3/k1;

    move-result-object v5

    if-nez v5, :cond_44

    .line 191
    iput-boolean v2, v1, Lo3/t0;->w:Z

    const/16 v2, 0xa

    goto :goto_19

    :cond_44
    const/16 v2, 0xa

    .line 192
    invoke-virtual {v0, v2}, Lo3/b$b;->a(I)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v5, 0x1

    .line 193
    iput-boolean v5, v1, Lo3/t0;->w:Z

    .line 194
    :cond_45
    :goto_19
    invoke-interface/range {p1 .. p1}, Ln3/o1;->s()I

    move-result v5

    .line 195
    iget-boolean v6, v1, Lo3/t0;->u:Z

    if-eqz v6, :cond_46

    move v5, v13

    goto :goto_1c

    .line 196
    :cond_46
    iget-boolean v6, v1, Lo3/t0;->w:Z

    if-eqz v6, :cond_47

    goto :goto_1a

    :cond_47
    const/4 v6, 0x4

    if-ne v5, v6, :cond_48

    const/16 v5, 0xb

    goto :goto_1c

    :cond_48
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4d

    .line 197
    iget v5, v1, Lo3/t0;->l:I

    if-eqz v5, :cond_4c

    if-ne v5, v7, :cond_49

    goto :goto_1a

    .line 198
    :cond_49
    invoke-interface/range {p1 .. p1}, Ln3/o1;->p()Z

    move-result v5

    if-nez v5, :cond_4a

    move v5, v8

    goto :goto_1c

    .line 199
    :cond_4a
    invoke-interface/range {p1 .. p1}, Ln3/o1;->L()I

    move-result v5

    if-eqz v5, :cond_4b

    goto :goto_1b

    :cond_4b
    move v5, v10

    goto :goto_1c

    :cond_4c
    :goto_1a
    move v5, v7

    goto :goto_1c

    :cond_4d
    const/4 v2, 0x3

    if-ne v5, v2, :cond_50

    .line 200
    invoke-interface/range {p1 .. p1}, Ln3/o1;->p()Z

    move-result v5

    if-nez v5, :cond_4e

    move v5, v6

    goto :goto_1c

    .line 201
    :cond_4e
    invoke-interface/range {p1 .. p1}, Ln3/o1;->L()I

    move-result v5

    if-eqz v5, :cond_4f

    move v5, v12

    goto :goto_1c

    :cond_4f
    :goto_1b
    move v5, v2

    goto :goto_1c

    :cond_50
    const/4 v2, 0x1

    if-ne v5, v2, :cond_51

    .line 202
    iget v2, v1, Lo3/t0;->l:I

    if-eqz v2, :cond_51

    const/16 v5, 0xc

    goto :goto_1c

    .line 203
    :cond_51
    iget v5, v1, Lo3/t0;->l:I

    .line 204
    :goto_1c
    iget v2, v1, Lo3/t0;->l:I

    if-eq v2, v5, :cond_52

    .line 205
    iput v5, v1, Lo3/t0;->l:I

    const/4 v2, 0x1

    .line 206
    iput-boolean v2, v1, Lo3/t0;->A:Z

    .line 207
    iget-object v2, v1, Lo3/t0;->c:Landroid/media/metrics/PlaybackSession;

    new-instance v5, Landroid/media/metrics/PlaybackStateEvent$Builder;

    invoke-direct {v5}, Landroid/media/metrics/PlaybackStateEvent$Builder;-><init>()V

    iget v6, v1, Lo3/t0;->l:I

    .line 208
    invoke-virtual {v5, v6}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setState(I)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v5

    iget-wide v6, v1, Lo3/t0;->d:J

    sub-long/2addr v3, v6

    .line 209
    invoke-virtual {v5, v3, v4}, Landroid/media/metrics/PlaybackStateEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/PlaybackStateEvent$Builder;

    move-result-object v3

    .line 210
    invoke-virtual {v3}, Landroid/media/metrics/PlaybackStateEvent$Builder;->build()Landroid/media/metrics/PlaybackStateEvent;

    move-result-object v3

    .line 211
    invoke-virtual {v2, v3}, Landroid/media/metrics/PlaybackSession;->reportPlaybackStateEvent(Landroid/media/metrics/PlaybackStateEvent;)V

    :cond_52
    const/16 v2, 0x404

    .line 212
    invoke-virtual {v0, v2}, Lo3/b$b;->a(I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 213
    iget-object v3, v1, Lo3/t0;->b:Lo3/s0;

    invoke-virtual {v0, v2}, Lo3/b$b;->b(I)Lo3/b$a;

    move-result-object v0

    .line 214
    monitor-enter v3

    const/4 v2, 0x0

    .line 215
    :try_start_2
    iput-object v2, v3, Lo3/s0;->f:Ljava/lang/String;

    .line 216
    iget-object v2, v3, Lo3/s0;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 217
    :cond_53
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo3/s0$a;

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 220
    iget-boolean v5, v4, Lo3/s0$a;->e:Z

    if-eqz v5, :cond_53

    .line 221
    iget-object v5, v3, Lo3/s0;->d:Lo3/u0;

    if-eqz v5, :cond_53

    .line 222
    iget-object v4, v4, Lo3/s0$a;->a:Ljava/lang/String;

    .line 223
    check-cast v5, Lo3/t0;

    invoke-virtual {v5, v0, v4}, Lo3/t0;->p(Lo3/b$a;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1d

    .line 224
    :cond_54
    monitor-exit v3

    goto :goto_1e

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_55
    :goto_1e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final S(Lo3/b$a;IJ)V
    .locals 7

    .line 1
    iget-object v0, p1, Lo3/b$a;->d:Lp4/x$b;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lo3/t0;->b:Lo3/s0;

    iget-object p1, p1, Lo3/b$a;->b:Ln3/b2;

    .line 3
    invoke-virtual {v1, p1, v0}, Lo3/s0;->b(Ln3/b2;Lp4/x$b;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lo3/t0;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 5
    iget-object v1, p0, Lo3/t0;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 6
    iget-object v2, p0, Lo3/t0;->h:Ljava/util/HashMap;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    add-long/2addr v5, p3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 8
    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p3, p0, Lo3/t0;->g:Ljava/util/HashMap;

    if-nez v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_1
    int-to-long v0, p2

    add-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 11
    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final b(Ln5/t;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lo3/t0;->o:Lo3/t0$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lo3/t0$b;->a:Ln3/s0;

    iget v2, v1, Ln3/s0;->y:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 3
    new-instance v2, Ln3/s0$a;

    invoke-direct {v2, v1}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 4
    iget v1, p1, Ln5/t;->h:I

    .line 5
    iput v1, v2, Ln3/s0$a;->p:I

    .line 6
    iget p1, p1, Ln5/t;->i:I

    .line 7
    iput p1, v2, Ln3/s0$a;->q:I

    .line 8
    new-instance p1, Ln3/s0;

    invoke-direct {p1, v2}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 9
    new-instance v1, Lo3/t0$b;

    iget v2, v0, Lo3/t0$b;->b:I

    iget-object v0, v0, Lo3/t0$b;->c:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lo3/t0$b;-><init>(Ln3/s0;ILjava/lang/String;)V

    iput-object v1, p0, Lo3/t0;->o:Lo3/t0$b;

    :cond_0
    return-void
.end method

.method public final c(Lq3/e;)V
    .locals 2

    .line 1
    iget v0, p0, Lo3/t0;->x:I

    iget v1, p1, Lq3/e;->g:I

    add-int/2addr v0, v1

    iput v0, p0, Lo3/t0;->x:I

    .line 2
    iget v0, p0, Lo3/t0;->y:I

    iget p1, p1, Lq3/e;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lo3/t0;->y:I

    return-void
.end method

.method public final d(Lo3/t0$b;)Z
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#1"
        }
        result = true
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lo3/t0$b;->c:Ljava/lang/String;

    iget-object v0, p0, Lo3/t0;->b:Lo3/s0;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lo3/s0;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0

    throw p1

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lo3/t0;->A:Z

    if-eqz v2, :cond_3

    .line 2
    iget v2, p0, Lo3/t0;->z:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setAudioUnderrunCount(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 3
    iget-object v0, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lo3/t0;->x:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesDropped(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 4
    iget-object v0, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    iget v2, p0, Lo3/t0;->y:I

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setVideoFramesPlayed(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 5
    iget-object v0, p0, Lo3/t0;->g:Ljava/util/HashMap;

    iget-object v2, p0, Lo3/t0;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 6
    iget-object v2, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    move-wide v5, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_0
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkTransferDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 7
    iget-object v0, p0, Lo3/t0;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lo3/t0;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 8
    iget-object v2, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez v0, :cond_1

    move-wide v5, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :goto_1
    invoke-virtual {v2, v5, v6}, Landroid/media/metrics/PlaybackMetrics$Builder;->setNetworkBytesRead(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 9
    iget-object v2, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 11
    :goto_2
    invoke-virtual {v2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamSource(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 12
    iget-object v0, p0, Lo3/t0;->c:Landroid/media/metrics/PlaybackSession;

    iget-object v2, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-virtual {v2}, Landroid/media/metrics/PlaybackMetrics$Builder;->build()Landroid/media/metrics/PlaybackMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/metrics/PlaybackSession;->reportPlaybackMetrics(Landroid/media/metrics/PlaybackMetrics;)V

    :cond_3
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 14
    iput-object v0, p0, Lo3/t0;->i:Ljava/lang/String;

    .line 15
    iput v1, p0, Lo3/t0;->z:I

    .line 16
    iput v1, p0, Lo3/t0;->x:I

    .line 17
    iput v1, p0, Lo3/t0;->y:I

    .line 18
    iput-object v0, p0, Lo3/t0;->r:Ln3/s0;

    .line 19
    iput-object v0, p0, Lo3/t0;->s:Ln3/s0;

    .line 20
    iput-object v0, p0, Lo3/t0;->t:Ln3/s0;

    .line 21
    iput-boolean v1, p0, Lo3/t0;->A:Z

    return-void
.end method

.method public final f0(Lo3/b$a;Lp4/u;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lo3/b$a;->d:Lp4/x$b;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lo3/t0$b;

    iget-object v1, p2, Lp4/u;->c:Ln3/s0;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget v2, p2, Lp4/u;->d:I

    iget-object v3, p0, Lo3/t0;->b:Lo3/s0;

    iget-object v4, p1, Lo3/b$a;->b:Ln3/b2;

    iget-object p1, p1, Lo3/b$a;->d:Lp4/x$b;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v3, v4, p1}, Lo3/s0;->b(Ln3/b2;Lp4/x$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lo3/t0$b;-><init>(Ln3/s0;ILjava/lang/String;)V

    .line 7
    iget p1, p2, Lp4/u;->b:I

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iput-object v0, p0, Lo3/t0;->q:Lo3/t0$b;

    goto :goto_0

    .line 9
    :cond_2
    iput-object v0, p0, Lo3/t0;->p:Lo3/t0$b;

    goto :goto_0

    .line 10
    :cond_3
    iput-object v0, p0, Lo3/t0;->o:Lo3/t0$b;

    :goto_0
    return-void
.end method

.method public final h(JLn3/s0;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo3/t0;->s:Ln3/s0;

    invoke-static {v0, p3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lo3/t0;->s:Ln3/s0;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    .line 3
    iput-object p3, p0, Lo3/t0;->s:Ln3/s0;

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Lo3/t0;->q(IJLn3/s0;I)V

    return-void
.end method

.method public final i(Ln3/k1;)V
    .locals 0

    iput-object p1, p0, Lo3/t0;->n:Ln3/k1;

    return-void
.end method

.method public final l(JLn3/s0;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo3/t0;->t:Ln3/s0;

    invoke-static {v0, p3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lo3/t0;->t:Ln3/s0;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    .line 3
    iput-object p3, p0, Lo3/t0;->t:Ln3/s0;

    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Lo3/t0;->q(IJLn3/s0;I)V

    return-void
.end method

.method public final m(Ln3/b2;Lp4/x$b;)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "metricsBuilder"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p2, p2, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lo3/t0;->f:Ln3/b2$b;

    invoke-virtual {p1, p2, v1}, Ln3/b2;->h(ILn3/b2$b;)Ln3/b2$b;

    .line 4
    iget-object p2, p0, Lo3/t0;->f:Ln3/b2$b;

    iget p2, p2, Ln3/b2$b;->j:I

    iget-object v1, p0, Lo3/t0;->e:Ln3/b2$d;

    invoke-virtual {p1, p2, v1}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 5
    iget-object p1, p0, Lo3/t0;->e:Ln3/b2$d;

    iget-object p1, p1, Ln3/b2$d;->j:Ln3/y0;

    .line 6
    iget-object p1, p1, Ln3/y0;->i:Ln3/y0$h;

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p1, Ln3/y0$g;->a:Landroid/net/Uri;

    iget-object p1, p1, Ln3/y0$g;->b:Ljava/lang/String;

    .line 8
    invoke-static {v2, p1}, Lm5/g0;->G(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    if-eq p1, p2, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    .line 9
    :goto_0
    invoke-virtual {v0, p1}, Landroid/media/metrics/PlaybackMetrics$Builder;->setStreamType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 10
    iget-object p1, p0, Lo3/t0;->e:Ln3/b2$d;

    iget-wide v2, p1, Ln3/b2$d;->u:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Ln3/b2$d;->s:Z

    if-nez v2, :cond_6

    iget-boolean v2, p1, Ln3/b2$d;->p:Z

    if-nez v2, :cond_6

    .line 11
    invoke-virtual {p1}, Ln3/b2$d;->d()Z

    move-result p1

    if-nez p1, :cond_6

    .line 12
    iget-object p1, p0, Lo3/t0;->e:Ln3/b2$d;

    invoke-virtual {p1}, Ln3/b2$d;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/media/metrics/PlaybackMetrics$Builder;->setMediaDurationMillis(J)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 13
    :cond_6
    iget-object p1, p0, Lo3/t0;->e:Ln3/b2$d;

    invoke-virtual {p1}, Ln3/b2$d;->d()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move p2, v1

    .line 14
    :goto_1
    invoke-virtual {v0, p2}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlaybackType(I)Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 15
    iput-boolean v1, p0, Lo3/t0;->A:Z

    return-void
.end method

.method public final n(JLn3/s0;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lo3/t0;->r:Ln3/s0;

    invoke-static {v0, p3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lo3/t0;->r:Ln3/s0;

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v5, p4

    .line 3
    iput-object p3, p0, Lo3/t0;->r:Ln3/s0;

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Lo3/t0;->q(IJLn3/s0;I)V

    return-void
.end method

.method public final o(Lo3/b$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lo3/b$a;->d:Lp4/x$b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lp4/w;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lo3/t0;->f()V

    .line 3
    iput-object p2, p0, Lo3/t0;->i:Ljava/lang/String;

    .line 4
    new-instance p2, Landroid/media/metrics/PlaybackMetrics$Builder;

    invoke-direct {p2}, Landroid/media/metrics/PlaybackMetrics$Builder;-><init>()V

    const-string v0, "ExoPlayerLib"

    .line 5
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerName(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    const-string v0, "2.18.1"

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/metrics/PlaybackMetrics$Builder;->setPlayerVersion(Ljava/lang/String;)Landroid/media/metrics/PlaybackMetrics$Builder;

    move-result-object p2

    iput-object p2, p0, Lo3/t0;->j:Landroid/media/metrics/PlaybackMetrics$Builder;

    .line 7
    iget-object p2, p1, Lo3/b$a;->b:Ln3/b2;

    iget-object p1, p1, Lo3/b$a;->d:Lp4/x$b;

    invoke-virtual {p0, p2, p1}, Lo3/t0;->m(Ln3/b2;Lp4/x$b;)V

    return-void
.end method

.method public final p(Lo3/b$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lo3/b$a;->d:Lp4/x$b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lp4/w;->a()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lo3/t0;->i:Ljava/lang/String;

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lo3/t0;->f()V

    .line 4
    :cond_2
    :goto_0
    iget-object p1, p0, Lo3/t0;->g:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lo3/t0;->h:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final q(IJLn3/s0;I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/media/metrics/TrackChangeEvent$Builder;

    invoke-direct {v0, p1}, Landroid/media/metrics/TrackChangeEvent$Builder;-><init>(I)V

    iget-wide v1, p0, Lo3/t0;->d:J

    sub-long/2addr p2, v1

    .line 2
    invoke-virtual {v0, p2, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTimeSinceCreatedMillis(J)Landroid/media/metrics/TrackChangeEvent$Builder;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p4, :cond_d

    .line 3
    invoke-virtual {p1, p3}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    const/4 v0, 0x2

    if-eq p5, p3, :cond_1

    const/4 v1, 0x3

    if-eq p5, v0, :cond_2

    if-eq p5, v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v0

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackChangeReason(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 5
    iget-object p5, p4, Ln3/s0;->r:Ljava/lang/String;

    if-eqz p5, :cond_3

    .line 6
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setContainerMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 7
    :cond_3
    iget-object p5, p4, Ln3/s0;->s:Ljava/lang/String;

    if-eqz p5, :cond_4

    .line 8
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 9
    :cond_4
    iget-object p5, p4, Ln3/s0;->p:Ljava/lang/String;

    if-eqz p5, :cond_5

    .line 10
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setCodecName(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 11
    :cond_5
    iget p5, p4, Ln3/s0;->o:I

    const/4 v1, -0x1

    if-eq p5, v1, :cond_6

    .line 12
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setBitrate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 13
    :cond_6
    iget p5, p4, Ln3/s0;->x:I

    if-eq p5, v1, :cond_7

    .line 14
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setWidth(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 15
    :cond_7
    iget p5, p4, Ln3/s0;->y:I

    if-eq p5, v1, :cond_8

    .line 16
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setHeight(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 17
    :cond_8
    iget p5, p4, Ln3/s0;->F:I

    if-eq p5, v1, :cond_9

    .line 18
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setChannelCount(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 19
    :cond_9
    iget p5, p4, Ln3/s0;->G:I

    if-eq p5, v1, :cond_a

    .line 20
    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setAudioSampleRate(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 21
    :cond_a
    iget-object p5, p4, Ln3/s0;->j:Ljava/lang/String;

    if-eqz p5, :cond_c

    .line 22
    sget v2, Lm5/g0;->a:I

    const-string v2, "-"

    .line 23
    invoke-virtual {p5, v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p5

    .line 24
    aget-object p2, p5, p2

    array-length v1, p5

    if-lt v1, v0, :cond_b

    aget-object p5, p5, p3

    goto :goto_1

    :cond_b
    const/4 p5, 0x0

    :goto_1
    invoke-static {p2, p5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 25
    iget-object p5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p5, Ljava/lang/String;

    invoke-virtual {p1, p5}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 26
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz p2, :cond_c

    .line 27
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setLanguageRegion(Ljava/lang/String;)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 28
    :cond_c
    iget p2, p4, Ln3/s0;->z:F

    const/high16 p4, -0x40800000    # -1.0f

    cmpl-float p4, p2, p4

    if-eqz p4, :cond_e

    .line 29
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setVideoFrameRate(F)Landroid/media/metrics/TrackChangeEvent$Builder;

    goto :goto_2

    .line 30
    :cond_d
    invoke-virtual {p1, p2}, Landroid/media/metrics/TrackChangeEvent$Builder;->setTrackState(I)Landroid/media/metrics/TrackChangeEvent$Builder;

    .line 31
    :cond_e
    :goto_2
    iput-boolean p3, p0, Lo3/t0;->A:Z

    .line 32
    iget-object p2, p0, Lo3/t0;->c:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p1}, Landroid/media/metrics/TrackChangeEvent$Builder;->build()Landroid/media/metrics/TrackChangeEvent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/metrics/PlaybackSession;->reportTrackChangeEvent(Landroid/media/metrics/TrackChangeEvent;)V

    return-void
.end method
