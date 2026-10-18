.class public final Lp3/w;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lp3/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/w$b;,
        Lp3/w$i;,
        Lp3/w$f;,
        Lp3/w$j;,
        Lp3/w$h;,
        Lp3/w$k;,
        Lp3/w$e;,
        Lp3/w$d;,
        Lp3/w$g;,
        Lp3/w$c;
    }
.end annotation


# instance fields
.field public A:I

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:I

.field public G:Z

.field public H:Z

.field public I:J

.field public J:F

.field public K:[Lp3/f;

.field public L:[Ljava/nio/ByteBuffer;

.field public M:Ljava/nio/ByteBuffer;

.field public N:I

.field public O:Ljava/nio/ByteBuffer;

.field public P:[B

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:I

.field public X:Lp3/t;

.field public Y:Z

.field public Z:J

.field public final a:Lp3/e;

.field public a0:Z

.field public final b:Lp3/w$c;

.field public b0:Z

.field public final c:Z

.field public final d:Lp3/v;

.field public final e:Lp3/g0;

.field public final f:[Lp3/f;

.field public final g:[Lp3/f;

.field public final h:Lm5/e;

.field public final i:Lp3/s;

.field public final j:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lp3/w$h;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Z

.field public final l:I

.field public m:Lp3/w$k;

.field public final n:Lp3/w$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/w$i<",
            "Lp3/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lp3/w$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/w$i<",
            "Lp3/q$e;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lp3/x;

.field public q:Lo3/v0;

.field public r:Lp3/q$c;

.field public s:Lp3/w$f;

.field public t:Lp3/w$f;

.field public u:Landroid/media/AudioTrack;

.field public v:Lp3/d;

.field public w:Lp3/w$h;

.field public x:Lp3/w$h;

.field public y:Ln3/m1;

.field public z:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lp3/w$e;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lp3/w$e;->a:Lp3/e;

    .line 3
    iput-object v0, p0, Lp3/w;->a:Lp3/e;

    .line 4
    iget-object v0, p1, Lp3/w$e;->b:Lp3/w$g;

    .line 5
    iput-object v0, p0, Lp3/w;->b:Lp3/w$c;

    .line 6
    sget v1, Lm5/g0;->a:I

    const/16 v2, 0x15

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 7
    iget-boolean v2, p1, Lp3/w$e;->c:Z

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 8
    :goto_0
    iput-boolean v2, p0, Lp3/w;->c:Z

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 9
    iget-boolean v2, p1, Lp3/w$e;->d:Z

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 10
    :goto_1
    iput-boolean v2, p0, Lp3/w;->k:Z

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_2

    .line 11
    iget v1, p1, Lp3/w$e;->e:I

    goto :goto_2

    :cond_2
    move v1, v4

    .line 12
    :goto_2
    iput v1, p0, Lp3/w;->l:I

    .line 13
    iget-object p1, p1, Lp3/w$e;->f:Lp3/x;

    iput-object p1, p0, Lp3/w;->p:Lp3/x;

    .line 14
    new-instance p1, Lm5/e;

    sget-object v1, Lm5/c;->a:Lm5/a0;

    invoke-direct {p1, v1}, Lm5/e;-><init>(Lm5/c;)V

    iput-object p1, p0, Lp3/w;->h:Lm5/e;

    .line 15
    invoke-virtual {p1}, Lm5/e;->c()Z

    .line 16
    new-instance p1, Lp3/s;

    new-instance v1, Lp3/w$j;

    invoke-direct {v1, p0}, Lp3/w$j;-><init>(Lp3/w;)V

    invoke-direct {p1, v1}, Lp3/s;-><init>(Lp3/s$a;)V

    iput-object p1, p0, Lp3/w;->i:Lp3/s;

    .line 17
    new-instance p1, Lp3/v;

    invoke-direct {p1}, Lp3/v;-><init>()V

    iput-object p1, p0, Lp3/w;->d:Lp3/v;

    .line 18
    new-instance v1, Lp3/g0;

    invoke-direct {v1}, Lp3/g0;-><init>()V

    iput-object v1, p0, Lp3/w;->e:Lp3/g0;

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Lp3/u;

    .line 20
    new-instance v6, Lp3/c0;

    invoke-direct {v6}, Lp3/c0;-><init>()V

    aput-object v6, v5, v4

    aput-object p1, v5, v3

    const/4 p1, 0x2

    aput-object v1, v5, p1

    invoke-static {v2, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 21
    iget-object p1, v0, Lp3/w$g;->a:[Lp3/f;

    .line 22
    invoke-static {v2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-array p1, v4, [Lp3/f;

    .line 23
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lp3/f;

    iput-object p1, p0, Lp3/w;->f:[Lp3/f;

    new-array p1, v3, [Lp3/f;

    .line 24
    new-instance v0, Lp3/z;

    invoke-direct {v0}, Lp3/z;-><init>()V

    aput-object v0, p1, v4

    iput-object p1, p0, Lp3/w;->g:[Lp3/f;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    iput p1, p0, Lp3/w;->J:F

    .line 26
    sget-object p1, Lp3/d;->n:Lp3/d;

    iput-object p1, p0, Lp3/w;->v:Lp3/d;

    .line 27
    iput v4, p0, Lp3/w;->W:I

    .line 28
    new-instance p1, Lp3/t;

    invoke-direct {p1}, Lp3/t;-><init>()V

    iput-object p1, p0, Lp3/w;->X:Lp3/t;

    .line 29
    new-instance p1, Lp3/w$h;

    sget-object v0, Ln3/m1;->k:Ln3/m1;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v5 .. v11}, Lp3/w$h;-><init>(Ln3/m1;ZJJ)V

    iput-object p1, p0, Lp3/w;->x:Lp3/w$h;

    .line 30
    iput-object v0, p0, Lp3/w;->y:Ln3/m1;

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lp3/w;->R:I

    new-array p1, v4, [Lp3/f;

    .line 32
    iput-object p1, p0, Lp3/w;->K:[Lp3/f;

    new-array p1, v4, [Ljava/nio/ByteBuffer;

    .line 33
    iput-object p1, p0, Lp3/w;->L:[Ljava/nio/ByteBuffer;

    .line 34
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lp3/w;->j:Ljava/util/ArrayDeque;

    .line 35
    new-instance p1, Lp3/w$i;

    invoke-direct {p1}, Lp3/w$i;-><init>()V

    iput-object p1, p0, Lp3/w;->n:Lp3/w$i;

    .line 36
    new-instance p1, Lp3/w$i;

    invoke-direct {p1}, Lp3/w$i;-><init>()V

    iput-object p1, p0, Lp3/w;->o:Lp3/w$i;

    return-void
.end method

.method public static A(III)Landroid/media/AudioFormat;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method public static H(Landroid/media/AudioTrack;)Z
    .locals 2

    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final B()Ln3/m1;
    .locals 1

    invoke-virtual {p0}, Lp3/w;->C()Lp3/w$h;

    move-result-object v0

    iget-object v0, v0, Lp3/w$h;->a:Ln3/m1;

    return-object v0
.end method

.method public final C()Lp3/w$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/w;->w:Lp3/w$h;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lp3/w;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lp3/w;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/w$h;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lp3/w;->x:Lp3/w$h;

    :goto_0
    return-object v0
.end method

.method public final D()Z
    .locals 1

    invoke-virtual {p0}, Lp3/w;->C()Lp3/w$h;

    move-result-object v0

    iget-boolean v0, v0, Lp3/w$h;->b:Z

    return v0
.end method

.method public final E()J
    .locals 5

    .line 1
    iget-object v0, p0, Lp3/w;->t:Lp3/w$f;

    iget v1, v0, Lp3/w$f;->c:I

    if-nez v1, :cond_0

    .line 2
    iget-wide v1, p0, Lp3/w;->D:J

    iget v0, v0, Lp3/w$f;->d:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v1, p0, Lp3/w;->E:J

    :goto_0
    return-wide v1
.end method

.method public final F()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/q$b;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lp3/w;->h:Lm5/e;

    .line 2
    monitor-enter v2

    .line 3
    :try_start_0
    iget-boolean v0, v2, Lm5/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    .line 4
    :try_start_1
    iget-object v0, v1, Lp3/w;->t:Lp3/w$f;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v1, v0}, Lp3/w;->x(Lp3/w$f;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_1
    .catch Lp3/q$b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 7
    iget-object v0, v1, Lp3/w;->t:Lp3/w$f;

    iget v5, v0, Lp3/w$f;->h:I

    const v6, 0xf4240

    if-le v5, v6, :cond_6

    const v15, 0xf4240

    .line 8
    new-instance v5, Lp3/w$f;

    iget-object v8, v0, Lp3/w$f;->a:Ln3/s0;

    iget v9, v0, Lp3/w$f;->b:I

    iget v10, v0, Lp3/w$f;->c:I

    iget v11, v0, Lp3/w$f;->d:I

    iget v12, v0, Lp3/w$f;->e:I

    iget v13, v0, Lp3/w$f;->f:I

    iget v14, v0, Lp3/w$f;->g:I

    iget-object v0, v0, Lp3/w$f;->i:[Lp3/f;

    move-object v7, v5

    move-object/from16 v16, v0

    invoke-direct/range {v7 .. v16}, Lp3/w$f;-><init>(Ln3/s0;IIIIIII[Lp3/f;)V

    .line 9
    :try_start_2
    invoke-virtual {v1, v5}, Lp3/w;->x(Lp3/w$f;)Landroid/media/AudioTrack;

    move-result-object v0

    .line 10
    iput-object v5, v1, Lp3/w;->t:Lp3/w$f;
    :try_end_2
    .catch Lp3/q$b; {:try_start_2 .. :try_end_2} :catch_1

    .line 11
    :goto_0
    iput-object v0, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    .line 12
    invoke-static {v0}, Lp3/w;->H(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    .line 14
    iget-object v4, v1, Lp3/w;->m:Lp3/w$k;

    if-nez v4, :cond_1

    .line 15
    new-instance v4, Lp3/w$k;

    invoke-direct {v4, v1}, Lp3/w$k;-><init>(Lp3/w;)V

    iput-object v4, v1, Lp3/w;->m:Lp3/w$k;

    .line 16
    :cond_1
    iget-object v4, v1, Lp3/w;->m:Lp3/w$k;

    invoke-virtual {v4, v0}, Lp3/w$k;->a(Landroid/media/AudioTrack;)V

    .line 17
    iget v0, v1, Lp3/w;->l:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    .line 18
    iget-object v0, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    iget-object v4, v1, Lp3/w;->t:Lp3/w$f;

    iget-object v4, v4, Lp3/w$f;->a:Ln3/s0;

    iget v5, v4, Ln3/s0;->I:I

    iget v4, v4, Ln3/s0;->J:I

    invoke-virtual {v0, v5, v4}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 19
    :cond_2
    sget v0, Lm5/g0;->a:I

    const/16 v4, 0x1f

    if-lt v0, v4, :cond_3

    iget-object v0, v1, Lp3/w;->q:Lo3/v0;

    if-eqz v0, :cond_3

    .line 20
    iget-object v4, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-static {v4, v0}, Lp3/w$b;->a(Landroid/media/AudioTrack;Lo3/v0;)V

    .line 21
    :cond_3
    iget-object v0, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iput v0, v1, Lp3/w;->W:I

    .line 22
    iget-object v4, v1, Lp3/w;->i:Lp3/s;

    iget-object v5, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    iget-object v0, v1, Lp3/w;->t:Lp3/w$f;

    iget v6, v0, Lp3/w$f;->c:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    move v6, v3

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    iget v7, v0, Lp3/w$f;->g:I

    iget v8, v0, Lp3/w$f;->d:I

    iget v9, v0, Lp3/w$f;->h:I

    invoke-virtual/range {v4 .. v9}, Lp3/s;->e(Landroid/media/AudioTrack;ZIII)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lp3/w;->N()V

    .line 24
    iget-object v0, v1, Lp3/w;->X:Lp3/t;

    iget v0, v0, Lp3/t;->a:I

    if-eqz v0, :cond_5

    .line 25
    iget-object v2, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 26
    iget-object v0, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    iget-object v2, v1, Lp3/w;->X:Lp3/t;

    iget v2, v2, Lp3/t;->b:F

    invoke-virtual {v0, v2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 27
    :cond_5
    iput-boolean v3, v1, Lp3/w;->H:Z

    return v3

    :catch_1
    move-exception v0

    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 29
    :cond_6
    iget-object v0, v1, Lp3/w;->t:Lp3/w$f;

    invoke-virtual {v0}, Lp3/w$f;->e()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 30
    :cond_7
    iput-boolean v3, v1, Lp3/w;->a0:Z

    .line 31
    :goto_2
    throw v4

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 32
    monitor-exit v2

    throw v3
.end method

.method public final G()Z
    .locals 1

    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final I()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lp3/w;->T:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/w;->T:Z

    .line 3
    iget-object v0, p0, Lp3/w;->i:Lp3/s;

    invoke-virtual {p0}, Lp3/w;->E()J

    move-result-wide v1

    .line 4
    invoke-virtual {v0}, Lp3/s;->b()J

    move-result-wide v3

    iput-wide v3, v0, Lp3/s;->z:J

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    iput-wide v3, v0, Lp3/s;->x:J

    .line 6
    iput-wide v1, v0, Lp3/s;->A:J

    .line 7
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lp3/w;->A:I

    :cond_0
    return-void
.end method

.method public final J(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/q$e;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/w;->K:[Lp3/f;

    array-length v0, v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_6

    if-lez v1, :cond_0

    .line 2
    iget-object v2, p0, Lp3/w;->L:[Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    goto :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lp3/w;->M:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lp3/f;->a:Ljava/nio/ByteBuffer;

    :goto_1
    if-ne v1, v0, :cond_2

    .line 4
    invoke-virtual {p0, v2, p1, p2}, Lp3/w;->R(Ljava/nio/ByteBuffer;J)V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v3, p0, Lp3/w;->K:[Lp3/f;

    aget-object v3, v3, v1

    .line 6
    iget v4, p0, Lp3/w;->R:I

    if-le v1, v4, :cond_3

    .line 7
    invoke-interface {v3, v2}, Lp3/f;->f(Ljava/nio/ByteBuffer;)V

    .line 8
    :cond_3
    invoke-interface {v3}, Lp3/f;->a()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lp3/w;->L:[Ljava/nio/ByteBuffer;

    aput-object v3, v4, v1

    .line 10
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final K()V
    .locals 11

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lp3/w;->B:J

    .line 2
    iput-wide v0, p0, Lp3/w;->C:J

    .line 3
    iput-wide v0, p0, Lp3/w;->D:J

    .line 4
    iput-wide v0, p0, Lp3/w;->E:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lp3/w;->b0:Z

    .line 6
    iput v2, p0, Lp3/w;->F:I

    .line 7
    new-instance v10, Lp3/w$h;

    .line 8
    invoke-virtual {p0}, Lp3/w;->B()Ln3/m1;

    move-result-object v4

    .line 9
    invoke-virtual {p0}, Lp3/w;->D()Z

    move-result v5

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lp3/w$h;-><init>(Ln3/m1;ZJJ)V

    iput-object v10, p0, Lp3/w;->x:Lp3/w$h;

    .line 10
    iput-wide v0, p0, Lp3/w;->I:J

    const/4 v3, 0x0

    .line 11
    iput-object v3, p0, Lp3/w;->w:Lp3/w$h;

    .line 12
    iget-object v4, p0, Lp3/w;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 13
    iput-object v3, p0, Lp3/w;->M:Ljava/nio/ByteBuffer;

    .line 14
    iput v2, p0, Lp3/w;->N:I

    .line 15
    iput-object v3, p0, Lp3/w;->O:Ljava/nio/ByteBuffer;

    .line 16
    iput-boolean v2, p0, Lp3/w;->T:Z

    .line 17
    iput-boolean v2, p0, Lp3/w;->S:Z

    const/4 v4, -0x1

    .line 18
    iput v4, p0, Lp3/w;->R:I

    .line 19
    iput-object v3, p0, Lp3/w;->z:Ljava/nio/ByteBuffer;

    .line 20
    iput v2, p0, Lp3/w;->A:I

    .line 21
    iget-object v2, p0, Lp3/w;->e:Lp3/g0;

    .line 22
    iput-wide v0, v2, Lp3/g0;->o:J

    .line 23
    invoke-virtual {p0}, Lp3/w;->z()V

    return-void
.end method

.method public final L(Ln3/m1;Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lp3/w;->C()Lp3/w$h;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lp3/w$h;->a:Ln3/m1;

    invoke-virtual {p1, v1}, Ln3/m1;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lp3/w$h;->b:Z

    if-eq p2, v0, :cond_2

    .line 3
    :cond_0
    new-instance v0, Lp3/w$h;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v7}, Lp3/w$h;-><init>(Ln3/m1;ZJJ)V

    .line 4
    invoke-virtual {p0}, Lp3/w;->G()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iput-object v0, p0, Lp3/w;->w:Lp3/w$h;

    goto :goto_0

    .line 6
    :cond_1
    iput-object v0, p0, Lp3/w;->x:Lp3/w$h;

    :cond_2
    :goto_0
    return-void
.end method

.method public final M(Ln3/m1;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp3/w;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 3
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v0

    iget v1, p1, Ln3/m1;->h:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    iget p1, p1, Ln3/m1;->i:F

    .line 5
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object p1

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "DefaultAudioSink"

    const-string v1, "Failed to set playback params"

    .line 8
    invoke-static {v0, v1, p1}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    new-instance p1, Ln3/m1;

    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    .line 10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v0

    iget-object v1, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v1

    invoke-direct {p1, v0, v1}, Ln3/m1;-><init>(FF)V

    .line 11
    iget-object v0, p0, Lp3/w;->i:Lp3/s;

    iget v1, p1, Ln3/m1;->h:F

    .line 12
    iput v1, v0, Lp3/s;->j:F

    .line 13
    iget-object v0, v0, Lp3/s;->f:Lp3/r;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lp3/r;->a()V

    .line 15
    :cond_0
    iput-object p1, p0, Lp3/w;->y:Ln3/m1;

    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp3/w;->G()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    iget v1, p0, Lp3/w;->J:F

    .line 4
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    iget v1, p0, Lp3/w;->J:F

    .line 6
    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    :goto_0
    return-void
.end method

.method public final O()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp3/w;->Y:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lp3/w;->t:Lp3/w$f;

    iget-object v0, v0, Lp3/w$f;->a:Ln3/s0;

    iget-object v0, v0, Ln3/s0;->s:Ljava/lang/String;

    const-string v1, "audio/raw"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp3/w;->t:Lp3/w$f;

    iget-object v0, v0, Lp3/w$f;->a:Ln3/s0;

    iget v0, v0, Ln3/s0;->H:I

    .line 3
    invoke-virtual {p0, v0}, Lp3/w;->P(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final P(I)Z
    .locals 3

    iget-boolean v0, p0, Lp3/w;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget v0, Lm5/g0;->a:I

    const/high16 v0, 0x20000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x30000000

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final Q(Ln3/s0;Lp3/d;)Z
    .locals 6

    .line 1
    sget v0, Lm5/g0;->a:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_c

    iget v2, p0, Lp3/w;->l:I

    if-nez v2, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v2, p1, Ln3/s0;->s:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v3, p1, Ln3/s0;->p:Ljava/lang/String;

    invoke-static {v2, v3}, Lm5/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 5
    :cond_1
    iget v3, p1, Ln3/s0;->F:I

    invoke-static {v3}, Lm5/g0;->p(I)I

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 6
    :cond_2
    iget v4, p1, Ln3/s0;->G:I

    invoke-static {v4, v3, v2}, Lp3/w;->A(III)Landroid/media/AudioFormat;

    move-result-object v2

    .line 7
    invoke-virtual {p2}, Lp3/d;->b()Lp3/d$c;

    move-result-object p2

    iget-object p2, p2, Lp3/d$c;->a:Landroid/media/AudioAttributes;

    const/16 v3, 0x1f

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v0, v3, :cond_3

    .line 8
    invoke-static {v2, p2}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p2

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v2, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p2

    if-nez p2, :cond_4

    move p2, v1

    goto :goto_0

    :cond_4
    const/16 p2, 0x1e

    if-ne v0, p2, :cond_5

    .line 10
    sget-object p2, Lm5/g0;->d:Ljava/lang/String;

    const-string v0, "Pixel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    move p2, v4

    goto :goto_0

    :cond_5
    move p2, v5

    :goto_0
    if-eqz p2, :cond_c

    if-eq p2, v5, :cond_7

    if-ne p2, v4, :cond_6

    return v5

    .line 11
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 12
    :cond_7
    iget p2, p1, Ln3/s0;->I:I

    if-nez p2, :cond_9

    iget p1, p1, Ln3/s0;->J:I

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move p1, v1

    goto :goto_2

    :cond_9
    :goto_1
    move p1, v5

    .line 13
    :goto_2
    iget p2, p0, Lp3/w;->l:I

    if-ne p2, v5, :cond_a

    move p2, v5

    goto :goto_3

    :cond_a
    move p2, v1

    :goto_3
    if-eqz p1, :cond_b

    if-nez p2, :cond_c

    :cond_b
    move v1, v5

    :cond_c
    :goto_4
    return v1
.end method

.method public final R(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/q$e;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lp3/w;->O:Ljava/nio/ByteBuffer;

    const/16 v1, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 3
    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    goto :goto_1

    .line 4
    :cond_2
    iput-object p1, p0, Lp3/w;->O:Ljava/nio/ByteBuffer;

    .line 5
    sget v0, Lm5/g0;->a:I

    if-ge v0, v1, :cond_5

    .line 6
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 7
    iget-object v4, p0, Lp3/w;->P:[B

    if-eqz v4, :cond_3

    array-length v4, v4

    if-ge v4, v0, :cond_4

    .line 8
    :cond_3
    new-array v4, v0, [B

    iput-object v4, p0, Lp3/w;->P:[B

    .line 9
    :cond_4
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    .line 10
    iget-object v5, p0, Lp3/w;->P:[B

    invoke-virtual {p1, v5, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    iput v3, p0, Lp3/w;->Q:I

    .line 13
    :cond_5
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    .line 14
    sget v4, Lm5/g0;->a:I

    if-ge v4, v1, :cond_7

    .line 15
    iget-object p2, p0, Lp3/w;->i:Lp3/s;

    iget-wide v5, p0, Lp3/w;->D:J

    .line 16
    invoke-virtual {p2}, Lp3/s;->b()J

    move-result-wide v7

    iget p3, p2, Lp3/s;->d:I

    int-to-long v9, p3

    mul-long/2addr v7, v9

    sub-long/2addr v5, v7

    long-to-int p3, v5

    .line 17
    iget p2, p2, Lp3/s;->e:I

    sub-int/2addr p2, p3

    if-lez p2, :cond_6

    .line 18
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 19
    iget-object p3, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    iget-object v1, p0, Lp3/w;->P:[B

    iget v5, p0, Lp3/w;->Q:I

    .line 20
    invoke-virtual {p3, v1, v5, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p2

    if-lez p2, :cond_10

    .line 21
    iget p3, p0, Lp3/w;->Q:I

    add-int/2addr p3, p2

    iput p3, p0, Lp3/w;->Q:I

    .line 22
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result p3

    add-int/2addr p3, p2

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_4

    :cond_6
    :goto_2
    move p2, v3

    goto/16 :goto_4

    .line 23
    :cond_7
    iget-boolean v1, p0, Lp3/w;->Y:Z

    if-eqz v1, :cond_f

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, p2, v5

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v3

    .line 24
    :goto_3
    invoke-static {v1}, Lm5/a;->e(Z)V

    .line 25
    iget-object v6, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    const-wide/16 v7, 0x3e8

    const/16 v1, 0x1a

    if-lt v4, v1, :cond_9

    const/4 v9, 0x1

    mul-long v10, p2, v7

    move-object v7, p1

    move v8, v0

    .line 26
    invoke-virtual/range {v6 .. v11}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result p2

    goto :goto_4

    .line 27
    :cond_9
    iget-object v1, p0, Lp3/w;->z:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_a

    const/16 v1, 0x10

    .line 28
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lp3/w;->z:Ljava/nio/ByteBuffer;

    .line 29
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 30
    iget-object v1, p0, Lp3/w;->z:Ljava/nio/ByteBuffer;

    const v5, 0x55550001

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 31
    :cond_a
    iget v1, p0, Lp3/w;->A:I

    if-nez v1, :cond_b

    .line 32
    iget-object v1, p0, Lp3/w;->z:Ljava/nio/ByteBuffer;

    const/4 v5, 0x4

    invoke-virtual {v1, v5, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 33
    iget-object v1, p0, Lp3/w;->z:Ljava/nio/ByteBuffer;

    const/16 v5, 0x8

    mul-long/2addr p2, v7

    invoke-virtual {v1, v5, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 34
    iget-object p2, p0, Lp3/w;->z:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iput v0, p0, Lp3/w;->A:I

    .line 36
    :cond_b
    iget-object p2, p0, Lp3/w;->z:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    move-result p2

    if-lez p2, :cond_d

    .line 37
    iget-object p3, p0, Lp3/w;->z:Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v6, p3, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    if-gez p3, :cond_c

    .line 39
    iput v3, p0, Lp3/w;->A:I

    move p2, p3

    goto :goto_4

    :cond_c
    if-ge p3, p2, :cond_d

    goto :goto_2

    .line 40
    :cond_d
    invoke-virtual {v6, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    if-gez p2, :cond_e

    .line 41
    iput v3, p0, Lp3/w;->A:I

    goto :goto_4

    .line 42
    :cond_e
    iget p3, p0, Lp3/w;->A:I

    sub-int/2addr p3, p2

    iput p3, p0, Lp3/w;->A:I

    goto :goto_4

    .line 43
    :cond_f
    iget-object p2, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    .line 44
    invoke-virtual {p2, p1, v0, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p2

    .line 45
    :cond_10
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lp3/w;->Z:J

    if-gez p2, :cond_18

    const/16 p1, 0x18

    if-lt v4, p1, :cond_11

    const/4 p1, -0x6

    if-eq p2, p1, :cond_12

    :cond_11
    const/16 p1, -0x20

    if-ne p2, p1, :cond_13

    :cond_12
    move v3, v2

    :cond_13
    if-eqz v3, :cond_15

    .line 46
    iget-object p1, p0, Lp3/w;->t:Lp3/w$f;

    invoke-virtual {p1}, Lp3/w$f;->e()Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_5

    .line 47
    :cond_14
    iput-boolean v2, p0, Lp3/w;->a0:Z

    .line 48
    :cond_15
    :goto_5
    new-instance p1, Lp3/q$e;

    iget-object p3, p0, Lp3/w;->t:Lp3/w$f;

    iget-object p3, p3, Lp3/w$f;->a:Ln3/s0;

    invoke-direct {p1, p2, p3, v3}, Lp3/q$e;-><init>(ILn3/s0;Z)V

    .line 49
    iget-object p2, p0, Lp3/w;->r:Lp3/q$c;

    if-eqz p2, :cond_16

    .line 50
    check-cast p2, Lp3/a0$a;

    invoke-virtual {p2, p1}, Lp3/a0$a;->a(Ljava/lang/Exception;)V

    .line 51
    :cond_16
    iget-boolean p2, p1, Lp3/q$e;->i:Z

    if-nez p2, :cond_17

    .line 52
    iget-object p2, p0, Lp3/w;->o:Lp3/w$i;

    invoke-virtual {p2, p1}, Lp3/w$i;->a(Ljava/lang/Exception;)V

    return-void

    .line 53
    :cond_17
    throw p1

    .line 54
    :cond_18
    iget-object p3, p0, Lp3/w;->o:Lp3/w$i;

    const/4 v1, 0x0

    .line 55
    iput-object v1, p3, Lp3/w$i;->a:Ljava/lang/Exception;

    .line 56
    iget-object p3, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-static {p3}, Lp3/w;->H(Landroid/media/AudioTrack;)Z

    move-result p3

    if-eqz p3, :cond_1a

    .line 57
    iget-wide v4, p0, Lp3/w;->E:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-lez p3, :cond_19

    .line 58
    iput-boolean v3, p0, Lp3/w;->b0:Z

    .line 59
    :cond_19
    iget-boolean p3, p0, Lp3/w;->U:Z

    if-eqz p3, :cond_1a

    iget-object p3, p0, Lp3/w;->r:Lp3/q$c;

    if-eqz p3, :cond_1a

    if-ge p2, v0, :cond_1a

    iget-boolean v4, p0, Lp3/w;->b0:Z

    if-nez v4, :cond_1a

    .line 60
    check-cast p3, Lp3/a0$a;

    .line 61
    iget-object p3, p3, Lp3/a0$a;->a:Lp3/a0;

    .line 62
    iget-object p3, p3, Lp3/a0;->W0:Ln3/s1$a;

    if-eqz p3, :cond_1a

    .line 63
    invoke-interface {p3}, Ln3/s1$a;->a()V

    .line 64
    :cond_1a
    iget-object p3, p0, Lp3/w;->t:Lp3/w$f;

    iget p3, p3, Lp3/w$f;->c:I

    if-nez p3, :cond_1b

    .line 65
    iget-wide v4, p0, Lp3/w;->D:J

    int-to-long v6, p2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lp3/w;->D:J

    :cond_1b
    if-ne p2, v0, :cond_1e

    if-eqz p3, :cond_1d

    .line 66
    iget-object p2, p0, Lp3/w;->M:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_1c

    goto :goto_6

    :cond_1c
    move v2, v3

    :goto_6
    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 67
    iget-wide p1, p0, Lp3/w;->E:J

    iget p3, p0, Lp3/w;->F:I

    int-to-long v2, p3

    iget p3, p0, Lp3/w;->N:I

    int-to-long v4, p3

    mul-long/2addr v2, v4

    add-long/2addr v2, p1

    iput-wide v2, p0, Lp3/w;->E:J

    .line 68
    :cond_1d
    iput-object v1, p0, Lp3/w;->O:Ljava/nio/ByteBuffer;

    :cond_1e
    return-void
.end method

.method public final a(Ln3/s0;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lp3/w;->h(Ln3/s0;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b()Z
    .locals 1

    invoke-virtual {p0}, Lp3/w;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lp3/w;->S:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lp3/w;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final c()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lp3/w;->U:Z

    .line 2
    invoke-virtual {p0}, Lp3/w;->G()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lp3/w;->i:Lp3/s;

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v1, Lp3/s;->l:J

    .line 4
    iput v0, v1, Lp3/s;->w:I

    .line 5
    iput v0, v1, Lp3/s;->v:I

    .line 6
    iput-wide v2, v1, Lp3/s;->m:J

    .line 7
    iput-wide v2, v1, Lp3/s;->C:J

    .line 8
    iput-wide v2, v1, Lp3/s;->F:J

    .line 9
    iput-boolean v0, v1, Lp3/s;->k:Z

    .line 10
    iget-wide v2, v1, Lp3/s;->x:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 11
    iget-object v0, v1, Lp3/s;->f:Lp3/r;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Lp3/r;->a()V

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final d()Ln3/m1;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/w;->k:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/w;->y:Ln3/m1;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lp3/w;->B()Ln3/m1;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final e()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lp3/w;->flush()V

    .line 2
    iget-object v0, p0, Lp3/w;->f:[Lp3/f;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    invoke-interface {v4}, Lp3/f;->e()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/w;->g:[Lp3/f;

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 5
    invoke-interface {v4}, Lp3/f;->e()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iput-boolean v2, p0, Lp3/w;->U:Z

    .line 7
    iput-boolean v2, p0, Lp3/w;->a0:Z

    return-void
.end method

.method public final f(Ln3/m1;)V
    .locals 4

    .line 1
    new-instance v0, Ln3/m1;

    iget v1, p1, Ln3/m1;->h:F

    const v2, 0x3dcccccd

    const/high16 v3, 0x41000000    # 8.0f

    .line 2
    invoke-static {v1, v2, v3}, Lm5/g0;->h(FFF)F

    move-result v1

    iget p1, p1, Ln3/m1;->i:F

    .line 3
    invoke-static {p1, v2, v3}, Lm5/g0;->h(FFF)F

    move-result p1

    invoke-direct {v0, v1, p1}, Ln3/m1;-><init>(FF)V

    .line 4
    iget-boolean p1, p0, Lp3/w;->k:Z

    if-eqz p1, :cond_0

    sget p1, Lm5/g0;->a:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lp3/w;->M(Ln3/m1;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lp3/w;->D()Z

    move-result p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lp3/w;->L(Ln3/m1;Z)V

    :goto_0
    return-void
.end method

.method public final flush()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lp3/w;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p0}, Lp3/w;->K()V

    .line 3
    iget-object v0, p0, Lp3/w;->i:Lp3/s;

    .line 4
    iget-object v0, v0, Lp3/s;->c:Landroid/media/AudioTrack;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 8
    :cond_1
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-static {v0}, Lp3/w;->H(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lp3/w;->m:Lp3/w$k;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0, v2}, Lp3/w$k;->b(Landroid/media/AudioTrack;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    .line 13
    iput-object v1, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    .line 14
    sget v2, Lm5/g0;->a:I

    const/16 v4, 0x15

    if-ge v2, v4, :cond_3

    iget-boolean v2, p0, Lp3/w;->V:Z

    if-nez v2, :cond_3

    .line 15
    iput v3, p0, Lp3/w;->W:I

    .line 16
    :cond_3
    iget-object v2, p0, Lp3/w;->s:Lp3/w$f;

    if-eqz v2, :cond_4

    .line 17
    iput-object v2, p0, Lp3/w;->t:Lp3/w$f;

    .line 18
    iput-object v1, p0, Lp3/w;->s:Lp3/w$f;

    .line 19
    :cond_4
    iget-object v2, p0, Lp3/w;->i:Lp3/s;

    invoke-virtual {v2}, Lp3/s;->d()V

    .line 20
    iget-object v2, p0, Lp3/w;->h:Lm5/e;

    invoke-virtual {v2}, Lm5/e;->b()Z

    .line 21
    new-instance v2, Lp3/w$a;

    invoke-direct {v2, p0, v0}, Lp3/w$a;-><init>(Lp3/w;Landroid/media/AudioTrack;)V

    .line 22
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 23
    :cond_5
    iget-object v0, p0, Lp3/w;->o:Lp3/w$i;

    .line 24
    iput-object v1, v0, Lp3/w$i;->a:Ljava/lang/Exception;

    .line 25
    iget-object v0, p0, Lp3/w;->n:Lp3/w$i;

    .line 26
    iput-object v1, v0, Lp3/w$i;->a:Ljava/lang/Exception;

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lp3/w;->U:Z

    .line 2
    invoke-virtual {p0}, Lp3/w;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lp3/w;->i:Lp3/s;

    .line 4
    iget-object v0, v0, Lp3/s;->f:Lp3/r;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lp3/r;->a()V

    .line 7
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public final h(Ln3/s0;)I
    .locals 4

    .line 1
    iget-object v0, p1, Ln3/s0;->s:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 2
    iget v0, p1, Ln3/s0;->H:I

    invoke-static {v0}, Lm5/g0;->I(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid PCM encoding: "

    .line 3
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4
    iget p1, p1, Ln3/s0;->H:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 5
    :cond_0
    iget p1, p1, Ln3/s0;->H:I

    if-eq p1, v3, :cond_2

    iget-boolean v0, p0, Lp3/w;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v3

    .line 6
    :cond_3
    iget-boolean v0, p0, Lp3/w;->a0:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lp3/w;->v:Lp3/d;

    invoke-virtual {p0, p1, v0}, Lp3/w;->Q(Ln3/s0;Lp3/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 7
    :cond_4
    iget-object v0, p0, Lp3/w;->a:Lp3/e;

    .line 8
    invoke-virtual {v0, p1}, Lp3/e;->a(Ln3/s0;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    if-eqz v1, :cond_6

    return v3

    :cond_6
    return v2
.end method

.method public final i()V
    .locals 3

    .line 1
    sget v0, Lm5/g0;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-boolean v0, p0, Lp3/w;->V:Z

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 3
    iget-boolean v0, p0, Lp3/w;->Y:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lp3/w;->Y:Z

    .line 5
    invoke-virtual {p0}, Lp3/w;->flush()V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/q$e;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp3/w;->S:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp3/w;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lp3/w;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp3/w;->I()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lp3/w;->S:Z

    :cond_0
    return-void
.end method

.method public final k()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp3/w;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp3/w;->i:Lp3/s;

    .line 2
    invoke-virtual {p0}, Lp3/w;->E()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lp3/s;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(I)V
    .locals 1

    .line 1
    iget v0, p0, Lp3/w;->W:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lp3/w;->W:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lp3/w;->V:Z

    .line 4
    invoke-virtual {p0}, Lp3/w;->flush()V

    :cond_1
    return-void
.end method

.method public final m(Lo3/v0;)V
    .locals 0

    iput-object p1, p0, Lp3/w;->q:Lo3/v0;

    return-void
.end method

.method public final n(Ljava/nio/ByteBuffer;JI)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/q$b;,
            Lp3/q$e;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 1
    iget-object v5, v1, Lp3/w;->M:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    invoke-static {v5}, Lm5/a;->a(Z)V

    .line 2
    iget-object v5, v1, Lp3/w;->s:Lp3/w$f;

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-eqz v5, :cond_8

    .line 3
    invoke-virtual/range {p0 .. p0}, Lp3/w;->y()Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    .line 4
    :cond_2
    iget-object v5, v1, Lp3/w;->s:Lp3/w$f;

    iget-object v10, v1, Lp3/w;->t:Lp3/w$f;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v11, v10, Lp3/w$f;->c:I

    iget v12, v5, Lp3/w$f;->c:I

    if-ne v11, v12, :cond_3

    iget v11, v10, Lp3/w$f;->g:I

    iget v12, v5, Lp3/w$f;->g:I

    if-ne v11, v12, :cond_3

    iget v11, v10, Lp3/w$f;->e:I

    iget v12, v5, Lp3/w$f;->e:I

    if-ne v11, v12, :cond_3

    iget v11, v10, Lp3/w$f;->f:I

    iget v12, v5, Lp3/w$f;->f:I

    if-ne v11, v12, :cond_3

    iget v10, v10, Lp3/w$f;->d:I

    iget v5, v5, Lp3/w$f;->d:I

    if-ne v10, v5, :cond_3

    move v5, v6

    goto :goto_2

    :cond_3
    move v5, v7

    :goto_2
    if-nez v5, :cond_5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lp3/w;->I()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lp3/w;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    return v7

    .line 8
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lp3/w;->flush()V

    goto :goto_3

    .line 9
    :cond_5
    iget-object v5, v1, Lp3/w;->s:Lp3/w$f;

    iput-object v5, v1, Lp3/w;->t:Lp3/w$f;

    .line 10
    iput-object v9, v1, Lp3/w;->s:Lp3/w$f;

    .line 11
    iget-object v5, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-static {v5}, Lp3/w;->H(Landroid/media/AudioTrack;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, v1, Lp3/w;->l:I

    if-eq v5, v8, :cond_7

    .line 12
    iget-object v5, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 13
    iget-object v5, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    .line 14
    :cond_6
    iget-object v5, v1, Lp3/w;->u:Landroid/media/AudioTrack;

    iget-object v10, v1, Lp3/w;->t:Lp3/w$f;

    iget-object v10, v10, Lp3/w$f;->a:Ln3/s0;

    iget v11, v10, Ln3/s0;->I:I

    iget v10, v10, Ln3/s0;->J:I

    invoke-virtual {v5, v11, v10}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 15
    iput-boolean v6, v1, Lp3/w;->b0:Z

    .line 16
    :cond_7
    :goto_3
    invoke-virtual {v1, v2, v3}, Lp3/w;->w(J)V

    .line 17
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lp3/w;->G()Z

    move-result v5

    if-nez v5, :cond_a

    .line 18
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lp3/w;->F()Z

    move-result v5
    :try_end_0
    .catch Lp3/q$b; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_a

    return v7

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 19
    iget-boolean v0, v2, Lp3/q$b;->i:Z

    if-nez v0, :cond_9

    .line 20
    iget-object v0, v1, Lp3/w;->n:Lp3/w$i;

    invoke-virtual {v0, v2}, Lp3/w$i;->a(Ljava/lang/Exception;)V

    return v7

    .line 21
    :cond_9
    throw v2

    .line 22
    :cond_a
    iget-object v5, v1, Lp3/w;->n:Lp3/w$i;

    .line 23
    iput-object v9, v5, Lp3/w$i;->a:Ljava/lang/Exception;

    .line 24
    iget-boolean v5, v1, Lp3/w;->H:Z

    const-wide/16 v9, 0x0

    if-eqz v5, :cond_c

    .line 25
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    iput-wide v11, v1, Lp3/w;->I:J

    .line 26
    iput-boolean v7, v1, Lp3/w;->G:Z

    .line 27
    iput-boolean v7, v1, Lp3/w;->H:Z

    .line 28
    iget-boolean v5, v1, Lp3/w;->k:Z

    if-eqz v5, :cond_b

    sget v5, Lm5/g0;->a:I

    const/16 v11, 0x17

    if-lt v5, v11, :cond_b

    .line 29
    iget-object v5, v1, Lp3/w;->y:Ln3/m1;

    invoke-virtual {v1, v5}, Lp3/w;->M(Ln3/m1;)V

    .line 30
    :cond_b
    invoke-virtual {v1, v2, v3}, Lp3/w;->w(J)V

    .line 31
    iget-boolean v5, v1, Lp3/w;->U:Z

    if-eqz v5, :cond_c

    .line 32
    invoke-virtual/range {p0 .. p0}, Lp3/w;->g()V

    .line 33
    :cond_c
    iget-object v5, v1, Lp3/w;->i:Lp3/s;

    invoke-virtual/range {p0 .. p0}, Lp3/w;->E()J

    move-result-wide v11

    .line 34
    iget-object v13, v5, Lp3/s;->c:Landroid/media/AudioTrack;

    .line 35
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {v13}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v13

    .line 37
    iget-boolean v14, v5, Lp3/s;->h:Z

    const/4 v15, 0x2

    if-eqz v14, :cond_e

    if-ne v13, v15, :cond_d

    .line 38
    iput-boolean v7, v5, Lp3/s;->p:Z

    goto :goto_4

    :cond_d
    if-ne v13, v6, :cond_e

    .line 39
    invoke-virtual {v5}, Lp3/s;->b()J

    move-result-wide v16

    cmp-long v9, v16, v9

    if-nez v9, :cond_e

    :goto_4
    move v5, v7

    goto :goto_5

    .line 40
    :cond_e
    iget-boolean v9, v5, Lp3/s;->p:Z

    .line 41
    invoke-virtual {v5, v11, v12}, Lp3/s;->c(J)Z

    move-result v10

    iput-boolean v10, v5, Lp3/s;->p:Z

    if-eqz v9, :cond_f

    if-nez v10, :cond_f

    if-eq v13, v6, :cond_f

    .line 42
    iget-object v9, v5, Lp3/s;->a:Lp3/s$a;

    iget v10, v5, Lp3/s;->e:I

    iget-wide v11, v5, Lp3/s;->i:J

    invoke-static {v11, v12}, Lm5/g0;->X(J)J

    move-result-wide v11

    invoke-interface {v9, v10, v11, v12}, Lp3/s$a;->b(IJ)V

    :cond_f
    move v5, v6

    :goto_5
    if-nez v5, :cond_10

    return v7

    .line 43
    :cond_10
    iget-object v5, v1, Lp3/w;->M:Ljava/nio/ByteBuffer;

    if-nez v5, :cond_29

    .line 44
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v5

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v9, :cond_11

    move v5, v6

    goto :goto_6

    :cond_11
    move v5, v7

    :goto_6
    invoke-static {v5}, Lm5/a;->a(Z)V

    .line 45
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_12

    return v6

    .line 46
    :cond_12
    iget-object v5, v1, Lp3/w;->t:Lp3/w$f;

    iget v9, v5, Lp3/w$f;->c:I

    if-eqz v9, :cond_21

    iget v9, v1, Lp3/w;->F:I

    if-nez v9, :cond_21

    .line 47
    iget v5, v5, Lp3/w$f;->g:I

    const/16 v9, 0x400

    const/4 v10, -0x1

    const/16 v11, 0x10

    const/4 v12, -0x2

    packed-switch v5, :pswitch_data_0

    .line 48
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected audio encoding: "

    .line 49
    invoke-static {v2, v5}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-array v5, v11, [B

    .line 51
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v8

    .line 52
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    new-instance v8, Lm5/v;

    .line 55
    invoke-direct {v8, v5, v11}, Lm5/v;-><init>([BI)V

    .line 56
    invoke-static {v8}, Lp3/c;->b(Lm5/v;)Lp3/c$a;

    move-result-object v5

    iget v9, v5, Lp3/c$a;->c:I

    goto/16 :goto_13

    :pswitch_2
    const/16 v9, 0x200

    goto/16 :goto_13

    .line 57
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->limit()I

    move-result v8

    add-int/lit8 v8, v8, -0xa

    move v9, v5

    :goto_7
    if-gt v9, v8, :cond_15

    add-int/lit8 v12, v9, 0x4

    .line 59
    sget v13, Lm5/g0;->a:I

    .line 60
    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v12

    .line 61
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v13

    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v13, v14, :cond_13

    goto :goto_8

    :cond_13
    invoke-static {v12}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v12

    :goto_8
    and-int/lit8 v12, v12, -0x2

    const v13, -0x78d9046

    if-ne v12, v13, :cond_14

    sub-int/2addr v9, v5

    goto :goto_9

    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_15
    move v9, v10

    :goto_9
    if-ne v9, v10, :cond_16

    move v9, v7

    goto/16 :goto_13

    .line 62
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/16 v8, 0xbb

    if-ne v5, v8, :cond_17

    move v5, v6

    goto :goto_a

    :cond_17
    move v5, v7

    :goto_a
    const/16 v8, 0x28

    .line 63
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v10

    add-int/2addr v10, v9

    if-eqz v5, :cond_18

    const/16 v5, 0x9

    goto :goto_b

    :cond_18
    const/16 v5, 0x8

    :goto_b
    add-int/2addr v10, v5

    invoke-virtual {v0, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0x7

    shl-int v5, v8, v5

    mul-int/2addr v5, v11

    goto/16 :goto_12

    :pswitch_4
    const/16 v9, 0x800

    goto/16 :goto_13

    .line 64
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    sget v8, Lm5/g0;->a:I

    .line 65
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    .line 66
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_19

    goto :goto_c

    :cond_19
    invoke-static {v5}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v5

    .line 67
    :goto_c
    invoke-static {v5}, Lp3/b0;->d(I)I

    move-result v9

    if-eq v9, v10, :cond_1a

    goto/16 :goto_13

    .line 68
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    .line 70
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    if-eq v8, v12, :cond_1d

    if-eq v8, v10, :cond_1c

    const/16 v9, 0x1f

    if-eq v8, v9, :cond_1b

    add-int/lit8 v8, v5, 0x4

    .line 71
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v6

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_e

    :cond_1b
    add-int/lit8 v8, v5, 0x5

    .line 72
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    goto :goto_d

    :cond_1c
    add-int/lit8 v8, v5, 0x4

    .line 73
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_d
    and-int/lit8 v5, v5, 0x3c

    goto :goto_f

    :cond_1d
    add-int/lit8 v8, v5, 0x5

    .line 74
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/2addr v8, v6

    shl-int/lit8 v8, v8, 0x6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    :goto_e
    and-int/lit16 v5, v5, 0xfc

    :goto_f
    shr-int/2addr v5, v15

    or-int/2addr v5, v8

    add-int/2addr v5, v6

    mul-int/lit8 v9, v5, 0x20

    goto :goto_13

    .line 75
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xf8

    shr-int/2addr v5, v8

    const/16 v9, 0xa

    if-le v5, v9, :cond_1e

    move v5, v6

    goto :goto_10

    :cond_1e
    move v5, v7

    :goto_10
    if-eqz v5, :cond_20

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xc0

    shr-int/lit8 v5, v5, 0x6

    if-ne v5, v8, :cond_1f

    goto :goto_11

    .line 77
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    shr-int/lit8 v8, v5, 0x4

    .line 78
    :goto_11
    sget-object v5, Lp3/b;->a:[I

    aget v5, v5, v8

    mul-int/lit16 v5, v5, 0x100

    goto :goto_12

    :cond_20
    const/16 v5, 0x600

    :goto_12
    move v9, v5

    .line 79
    :goto_13
    :pswitch_8
    iput v9, v1, Lp3/w;->F:I

    if-nez v9, :cond_21

    return v6

    .line 80
    :cond_21
    iget-object v5, v1, Lp3/w;->w:Lp3/w$h;

    if-eqz v5, :cond_23

    .line 81
    invoke-virtual/range {p0 .. p0}, Lp3/w;->y()Z

    move-result v5

    if-nez v5, :cond_22

    return v7

    .line 82
    :cond_22
    invoke-virtual {v1, v2, v3}, Lp3/w;->w(J)V

    const/4 v5, 0x0

    .line 83
    iput-object v5, v1, Lp3/w;->w:Lp3/w$h;

    .line 84
    :cond_23
    iget-wide v8, v1, Lp3/w;->I:J

    iget-object v5, v1, Lp3/w;->t:Lp3/w$f;

    .line 85
    iget v10, v5, Lp3/w$f;->c:I

    if-nez v10, :cond_24

    .line 86
    iget-wide v10, v1, Lp3/w;->B:J

    iget v12, v5, Lp3/w$f;->b:I

    int-to-long v12, v12

    div-long/2addr v10, v12

    goto :goto_14

    .line 87
    :cond_24
    iget-wide v10, v1, Lp3/w;->C:J

    .line 88
    :goto_14
    iget-object v12, v1, Lp3/w;->e:Lp3/g0;

    .line 89
    iget-wide v12, v12, Lp3/g0;->o:J

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xf4240

    mul-long/2addr v10, v12

    .line 90
    iget-object v5, v5, Lp3/w$f;->a:Ln3/s0;

    iget v5, v5, Ln3/s0;->G:I

    int-to-long v12, v5

    div-long/2addr v10, v12

    add-long/2addr v10, v8

    .line 91
    iget-boolean v5, v1, Lp3/w;->G:Z

    if-nez v5, :cond_25

    sub-long v8, v10, v2

    .line 92
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v12, 0x30d40

    cmp-long v5, v8, v12

    if-lez v5, :cond_25

    .line 93
    iget-object v5, v1, Lp3/w;->r:Lp3/q$c;

    new-instance v8, Lp3/q$d;

    invoke-direct {v8, v2, v3, v10, v11}, Lp3/q$d;-><init>(JJ)V

    check-cast v5, Lp3/a0$a;

    invoke-virtual {v5, v8}, Lp3/a0$a;->a(Ljava/lang/Exception;)V

    .line 94
    iput-boolean v6, v1, Lp3/w;->G:Z

    .line 95
    :cond_25
    iget-boolean v5, v1, Lp3/w;->G:Z

    if-eqz v5, :cond_27

    .line 96
    invoke-virtual/range {p0 .. p0}, Lp3/w;->y()Z

    move-result v5

    if-nez v5, :cond_26

    return v7

    :cond_26
    sub-long v8, v2, v10

    .line 97
    iget-wide v10, v1, Lp3/w;->I:J

    add-long/2addr v10, v8

    iput-wide v10, v1, Lp3/w;->I:J

    .line 98
    iput-boolean v7, v1, Lp3/w;->G:Z

    .line 99
    invoke-virtual {v1, v2, v3}, Lp3/w;->w(J)V

    .line 100
    iget-object v5, v1, Lp3/w;->r:Lp3/q$c;

    if-eqz v5, :cond_27

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_27

    .line 101
    check-cast v5, Lp3/a0$a;

    .line 102
    iget-object v5, v5, Lp3/a0$a;->a:Lp3/a0;

    .line 103
    iput-boolean v6, v5, Lp3/a0;->U0:Z

    .line 104
    :cond_27
    iget-object v5, v1, Lp3/w;->t:Lp3/w$f;

    iget v5, v5, Lp3/w$f;->c:I

    if-nez v5, :cond_28

    .line 105
    iget-wide v8, v1, Lp3/w;->B:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    iput-wide v8, v1, Lp3/w;->B:J

    goto :goto_15

    .line 106
    :cond_28
    iget-wide v8, v1, Lp3/w;->C:J

    iget v5, v1, Lp3/w;->F:I

    int-to-long v10, v5

    int-to-long v12, v4

    mul-long/2addr v10, v12

    add-long/2addr v10, v8

    iput-wide v10, v1, Lp3/w;->C:J

    .line 107
    :goto_15
    iput-object v0, v1, Lp3/w;->M:Ljava/nio/ByteBuffer;

    .line 108
    iput v4, v1, Lp3/w;->N:I

    .line 109
    :cond_29
    invoke-virtual {v1, v2, v3}, Lp3/w;->J(J)V

    .line 110
    iget-object v0, v1, Lp3/w;->M:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2a

    const/4 v0, 0x0

    .line 111
    iput-object v0, v1, Lp3/w;->M:Ljava/nio/ByteBuffer;

    .line 112
    iput v7, v1, Lp3/w;->N:I

    return v6

    .line 113
    :cond_2a
    iget-object v0, v1, Lp3/w;->i:Lp3/s;

    invoke-virtual/range {p0 .. p0}, Lp3/w;->E()J

    move-result-wide v2

    .line 114
    iget-wide v4, v0, Lp3/s;->y:J

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2b

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2b

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lp3/s;->y:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2b

    move v0, v6

    goto :goto_16

    :cond_2b
    move v0, v7

    :goto_16
    if-eqz v0, :cond_2c

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    .line 116
    invoke-static {v0, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lp3/w;->flush()V

    return v6

    :cond_2c
    return v7

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public final o(Z)J
    .locals 26

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lp3/w;->G()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, v0, Lp3/w;->H:Z

    if-eqz v1, :cond_0

    goto/16 :goto_11

    .line 2
    :cond_0
    iget-object v1, v0, Lp3/w;->i:Lp3/s;

    .line 3
    iget-object v2, v1, Lp3/s;->c:Landroid/media/AudioTrack;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v9, 0x1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x3e8

    if-ne v2, v3, :cond_18

    .line 6
    invoke-virtual {v1}, Lp3/s;->b()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lp3/s;->a(J)J

    move-result-wide v24

    cmp-long v2, v24, v11

    if-nez v2, :cond_1

    goto/16 :goto_7

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v13

    .line 8
    iget-wide v7, v1, Lp3/s;->m:J

    sub-long v7, v5, v7

    const-wide/16 v17, 0x7530

    cmp-long v2, v7, v17

    if-ltz v2, :cond_3

    .line 9
    iget-object v2, v1, Lp3/s;->b:[J

    iget v7, v1, Lp3/s;->v:I

    sub-long v17, v24, v5

    aput-wide v17, v2, v7

    add-int/2addr v7, v9

    const/16 v2, 0xa

    .line 10
    rem-int/2addr v7, v2

    iput v7, v1, Lp3/s;->v:I

    .line 11
    iget v7, v1, Lp3/s;->w:I

    if-ge v7, v2, :cond_2

    add-int/2addr v7, v9

    .line 12
    iput v7, v1, Lp3/s;->w:I

    .line 13
    :cond_2
    iput-wide v5, v1, Lp3/s;->m:J

    .line 14
    iput-wide v11, v1, Lp3/s;->l:J

    const/4 v2, 0x0

    .line 15
    :goto_0
    iget v7, v1, Lp3/s;->w:I

    if-ge v2, v7, :cond_3

    .line 16
    iget-wide v11, v1, Lp3/s;->l:J

    iget-object v8, v1, Lp3/s;->b:[J

    aget-wide v17, v8, v2

    int-to-long v7, v7

    div-long v17, v17, v7

    add-long v7, v17, v11

    iput-wide v7, v1, Lp3/s;->l:J

    add-int/lit8 v2, v2, 0x1

    const-wide/16 v11, 0x0

    goto :goto_0

    .line 17
    :cond_3
    iget-boolean v2, v1, Lp3/s;->h:Z

    if-eqz v2, :cond_4

    goto/16 :goto_7

    .line 18
    :cond_4
    iget-object v2, v1, Lp3/s;->f:Lp3/r;

    .line 19
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v7, v2, Lp3/r;->a:Lp3/r$a;

    const/4 v8, 0x4

    if-eqz v7, :cond_f

    iget-wide v10, v2, Lp3/r;->e:J

    sub-long v10, v5, v10

    iget-wide v13, v2, Lp3/r;->d:J

    cmp-long v10, v10, v13

    if-gez v10, :cond_5

    goto/16 :goto_1

    .line 21
    :cond_5
    iput-wide v5, v2, Lp3/r;->e:J

    .line 22
    iget-object v10, v7, Lp3/r$a;->a:Landroid/media/AudioTrack;

    iget-object v11, v7, Lp3/r$a;->b:Landroid/media/AudioTimestamp;

    invoke-virtual {v10, v11}, Landroid/media/AudioTrack;->getTimestamp(Landroid/media/AudioTimestamp;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 23
    iget-object v11, v7, Lp3/r$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v11, v11, Landroid/media/AudioTimestamp;->framePosition:J

    .line 24
    iget-wide v13, v7, Lp3/r$a;->d:J

    cmp-long v13, v13, v11

    if-lez v13, :cond_6

    .line 25
    iget-wide v13, v7, Lp3/r$a;->c:J

    const-wide/16 v17, 0x1

    add-long v13, v13, v17

    iput-wide v13, v7, Lp3/r$a;->c:J

    .line 26
    :cond_6
    iput-wide v11, v7, Lp3/r$a;->d:J

    .line 27
    iget-wide v13, v7, Lp3/r$a;->c:J

    const/16 v17, 0x20

    shl-long v13, v13, v17

    add-long/2addr v11, v13

    iput-wide v11, v7, Lp3/r$a;->e:J

    .line 28
    :cond_7
    iget v7, v2, Lp3/r;->b:I

    if-eqz v7, :cond_d

    if-eq v7, v9, :cond_b

    if-eq v7, v4, :cond_a

    if-eq v7, v3, :cond_9

    if-ne v7, v8, :cond_8

    goto :goto_2

    .line 29
    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_9
    if-eqz v10, :cond_10

    .line 30
    invoke-virtual {v2}, Lp3/r;->a()V

    goto :goto_2

    :cond_a
    if-nez v10, :cond_10

    .line 31
    invoke-virtual {v2}, Lp3/r;->a()V

    goto :goto_2

    :cond_b
    if-eqz v10, :cond_c

    .line 32
    iget-object v3, v2, Lp3/r;->a:Lp3/r$a;

    .line 33
    iget-wide v11, v3, Lp3/r$a;->e:J

    .line 34
    iget-wide v13, v2, Lp3/r;->f:J

    cmp-long v3, v11, v13

    if-lez v3, :cond_10

    .line 35
    invoke-virtual {v2, v4}, Lp3/r;->b(I)V

    goto :goto_2

    .line 36
    :cond_c
    invoke-virtual {v2}, Lp3/r;->a()V

    goto :goto_2

    :cond_d
    if-eqz v10, :cond_e

    .line 37
    iget-object v3, v2, Lp3/r;->a:Lp3/r$a;

    .line 38
    iget-object v7, v3, Lp3/r$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v11, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 39
    iget-wide v13, v2, Lp3/r;->c:J

    cmp-long v7, v11, v13

    if-ltz v7, :cond_f

    .line 40
    iget-wide v11, v3, Lp3/r$a;->e:J

    .line 41
    iput-wide v11, v2, Lp3/r;->f:J

    .line 42
    invoke-virtual {v2, v9}, Lp3/r;->b(I)V

    goto :goto_2

    .line 43
    :cond_e
    iget-wide v11, v2, Lp3/r;->c:J

    sub-long v11, v5, v11

    const-wide/32 v13, 0x7a120

    cmp-long v7, v11, v13

    if-lez v7, :cond_10

    .line 44
    invoke-virtual {v2, v3}, Lp3/r;->b(I)V

    goto :goto_2

    :cond_f
    :goto_1
    const/4 v10, 0x0

    :cond_10
    :goto_2
    const-wide/32 v11, 0x4c4b40

    if-nez v10, :cond_11

    goto :goto_5

    .line 45
    :cond_11
    iget-object v3, v2, Lp3/r;->a:Lp3/r$a;

    if-eqz v3, :cond_12

    .line 46
    iget-object v7, v3, Lp3/r$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v13, v7, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v17, 0x3e8

    div-long v13, v13, v17

    move-wide/from16 v20, v13

    goto :goto_3

    :cond_12
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    if-eqz v3, :cond_13

    .line 47
    iget-wide v13, v3, Lp3/r$a;->e:J

    goto :goto_4

    :cond_13
    const-wide/16 v13, -0x1

    :goto_4
    sub-long v17, v20, v5

    .line 48
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    cmp-long v3, v17, v11

    if-lez v3, :cond_14

    .line 49
    iget-object v3, v1, Lp3/s;->a:Lp3/s$a;

    move-object/from16 v17, v3

    move-wide/from16 v18, v13

    move-wide/from16 v22, v5

    invoke-interface/range {v17 .. v25}, Lp3/s$a;->d(JJJJ)V

    .line 50
    invoke-virtual {v2, v8}, Lp3/r;->b(I)V

    goto :goto_5

    .line 51
    :cond_14
    invoke-virtual {v1, v13, v14}, Lp3/s;->a(J)J

    move-result-wide v17

    sub-long v17, v17, v24

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v17

    cmp-long v3, v17, v11

    if-lez v3, :cond_15

    .line 52
    iget-object v3, v1, Lp3/s;->a:Lp3/s$a;

    move-object/from16 v17, v3

    move-wide/from16 v18, v13

    move-wide/from16 v22, v5

    invoke-interface/range {v17 .. v25}, Lp3/s$a;->c(JJJJ)V

    .line 53
    invoke-virtual {v2, v8}, Lp3/r;->b(I)V

    goto :goto_5

    .line 54
    :cond_15
    iget v3, v2, Lp3/r;->b:I

    if-ne v3, v8, :cond_16

    .line 55
    invoke-virtual {v2}, Lp3/r;->a()V

    .line 56
    :cond_16
    :goto_5
    iget-boolean v2, v1, Lp3/s;->q:Z

    if-eqz v2, :cond_18

    iget-object v2, v1, Lp3/s;->n:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_18

    iget-wide v7, v1, Lp3/s;->r:J

    sub-long v7, v5, v7

    const-wide/32 v13, 0x7a120

    cmp-long v3, v7, v13

    if-ltz v3, :cond_18

    .line 57
    :try_start_0
    iget-object v3, v1, Lp3/s;->c:Landroid/media/AudioTrack;

    .line 58
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    :try_start_1
    new-array v8, v7, [Ljava/lang/Object;

    .line 59
    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget v3, Lm5/g0;->a:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v13, 0x3e8

    mul-long/2addr v2, v13

    iget-wide v13, v1, Lp3/s;->i:J

    sub-long/2addr v2, v13

    iput-wide v2, v1, Lp3/s;->o:J

    const-wide/16 v13, 0x0

    .line 60
    invoke-static {v2, v3, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lp3/s;->o:J

    cmp-long v8, v2, v11

    if-lez v8, :cond_17

    .line 61
    iget-object v8, v1, Lp3/s;->a:Lp3/s$a;

    invoke-interface {v8, v2, v3}, Lp3/s$a;->e(J)V

    const-wide/16 v2, 0x0

    .line 62
    iput-wide v2, v1, Lp3/s;->o:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_0
    const/4 v7, 0x0

    :catch_1
    const/4 v2, 0x0

    .line 63
    iput-object v2, v1, Lp3/s;->n:Ljava/lang/reflect/Method;

    .line 64
    :cond_17
    :goto_6
    iput-wide v5, v1, Lp3/s;->r:J

    goto :goto_8

    :cond_18
    :goto_7
    const/4 v7, 0x0

    .line 65
    :goto_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    .line 66
    iget-object v5, v1, Lp3/s;->f:Lp3/r;

    .line 67
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget v6, v5, Lp3/r;->b:I

    if-ne v6, v4, :cond_19

    move v10, v9

    goto :goto_9

    :cond_19
    move v10, v7

    :goto_9
    if-eqz v10, :cond_1c

    .line 69
    iget-object v6, v5, Lp3/r;->a:Lp3/r$a;

    if-eqz v6, :cond_1a

    .line 70
    iget-wide v7, v6, Lp3/r$a;->e:J

    goto :goto_a

    :cond_1a
    const-wide/16 v7, -0x1

    .line 71
    :goto_a
    invoke-virtual {v1, v7, v8}, Lp3/s;->a(J)J

    move-result-wide v6

    .line 72
    iget-object v5, v5, Lp3/r;->a:Lp3/r$a;

    if-eqz v5, :cond_1b

    .line 73
    iget-object v5, v5, Lp3/r$a;->b:Landroid/media/AudioTimestamp;

    iget-wide v11, v5, Landroid/media/AudioTimestamp;->nanoTime:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    move-wide v15, v11

    goto :goto_b

    :cond_1b
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    :goto_b
    sub-long v11, v2, v15

    .line 74
    iget v5, v1, Lp3/s;->j:F

    .line 75
    invoke-static {v11, v12, v5}, Lm5/g0;->w(JF)J

    move-result-wide v11

    add-long/2addr v11, v6

    goto :goto_d

    .line 76
    :cond_1c
    iget v5, v1, Lp3/s;->w:I

    if-nez v5, :cond_1d

    .line 77
    invoke-virtual {v1}, Lp3/s;->b()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lp3/s;->a(J)J

    move-result-wide v5

    goto :goto_c

    .line 78
    :cond_1d
    iget-wide v5, v1, Lp3/s;->l:J

    add-long/2addr v5, v2

    :goto_c
    move-wide v11, v5

    if-nez p1, :cond_1e

    .line 79
    iget-wide v5, v1, Lp3/s;->o:J

    sub-long/2addr v11, v5

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 80
    :cond_1e
    :goto_d
    iget-boolean v5, v1, Lp3/s;->D:Z

    if-eq v5, v10, :cond_1f

    .line 81
    iget-wide v5, v1, Lp3/s;->C:J

    iput-wide v5, v1, Lp3/s;->F:J

    .line 82
    iget-wide v5, v1, Lp3/s;->B:J

    iput-wide v5, v1, Lp3/s;->E:J

    .line 83
    :cond_1f
    iget-wide v5, v1, Lp3/s;->F:J

    sub-long v5, v2, v5

    const-wide/32 v7, 0xf4240

    cmp-long v13, v5, v7

    if-gez v13, :cond_20

    .line 84
    iget-wide v13, v1, Lp3/s;->E:J

    iget v15, v1, Lp3/s;->j:F

    .line 85
    invoke-static {v5, v6, v15}, Lm5/g0;->w(JF)J

    move-result-wide v15

    add-long/2addr v15, v13

    const-wide/16 v13, 0x3e8

    mul-long/2addr v5, v13

    .line 86
    div-long/2addr v5, v7

    mul-long/2addr v11, v5

    sub-long v5, v13, v5

    mul-long/2addr v5, v15

    add-long/2addr v5, v11

    .line 87
    div-long v11, v5, v13

    .line 88
    :cond_20
    iget-boolean v5, v1, Lp3/s;->k:Z

    if-nez v5, :cond_21

    iget-wide v5, v1, Lp3/s;->B:J

    cmp-long v7, v11, v5

    if-lez v7, :cond_21

    .line 89
    iput-boolean v9, v1, Lp3/s;->k:Z

    sub-long v5, v11, v5

    .line 90
    invoke-static {v5, v6}, Lm5/g0;->X(J)J

    move-result-wide v5

    .line 91
    iget v7, v1, Lp3/s;->j:F

    .line 92
    invoke-static {v5, v6, v7}, Lm5/g0;->A(JF)J

    move-result-wide v5

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v5, v6}, Lm5/g0;->X(J)J

    move-result-wide v5

    sub-long/2addr v7, v5

    .line 94
    iget-object v5, v1, Lp3/s;->a:Lp3/s$a;

    invoke-interface {v5, v7, v8}, Lp3/s$a;->a(J)V

    .line 95
    :cond_21
    iput-wide v2, v1, Lp3/s;->C:J

    .line 96
    iput-wide v11, v1, Lp3/s;->B:J

    .line 97
    iput-boolean v10, v1, Lp3/s;->D:Z

    .line 98
    iget-object v1, v0, Lp3/w;->t:Lp3/w$f;

    invoke-virtual/range {p0 .. p0}, Lp3/w;->E()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lp3/w$f;->c(J)J

    move-result-wide v1

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 99
    :goto_e
    iget-object v3, v0, Lp3/w;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v0, Lp3/w;->j:Ljava/util/ArrayDeque;

    .line 100
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/w$h;

    iget-wide v5, v3, Lp3/w$h;->d:J

    cmp-long v3, v1, v5

    if-ltz v3, :cond_22

    .line 101
    iget-object v3, v0, Lp3/w;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/w$h;

    iput-object v3, v0, Lp3/w;->x:Lp3/w$h;

    goto :goto_e

    .line 102
    :cond_22
    iget-object v3, v0, Lp3/w;->x:Lp3/w$h;

    iget-wide v5, v3, Lp3/w$h;->d:J

    sub-long v7, v1, v5

    .line 103
    iget-object v3, v3, Lp3/w$h;->a:Ln3/m1;

    sget-object v5, Ln3/m1;->k:Ln3/m1;

    invoke-virtual {v3, v5}, Ln3/m1;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 104
    iget-object v1, v0, Lp3/w;->x:Lp3/w$h;

    iget-wide v1, v1, Lp3/w$h;->c:J

    add-long/2addr v1, v7

    goto :goto_10

    .line 105
    :cond_23
    iget-object v3, v0, Lp3/w;->j:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 106
    iget-object v1, v0, Lp3/w;->b:Lp3/w$c;

    .line 107
    check-cast v1, Lp3/w$g;

    .line 108
    iget-object v1, v1, Lp3/w$g;->c:Lp3/f0;

    .line 109
    iget-wide v2, v1, Lp3/f0;->o:J

    const-wide/16 v5, 0x400

    cmp-long v2, v2, v5

    if-ltz v2, :cond_25

    .line 110
    iget-wide v2, v1, Lp3/f0;->n:J

    iget-object v5, v1, Lp3/f0;->j:Lp3/e0;

    .line 111
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget v6, v5, Lp3/e0;->k:I

    iget v5, v5, Lp3/e0;->b:I

    mul-int/2addr v6, v5

    mul-int/2addr v6, v4

    int-to-long v4, v6

    sub-long v9, v2, v4

    .line 113
    iget-object v2, v1, Lp3/f0;->h:Lp3/f$a;

    iget v2, v2, Lp3/f$a;->a:I

    iget-object v3, v1, Lp3/f0;->g:Lp3/f$a;

    iget v3, v3, Lp3/f$a;->a:I

    if-ne v2, v3, :cond_24

    .line 114
    iget-wide v11, v1, Lp3/f0;->o:J

    invoke-static/range {v7 .. v12}, Lm5/g0;->R(JJJ)J

    move-result-wide v1

    goto :goto_f

    :cond_24
    int-to-long v4, v2

    mul-long/2addr v9, v4

    .line 115
    iget-wide v1, v1, Lp3/f0;->o:J

    int-to-long v3, v3

    mul-long v11, v1, v3

    invoke-static/range {v7 .. v12}, Lm5/g0;->R(JJJ)J

    move-result-wide v1

    goto :goto_f

    .line 116
    :cond_25
    iget v1, v1, Lp3/f0;->c:F

    float-to-double v1, v1

    long-to-double v3, v7

    mul-double/2addr v1, v3

    double-to-long v1, v1

    .line 117
    :goto_f
    iget-object v3, v0, Lp3/w;->x:Lp3/w$h;

    iget-wide v3, v3, Lp3/w$h;->c:J

    add-long/2addr v1, v3

    goto :goto_10

    .line 118
    :cond_26
    iget-object v3, v0, Lp3/w;->j:Ljava/util/ArrayDeque;

    .line 119
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/w$h;

    .line 120
    iget-wide v4, v3, Lp3/w$h;->d:J

    sub-long/2addr v4, v1

    .line 121
    iget-object v1, v0, Lp3/w;->x:Lp3/w$h;

    iget-object v1, v1, Lp3/w$h;->a:Ln3/m1;

    iget v1, v1, Ln3/m1;->h:F

    .line 122
    invoke-static {v4, v5, v1}, Lm5/g0;->w(JF)J

    move-result-wide v1

    .line 123
    iget-wide v3, v3, Lp3/w$h;->c:J

    sub-long v1, v3, v1

    .line 124
    :goto_10
    iget-object v3, v0, Lp3/w;->t:Lp3/w$f;

    iget-object v4, v0, Lp3/w;->b:Lp3/w$c;

    .line 125
    check-cast v4, Lp3/w$g;

    .line 126
    iget-object v4, v4, Lp3/w$g;->b:Lp3/d0;

    .line 127
    iget-wide v4, v4, Lp3/d0;->t:J

    .line 128
    invoke-virtual {v3, v4, v5}, Lp3/w$f;->c(J)J

    move-result-wide v3

    add-long/2addr v3, v1

    return-wide v3

    :cond_27
    :goto_11
    const-wide/high16 v1, -0x8000000000000000L

    return-wide v1
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/w;->Y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lp3/w;->Y:Z

    .line 3
    invoke-virtual {p0}, Lp3/w;->flush()V

    :cond_0
    return-void
.end method

.method public final q(Ln3/s0;[I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/q$a;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 1
    iget-object v0, v3, Ln3/s0;->s:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    if-eqz v0, :cond_5

    .line 2
    iget v0, v3, Ln3/s0;->H:I

    invoke-static {v0}, Lm5/g0;->I(I)Z

    move-result v0

    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    iget v0, v3, Ln3/s0;->H:I

    iget v6, v3, Ln3/s0;->F:I

    invoke-static {v0, v6}, Lm5/g0;->z(II)I

    move-result v0

    .line 4
    iget v6, v3, Ln3/s0;->H:I

    invoke-virtual {v1, v6}, Lp3/w;->P(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5
    iget-object v6, v1, Lp3/w;->g:[Lp3/f;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v6, v1, Lp3/w;->f:[Lp3/f;

    .line 7
    :goto_0
    iget-object v7, v1, Lp3/w;->e:Lp3/g0;

    iget v8, v3, Ln3/s0;->I:I

    iget v9, v3, Ln3/s0;->J:I

    .line 8
    iput v8, v7, Lp3/g0;->i:I

    .line 9
    iput v9, v7, Lp3/g0;->j:I

    .line 10
    sget v7, Lm5/g0;->a:I

    const/16 v8, 0x15

    if-ge v7, v8, :cond_1

    iget v7, v3, Ln3/s0;->F:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    if-nez p2, :cond_1

    const/4 v7, 0x6

    new-array v8, v7, [I

    move v9, v2

    :goto_1
    if-ge v9, v7, :cond_2

    .line 11
    aput v9, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p2

    .line 12
    :cond_2
    iget-object v7, v1, Lp3/w;->d:Lp3/v;

    .line 13
    iput-object v8, v7, Lp3/v;->i:[I

    .line 14
    new-instance v7, Lp3/f$a;

    iget v8, v3, Ln3/s0;->G:I

    iget v9, v3, Ln3/s0;->F:I

    iget v10, v3, Ln3/s0;->H:I

    invoke-direct {v7, v8, v9, v10}, Lp3/f$a;-><init>(III)V

    .line 15
    array-length v8, v6

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_4

    aget-object v10, v6, v9

    .line 16
    :try_start_0
    invoke-interface {v10, v7}, Lp3/f;->d(Lp3/f$a;)Lp3/f$a;

    move-result-object v11

    .line 17
    invoke-interface {v10}, Lp3/f;->isActive()Z

    move-result v10
    :try_end_0
    .catch Lp3/f$b; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_3

    move-object v7, v11

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 18
    new-instance v2, Lp3/q$a;

    invoke-direct {v2, v0, v3}, Lp3/q$a;-><init>(Ljava/lang/Throwable;Ln3/s0;)V

    throw v2

    .line 19
    :cond_4
    iget v8, v7, Lp3/f$a;->c:I

    .line 20
    iget v9, v7, Lp3/f$a;->a:I

    .line 21
    iget v10, v7, Lp3/f$a;->b:I

    invoke-static {v10}, Lm5/g0;->p(I)I

    move-result v10

    .line 22
    iget v7, v7, Lp3/f$a;->b:I

    invoke-static {v8, v7}, Lm5/g0;->z(II)I

    move-result v7

    move-object v11, v6

    move v6, v7

    move v7, v9

    move v9, v8

    move v8, v10

    move v10, v2

    goto :goto_4

    :cond_5
    new-array v0, v2, [Lp3/f;

    .line 23
    iget v7, v3, Ln3/s0;->G:I

    .line 24
    iget-object v8, v1, Lp3/w;->v:Lp3/d;

    invoke-virtual {v1, v3, v8}, Lp3/w;->Q(Ln3/s0;Lp3/d;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 25
    iget-object v8, v3, Ln3/s0;->s:Ljava/lang/String;

    .line 26
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v9, v3, Ln3/s0;->p:Ljava/lang/String;

    invoke-static {v8, v9}, Lm5/s;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 28
    iget v9, v3, Ln3/s0;->F:I

    invoke-static {v9}, Lm5/g0;->p(I)I

    move-result v9

    move v10, v4

    goto :goto_3

    .line 29
    :cond_6
    iget-object v8, v1, Lp3/w;->a:Lp3/e;

    .line 30
    invoke-virtual {v8, v3}, Lp3/e;->a(Ln3/s0;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 31
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 32
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v10, v5

    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    :goto_3
    move-object v11, v0

    move v0, v6

    move/from16 v19, v9

    move v9, v8

    move/from16 v8, v19

    .line 33
    :goto_4
    iget-object v12, v1, Lp3/w;->p:Lp3/x;

    .line 34
    invoke-static {v7, v8, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v13

    const/4 v14, -0x2

    if-eq v13, v14, :cond_7

    move v14, v4

    goto :goto_5

    :cond_7
    move v14, v2

    .line 35
    :goto_5
    invoke-static {v14}, Lm5/a;->e(Z)V

    .line 36
    iget-boolean v14, v1, Lp3/w;->k:Z

    if-eqz v14, :cond_8

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    goto :goto_6

    :cond_8
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 37
    :goto_6
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v16, 0xf4240

    if-eqz v10, :cond_c

    if-eq v10, v4, :cond_b

    if-ne v10, v5, :cond_a

    .line 38
    iget v5, v12, Lp3/x;->e:I

    const/4 v2, 0x5

    if-ne v9, v2, :cond_9

    .line 39
    iget v2, v12, Lp3/x;->g:I

    mul-int/2addr v5, v2

    .line 40
    :cond_9
    invoke-static {v9}, Lp3/x;->a(I)I

    move-result v2

    int-to-long v4, v5

    int-to-long v2, v2

    mul-long/2addr v4, v2

    .line 41
    div-long v4, v4, v16

    invoke-static {v4, v5}, Lw6/a;->a(J)I

    move-result v2

    move-object/from16 p2, v11

    goto :goto_7

    .line 42
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 43
    :cond_b
    invoke-static {v9}, Lp3/x;->a(I)I

    move-result v2

    .line 44
    iget v3, v12, Lp3/x;->f:I

    int-to-long v3, v3

    move-object/from16 p2, v11

    int-to-long v11, v2

    mul-long/2addr v3, v11

    div-long v3, v3, v16

    invoke-static {v3, v4}, Lw6/a;->a(J)I

    move-result v2

    :goto_7
    move/from16 v18, v0

    move v12, v10

    goto :goto_8

    :cond_c
    move-object/from16 p2, v11

    .line 45
    iget v2, v12, Lp3/x;->d:I

    mul-int/2addr v2, v13

    .line 46
    iget v3, v12, Lp3/x;->b:I

    int-to-long v3, v3

    move v5, v10

    int-to-long v10, v7

    mul-long/2addr v3, v10

    move/from16 v18, v0

    int-to-long v0, v6

    mul-long/2addr v3, v0

    .line 47
    div-long v3, v3, v16

    invoke-static {v3, v4}, Lw6/a;->a(J)I

    move-result v3

    .line 48
    iget v4, v12, Lp3/x;->c:I

    move v12, v5

    int-to-long v4, v4

    mul-long/2addr v4, v10

    mul-long/2addr v4, v0

    .line 49
    div-long v4, v4, v16

    invoke-static {v4, v5}, Lw6/a;->a(J)I

    move-result v0

    .line 50
    invoke-static {v2, v3, v0}, Lm5/g0;->i(III)I

    move-result v2

    :goto_8
    int-to-double v0, v2

    mul-double/2addr v0, v14

    double-to-int v0, v0

    .line 51
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 52
    div-int/2addr v0, v6

    mul-int v10, v0, v6

    const-string v0, ") for: "

    if-eqz v9, :cond_f

    if-eqz v8, :cond_e

    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 53
    iput-boolean v2, v1, Lp3/w;->a0:Z

    .line 54
    new-instance v0, Lp3/w$f;

    move-object v2, v0

    move-object/from16 v3, p1

    move/from16 v4, v18

    move v5, v12

    move-object/from16 v11, p2

    invoke-direct/range {v2 .. v11}, Lp3/w$f;-><init>(Ln3/s0;IIIIIII[Lp3/f;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lp3/w;->G()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 56
    iput-object v0, v1, Lp3/w;->s:Lp3/w$f;

    goto :goto_9

    .line 57
    :cond_d
    iput-object v0, v1, Lp3/w;->t:Lp3/w$f;

    :goto_9
    return-void

    :cond_e
    move-object/from16 v1, p0

    .line 58
    new-instance v2, Lp3/q$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid output channel config (mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lp3/q$a;-><init>(Ljava/lang/String;Ln3/s0;)V

    throw v2

    :cond_f
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    .line 59
    new-instance v2, Lp3/q$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid output encoding (mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lp3/q$a;-><init>(Ljava/lang/String;Ln3/s0;)V

    throw v2

    :cond_10
    move-object v4, v3

    .line 60
    new-instance v0, Lp3/q$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to configure passthrough for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lp3/q$a;-><init>(Ljava/lang/String;Ln3/s0;)V

    throw v0
.end method

.method public final r(Lp3/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/w;->v:Lp3/d;

    invoke-virtual {v0, p1}, Lp3/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lp3/w;->v:Lp3/d;

    .line 3
    iget-boolean p1, p0, Lp3/w;->Y:Z

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Lp3/w;->flush()V

    return-void
.end method

.method public final s(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp3/w;->B()Ln3/m1;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0, p1}, Lp3/w;->L(Ln3/m1;Z)V

    return-void
.end method

.method public final t(Lp3/t;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/w;->X:Lp3/t;

    invoke-virtual {v0, p1}, Lp3/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p1, Lp3/t;->a:I

    .line 3
    iget v1, p1, Lp3/t;->b:F

    .line 4
    iget-object v2, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    if-eqz v2, :cond_2

    .line 5
    iget-object v3, p0, Lp3/w;->X:Lp3/t;

    iget v3, v3, Lp3/t;->a:I

    if-eq v3, v0, :cond_1

    .line 6
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lp3/w;->u:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 8
    :cond_2
    iput-object p1, p0, Lp3/w;->X:Lp3/t;

    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp3/w;->G:Z

    return-void
.end method

.method public final v(F)V
    .locals 1

    .line 1
    iget v0, p0, Lp3/w;->J:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lp3/w;->J:F

    .line 3
    invoke-virtual {p0}, Lp3/w;->N()V

    :cond_0
    return-void
.end method

.method public final w(J)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lp3/w;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lp3/w;->b:Lp3/w$c;

    invoke-virtual {p0}, Lp3/w;->B()Ln3/m1;

    move-result-object v1

    check-cast v0, Lp3/w$g;

    .line 3
    iget-object v0, v0, Lp3/w$g;->c:Lp3/f0;

    iget v2, v1, Ln3/m1;->h:F

    .line 4
    iget v3, v0, Lp3/f0;->c:F

    cmpl-float v3, v3, v2

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 5
    iput v2, v0, Lp3/f0;->c:F

    .line 6
    iput-boolean v4, v0, Lp3/f0;->i:Z

    .line 7
    :cond_0
    iget v2, v1, Ln3/m1;->i:F

    .line 8
    iget v3, v0, Lp3/f0;->d:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_2

    .line 9
    iput v2, v0, Lp3/f0;->d:F

    .line 10
    iput-boolean v4, v0, Lp3/f0;->i:Z

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Ln3/m1;->k:Ln3/m1;

    :cond_2
    :goto_0
    move-object v3, v1

    .line 12
    invoke-virtual {p0}, Lp3/w;->O()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lp3/w;->b:Lp3/w$c;

    invoke-virtual {p0}, Lp3/w;->D()Z

    move-result v2

    check-cast v0, Lp3/w$g;

    .line 14
    iget-object v0, v0, Lp3/w$g;->b:Lp3/d0;

    .line 15
    iput-boolean v2, v0, Lp3/d0;->m:Z

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 16
    :goto_1
    iget-object v9, p0, Lp3/w;->j:Ljava/util/ArrayDeque;

    new-instance v10, Lp3/w$h;

    const-wide/16 v4, 0x0

    .line 17
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object p1, p0, Lp3/w;->t:Lp3/w$f;

    .line 18
    invoke-virtual {p0}, Lp3/w;->E()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lp3/w$f;->c(J)J

    move-result-wide v7

    move-object v2, v10

    move v4, v0

    invoke-direct/range {v2 .. v8}, Lp3/w$h;-><init>(Ln3/m1;ZJJ)V

    .line 19
    invoke-virtual {v9, v10}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lp3/w;->t:Lp3/w$f;

    iget-object p1, p1, Lp3/w$f;->i:[Lp3/f;

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, p1, v1

    .line 23
    invoke-interface {v3}, Lp3/f;->isActive()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 24
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 25
    :cond_4
    invoke-interface {v3}, Lp3/f;->flush()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 27
    new-array v1, p1, [Lp3/f;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lp3/f;

    iput-object p2, p0, Lp3/w;->K:[Lp3/f;

    .line 28
    new-array p1, p1, [Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lp3/w;->L:[Ljava/nio/ByteBuffer;

    .line 29
    invoke-virtual {p0}, Lp3/w;->z()V

    .line 30
    iget-object p1, p0, Lp3/w;->r:Lp3/q$c;

    if-eqz p1, :cond_6

    .line 31
    check-cast p1, Lp3/a0$a;

    .line 32
    iget-object p1, p1, Lp3/a0$a;->a:Lp3/a0;

    .line 33
    iget-object p1, p1, Lp3/a0;->N0:Lp3/p$a;

    .line 34
    iget-object p2, p1, Lp3/p$a;->a:Landroid/os/Handler;

    if-eqz p2, :cond_6

    .line 35
    new-instance v1, Lp3/o;

    invoke-direct {v1, p1, v0}, Lp3/o;-><init>(Lp3/p$a;Z)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public final x(Lp3/w$f;)Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/q$b;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lp3/w;->Y:Z

    iget-object v1, p0, Lp3/w;->v:Lp3/d;

    iget v2, p0, Lp3/w;->W:I

    invoke-virtual {p1, v0, v1, v2}, Lp3/w$f;->a(ZLp3/d;I)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Lp3/q$b; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    iget-object v0, p0, Lp3/w;->r:Lp3/q$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lp3/a0$a;

    invoke-virtual {v0, p1}, Lp3/a0$a;->a(Ljava/lang/Exception;)V

    .line 4
    :cond_0
    throw p1
.end method

.method public final y()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lp3/q$e;
        }
    .end annotation

    .line 1
    iget v0, p0, Lp3/w;->R:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iput v3, p0, Lp3/w;->R:I

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v3

    .line 3
    :goto_1
    iget v4, p0, Lp3/w;->R:I

    iget-object v5, p0, Lp3/w;->K:[Lp3/f;

    array-length v6, v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v6, :cond_3

    .line 4
    aget-object v4, v5, v4

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v4}, Lp3/f;->c()V

    .line 6
    :cond_1
    invoke-virtual {p0, v7, v8}, Lp3/w;->J(J)V

    .line 7
    invoke-interface {v4}, Lp3/f;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return v3

    .line 8
    :cond_2
    iget v0, p0, Lp3/w;->R:I

    add-int/2addr v0, v2

    iput v0, p0, Lp3/w;->R:I

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lp3/w;->O:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p0, v0, v7, v8}, Lp3/w;->R(Ljava/nio/ByteBuffer;J)V

    .line 11
    iget-object v0, p0, Lp3/w;->O:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    return v3

    .line 12
    :cond_4
    iput v1, p0, Lp3/w;->R:I

    return v2
.end method

.method public final z()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lp3/w;->K:[Lp3/f;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-interface {v1}, Lp3/f;->flush()V

    .line 4
    iget-object v2, p0, Lp3/w;->L:[Ljava/nio/ByteBuffer;

    invoke-interface {v1}, Lp3/f;->a()Ljava/nio/ByteBuffer;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
