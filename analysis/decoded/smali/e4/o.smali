.class public abstract Le4/o;
.super Ln3/f;
.source "MediaCodecRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le4/o$a;,
        Le4/o$b;
    }
.end annotation


# static fields
.field public static final L0:[B


# instance fields
.field public final A:Le4/h;

.field public A0:J

.field public final B:Lm5/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/c0<",
            "Ln3/s0;",
            ">;"
        }
    .end annotation
.end field

.field public B0:J

.field public final C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public C0:Z

.field public final D:Landroid/media/MediaCodec$BufferInfo;

.field public D0:Z

.field public final E:[J

.field public E0:Z

.field public final F:[J

.field public F0:Z

.field public final G:[J

.field public G0:Ln3/q;

.field public H:Ln3/s0;

.field public H0:Lq3/e;

.field public I:Ln3/s0;

.field public I0:J

.field public J:Lr3/e;

.field public J0:J

.field public K:Lr3/e;

.field public K0:I

.field public L:Landroid/media/MediaCrypto;

.field public M:Z

.field public N:J

.field public O:F

.field public P:F

.field public Q:Le4/l;

.field public R:Ln3/s0;

.field public S:Landroid/media/MediaFormat;

.field public T:Z

.field public U:F

.field public V:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Le4/n;",
            ">;"
        }
    .end annotation
.end field

.field public W:Le4/o$b;

.field public X:Le4/n;

.field public Y:I

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:Le4/i;

.field public k0:J

.field public l0:I

.field public m0:I

.field public n0:Ljava/nio/ByteBuffer;

.field public o0:Z

.field public p0:Z

.field public q0:Z

.field public r0:Z

.field public s0:Z

.field public final t:Le4/l$b;

.field public t0:Z

.field public final u:Le4/p;

.field public u0:I

.field public final v:Z

.field public v0:I

.field public final w:F

.field public w0:I

.field public final x:Lq3/g;

.field public x0:Z

.field public final y:Lq3/g;

.field public y0:Z

.field public final z:Lq3/g;

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Le4/o;->L0:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILe4/l$b;Le4/p;F)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Ln3/f;-><init>(I)V

    .line 2
    iput-object p2, p0, Le4/o;->t:Le4/l$b;

    .line 3
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Le4/o;->u:Le4/p;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Le4/o;->v:Z

    .line 6
    iput p4, p0, Le4/o;->w:F

    .line 7
    new-instance p2, Lq3/g;

    invoke-direct {p2, p1}, Lq3/g;-><init>(I)V

    .line 8
    iput-object p2, p0, Le4/o;->x:Lq3/g;

    .line 9
    new-instance p2, Lq3/g;

    invoke-direct {p2, p1}, Lq3/g;-><init>(I)V

    iput-object p2, p0, Le4/o;->y:Lq3/g;

    .line 10
    new-instance p2, Lq3/g;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lq3/g;-><init>(I)V

    iput-object p2, p0, Le4/o;->z:Lq3/g;

    .line 11
    new-instance p2, Le4/h;

    invoke-direct {p2}, Le4/h;-><init>()V

    iput-object p2, p0, Le4/o;->A:Le4/h;

    .line 12
    new-instance p3, Lm5/c0;

    invoke-direct {p3}, Lm5/c0;-><init>()V

    iput-object p3, p0, Le4/o;->B:Lm5/c0;

    .line 13
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Le4/o;->C:Ljava/util/ArrayList;

    .line 14
    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 15
    iput p3, p0, Le4/o;->O:F

    .line 16
    iput p3, p0, Le4/o;->P:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    iput-wide p3, p0, Le4/o;->N:J

    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 18
    iput-object v1, p0, Le4/o;->E:[J

    new-array v1, v0, [J

    .line 19
    iput-object v1, p0, Le4/o;->F:[J

    new-array v0, v0, [J

    .line 20
    iput-object v0, p0, Le4/o;->G:[J

    .line 21
    iput-wide p3, p0, Le4/o;->I0:J

    .line 22
    iput-wide p3, p0, Le4/o;->J0:J

    .line 23
    invoke-virtual {p2, p1}, Lq3/g;->q(I)V

    .line 24
    iget-object p2, p2, Lq3/g;->j:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/high16 p2, -0x40800000    # -1.0f

    .line 25
    iput p2, p0, Le4/o;->U:F

    .line 26
    iput p1, p0, Le4/o;->Y:I

    .line 27
    iput p1, p0, Le4/o;->u0:I

    const/4 p2, -0x1

    .line 28
    iput p2, p0, Le4/o;->l0:I

    .line 29
    iput p2, p0, Le4/o;->m0:I

    .line 30
    iput-wide p3, p0, Le4/o;->k0:J

    .line 31
    iput-wide p3, p0, Le4/o;->A0:J

    .line 32
    iput-wide p3, p0, Le4/o;->B0:J

    .line 33
    iput p1, p0, Le4/o;->v0:I

    .line 34
    iput p1, p0, Le4/o;->w0:I

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le4/o;->L:Landroid/media/MediaCrypto;

    iget-object v2, p0, Le4/o;->K:Lr3/e;

    invoke-virtual {p0, v2}, Le4/o;->X(Lr3/e;)Lr3/t;

    move-result-object v2

    iget-object v2, v2, Lr3/t;->b:[B

    invoke-virtual {v1, v2}, Landroid/media/MediaCrypto;->setMediaDrmSession([B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object v1, p0, Le4/o;->K:Lr3/e;

    invoke-virtual {p0, v1}, Le4/o;->t0(Lr3/e;)V

    .line 3
    iput v0, p0, Le4/o;->v0:I

    .line 4
    iput v0, p0, Le4/o;->w0:I

    return-void

    :catch_0
    move-exception v1

    .line 5
    iget-object v2, p0, Le4/o;->H:Ln3/s0;

    const/16 v3, 0x1776

    .line 6
    invoke-virtual {p0, v1, v2, v0, v3}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object v0

    .line 7
    throw v0
.end method

.method public B()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le4/o;->H:Ln3/s0;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    iput-wide v0, p0, Le4/o;->I0:J

    .line 3
    iput-wide v0, p0, Le4/o;->J0:J

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le4/o;->K0:I

    .line 5
    invoke-virtual {p0}, Le4/o;->S()Z

    return-void
.end method

.method public final B0(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le4/o;->B:Lm5/c0;

    invoke-virtual {v0, p1, p2}, Lm5/c0;->e(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/s0;

    if-nez p1, :cond_1

    .line 2
    iget-boolean p2, p0, Le4/o;->T:Z

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Le4/o;->B:Lm5/c0;

    .line 4
    monitor-enter p1

    .line 5
    :try_start_0
    iget p2, p1, Lm5/c0;->d:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lm5/c0;->f()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p1

    .line 6
    move-object p1, p2

    check-cast p1, Ln3/s0;

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 7
    monitor-exit p1

    throw p2

    :cond_1
    :goto_1
    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 8
    iput-object p1, p0, Le4/o;->I:Ln3/s0;

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    move p1, p2

    :goto_2
    if-nez p1, :cond_3

    .line 9
    iget-boolean p1, p0, Le4/o;->T:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Le4/o;->I:Ln3/s0;

    if-eqz p1, :cond_4

    .line 10
    :cond_3
    iget-object p1, p0, Le4/o;->I:Ln3/s0;

    iget-object v0, p0, Le4/o;->S:Landroid/media/MediaFormat;

    invoke-virtual {p0, p1, v0}, Le4/o;->h0(Ln3/s0;Landroid/media/MediaFormat;)V

    .line 11
    iput-boolean p2, p0, Le4/o;->T:Z

    :cond_4
    return-void
.end method

.method public D(JZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Le4/o;->C0:Z

    .line 2
    iput-boolean p1, p0, Le4/o;->D0:Z

    .line 3
    iput-boolean p1, p0, Le4/o;->F0:Z

    .line 4
    iget-boolean p2, p0, Le4/o;->q0:Z

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Le4/o;->A:Le4/h;

    invoke-virtual {p2}, Le4/h;->o()V

    .line 6
    iget-object p2, p0, Le4/o;->z:Lq3/g;

    invoke-virtual {p2}, Lq3/g;->o()V

    .line 7
    iput-boolean p1, p0, Le4/o;->r0:Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Le4/o;->S()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p0}, Le4/o;->b0()V

    .line 10
    :cond_1
    :goto_0
    iget-object p2, p0, Le4/o;->B:Lm5/c0;

    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget p3, p2, Lm5/c0;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    const/4 p2, 0x1

    if-lez p3, :cond_2

    .line 13
    iput-boolean p2, p0, Le4/o;->E0:Z

    .line 14
    :cond_2
    iget-object p3, p0, Le4/o;->B:Lm5/c0;

    invoke-virtual {p3}, Lm5/c0;->b()V

    .line 15
    iget p3, p0, Le4/o;->K0:I

    if-eqz p3, :cond_3

    .line 16
    iget-object v0, p0, Le4/o;->F:[J

    add-int/lit8 v1, p3, -0x1

    aget-wide v1, v0, v1

    iput-wide v1, p0, Le4/o;->J0:J

    .line 17
    iget-object v0, p0, Le4/o;->E:[J

    sub-int/2addr p3, p2

    aget-wide p2, v0, p3

    iput-wide p2, p0, Le4/o;->I0:J

    .line 18
    iput p1, p0, Le4/o;->K0:I

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p2

    throw p1
.end method

.method public final H([Ln3/s0;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Le4/o;->J0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 2
    iget-wide v4, p0, Le4/o;->I0:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 3
    iput-wide p2, p0, Le4/o;->I0:J

    .line 4
    iput-wide p4, p0, Le4/o;->J0:J

    goto :goto_2

    .line 5
    :cond_1
    iget p1, p0, Le4/o;->K0:I

    iget-object v1, p0, Le4/o;->F:[J

    array-length v1, v1

    if-ne p1, v1, :cond_2

    const-string p1, "Too many stream changes, so dropping offset: "

    .line 6
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    iget-object v1, p0, Le4/o;->F:[J

    iget v2, p0, Le4/o;->K0:I

    sub-int/2addr v2, v0

    aget-wide v2, v1, v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/2addr p1, v0

    .line 8
    iput p1, p0, Le4/o;->K0:I

    .line 9
    :goto_1
    iget-object p1, p0, Le4/o;->E:[J

    iget v1, p0, Le4/o;->K0:I

    add-int/lit8 v2, v1, -0x1

    aput-wide p2, p1, v2

    .line 10
    iget-object p1, p0, Le4/o;->F:[J

    aput-wide p4, p1, v2

    .line 11
    iget-object p1, p0, Le4/o;->G:[J

    sub-int/2addr v1, v0

    iget-wide p2, p0, Le4/o;->A0:J

    aput-wide p2, p1, v1

    :goto_2
    return-void
.end method

.method public final J(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    iget-boolean v0, v15, Le4/o;->D0:Z

    const/4 v14, 0x1

    xor-int/2addr v0, v14

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, v15, Le4/o;->A:Le4/h;

    invoke-virtual {v0}, Le4/h;->w()Z

    move-result v0

    const/4 v13, 0x4

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    .line 3
    iget-object v0, v15, Le4/o;->A:Le4/h;

    iget-object v6, v0, Lq3/g;->j:Ljava/nio/ByteBuffer;

    iget v7, v15, Le4/o;->m0:I

    const/4 v8, 0x0

    .line 4
    iget v9, v0, Le4/h;->q:I

    .line 5
    iget-wide v10, v0, Lq3/g;->l:J

    .line 6
    invoke-virtual {v0}, Lq3/a;->n()Z

    move-result v16

    iget-object v0, v15, Le4/o;->A:Le4/h;

    .line 7
    invoke-virtual {v0, v13}, Lq3/a;->l(I)Z

    move-result v17

    .line 8
    iget-object v3, v15, Le4/o;->I:Ln3/s0;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v18, v3

    move-wide/from16 v3, p3

    move/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v14, v18

    .line 9
    invoke-virtual/range {v0 .. v14}, Le4/o;->m0(JJLe4/l;Ljava/nio/ByteBuffer;IIIJZZLn3/s0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, v15, Le4/o;->A:Le4/h;

    .line 11
    iget-wide v0, v0, Le4/h;->p:J

    .line 12
    invoke-virtual {v15, v0, v1}, Le4/o;->i0(J)V

    .line 13
    iget-object v0, v15, Le4/o;->A:Le4/h;

    invoke-virtual {v0}, Le4/h;->o()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    move v0, v12

    .line 14
    :goto_0
    iget-boolean v1, v15, Le4/o;->C0:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v15, Le4/o;->D0:Z

    return v0

    :cond_2
    const/4 v1, 0x1

    .line 16
    iget-boolean v2, v15, Le4/o;->r0:Z

    if-eqz v2, :cond_3

    .line 17
    iget-object v2, v15, Le4/o;->A:Le4/h;

    iget-object v3, v15, Le4/o;->z:Lq3/g;

    invoke-virtual {v2, v3}, Le4/h;->u(Lq3/g;)Z

    move-result v2

    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 18
    iput-boolean v0, v15, Le4/o;->r0:Z

    .line 19
    :cond_3
    iget-boolean v2, v15, Le4/o;->s0:Z

    if-eqz v2, :cond_5

    .line 20
    iget-object v2, v15, Le4/o;->A:Le4/h;

    invoke-virtual {v2}, Le4/h;->w()Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 21
    :cond_4
    invoke-virtual/range {p0 .. p0}, Le4/o;->M()V

    .line 22
    iput-boolean v0, v15, Le4/o;->s0:Z

    .line 23
    invoke-virtual/range {p0 .. p0}, Le4/o;->b0()V

    .line 24
    iget-boolean v2, v15, Le4/o;->q0:Z

    if-nez v2, :cond_5

    return v0

    .line 25
    :cond_5
    iget-boolean v2, v15, Le4/o;->C0:Z

    xor-int/2addr v2, v1

    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Ln3/f;->A()Ly0/r;

    move-result-object v2

    .line 27
    iget-object v3, v15, Le4/o;->z:Lq3/g;

    invoke-virtual {v3}, Lq3/g;->o()V

    .line 28
    :cond_6
    iget-object v3, v15, Le4/o;->z:Lq3/g;

    invoke-virtual {v3}, Lq3/g;->o()V

    .line 29
    iget-object v3, v15, Le4/o;->z:Lq3/g;

    invoke-virtual {v15, v2, v3, v0}, Ln3/f;->I(Ly0/r;Lq3/g;I)I

    move-result v3

    const/4 v4, -0x5

    if-eq v3, v4, :cond_b

    const/4 v4, -0x4

    if-eq v3, v4, :cond_8

    const/4 v2, -0x3

    if-ne v3, v2, :cond_7

    goto :goto_1

    .line 30
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 31
    :cond_8
    iget-object v3, v15, Le4/o;->z:Lq3/g;

    const/4 v4, 0x4

    .line 32
    invoke-virtual {v3, v4}, Lq3/a;->l(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 33
    iput-boolean v1, v15, Le4/o;->C0:Z

    goto :goto_1

    .line 34
    :cond_9
    iget-boolean v3, v15, Le4/o;->E0:Z

    if-eqz v3, :cond_a

    .line 35
    iget-object v3, v15, Le4/o;->H:Ln3/s0;

    .line 36
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iput-object v3, v15, Le4/o;->I:Ln3/s0;

    const/4 v5, 0x0

    .line 38
    invoke-virtual {v15, v3, v5}, Le4/o;->h0(Ln3/s0;Landroid/media/MediaFormat;)V

    .line 39
    iput-boolean v0, v15, Le4/o;->E0:Z

    .line 40
    :cond_a
    iget-object v3, v15, Le4/o;->z:Lq3/g;

    invoke-virtual {v3}, Lq3/g;->s()V

    .line 41
    iget-object v3, v15, Le4/o;->A:Le4/h;

    iget-object v5, v15, Le4/o;->z:Lq3/g;

    invoke-virtual {v3, v5}, Le4/h;->u(Lq3/g;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 42
    iput-boolean v1, v15, Le4/o;->r0:Z

    goto :goto_1

    .line 43
    :cond_b
    invoke-virtual {v15, v2}, Le4/o;->g0(Ly0/r;)Lq3/i;

    .line 44
    :goto_1
    iget-object v2, v15, Le4/o;->A:Le4/h;

    invoke-virtual {v2}, Le4/h;->w()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 45
    iget-object v2, v15, Le4/o;->A:Le4/h;

    invoke-virtual {v2}, Lq3/g;->s()V

    .line 46
    :cond_c
    iget-object v2, v15, Le4/o;->A:Le4/h;

    invoke-virtual {v2}, Le4/h;->w()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, v15, Le4/o;->C0:Z

    if-nez v2, :cond_e

    iget-boolean v2, v15, Le4/o;->s0:Z

    if-eqz v2, :cond_d

    goto :goto_2

    :cond_d
    move v14, v0

    goto :goto_3

    :cond_e
    :goto_2
    move v14, v1

    :goto_3
    return v14
.end method

.method public abstract K(Le4/n;Ln3/s0;Ln3/s0;)Lq3/i;
.end method

.method public L(Ljava/lang/Throwable;Le4/n;)Le4/m;
    .locals 1

    new-instance v0, Le4/m;

    invoke-direct {v0, p1, p2}, Le4/m;-><init>(Ljava/lang/Throwable;Le4/n;)V

    return-object v0
.end method

.method public final M()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le4/o;->s0:Z

    .line 2
    iget-object v1, p0, Le4/o;->A:Le4/h;

    invoke-virtual {v1}, Le4/h;->o()V

    .line 3
    iget-object v1, p0, Le4/o;->z:Lq3/g;

    invoke-virtual {v1}, Lq3/g;->o()V

    .line 4
    iput-boolean v0, p0, Le4/o;->r0:Z

    .line 5
    iput-boolean v0, p0, Le4/o;->q0:Z

    return-void
.end method

.method public final N()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le4/o;->x0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Le4/o;->v0:I

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Le4/o;->w0:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le4/o;->o0()V

    .line 5
    invoke-virtual {p0}, Le4/o;->b0()V

    :goto_0
    return-void
.end method

.method public final O()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le4/o;->x0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    iput v1, p0, Le4/o;->v0:I

    .line 3
    iget-boolean v0, p0, Le4/o;->a0:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le4/o;->c0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    iput v0, p0, Le4/o;->w0:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Le4/o;->w0:I

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Le4/o;->A0()V

    :goto_1
    return v1
.end method

.method public final P(JJ)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object/from16 v15, p0

    .line 1
    iget v0, v15, Le4/o;->m0:I

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-ltz v0, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move v0, v13

    :goto_0
    if-nez v0, :cond_10

    .line 2
    iget-boolean v0, v15, Le4/o;->d0:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v15, Le4/o;->y0:Z

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    iget-object v0, v15, Le4/o;->Q:Le4/l;

    iget-object v1, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Le4/l;->b(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4
    :catch_0
    invoke-virtual/range {p0 .. p0}, Le4/o;->l0()V

    .line 5
    iget-boolean v0, v15, Le4/o;->D0:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Le4/o;->o0()V

    :cond_1
    return v13

    .line 7
    :cond_2
    iget-object v0, v15, Le4/o;->Q:Le4/l;

    iget-object v1, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    invoke-interface {v0, v1}, Le4/l;->b(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v0

    :goto_1
    if-gez v0, :cond_8

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    .line 8
    iput-boolean v14, v15, Le4/o;->z0:Z

    .line 9
    iget-object v0, v15, Le4/o;->Q:Le4/l;

    invoke-interface {v0}, Le4/l;->f()Landroid/media/MediaFormat;

    move-result-object v0

    .line 10
    iget v1, v15, Le4/o;->Y:I

    if-eqz v1, :cond_3

    const-string v1, "width"

    .line 11
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    const-string v1, "height"

    .line 12
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 13
    iput-boolean v14, v15, Le4/o;->h0:Z

    goto :goto_2

    .line 14
    :cond_3
    iget-boolean v1, v15, Le4/o;->f0:Z

    if-eqz v1, :cond_4

    const-string v1, "channel-count"

    .line 15
    invoke-virtual {v0, v1, v14}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 16
    :cond_4
    iput-object v0, v15, Le4/o;->S:Landroid/media/MediaFormat;

    .line 17
    iput-boolean v14, v15, Le4/o;->T:Z

    :goto_2
    return v14

    .line 18
    :cond_5
    iget-boolean v0, v15, Le4/o;->i0:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v15, Le4/o;->C0:Z

    if-nez v0, :cond_6

    iget v0, v15, Le4/o;->v0:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 19
    :cond_6
    invoke-virtual/range {p0 .. p0}, Le4/o;->l0()V

    :cond_7
    return v13

    .line 20
    :cond_8
    iget-boolean v1, v15, Le4/o;->h0:Z

    if-eqz v1, :cond_9

    .line 21
    iput-boolean v13, v15, Le4/o;->h0:Z

    .line 22
    iget-object v1, v15, Le4/o;->Q:Le4/l;

    invoke-interface {v1, v0, v13}, Le4/l;->d(IZ)V

    return v14

    .line 23
    :cond_9
    iget-object v1, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_a

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    .line 24
    invoke-virtual/range {p0 .. p0}, Le4/o;->l0()V

    return v13

    .line 25
    :cond_a
    iput v0, v15, Le4/o;->m0:I

    .line 26
    iget-object v1, v15, Le4/o;->Q:Le4/l;

    invoke-interface {v1, v0}, Le4/l;->j(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v15, Le4/o;->n0:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_b

    .line 27
    iget-object v1, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 28
    iget-object v0, v15, Le4/o;->n0:Ljava/nio/ByteBuffer;

    iget-object v1, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 29
    :cond_b
    iget-boolean v0, v15, Le4/o;->e0:Z

    if-eqz v0, :cond_c

    iget-object v0, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_c

    iget v1, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c

    iget-wide v1, v15, Le4/o;->A0:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_c

    .line 30
    iput-wide v1, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 31
    :cond_c
    iget-object v0, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 32
    iget-object v2, v15, Le4/o;->C:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v13

    :goto_3
    if-ge v3, v2, :cond_e

    .line 33
    iget-object v4, v15, Le4/o;->C:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-nez v4, :cond_d

    .line 34
    iget-object v0, v15, Le4/o;->C:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v14

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    move v0, v13

    .line 35
    :goto_4
    iput-boolean v0, v15, Le4/o;->o0:Z

    .line 36
    iget-wide v0, v15, Le4/o;->B0:J

    iget-object v2, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    move v0, v14

    goto :goto_5

    :cond_f
    move v0, v13

    :goto_5
    iput-boolean v0, v15, Le4/o;->p0:Z

    .line 37
    invoke-virtual {v15, v2, v3}, Le4/o;->B0(J)V

    .line 38
    :cond_10
    iget-boolean v0, v15, Le4/o;->d0:Z

    if-eqz v0, :cond_12

    iget-boolean v0, v15, Le4/o;->y0:Z

    if-eqz v0, :cond_12

    .line 39
    :try_start_1
    iget-object v5, v15, Le4/o;->Q:Le4/l;

    iget-object v6, v15, Le4/o;->n0:Ljava/nio/ByteBuffer;

    iget v7, v15, Le4/o;->m0:I

    iget-object v0, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Le4/o;->o0:Z

    iget-boolean v3, v15, Le4/o;->p0:Z

    iget-object v4, v15, Le4/o;->I:Ln3/s0;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v16, v3

    move-object/from16 v17, v4

    move-wide/from16 v3, p3

    move/from16 v18, v13

    move/from16 v13, v16

    move/from16 v16, v14

    move-object/from16 v14, v17

    .line 40
    :try_start_2
    invoke-virtual/range {v0 .. v14}, Le4/o;->m0(JJLe4/l;Ljava/nio/ByteBuffer;IIIJZZLn3/s0;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_1
    move/from16 v18, v13

    .line 41
    :catch_2
    invoke-virtual/range {p0 .. p0}, Le4/o;->l0()V

    .line 42
    iget-boolean v0, v15, Le4/o;->D0:Z

    if-eqz v0, :cond_11

    .line 43
    invoke-virtual/range {p0 .. p0}, Le4/o;->o0()V

    :cond_11
    return v18

    :cond_12
    move/from16 v18, v13

    move/from16 v16, v14

    .line 44
    iget-object v5, v15, Le4/o;->Q:Le4/l;

    iget-object v6, v15, Le4/o;->n0:Ljava/nio/ByteBuffer;

    iget v7, v15, Le4/o;->m0:I

    iget-object v0, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v9, 0x1

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v12, v15, Le4/o;->o0:Z

    iget-boolean v13, v15, Le4/o;->p0:Z

    iget-object v14, v15, Le4/o;->I:Ln3/s0;

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 45
    invoke-virtual/range {v0 .. v14}, Le4/o;->m0(JJLe4/l;Ljava/nio/ByteBuffer;IIIJZZLn3/s0;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_15

    .line 46
    iget-object v0, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v15, v0, v1}, Le4/o;->i0(J)V

    .line 47
    iget-object v0, v15, Le4/o;->D:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    move/from16 v14, v16

    goto :goto_7

    :cond_13
    move/from16 v14, v18

    :goto_7
    const/4 v0, -0x1

    .line 48
    iput v0, v15, Le4/o;->m0:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, v15, Le4/o;->n0:Ljava/nio/ByteBuffer;

    if-nez v14, :cond_14

    return v16

    .line 50
    :cond_14
    invoke-virtual/range {p0 .. p0}, Le4/o;->l0()V

    :cond_15
    return v18
.end method

.method public final Q()Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le4/o;->Q:Le4/l;

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    iget v3, v1, Le4/o;->v0:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_24

    iget-boolean v3, v1, Le4/o;->C0:Z

    if-eqz v3, :cond_0

    goto/16 :goto_a

    .line 2
    :cond_0
    iget v3, v1, Le4/o;->l0:I

    if-gez v3, :cond_2

    .line 3
    invoke-interface {v0}, Le4/l;->l()I

    move-result v0

    iput v0, v1, Le4/o;->l0:I

    if-gez v0, :cond_1

    return v2

    .line 4
    :cond_1
    iget-object v3, v1, Le4/o;->y:Lq3/g;

    iget-object v5, v1, Le4/o;->Q:Le4/l;

    invoke-interface {v5, v0}, Le4/l;->g(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v3, Lq3/g;->j:Ljava/nio/ByteBuffer;

    .line 5
    iget-object v0, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v0}, Lq3/g;->o()V

    .line 6
    :cond_2
    iget v0, v1, Le4/o;->v0:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 7
    iget-boolean v0, v1, Le4/o;->i0:Z

    if-eqz v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iput-boolean v3, v1, Le4/o;->y0:Z

    .line 9
    iget-object v5, v1, Le4/o;->Q:Le4/l;

    iget v6, v1, Le4/o;->l0:I

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-interface/range {v5 .. v10}, Le4/l;->o(IIJI)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Le4/o;->s0()V

    .line 11
    :goto_0
    iput v4, v1, Le4/o;->v0:I

    return v2

    .line 12
    :cond_4
    iget-boolean v0, v1, Le4/o;->g0:Z

    if-eqz v0, :cond_5

    .line 13
    iput-boolean v2, v1, Le4/o;->g0:Z

    .line 14
    iget-object v0, v1, Le4/o;->y:Lq3/g;

    iget-object v0, v0, Lq3/g;->j:Ljava/nio/ByteBuffer;

    sget-object v2, Le4/o;->L0:[B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 15
    iget-object v4, v1, Le4/o;->Q:Le4/l;

    iget v5, v1, Le4/o;->l0:I

    const/16 v6, 0x26

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Le4/l;->o(IIJI)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Le4/o;->s0()V

    .line 17
    iput-boolean v3, v1, Le4/o;->x0:Z

    return v3

    .line 18
    :cond_5
    iget v0, v1, Le4/o;->u0:I

    if-ne v0, v3, :cond_7

    move v0, v2

    .line 19
    :goto_1
    iget-object v5, v1, Le4/o;->R:Ln3/s0;

    iget-object v5, v5, Ln3/s0;->u:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 20
    iget-object v5, v1, Le4/o;->R:Ln3/s0;

    iget-object v5, v5, Ln3/s0;->u:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 21
    iget-object v6, v1, Le4/o;->y:Lq3/g;

    iget-object v6, v6, Lq3/g;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_6
    iput v4, v1, Le4/o;->u0:I

    .line 23
    :cond_7
    iget-object v0, v1, Le4/o;->y:Lq3/g;

    iget-object v0, v0, Lq3/g;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 24
    invoke-virtual/range {p0 .. p0}, Ln3/f;->A()Ly0/r;

    move-result-object v5

    .line 25
    :try_start_0
    iget-object v6, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v1, v5, v6, v2}, Ln3/f;->I(Ly0/r;Lq3/g;I)I

    move-result v6
    :try_end_0
    .catch Lq3/g$a; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    invoke-virtual/range {p0 .. p0}, Ln3/f;->h()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 27
    iget-wide v7, v1, Le4/o;->A0:J

    iput-wide v7, v1, Le4/o;->B0:J

    :cond_8
    const/4 v7, -0x3

    if-ne v6, v7, :cond_9

    return v2

    :cond_9
    const/4 v7, -0x5

    if-ne v6, v7, :cond_b

    .line 28
    iget v0, v1, Le4/o;->u0:I

    if-ne v0, v4, :cond_a

    .line 29
    iget-object v0, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v0}, Lq3/g;->o()V

    .line 30
    iput v3, v1, Le4/o;->u0:I

    .line 31
    :cond_a
    invoke-virtual {v1, v5}, Le4/o;->g0(Ly0/r;)Lq3/i;

    return v3

    .line 32
    :cond_b
    iget-object v5, v1, Le4/o;->y:Lq3/g;

    const/4 v6, 0x4

    .line 33
    invoke-virtual {v5, v6}, Lq3/a;->l(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 34
    iget v0, v1, Le4/o;->u0:I

    if-ne v0, v4, :cond_c

    .line 35
    iget-object v0, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v0}, Lq3/g;->o()V

    .line 36
    iput v3, v1, Le4/o;->u0:I

    .line 37
    :cond_c
    iput-boolean v3, v1, Le4/o;->C0:Z

    .line 38
    iget-boolean v0, v1, Le4/o;->x0:Z

    if-nez v0, :cond_d

    .line 39
    invoke-virtual/range {p0 .. p0}, Le4/o;->l0()V

    return v2

    .line 40
    :cond_d
    :try_start_1
    iget-boolean v0, v1, Le4/o;->i0:Z

    if-eqz v0, :cond_e

    goto :goto_2

    .line 41
    :cond_e
    iput-boolean v3, v1, Le4/o;->y0:Z

    .line 42
    iget-object v4, v1, Le4/o;->Q:Le4/l;

    iget v5, v1, Le4/o;->l0:I

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-interface/range {v4 .. v9}, Le4/l;->o(IIJI)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Le4/o;->s0()V
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    return v2

    :catch_0
    move-exception v0

    .line 44
    iget-object v3, v1, Le4/o;->H:Ln3/s0;

    .line 45
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v4

    invoke-static {v4}, Lm5/g0;->u(I)I

    move-result v4

    .line 46
    invoke-virtual {v1, v0, v3, v2, v4}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object v0

    .line 47
    throw v0

    .line 48
    :cond_f
    iget-boolean v5, v1, Le4/o;->x0:Z

    if-nez v5, :cond_11

    iget-object v5, v1, Le4/o;->y:Lq3/g;

    .line 49
    invoke-virtual {v5, v3}, Lq3/a;->l(I)Z

    move-result v5

    if-nez v5, :cond_11

    .line 50
    iget-object v0, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v0}, Lq3/g;->o()V

    .line 51
    iget v0, v1, Le4/o;->u0:I

    if-ne v0, v4, :cond_10

    .line 52
    iput v3, v1, Le4/o;->u0:I

    :cond_10
    return v3

    .line 53
    :cond_11
    iget-object v4, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v4}, Lq3/g;->t()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 54
    iget-object v5, v1, Le4/o;->y:Lq3/g;

    iget-object v5, v5, Lq3/g;->i:Lq3/c;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_12

    goto :goto_3

    .line 55
    :cond_12
    iget-object v7, v5, Lq3/c;->d:[I

    if-nez v7, :cond_13

    new-array v7, v3, [I

    .line 56
    iput-object v7, v5, Lq3/c;->d:[I

    .line 57
    iget-object v8, v5, Lq3/c;->i:Landroid/media/MediaCodec$CryptoInfo;

    iput-object v7, v8, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 58
    :cond_13
    iget-object v5, v5, Lq3/c;->d:[I

    aget v7, v5, v2

    add-int/2addr v7, v0

    aput v7, v5, v2

    .line 59
    :cond_14
    :goto_3
    iget-boolean v0, v1, Le4/o;->Z:Z

    if-eqz v0, :cond_1a

    if-nez v4, :cond_1a

    .line 60
    iget-object v0, v1, Le4/o;->y:Lq3/g;

    iget-object v0, v0, Lq3/g;->j:Ljava/nio/ByteBuffer;

    sget-object v5, Lm5/t;->a:[B

    .line 61
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v5

    move v7, v2

    move v8, v7

    :goto_4
    add-int/lit8 v9, v7, 0x1

    if-ge v9, v5, :cond_18

    .line 62
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    and-int/lit16 v10, v10, 0xff

    const/4 v11, 0x3

    if-ne v8, v11, :cond_15

    if-ne v10, v3, :cond_16

    .line 63
    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    and-int/lit8 v12, v12, 0x1f

    const/4 v13, 0x7

    if-ne v12, v13, :cond_16

    .line 64
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v8

    sub-int/2addr v7, v11

    .line 65
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 67
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 68
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_15
    if-nez v10, :cond_16

    add-int/lit8 v8, v8, 0x1

    :cond_16
    if-eqz v10, :cond_17

    move v8, v2

    :cond_17
    move v7, v9

    goto :goto_4

    .line 69
    :cond_18
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 70
    :goto_5
    iget-object v0, v1, Le4/o;->y:Lq3/g;

    iget-object v0, v0, Lq3/g;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_19

    return v3

    .line 71
    :cond_19
    iput-boolean v2, v1, Le4/o;->Z:Z

    .line 72
    :cond_1a
    iget-object v0, v1, Le4/o;->y:Lq3/g;

    iget-wide v7, v0, Lq3/g;->l:J

    .line 73
    iget-object v5, v1, Le4/o;->j0:Le4/i;

    if-eqz v5, :cond_1f

    .line 74
    iget-object v9, v1, Le4/o;->H:Ln3/s0;

    .line 75
    iget-wide v10, v5, Le4/i;->b:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1b

    .line 76
    iput-wide v7, v5, Le4/i;->a:J

    .line 77
    :cond_1b
    iget-boolean v10, v5, Le4/i;->c:Z

    const-wide/32 v14, 0xf4240

    const-wide/16 v16, 0x211

    if-eqz v10, :cond_1c

    move v0, v4

    goto :goto_7

    .line 78
    :cond_1c
    iget-object v7, v0, Lq3/g;->j:Ljava/nio/ByteBuffer;

    .line 79
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v2

    move v10, v8

    :goto_6
    if-ge v8, v6, :cond_1d

    shl-int/lit8 v10, v10, 0x8

    .line 80
    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 81
    :cond_1d
    invoke-static {v10}, Lp3/b0;->d(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1e

    .line 82
    iput-boolean v3, v5, Le4/i;->c:Z

    .line 83
    iput-wide v12, v5, Le4/i;->b:J

    .line 84
    iget-wide v6, v0, Lq3/g;->l:J

    iput-wide v6, v5, Le4/i;->a:J

    const-string v5, "C2Mp3TimestampTracker"

    const-string v6, "MPEG audio header is invalid."

    .line 85
    invoke-static {v5, v6}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-wide v5, v0, Lq3/g;->l:J

    move v0, v4

    move-wide v7, v5

    goto :goto_7

    .line 87
    :cond_1e
    iget v0, v9, Ln3/s0;->G:I

    int-to-long v7, v0

    .line 88
    iget-wide v9, v5, Le4/i;->a:J

    move v0, v4

    iget-wide v3, v5, Le4/i;->b:J

    sub-long v3, v3, v16

    mul-long/2addr v3, v14

    div-long/2addr v3, v7

    .line 89
    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-long/2addr v3, v9

    .line 90
    iget-wide v7, v5, Le4/i;->b:J

    int-to-long v9, v6

    add-long/2addr v7, v9

    iput-wide v7, v5, Le4/i;->b:J

    move-wide v7, v3

    .line 91
    :goto_7
    iget-wide v3, v1, Le4/o;->A0:J

    iget-object v5, v1, Le4/o;->j0:Le4/i;

    iget-object v6, v1, Le4/o;->H:Ln3/s0;

    .line 92
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget v6, v6, Ln3/s0;->G:I

    int-to-long v9, v6

    move-wide/from16 v18, v3

    .line 94
    iget-wide v2, v5, Le4/i;->a:J

    iget-wide v4, v5, Le4/i;->b:J

    sub-long v4, v4, v16

    mul-long/2addr v4, v14

    div-long/2addr v4, v9

    .line 95
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    move-wide/from16 v2, v18

    .line 96
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Le4/o;->A0:J

    goto :goto_8

    :cond_1f
    move v0, v4

    .line 97
    :goto_8
    iget-object v2, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v2}, Lq3/a;->n()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 98
    iget-object v2, v1, Le4/o;->C:Ljava/util/ArrayList;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_20
    iget-boolean v2, v1, Le4/o;->E0:Z

    if-eqz v2, :cond_21

    .line 100
    iget-object v2, v1, Le4/o;->B:Lm5/c0;

    iget-object v3, v1, Le4/o;->H:Ln3/s0;

    invoke-virtual {v2, v7, v8, v3}, Lm5/c0;->a(JLjava/lang/Object;)V

    const/4 v2, 0x0

    .line 101
    iput-boolean v2, v1, Le4/o;->E0:Z

    .line 102
    :cond_21
    iget-wide v2, v1, Le4/o;->A0:J

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Le4/o;->A0:J

    .line 103
    iget-object v2, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v2}, Lq3/g;->s()V

    .line 104
    iget-object v2, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v2}, Lq3/a;->m()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 105
    iget-object v2, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v1, v2}, Le4/o;->Z(Lq3/g;)V

    .line 106
    :cond_22
    iget-object v2, v1, Le4/o;->y:Lq3/g;

    invoke-virtual {v1, v2}, Le4/o;->k0(Lq3/g;)V

    if-eqz v0, :cond_23

    .line 107
    :try_start_2
    iget-object v0, v1, Le4/o;->Q:Le4/l;

    iget v2, v1, Le4/o;->l0:I

    iget-object v3, v1, Le4/o;->y:Lq3/g;

    iget-object v3, v3, Lq3/g;->i:Lq3/c;

    invoke-interface {v0, v2, v3, v7, v8}, Le4/l;->n(ILq3/c;J)V

    goto :goto_9

    .line 108
    :cond_23
    iget-object v12, v1, Le4/o;->Q:Le4/l;

    iget v13, v1, Le4/o;->l0:I

    iget-object v0, v1, Le4/o;->y:Lq3/g;

    iget-object v0, v0, Lq3/g;->j:Ljava/nio/ByteBuffer;

    .line 109
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v14

    const/16 v17, 0x0

    move-wide v15, v7

    .line 110
    invoke-interface/range {v12 .. v17}, Le4/l;->o(IIJI)V
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1

    .line 111
    :goto_9
    invoke-virtual/range {p0 .. p0}, Le4/o;->s0()V

    const/4 v2, 0x1

    .line 112
    iput-boolean v2, v1, Le4/o;->x0:Z

    const/4 v3, 0x0

    .line 113
    iput v3, v1, Le4/o;->u0:I

    .line 114
    iget-object v0, v1, Le4/o;->H0:Lq3/e;

    iget v3, v0, Lq3/e;->c:I

    add-int/2addr v3, v2

    iput v3, v0, Lq3/e;->c:I

    return v2

    :catch_1
    move-exception v0

    .line 115
    iget-object v2, v1, Le4/o;->H:Ln3/s0;

    .line 116
    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lm5/g0;->u(I)I

    move-result v3

    const/4 v4, 0x0

    .line 117
    invoke-virtual {v1, v0, v2, v4, v3}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object v0

    .line 118
    throw v0

    :catch_2
    move-exception v0

    move v4, v2

    .line 119
    invoke-virtual {v1, v0}, Le4/o;->d0(Ljava/lang/Exception;)V

    .line 120
    invoke-virtual {v1, v4}, Le4/o;->n0(I)Z

    .line 121
    invoke-virtual/range {p0 .. p0}, Le4/o;->R()V

    const/4 v2, 0x1

    return v2

    :cond_24
    :goto_a
    move v4, v2

    return v4
.end method

.method public final R()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Le4/o;->Q:Le4/l;

    invoke-interface {v0}, Le4/l;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-virtual {p0}, Le4/o;->q0()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Le4/o;->q0()V

    .line 3
    throw v0
.end method

.method public final S()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le4/o;->Q:Le4/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Le4/o;->w0:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Le4/o;->a0:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Le4/o;->b0:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Le4/o;->z0:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Le4/o;->c0:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Le4/o;->y0:Z

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 3
    sget v0, Lm5/g0;->a:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    invoke-static {v4}, Lm5/a;->e(Z)V

    if-lt v0, v2, :cond_4

    .line 4
    :try_start_0
    invoke-virtual {p0}, Le4/o;->A0()V
    :try_end_0
    .catch Ln3/q; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    .line 5
    invoke-static {v1, v2, v0}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Le4/o;->o0()V

    return v3

    .line 7
    :cond_4
    :goto_1
    invoke-virtual {p0}, Le4/o;->R()V

    return v1

    .line 8
    :cond_5
    :goto_2
    invoke-virtual {p0}, Le4/o;->o0()V

    return v3
.end method

.method public final T(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Le4/n;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le4/r$b;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le4/o;->u:Le4/p;

    iget-object v1, p0, Le4/o;->H:Ln3/s0;

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Le4/o;->W(Le4/p;Ln3/s0;Z)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le4/o;->u:Le4/p;

    iget-object v0, p0, Le4/o;->H:Ln3/s0;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Le4/o;->W(Le4/p;Ln3/s0;Z)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Drm session requires secure decoder for "

    .line 7
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    iget-object v1, p0, Le4/o;->H:Ln3/s0;

    iget-object v1, v1, Ln3/s0;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but no secure decoder available. Trying to proceed with "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediaCodecRenderer"

    invoke-static {v1, p1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public U()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract V(F[Ln3/s0;)F
.end method

.method public abstract W(Le4/p;Ln3/s0;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le4/p;",
            "Ln3/s0;",
            "Z)",
            "Ljava/util/List<",
            "Le4/n;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le4/r$b;
        }
    .end annotation
.end method

.method public final X(Lr3/e;)Lr3/t;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lr3/e;->g()Lq3/b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    instance-of v0, p1, Lr3/t;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting FrameworkCryptoConfig but found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Le4/o;->H:Ln3/s0;

    const/16 v1, 0x1771

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v2, v1}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object p1

    .line 5
    throw p1

    .line 6
    :cond_1
    :goto_0
    check-cast p1, Lr3/t;

    return-object p1
.end method

.method public abstract Y(Le4/n;Ln3/s0;Landroid/media/MediaCrypto;F)Le4/l$a;
.end method

.method public Z(Lq3/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    return-void
.end method

.method public final a(Ln3/s0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le4/o;->u:Le4/p;

    invoke-virtual {p0, v0, p1}, Le4/o;->y0(Le4/p;Ln3/s0;)I

    move-result p1
    :try_end_0
    .catch Le4/r$b; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0, v0, p1}, Ln3/f;->y(Ljava/lang/Throwable;Ln3/s0;)Ln3/q;

    move-result-object p1

    throw p1
.end method

.method public final a0(Le4/n;Landroid/media/MediaCrypto;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v2, v0, Le4/n;->a:Ljava/lang/String;

    .line 2
    sget v1, Lm5/g0;->a:I

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x17

    if-ge v1, v4, :cond_0

    move v5, v3

    goto :goto_0

    .line 3
    :cond_0
    iget v5, v7, Le4/o;->P:F

    .line 4
    iget-object v6, v7, Ln3/f;->o:[Ln3/s0;

    .line 5
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v7, v5, v6}, Le4/o;->V(F[Ln3/s0;)F

    move-result v5

    .line 7
    :goto_0
    iget v6, v7, Le4/o;->w:F

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    .line 8
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 9
    iget-object v8, v7, Le4/o;->H:Ln3/s0;

    move-object/from16 v9, p2

    .line 10
    invoke-virtual {v7, v0, v8, v9, v3}, Le4/o;->Y(Le4/n;Ln3/s0;Landroid/media/MediaCrypto;F)Le4/l$a;

    move-result-object v8

    const/16 v9, 0x1f

    if-lt v1, v9, :cond_2

    .line 11
    iget-object v9, v7, Ln3/f;->l:Lo3/v0;

    .line 12
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v8, v9}, Le4/o$a;->a(Le4/l$a;Lo3/v0;)V

    .line 14
    :cond_2
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createCodec:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Li0/b;->d(Ljava/lang/String;)V

    .line 15
    iget-object v9, v7, Le4/o;->t:Le4/l$b;

    invoke-interface {v9, v8}, Le4/l$b;->a(Le4/l$a;)Le4/l;

    move-result-object v8

    iput-object v8, v7, Le4/o;->Q:Le4/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {}, Li0/b;->g()V

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 18
    iput-object v0, v7, Le4/o;->X:Le4/n;

    .line 19
    iput v3, v7, Le4/o;->U:F

    .line 20
    iget-object v3, v7, Le4/o;->H:Ln3/s0;

    iput-object v3, v7, Le4/o;->R:Ln3/s0;

    const-string v3, "OMX.Exynos.avc.dec.secure"

    const/16 v11, 0x19

    const/4 v13, 0x1

    if-gt v1, v11, :cond_4

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    sget-object v14, Lm5/g0;->d:Ljava/lang/String;

    const-string v15, "SM-T585"

    .line 22
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "SM-A510"

    .line 23
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "SM-A520"

    .line 24
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "SM-J700"

    .line 25
    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    const/4 v14, 0x2

    goto :goto_2

    :cond_4
    const/16 v14, 0x18

    if-ge v1, v14, :cond_7

    const-string v14, "OMX.Nvidia.h264.decode"

    .line 26
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_5
    sget-object v14, Lm5/g0;->b:Ljava/lang/String;

    const-string v15, "flounder"

    .line 27
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "flounder_lte"

    .line 28
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "grouper"

    .line 29
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string v15, "tilapia"

    .line 30
    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    move v14, v13

    goto :goto_2

    :cond_7
    const/4 v14, 0x0

    .line 31
    :goto_2
    iput v14, v7, Le4/o;->Y:I

    .line 32
    iget-object v14, v7, Le4/o;->R:Ln3/s0;

    const/16 v15, 0x15

    if-ge v1, v15, :cond_8

    .line 33
    iget-object v14, v14, Ln3/s0;->u:Ljava/util/List;

    .line 34
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "OMX.MTK.VIDEO.DECODER.AVC"

    .line 35
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    move v14, v13

    goto :goto_3

    :cond_8
    const/4 v14, 0x0

    .line 36
    :goto_3
    iput-boolean v14, v7, Le4/o;->Z:Z

    const/16 v14, 0x13

    const/16 v12, 0x12

    if-lt v1, v12, :cond_b

    if-ne v1, v12, :cond_9

    const-string v10, "OMX.SEC.avc.dec"

    .line 37
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    :cond_9
    if-ne v1, v14, :cond_a

    sget-object v10, Lm5/g0;->d:Ljava/lang/String;

    const-string v11, "SM-G800"

    .line 38
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "OMX.Exynos.avc.dec"

    .line 39
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    :cond_b
    :goto_4
    move v3, v13

    .line 40
    :goto_5
    iput-boolean v3, v7, Le4/o;->a0:Z

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_c

    const-string v10, "c2.android.aac.decoder"

    .line 41
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    move v10, v13

    goto :goto_6

    :cond_c
    const/4 v10, 0x0

    .line 42
    :goto_6
    iput-boolean v10, v7, Le4/o;->b0:Z

    if-gt v1, v4, :cond_d

    const-string v4, "OMX.google.vorbis.decoder"

    .line 43
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_d
    if-gt v1, v14, :cond_10

    sget-object v4, Lm5/g0;->b:Ljava/lang/String;

    const-string v10, "hb2000"

    .line 44
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "stvm8"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_e
    const-string v4, "OMX.amlogic.avc.decoder.awesome"

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "OMX.amlogic.avc.decoder.awesome.secure"

    .line 46
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    move v4, v13

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    .line 47
    :goto_7
    iput-boolean v4, v7, Le4/o;->c0:Z

    if-ne v1, v15, :cond_11

    const-string v4, "OMX.google.aac.decoder"

    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v13

    goto :goto_8

    :cond_11
    const/4 v4, 0x0

    .line 49
    :goto_8
    iput-boolean v4, v7, Le4/o;->d0:Z

    if-ge v1, v15, :cond_13

    const-string v4, "OMX.SEC.mp3.dec"

    .line 50
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lm5/g0;->c:Ljava/lang/String;

    const-string v10, "samsung"

    .line 51
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    sget-object v4, Lm5/g0;->b:Ljava/lang/String;

    const-string v10, "baffin"

    .line 52
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "grand"

    .line 53
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "fortuna"

    .line 54
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "gprimelte"

    .line 55
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "j2y18lte"

    .line 56
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "ms01"

    .line 57
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    move v4, v13

    goto :goto_9

    :cond_13
    const/4 v4, 0x0

    .line 58
    :goto_9
    iput-boolean v4, v7, Le4/o;->e0:Z

    .line 59
    iget-object v4, v7, Le4/o;->R:Ln3/s0;

    if-gt v1, v12, :cond_14

    .line 60
    iget v4, v4, Ln3/s0;->F:I

    if-ne v4, v13, :cond_14

    const-string v4, "OMX.MTK.AUDIO.DECODER.MP3"

    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v4, v13

    goto :goto_a

    :cond_14
    const/4 v4, 0x0

    .line 62
    :goto_a
    iput-boolean v4, v7, Le4/o;->f0:Z

    .line 63
    iget-object v4, v0, Le4/n;->a:Ljava/lang/String;

    const/16 v10, 0x19

    if-gt v1, v10, :cond_15

    const-string v10, "OMX.rk.video_decoder.avc"

    .line 64
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    :cond_15
    const/16 v10, 0x11

    if-gt v1, v10, :cond_16

    const-string v10, "OMX.allwinner.video.decoder.avc"

    .line 65
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    :cond_16
    if-gt v1, v3, :cond_17

    const-string v1, "OMX.broadcom.video_decoder.tunnel"

    .line 66
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "OMX.broadcom.video_decoder.tunnel.secure"

    .line 67
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_17
    sget-object v1, Lm5/g0;->c:Ljava/lang/String;

    const-string v3, "Amazon"

    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lm5/g0;->d:Ljava/lang/String;

    const-string v3, "AFTS"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-boolean v1, v0, Le4/n;->f:Z

    if-eqz v1, :cond_19

    :cond_18
    move v1, v13

    goto :goto_b

    :cond_19
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_1b

    .line 69
    invoke-virtual/range {p0 .. p0}, Le4/o;->U()Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_c

    :cond_1a
    const/4 v12, 0x0

    goto :goto_d

    :cond_1b
    :goto_c
    move v12, v13

    :goto_d
    iput-boolean v12, v7, Le4/o;->i0:Z

    .line 70
    iget-object v1, v7, Le4/o;->Q:Le4/l;

    invoke-interface {v1}, Le4/l;->c()V

    .line 71
    iget-object v0, v0, Le4/n;->a:Ljava/lang/String;

    const-string v1, "c2.android.mp3.decoder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 72
    new-instance v0, Le4/i;

    invoke-direct {v0}, Le4/i;-><init>()V

    iput-object v0, v7, Le4/o;->j0:Le4/i;

    .line 73
    :cond_1c
    iget v0, v7, Ln3/f;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    add-long/2addr v0, v3

    iput-wide v0, v7, Le4/o;->k0:J

    .line 75
    :cond_1d
    iget-object v0, v7, Le4/o;->H0:Lq3/e;

    iget v1, v0, Lq3/e;->a:I

    add-int/2addr v1, v13

    iput v1, v0, Lq3/e;->a:I

    sub-long v5, v8, v5

    move-object/from16 v1, p0

    move-wide v3, v8

    .line 76
    invoke-virtual/range {v1 .. v6}, Le4/o;->e0(Ljava/lang/String;JJ)V

    return-void

    :catchall_0
    move-exception v0

    .line 77
    invoke-static {}, Li0/b;->g()V

    .line 78
    throw v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Le4/o;->D0:Z

    return v0
.end method

.method public final b0()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le4/o;->Q:Le4/l;

    if-nez v0, :cond_9

    iget-boolean v0, p0, Le4/o;->q0:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Le4/o;->H:Ln3/s0;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v1, p0, Le4/o;->K:Lr3/e;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Le4/o;->x0(Ln3/s0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Le4/o;->H:Ln3/s0;

    .line 4
    invoke-virtual {p0}, Le4/o;->M()V

    .line 5
    iget-object v0, v0, Ln3/s0;->s:Ljava/lang/String;

    const-string v1, "audio/mp4a-latm"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/mpeg"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "audio/opus"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Le4/o;->A:Le4/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput v2, v0, Le4/h;->r:I

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Le4/o;->A:Le4/h;

    const/16 v1, 0x20

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iput v1, v0, Le4/h;->r:I

    .line 13
    :goto_0
    iput-boolean v2, p0, Le4/o;->q0:Z

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Le4/o;->K:Lr3/e;

    invoke-virtual {p0, v0}, Le4/o;->t0(Lr3/e;)V

    .line 15
    iget-object v0, p0, Le4/o;->H:Ln3/s0;

    iget-object v0, v0, Ln3/s0;->s:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Le4/o;->J:Lr3/e;

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    .line 17
    iget-object v4, p0, Le4/o;->L:Landroid/media/MediaCrypto;

    if-nez v4, :cond_6

    .line 18
    invoke-virtual {p0, v1}, Le4/o;->X(Lr3/e;)Lr3/t;

    move-result-object v1

    if-nez v1, :cond_4

    .line 19
    iget-object v0, p0, Le4/o;->J:Lr3/e;

    invoke-interface {v0}, Lr3/e;->f()Lr3/e$a;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    return-void

    .line 20
    :cond_4
    :try_start_0
    new-instance v4, Landroid/media/MediaCrypto;

    iget-object v5, v1, Lr3/t;->a:Ljava/util/UUID;

    iget-object v6, v1, Lr3/t;->b:[B

    invoke-direct {v4, v5, v6}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V

    iput-object v4, p0, Le4/o;->L:Landroid/media/MediaCrypto;
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-boolean v1, v1, Lr3/t;->c:Z

    if-nez v1, :cond_5

    .line 22
    invoke-virtual {v4, v0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Le4/o;->M:Z

    goto :goto_2

    :catch_0
    move-exception v0

    .line 23
    iget-object v1, p0, Le4/o;->H:Ln3/s0;

    const/16 v2, 0x1776

    .line 24
    invoke-virtual {p0, v0, v1, v3, v2}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object v0

    .line 25
    throw v0

    .line 26
    :cond_6
    :goto_2
    sget-boolean v0, Lr3/t;->d:Z

    if-eqz v0, :cond_8

    .line 27
    iget-object v0, p0, Le4/o;->J:Lr3/e;

    invoke-interface {v0}, Lr3/e;->getState()I

    move-result v0

    if-eq v0, v2, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    return-void

    .line 28
    :cond_7
    iget-object v0, p0, Le4/o;->J:Lr3/e;

    .line 29
    invoke-interface {v0}, Lr3/e;->f()Lr3/e$a;

    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Le4/o;->H:Ln3/s0;

    iget v2, v0, Lr3/e$a;->h:I

    .line 32
    invoke-virtual {p0, v0, v1, v3, v2}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object v0

    .line 33
    throw v0

    .line 34
    :cond_8
    :try_start_1
    iget-object v0, p0, Le4/o;->L:Landroid/media/MediaCrypto;

    iget-boolean v1, p0, Le4/o;->M:Z

    invoke-virtual {p0, v0, v1}, Le4/o;->c0(Landroid/media/MediaCrypto;Z)V
    :try_end_1
    .catch Le4/o$b; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 35
    iget-object v1, p0, Le4/o;->H:Ln3/s0;

    const/16 v2, 0xfa1

    .line 36
    invoke-virtual {p0, v0, v1, v3, v2}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object v0

    .line 37
    throw v0

    :cond_9
    :goto_3
    return-void
.end method

.method public final c0(Landroid/media/MediaCrypto;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le4/o$b;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0, p2}, Le4/o;->T(Z)Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    .line 4
    iget-boolean v3, p0, Le4/o;->v:Z

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    iget-object v2, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le4/n;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    :goto_0
    iput-object v1, p0, Le4/o;->W:Le4/o$b;
    :try_end_0
    .catch Le4/r$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Le4/o$b;

    iget-object v1, p0, Le4/o;->H:Ln3/s0;

    const v2, -0xc34e

    invoke-direct {v0, v1, p1, p2, v2}, Le4/o$b;-><init>(Ln3/s0;Ljava/lang/Throwable;ZI)V

    throw v0

    .line 10
    :cond_2
    :goto_1
    iget-object v0, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 11
    iget-object v0, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le4/n;

    .line 12
    :goto_2
    iget-object v2, p0, Le4/o;->Q:Le4/l;

    if-nez v2, :cond_8

    .line 13
    iget-object v2, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Le4/n;

    .line 14
    invoke-virtual {p0, v8}, Le4/o;->w0(Le4/n;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 15
    :cond_3
    :try_start_1
    invoke-virtual {p0, v8, p1}, Le4/o;->a0(Le4/n;Landroid/media/MediaCrypto;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "MediaCodecRenderer"

    if-ne v8, v0, :cond_4

    :try_start_2
    const-string v2, "Preferred decoder instantiation failed. Sleeping for 50ms then retrying."

    .line 16
    invoke-static {v3, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x32

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 18
    invoke-virtual {p0, v8, p1}, Le4/o;->a0(Le4/n;Landroid/media/MediaCrypto;)V

    goto :goto_2

    .line 19
    :cond_4
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v2

    move-object v5, v2

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to initialize decoder: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v5}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    iget-object v2, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 22
    new-instance v2, Le4/o$b;

    iget-object v3, p0, Le4/o;->H:Ln3/s0;

    const-string v4, "Decoder init failed: "

    .line 23
    invoke-static {v4}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 24
    iget-object v6, v8, Le4/n;->a:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v3, Ln3/s0;->s:Ljava/lang/String;

    .line 25
    sget v3, Lm5/g0;->a:I

    const/16 v7, 0x15

    if-lt v3, v7, :cond_5

    .line 26
    instance-of v3, v5, Landroid/media/MediaCodec$CodecException;

    if-eqz v3, :cond_5

    .line 27
    move-object v3, v5

    check-cast v3, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v3}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_3

    :cond_5
    move-object v9, v1

    :goto_3
    move-object v3, v2

    move v7, p2

    .line 28
    invoke-direct/range {v3 .. v9}, Le4/o$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLe4/n;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, v2}, Le4/o;->d0(Ljava/lang/Exception;)V

    .line 30
    iget-object v3, p0, Le4/o;->W:Le4/o$b;

    if-nez v3, :cond_6

    .line 31
    iput-object v2, p0, Le4/o;->W:Le4/o$b;

    goto :goto_4

    .line 32
    :cond_6
    new-instance v2, Le4/o$b;

    .line 33
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 34
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    iget-object v7, v3, Le4/o$b;->h:Ljava/lang/String;

    iget-boolean v8, v3, Le4/o$b;->i:Z

    iget-object v9, v3, Le4/o$b;->j:Le4/n;

    iget-object v10, v3, Le4/o$b;->k:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Le4/o$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ZLe4/n;Ljava/lang/String;)V

    .line 35
    iput-object v2, p0, Le4/o;->W:Le4/o$b;

    .line 36
    :goto_4
    iget-object v2, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_2

    .line 37
    :cond_7
    iget-object p1, p0, Le4/o;->W:Le4/o$b;

    throw p1

    .line 38
    :cond_8
    iput-object v1, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    return-void

    .line 39
    :cond_9
    new-instance p1, Le4/o$b;

    iget-object v0, p0, Le4/o;->H:Ln3/s0;

    const v2, -0xc34f

    invoke-direct {p1, v0, v1, p2, v2}, Le4/o$b;-><init>(Ln3/s0;Ljava/lang/Throwable;ZI)V

    throw p1
.end method

.method public abstract d0(Ljava/lang/Exception;)V
.end method

.method public abstract e0(Ljava/lang/String;JJ)V
.end method

.method public abstract f0(Ljava/lang/String;)V
.end method

.method public g0(Ly0/r;)Lq3/i;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le4/o;->E0:Z

    .line 2
    iget-object v1, p1, Ly0/r;->c:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Ln3/s0;

    .line 3
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v5, Ln3/s0;->s:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    .line 5
    iget-object p1, p1, Ly0/r;->b:Ljava/lang/Object;

    check-cast p1, Lr3/e;

    invoke-virtual {p0, p1}, Le4/o;->u0(Lr3/e;)V

    .line 6
    iput-object v5, p0, Le4/o;->H:Ln3/s0;

    .line 7
    iget-boolean p1, p0, Le4/o;->q0:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 8
    iput-boolean v0, p0, Le4/o;->s0:Z

    return-object v1

    .line 9
    :cond_0
    iget-object p1, p0, Le4/o;->Q:Le4/l;

    if-nez p1, :cond_1

    .line 10
    iput-object v1, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    .line 11
    invoke-virtual {p0}, Le4/o;->b0()V

    return-object v1

    .line 12
    :cond_1
    iget-object v1, p0, Le4/o;->X:Le4/n;

    .line 13
    iget-object v4, p0, Le4/o;->R:Ln3/s0;

    .line 14
    iget-object v3, p0, Le4/o;->J:Lr3/e;

    iget-object v6, p0, Le4/o;->K:Lr3/e;

    const/16 v7, 0x17

    if-ne v3, v6, :cond_3

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_9

    if-nez v3, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    sget v8, Lm5/g0;->a:I

    if-ge v8, v7, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    sget-object v8, Ln3/i;->e:Ljava/util/UUID;

    invoke-interface {v3}, Lr3/e;->b()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 17
    invoke-interface {v6}, Lr3/e;->b()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    invoke-virtual {p0, v6}, Le4/o;->X(Lr3/e;)Lr3/t;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 19
    :cond_7
    iget-boolean v3, v3, Lr3/t;->c:Z

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_0

    .line 20
    :cond_8
    iget-object v3, v5, Ln3/s0;->s:Ljava/lang/String;

    invoke-interface {v6, v3}, Lr3/e;->e(Ljava/lang/String;)Z

    move-result v3

    .line 21
    :goto_0
    iget-boolean v6, v1, Le4/n;->f:Z

    if-nez v6, :cond_2

    if-eqz v3, :cond_2

    :cond_9
    :goto_1
    move v3, v0

    :goto_2
    if-eqz v3, :cond_a

    .line 22
    invoke-virtual {p0}, Le4/o;->N()V

    .line 23
    new-instance p1, Lq3/i;

    iget-object v3, v1, Le4/n;->a:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lq3/i;-><init>(Ljava/lang/String;Ln3/s0;Ln3/s0;II)V

    return-object p1

    .line 24
    :cond_a
    iget-object v3, p0, Le4/o;->K:Lr3/e;

    iget-object v6, p0, Le4/o;->J:Lr3/e;

    if-eq v3, v6, :cond_b

    move v3, v0

    goto :goto_3

    :cond_b
    move v3, v2

    :goto_3
    if-eqz v3, :cond_d

    .line 25
    sget v6, Lm5/g0;->a:I

    if-lt v6, v7, :cond_c

    goto :goto_4

    :cond_c
    move v6, v2

    goto :goto_5

    :cond_d
    :goto_4
    move v6, v0

    :goto_5
    invoke-static {v6}, Lm5/a;->e(Z)V

    .line 26
    invoke-virtual {p0, v1, v4, v5}, Le4/o;->K(Le4/n;Ln3/s0;Ln3/s0;)Lq3/i;

    move-result-object v6

    .line 27
    iget v7, v6, Lq3/i;->d:I

    const/16 v8, 0x10

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v7, :cond_1a

    if-eq v7, v0, :cond_14

    if-eq v7, v10, :cond_10

    if-ne v7, v9, :cond_f

    .line 28
    invoke-virtual {p0, v5}, Le4/o;->z0(Ln3/s0;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    .line 29
    :cond_e
    iput-object v5, p0, Le4/o;->R:Ln3/s0;

    if-eqz v3, :cond_1b

    .line 30
    invoke-virtual {p0}, Le4/o;->O()Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_a

    .line 31
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 32
    :cond_10
    invoke-virtual {p0, v5}, Le4/o;->z0(Ln3/s0;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_7

    .line 33
    :cond_11
    iput-boolean v0, p0, Le4/o;->t0:Z

    .line 34
    iput v0, p0, Le4/o;->u0:I

    .line 35
    iget v7, p0, Le4/o;->Y:I

    if-eq v7, v10, :cond_13

    if-ne v7, v0, :cond_12

    iget v7, v5, Ln3/s0;->x:I

    iget v8, v4, Ln3/s0;->x:I

    if-ne v7, v8, :cond_12

    iget v7, v5, Ln3/s0;->y:I

    iget v8, v4, Ln3/s0;->y:I

    if-ne v7, v8, :cond_12

    goto :goto_6

    :cond_12
    move v0, v2

    :cond_13
    :goto_6
    iput-boolean v0, p0, Le4/o;->g0:Z

    .line 36
    iput-object v5, p0, Le4/o;->R:Ln3/s0;

    if-eqz v3, :cond_1b

    .line 37
    invoke-virtual {p0}, Le4/o;->O()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    .line 38
    :cond_14
    invoke-virtual {p0, v5}, Le4/o;->z0(Ln3/s0;)Z

    move-result v7

    if-nez v7, :cond_15

    :goto_7
    move v7, v8

    goto :goto_b

    .line 39
    :cond_15
    iput-object v5, p0, Le4/o;->R:Ln3/s0;

    if-eqz v3, :cond_16

    .line 40
    invoke-virtual {p0}, Le4/o;->O()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_a

    .line 41
    :cond_16
    iget-boolean v3, p0, Le4/o;->x0:Z

    if-eqz v3, :cond_19

    .line 42
    iput v0, p0, Le4/o;->v0:I

    .line 43
    iget-boolean v3, p0, Le4/o;->a0:Z

    if-nez v3, :cond_18

    iget-boolean v3, p0, Le4/o;->c0:Z

    if-eqz v3, :cond_17

    goto :goto_8

    .line 44
    :cond_17
    iput v0, p0, Le4/o;->w0:I

    goto :goto_9

    .line 45
    :cond_18
    :goto_8
    iput v9, p0, Le4/o;->w0:I

    move v0, v2

    :cond_19
    :goto_9
    if-nez v0, :cond_1b

    :goto_a
    move v7, v10

    goto :goto_b

    .line 46
    :cond_1a
    invoke-virtual {p0}, Le4/o;->N()V

    :cond_1b
    move v7, v2

    .line 47
    :goto_b
    iget v0, v6, Lq3/i;->d:I

    if-eqz v0, :cond_1d

    iget-object v0, p0, Le4/o;->Q:Le4/l;

    if-ne v0, p1, :cond_1c

    iget p1, p0, Le4/o;->w0:I

    if-ne p1, v9, :cond_1d

    .line 48
    :cond_1c
    new-instance p1, Lq3/i;

    iget-object v3, v1, Le4/n;->a:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lq3/i;-><init>(Ljava/lang/String;Ln3/s0;Ln3/s0;II)V

    return-object p1

    :cond_1d
    return-object v6

    .line 49
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    const/16 v0, 0xfa5

    .line 50
    invoke-virtual {p0, p1, v5, v2, v0}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object p1

    .line 51
    throw p1
.end method

.method public abstract h0(Ln3/s0;Landroid/media/MediaFormat;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation
.end method

.method public i0(J)V
    .locals 6

    .line 1
    :goto_0
    iget v0, p0, Le4/o;->K0:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Le4/o;->G:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    cmp-long v1, p1, v3

    if-ltz v1, :cond_0

    .line 2
    iget-object v1, p0, Le4/o;->E:[J

    aget-wide v3, v1, v2

    iput-wide v3, p0, Le4/o;->I0:J

    .line 3
    iget-object v3, p0, Le4/o;->F:[J

    aget-wide v4, v3, v2

    iput-wide v4, p0, Le4/o;->J0:J

    add-int/lit8 v0, v0, -0x1

    .line 4
    iput v0, p0, Le4/o;->K0:I

    const/4 v3, 0x1

    .line 5
    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object v0, p0, Le4/o;->F:[J

    iget v1, p0, Le4/o;->K0:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v0, p0, Le4/o;->G:[J

    iget v1, p0, Le4/o;->K0:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-virtual {p0}, Le4/o;->j0()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 7

    .line 1
    iget-object v0, p0, Le4/o;->H:Ln3/s0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Ln3/f;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ln3/f;->r:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ln3/f;->n:Lp4/m0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0}, Lp4/m0;->isReady()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    .line 5
    iget v0, p0, Le4/o;->m0:I

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 6
    iget-wide v3, p0, Le4/o;->k0:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Le4/o;->k0:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final j()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public abstract j0()V
.end method

.method public final k(JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le4/o;->F0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Le4/o;->F0:Z

    .line 3
    invoke-virtual {p0}, Le4/o;->l0()V

    .line 4
    :cond_0
    iget-object v0, p0, Le4/o;->G0:Ln3/q;

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 5
    :try_start_0
    iget-boolean v2, p0, Le4/o;->D0:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {p0}, Le4/o;->p0()V

    return-void

    .line 7
    :cond_1
    iget-object v2, p0, Le4/o;->H:Ln3/s0;

    if-nez v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Le4/o;->n0(I)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-virtual {p0}, Le4/o;->b0()V

    .line 9
    iget-boolean v2, p0, Le4/o;->q0:Z

    if-eqz v2, :cond_4

    const-string v2, "bypassRender"

    .line 10
    invoke-static {v2}, Li0/b;->d(Ljava/lang/String;)V

    .line 11
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Le4/o;->J(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Li0/b;->g()V

    goto :goto_3

    .line 13
    :cond_4
    iget-object v2, p0, Le4/o;->Q:Le4/l;

    if-eqz v2, :cond_7

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "drainAndFeed"

    .line 15
    invoke-static {v4}, Li0/b;->d(Ljava/lang/String;)V

    .line 16
    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Le4/o;->P(JJ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {p0, v2, v3}, Le4/o;->v0(J)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 18
    :cond_5
    :goto_2
    invoke-virtual {p0}, Le4/o;->Q()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v2, v3}, Le4/o;->v0(J)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 19
    :cond_6
    invoke-static {}, Li0/b;->g()V

    goto :goto_3

    .line 20
    :cond_7
    iget-object p3, p0, Le4/o;->H0:Lq3/e;

    iget p4, p3, Lq3/e;->d:I

    .line 21
    iget-object v2, p0, Ln3/f;->n:Lp4/m0;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-wide v3, p0, Ln3/f;->p:J

    sub-long/2addr p1, v3

    invoke-interface {v2, p1, p2}, Lp4/m0;->p(J)I

    move-result p1

    add-int/2addr p4, p1

    .line 24
    iput p4, p3, Lq3/e;->d:I

    .line 25
    invoke-virtual {p0, v0}, Le4/o;->n0(I)Z

    .line 26
    :goto_3
    iget-object p1, p0, Le4/o;->H0:Lq3/e;

    .line 27
    monitor-enter p1

    .line 28
    monitor-exit p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    sget p2, Lm5/g0;->a:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_8

    .line 30
    instance-of p4, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p4, :cond_8

    goto :goto_4

    .line 31
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p4

    .line 32
    array-length v2, p4

    if-lez v2, :cond_9

    aget-object p4, p4, v1

    invoke-virtual {p4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p4

    const-string v2, "android.media.MediaCodec"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    :goto_4
    move p4, v0

    goto :goto_5

    :cond_9
    move p4, v1

    :goto_5
    if-eqz p4, :cond_d

    .line 33
    invoke-virtual {p0, p1}, Le4/o;->d0(Ljava/lang/Exception;)V

    if-lt p2, p3, :cond_b

    .line 34
    instance-of p2, p1, Landroid/media/MediaCodec$CodecException;

    if-eqz p2, :cond_a

    .line 35
    move-object p2, p1

    check-cast p2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result p2

    goto :goto_6

    :cond_a
    move p2, v1

    :goto_6
    if-eqz p2, :cond_b

    move v1, v0

    :cond_b
    if-eqz v1, :cond_c

    .line 36
    invoke-virtual {p0}, Le4/o;->o0()V

    .line 37
    :cond_c
    iget-object p2, p0, Le4/o;->X:Le4/n;

    .line 38
    invoke-virtual {p0, p1, p2}, Le4/o;->L(Ljava/lang/Throwable;Le4/n;)Le4/m;

    move-result-object p1

    iget-object p2, p0, Le4/o;->H:Ln3/s0;

    const/16 p3, 0xfa3

    .line 39
    invoke-virtual {p0, p1, p2, v1, p3}, Ln3/f;->z(Ljava/lang/Throwable;Ln3/s0;ZI)Ln3/q;

    move-result-object p1

    throw p1

    .line 40
    :cond_d
    throw p1

    :cond_e
    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Le4/o;->G0:Ln3/q;

    .line 42
    throw v0
.end method

.method public abstract k0(Lq3/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation
.end method

.method public final l0()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iget v0, p0, Le4/o;->w0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 2
    iput-boolean v1, p0, Le4/o;->D0:Z

    .line 3
    invoke-virtual {p0}, Le4/o;->p0()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le4/o;->o0()V

    .line 5
    invoke-virtual {p0}, Le4/o;->b0()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Le4/o;->R()V

    .line 7
    invoke-virtual {p0}, Le4/o;->A0()V

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Le4/o;->R()V

    :goto_0
    return-void
.end method

.method public abstract m0(JJLe4/l;Ljava/nio/ByteBuffer;IIIJZZLn3/s0;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation
.end method

.method public final n0(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/f;->A()Ly0/r;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le4/o;->x:Lq3/g;

    invoke-virtual {v1}, Lq3/g;->o()V

    .line 3
    iget-object v1, p0, Le4/o;->x:Lq3/g;

    const/4 v2, 0x4

    or-int/2addr p1, v2

    invoke-virtual {p0, v0, v1, p1}, Ln3/f;->I(Ly0/r;Lq3/g;I)I

    move-result p1

    const/4 v1, 0x1

    const/4 v3, -0x5

    if-ne p1, v3, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Le4/o;->g0(Ly0/r;)Lq3/i;

    return v1

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Le4/o;->x:Lq3/g;

    .line 6
    invoke-virtual {p1, v2}, Lq3/a;->l(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iput-boolean v1, p0, Le4/o;->C0:Z

    .line 8
    invoke-virtual {p0}, Le4/o;->l0()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final o0()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le4/o;->Q:Le4/l;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Le4/l;->a()V

    .line 3
    iget-object v1, p0, Le4/o;->H0:Lq3/e;

    iget v2, v1, Lq3/e;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lq3/e;->b:I

    .line 4
    iget-object v1, p0, Le4/o;->X:Le4/n;

    iget-object v1, v1, Le4/n;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Le4/o;->f0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :cond_0
    iput-object v0, p0, Le4/o;->Q:Le4/l;

    .line 6
    :try_start_1
    iget-object v1, p0, Le4/o;->L:Landroid/media/MediaCrypto;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/media/MediaCrypto;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :cond_1
    iput-object v0, p0, Le4/o;->L:Landroid/media/MediaCrypto;

    .line 9
    invoke-virtual {p0, v0}, Le4/o;->t0(Lr3/e;)V

    .line 10
    invoke-virtual {p0}, Le4/o;->r0()V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    iput-object v0, p0, Le4/o;->L:Landroid/media/MediaCrypto;

    .line 12
    invoke-virtual {p0, v0}, Le4/o;->t0(Lr3/e;)V

    .line 13
    invoke-virtual {p0}, Le4/o;->r0()V

    .line 14
    throw v1

    :catchall_1
    move-exception v1

    .line 15
    iput-object v0, p0, Le4/o;->Q:Le4/l;

    .line 16
    :try_start_2
    iget-object v2, p0, Le4/o;->L:Landroid/media/MediaCrypto;

    if-eqz v2, :cond_2

    .line 17
    invoke-virtual {v2}, Landroid/media/MediaCrypto;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    :cond_2
    iput-object v0, p0, Le4/o;->L:Landroid/media/MediaCrypto;

    .line 19
    invoke-virtual {p0, v0}, Le4/o;->t0(Lr3/e;)V

    .line 20
    invoke-virtual {p0}, Le4/o;->r0()V

    .line 21
    throw v1

    :catchall_2
    move-exception v1

    .line 22
    iput-object v0, p0, Le4/o;->L:Landroid/media/MediaCrypto;

    .line 23
    invoke-virtual {p0, v0}, Le4/o;->t0(Lr3/e;)V

    .line 24
    invoke-virtual {p0}, Le4/o;->r0()V

    .line 25
    throw v1
.end method

.method public p0()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    return-void
.end method

.method public q0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Le4/o;->s0()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le4/o;->m0:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le4/o;->n0:Ljava/nio/ByteBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Le4/o;->k0:J

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Le4/o;->y0:Z

    .line 6
    iput-boolean v2, p0, Le4/o;->x0:Z

    .line 7
    iput-boolean v2, p0, Le4/o;->g0:Z

    .line 8
    iput-boolean v2, p0, Le4/o;->h0:Z

    .line 9
    iput-boolean v2, p0, Le4/o;->o0:Z

    .line 10
    iput-boolean v2, p0, Le4/o;->p0:Z

    .line 11
    iget-object v3, p0, Le4/o;->C:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 12
    iput-wide v0, p0, Le4/o;->A0:J

    .line 13
    iput-wide v0, p0, Le4/o;->B0:J

    .line 14
    iget-object v0, p0, Le4/o;->j0:Le4/i;

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x0

    .line 15
    iput-wide v3, v0, Le4/i;->a:J

    .line 16
    iput-wide v3, v0, Le4/i;->b:J

    .line 17
    iput-boolean v2, v0, Le4/i;->c:Z

    .line 18
    :cond_0
    iput v2, p0, Le4/o;->v0:I

    .line 19
    iput v2, p0, Le4/o;->w0:I

    .line 20
    iget-boolean v0, p0, Le4/o;->t0:Z

    iput v0, p0, Le4/o;->u0:I

    return-void
.end method

.method public final r0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le4/o;->q0()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le4/o;->G0:Ln3/q;

    .line 3
    iput-object v0, p0, Le4/o;->j0:Le4/i;

    .line 4
    iput-object v0, p0, Le4/o;->V:Ljava/util/ArrayDeque;

    .line 5
    iput-object v0, p0, Le4/o;->X:Le4/n;

    .line 6
    iput-object v0, p0, Le4/o;->R:Ln3/s0;

    .line 7
    iput-object v0, p0, Le4/o;->S:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Le4/o;->T:Z

    .line 9
    iput-boolean v0, p0, Le4/o;->z0:Z

    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    iput v1, p0, Le4/o;->U:F

    .line 11
    iput v0, p0, Le4/o;->Y:I

    .line 12
    iput-boolean v0, p0, Le4/o;->Z:Z

    .line 13
    iput-boolean v0, p0, Le4/o;->a0:Z

    .line 14
    iput-boolean v0, p0, Le4/o;->b0:Z

    .line 15
    iput-boolean v0, p0, Le4/o;->c0:Z

    .line 16
    iput-boolean v0, p0, Le4/o;->d0:Z

    .line 17
    iput-boolean v0, p0, Le4/o;->e0:Z

    .line 18
    iput-boolean v0, p0, Le4/o;->f0:Z

    .line 19
    iput-boolean v0, p0, Le4/o;->i0:Z

    .line 20
    iput-boolean v0, p0, Le4/o;->t0:Z

    .line 21
    iput v0, p0, Le4/o;->u0:I

    .line 22
    iput-boolean v0, p0, Le4/o;->M:Z

    return-void
.end method

.method public final s0()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Le4/o;->l0:I

    .line 2
    iget-object v0, p0, Le4/o;->y:Lq3/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lq3/g;->j:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final t0(Lr3/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le4/o;->J:Lr3/e;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1, v1}, Lr3/e;->c(Lr3/k$a;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, v1}, Lr3/e;->d(Lr3/k$a;)V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Le4/o;->J:Lr3/e;

    return-void
.end method

.method public final u0(Lr3/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le4/o;->K:Lr3/e;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1, v1}, Lr3/e;->c(Lr3/k$a;)V

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0, v1}, Lr3/e;->d(Lr3/k$a;)V

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Le4/o;->K:Lr3/e;

    return-void
.end method

.method public final v0(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Le4/o;->N:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iget-wide p1, p0, Le4/o;->N:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public w0(Le4/n;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public x(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    iput p1, p0, Le4/o;->O:F

    .line 2
    iput p2, p0, Le4/o;->P:F

    .line 3
    iget-object p1, p0, Le4/o;->R:Ln3/s0;

    invoke-virtual {p0, p1}, Le4/o;->z0(Ln3/s0;)Z

    return-void
.end method

.method public x0(Ln3/s0;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract y0(Le4/p;Ln3/s0;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le4/r$b;
        }
    .end annotation
.end method

.method public final z0(Ln3/s0;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/q;
        }
    .end annotation

    .line 1
    sget p1, Lm5/g0;->a:I

    const/4 v0, 0x1

    const/16 v1, 0x17

    if-ge p1, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Le4/o;->Q:Le4/l;

    if-eqz p1, :cond_6

    iget p1, p0, Le4/o;->w0:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_6

    .line 3
    iget p1, p0, Ln3/f;->m:I

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget p1, p0, Le4/o;->P:F

    .line 5
    iget-object v1, p0, Ln3/f;->o:[Ln3/s0;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1, v1}, Le4/o;->V(F[Ln3/s0;)F

    move-result p1

    .line 8
    iget v1, p0, Le4/o;->U:F

    cmpl-float v2, v1, p1

    if-nez v2, :cond_2

    return v0

    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, p1, v2

    if-nez v3, :cond_3

    .line 9
    invoke-virtual {p0}, Le4/o;->N()V

    const/4 p1, 0x0

    return p1

    :cond_3
    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    .line 10
    iget v1, p0, Le4/o;->w:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    .line 11
    :cond_5
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "operating-rate"

    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 13
    iget-object v2, p0, Le4/o;->Q:Le4/l;

    invoke-interface {v2, v1}, Le4/l;->i(Landroid/os/Bundle;)V

    .line 14
    iput p1, p0, Le4/o;->U:F

    :cond_6
    :goto_1
    return v0
.end method
