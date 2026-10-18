.class public final Ly3/d;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"

# interfaces
.implements Ls3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly3/d$b;,
        Ly3/d$a;
    }
.end annotation


# static fields
.field public static final c0:[B

.field public static final d0:[B

.field public static final e0:[B

.field public static final f0:[B

.field public static final g0:Ljava/util/UUID;

.field public static final h0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:J

.field public B:J

.field public C:Lm5/q;

.field public D:Lm5/q;

.field public E:Z

.field public F:Z

.field public G:I

.field public H:J

.field public I:J

.field public J:I

.field public K:I

.field public L:[I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:Z

.field public R:J

.field public S:I

.field public T:I

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:I

.field public Z:B

.field public final a:Ly3/c;

.field public a0:Z

.field public final b:Ly3/f;

.field public b0:Ls3/j;

.field public final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ly3/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:Lm5/w;

.field public final f:Lm5/w;

.field public final g:Lm5/w;

.field public final h:Lm5/w;

.field public final i:Lm5/w;

.field public final j:Lm5/w;

.field public final k:Lm5/w;

.field public final l:Lm5/w;

.field public final m:Lm5/w;

.field public final n:Lm5/w;

.field public o:Ljava/nio/ByteBuffer;

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Ly3/d$b;

.field public v:Z

.field public w:I

.field public x:J

.field public y:Z

.field public z:J


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    sget-object v0, Ln3/z0;->f:Ln3/z0;

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 2
    fill-array-data v1, :array_0

    sput-object v1, Ly3/d;->c0:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 3
    invoke-static {v1}, Lm5/g0;->F(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Ly3/d;->d0:[B

    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_1

    sput-object v0, Ly3/d;->e0:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_2

    sput-object v0, Ly3/d;->f0:[B

    .line 6
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Ly3/d;->g0:Ljava/util/UUID;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    const-string v7, "htc_video_rotA-000"

    const/16 v8, 0x5a

    const-string v9, "htc_video_rotA-090"

    const/16 v10, 0xb4

    const-string v11, "htc_video_rotA-180"

    const/16 v12, 0x10e

    const-string v13, "htc_video_rotA-270"

    move-object v6, v0

    .line 8
    invoke-static/range {v5 .. v13}, Lca/a;->e(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ly3/d;->h0:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 1
    new-instance v0, Ly3/a;

    invoke-direct {v0}, Ly3/a;-><init>()V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Ly3/d;->q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v3, p0, Ly3/d;->r:J

    .line 5
    iput-wide v3, p0, Ly3/d;->s:J

    .line 6
    iput-wide v3, p0, Ly3/d;->t:J

    .line 7
    iput-wide v1, p0, Ly3/d;->z:J

    .line 8
    iput-wide v1, p0, Ly3/d;->A:J

    .line 9
    iput-wide v3, p0, Ly3/d;->B:J

    .line 10
    iput-object v0, p0, Ly3/d;->a:Ly3/c;

    .line 11
    new-instance v1, Ly3/d$a;

    invoke-direct {v1, p0}, Ly3/d$a;-><init>(Ly3/d;)V

    .line 12
    iput-object v1, v0, Ly3/a;->d:Ly3/b;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Ly3/d;->d:Z

    .line 14
    new-instance p1, Ly3/f;

    invoke-direct {p1}, Ly3/f;-><init>()V

    iput-object p1, p0, Ly3/d;->b:Ly3/f;

    .line 15
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Ly3/d;->c:Landroid/util/SparseArray;

    .line 16
    new-instance p1, Lm5/w;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Lm5/w;-><init>(I)V

    iput-object p1, p0, Ly3/d;->g:Lm5/w;

    .line 17
    new-instance p1, Lm5/w;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {p1, v2}, Lm5/w;-><init>([B)V

    iput-object p1, p0, Ly3/d;->h:Lm5/w;

    .line 18
    new-instance p1, Lm5/w;

    invoke-direct {p1, v1}, Lm5/w;-><init>(I)V

    iput-object p1, p0, Ly3/d;->i:Lm5/w;

    .line 19
    new-instance p1, Lm5/w;

    sget-object v2, Lm5/t;->a:[B

    invoke-direct {p1, v2}, Lm5/w;-><init>([B)V

    iput-object p1, p0, Ly3/d;->e:Lm5/w;

    .line 20
    new-instance p1, Lm5/w;

    invoke-direct {p1, v1}, Lm5/w;-><init>(I)V

    iput-object p1, p0, Ly3/d;->f:Lm5/w;

    .line 21
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, Ly3/d;->j:Lm5/w;

    .line 22
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, Ly3/d;->k:Lm5/w;

    .line 23
    new-instance p1, Lm5/w;

    const/16 v1, 0x8

    invoke-direct {p1, v1}, Lm5/w;-><init>(I)V

    iput-object p1, p0, Ly3/d;->l:Lm5/w;

    .line 24
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, Ly3/d;->m:Lm5/w;

    .line 25
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, Ly3/d;->n:Lm5/w;

    new-array p1, v0, [I

    .line 26
    iput-object p1, p0, Ly3/d;->L:[I

    return-void
.end method

.method public static i(JLjava/lang/String;J)[B
    .locals 11

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1
    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    const-wide v3, 0xd693a400L

    .line 2
    div-long v3, p0, v3

    long-to-int v0, v3

    int-to-long v3, v0

    const-wide/16 v5, 0xe10

    mul-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    sub-long/2addr p0, v3

    const-wide/32 v3, 0x3938700

    .line 3
    div-long v3, p0, v3

    long-to-int v3, v3

    int-to-long v7, v3

    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    mul-long/2addr v7, v5

    sub-long/2addr p0, v7

    .line 4
    div-long v7, p0, v5

    long-to-int v4, v7

    int-to-long v7, v4

    mul-long/2addr v7, v5

    sub-long/2addr p0, v7

    .line 5
    div-long/2addr p0, p3

    long-to-int p0, p0

    .line 6
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    const/4 p4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p3, p4

    invoke-static {p1, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lm5/g0;->F(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide p1, p0, Ly3/d;->B:J

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ly3/d;->G:I

    .line 3
    iget-object p2, p0, Ly3/d;->a:Ly3/c;

    check-cast p2, Ly3/a;

    .line 4
    iput p1, p2, Ly3/a;->e:I

    .line 5
    iget-object p3, p2, Ly3/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    .line 6
    iget-object p2, p2, Ly3/a;->c:Ly3/f;

    .line 7
    iput p1, p2, Ly3/f;->b:I

    .line 8
    iput p1, p2, Ly3/f;->c:I

    .line 9
    iget-object p2, p0, Ly3/d;->b:Ly3/f;

    .line 10
    iput p1, p2, Ly3/f;->b:I

    .line 11
    iput p1, p2, Ly3/f;->c:I

    .line 12
    invoke-virtual {p0}, Ly3/d;->l()V

    move p2, p1

    .line 13
    :goto_0
    iget-object p3, p0, Ly3/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 14
    iget-object p3, p0, Ly3/d;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly3/d$b;

    .line 15
    iget-object p3, p3, Ly3/d$b;->T:Ls3/x;

    if-eqz p3, :cond_0

    .line 16
    iput-boolean p1, p3, Ls3/x;->b:Z

    .line 17
    iput p1, p3, Ls3/x;->c:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "cueTimesUs",
            "cueClusterPositions"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly3/d;->C:Lm5/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ly3/d;->D:Lm5/q;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1
.end method

.method public final d(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly3/d;->u:Ly3/d$b;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Element "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1
    iput-boolean v3, v0, Ly3/d;->F:Z

    const/4 v4, 0x1

    move-object v6, v1

    move v5, v4

    :goto_0
    const/4 v7, -0x1

    if-eqz v4, :cond_69

    .line 2
    iget-boolean v8, v0, Ly3/d;->F:Z

    if-nez v8, :cond_69

    .line 3
    iget-object v4, v0, Ly3/d;->a:Ly3/c;

    move-object v8, v4

    check-cast v8, Ly3/a;

    .line 4
    iget-object v4, v8, Ly3/a;->d:Ly3/b;

    invoke-static {v4}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_1
    iget-object v4, v8, Ly3/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly3/a$a;

    const-wide/16 v9, -0x1

    if-eqz v4, :cond_0

    .line 6
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v11

    .line 7
    iget-wide v13, v4, Ly3/a$a;->b:J

    cmp-long v4, v11, v13

    if-ltz v4, :cond_0

    .line 8
    iget-object v4, v8, Ly3/a;->d:Ly3/b;

    iget-object v7, v8, Ly3/a;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly3/a$a;

    .line 9
    iget v7, v7, Ly3/a$a;->a:I

    .line 10
    check-cast v4, Ly3/d$a;

    .line 11
    iget-object v4, v4, Ly3/d$a;->a:Ly3/d;

    invoke-virtual {v4, v7}, Ly3/d;->h(I)V

    goto/16 :goto_a

    .line 12
    :cond_0
    iget v4, v8, Ly3/a;->e:I

    const v11, 0x1f43b675

    const v12, 0x1c53bb6b

    const/4 v13, 0x4

    if-nez v4, :cond_6

    .line 13
    iget-object v4, v8, Ly3/a;->c:Ly3/f;

    invoke-virtual {v4, v6, v5, v3, v13}, Ly3/f;->c(Ls3/i;ZZI)J

    move-result-wide v14

    const-wide/16 v16, -0x2

    cmp-long v4, v14, v16

    if-nez v4, :cond_4

    .line 14
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 15
    :goto_2
    iget-object v4, v8, Ly3/a;->a:[B

    invoke-interface {v6, v4, v3, v13}, Ls3/i;->s([BII)V

    .line 16
    iget-object v4, v8, Ly3/a;->a:[B

    aget-byte v4, v4, v3

    invoke-static {v4}, Ly3/f;->b(I)I

    move-result v4

    if-eq v4, v7, :cond_3

    if-gt v4, v13, :cond_3

    .line 17
    iget-object v14, v8, Ly3/a;->a:[B

    invoke-static {v14, v4, v3}, Ly3/f;->a([BIZ)J

    move-result-wide v14

    long-to-int v14, v14

    .line 18
    iget-object v15, v8, Ly3/a;->d:Ly3/b;

    check-cast v15, Ly3/d$a;

    .line 19
    iget-object v15, v15, Ly3/d$a;->a:Ly3/d;

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v15, 0x1549a966

    if-eq v14, v15, :cond_2

    if-eq v14, v11, :cond_2

    if-eq v14, v12, :cond_2

    const v15, 0x1654ae6b

    if-ne v14, v15, :cond_1

    goto :goto_3

    :cond_1
    move v15, v3

    goto :goto_4

    :cond_2
    :goto_3
    move v15, v5

    :goto_4
    if-eqz v15, :cond_3

    .line 20
    invoke-interface {v6, v4}, Ls3/i;->k(I)V

    int-to-long v14, v14

    goto :goto_5

    .line 21
    :cond_3
    invoke-interface {v6, v5}, Ls3/i;->k(I)V

    goto :goto_2

    :cond_4
    :goto_5
    cmp-long v4, v14, v9

    if-nez v4, :cond_5

    move v4, v3

    goto/16 :goto_27

    :cond_5
    long-to-int v4, v14

    .line 22
    iput v4, v8, Ly3/a;->f:I

    .line 23
    iput v5, v8, Ly3/a;->e:I

    .line 24
    :cond_6
    iget v4, v8, Ly3/a;->e:I

    const/16 v7, 0x8

    const/4 v9, 0x2

    if-ne v4, v5, :cond_7

    .line 25
    iget-object v4, v8, Ly3/a;->c:Ly3/f;

    invoke-virtual {v4, v6, v3, v5, v7}, Ly3/f;->c(Ls3/i;ZZI)J

    move-result-wide v10

    iput-wide v10, v8, Ly3/a;->g:J

    .line 26
    iput v9, v8, Ly3/a;->e:I

    .line 27
    :cond_7
    iget-object v4, v8, Ly3/a;->d:Ly3/b;

    iget v7, v8, Ly3/a;->f:I

    check-cast v4, Ly3/d$a;

    .line 28
    iget-object v4, v4, Ly3/d$a;->a:Ly3/d;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    const/4 v10, 0x3

    sparse-switch v7, :sswitch_data_0

    move v7, v3

    goto :goto_6

    :sswitch_0
    move v7, v4

    goto :goto_6

    :sswitch_1
    move v7, v13

    goto :goto_6

    :sswitch_2
    move v7, v5

    goto :goto_6

    :sswitch_3
    move v7, v10

    goto :goto_6

    :sswitch_4
    move v7, v9

    :goto_6
    if-eqz v7, :cond_68

    const/4 v11, 0x0

    if-eq v7, v5, :cond_57

    const-string v12, " not supported"

    const-wide/16 v16, 0x8

    if-eq v7, v9, :cond_3f

    const-wide/32 v18, 0x7fffffff

    if-eq v7, v10, :cond_35

    if-eq v7, v13, :cond_e

    if-ne v7, v4, :cond_d

    .line 29
    iget-wide v9, v8, Ly3/a;->g:J

    const-wide/16 v14, 0x4

    cmp-long v4, v9, v14

    if-eqz v4, :cond_9

    cmp-long v4, v9, v16

    if-nez v4, :cond_8

    goto :goto_7

    :cond_8
    const-string v1, "Invalid float size: "

    .line 30
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    iget-wide v2, v8, Ly3/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 32
    :cond_9
    :goto_7
    iget-object v4, v8, Ly3/a;->d:Ly3/b;

    iget v7, v8, Ly3/a;->f:I

    long-to-int v9, v9

    .line 33
    invoke-virtual {v8, v6, v9}, Ly3/a;->a(Ls3/i;I)J

    move-result-wide v10

    if-ne v9, v13, :cond_a

    long-to-int v9, v10

    .line 34
    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    float-to-double v9, v9

    goto :goto_8

    .line 35
    :cond_a
    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v9

    .line 36
    :goto_8
    check-cast v4, Ly3/d$a;

    .line 37
    iget-object v4, v4, Ly3/d$a;->a:Ly3/d;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xb5

    if-eq v7, v11, :cond_c

    const/16 v11, 0x4489

    if-eq v7, v11, :cond_b

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto/16 :goto_9

    .line 38
    :pswitch_0
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 39
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 40
    iput v7, v4, Ly3/d$b;->M:F

    goto/16 :goto_9

    .line 41
    :pswitch_1
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 42
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 43
    iput v7, v4, Ly3/d$b;->L:F

    goto/16 :goto_9

    .line 44
    :pswitch_2
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 45
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 46
    iput v7, v4, Ly3/d$b;->K:F

    goto :goto_9

    .line 47
    :pswitch_3
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 48
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 49
    iput v7, v4, Ly3/d$b;->J:F

    goto :goto_9

    .line 50
    :pswitch_4
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 51
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 52
    iput v7, v4, Ly3/d$b;->I:F

    goto :goto_9

    .line 53
    :pswitch_5
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 54
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 55
    iput v7, v4, Ly3/d$b;->H:F

    goto :goto_9

    .line 56
    :pswitch_6
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 57
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 58
    iput v7, v4, Ly3/d$b;->G:F

    goto :goto_9

    .line 59
    :pswitch_7
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 60
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 61
    iput v7, v4, Ly3/d$b;->F:F

    goto :goto_9

    .line 62
    :pswitch_8
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 63
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 64
    iput v7, v4, Ly3/d$b;->E:F

    goto :goto_9

    .line 65
    :pswitch_9
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 66
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 67
    iput v7, v4, Ly3/d$b;->D:F

    goto :goto_9

    .line 68
    :pswitch_a
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 69
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 70
    iput v7, v4, Ly3/d$b;->u:F

    goto :goto_9

    .line 71
    :pswitch_b
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 72
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 73
    iput v7, v4, Ly3/d$b;->t:F

    goto :goto_9

    .line 74
    :pswitch_c
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 75
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-float v7, v9

    .line 76
    iput v7, v4, Ly3/d$b;->s:F

    goto :goto_9

    :cond_b
    double-to-long v9, v9

    .line 77
    iput-wide v9, v4, Ly3/d;->s:J

    goto :goto_9

    .line 78
    :cond_c
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 79
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    double-to-int v7, v9

    .line 80
    iput v7, v4, Ly3/d$b;->Q:I

    .line 81
    :goto_9
    iput v3, v8, Ly3/a;->e:I

    :goto_a
    move v4, v5

    goto/16 :goto_27

    .line 82
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid element type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 83
    :cond_e
    iget-object v4, v8, Ly3/a;->d:Ly3/b;

    iget v7, v8, Ly3/a;->f:I

    iget-wide v12, v8, Ly3/a;->g:J

    long-to-int v12, v12

    check-cast v4, Ly3/d$a;

    .line 84
    iget-object v4, v4, Ly3/d$a;->a:Ly3/d;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v13, 0xa1

    const/16 v14, 0xa3

    if-eq v7, v13, :cond_1a

    if-eq v7, v14, :cond_1a

    const/16 v10, 0xa5

    if-eq v7, v10, :cond_17

    const/16 v9, 0x41ed

    if-eq v7, v9, :cond_14

    const/16 v9, 0x4255

    if-eq v7, v9, :cond_13

    const/16 v9, 0x47e2

    if-eq v7, v9, :cond_12

    const/16 v5, 0x53ab

    if-eq v7, v5, :cond_11

    const/16 v5, 0x63a2

    if-eq v7, v5, :cond_10

    const/16 v5, 0x7672

    if-ne v7, v5, :cond_f

    .line 85
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 86
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    new-array v5, v12, [B

    iput-object v5, v4, Ly3/d$b;->v:[B

    .line 87
    invoke-interface {v6, v5, v3, v12}, Ls3/i;->readFully([BII)V

    goto/16 :goto_1c

    .line 88
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 89
    :cond_10
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 90
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    new-array v5, v12, [B

    iput-object v5, v4, Ly3/d$b;->k:[B

    .line 91
    invoke-interface {v6, v5, v3, v12}, Ls3/i;->readFully([BII)V

    goto/16 :goto_1c

    .line 92
    :cond_11
    iget-object v5, v4, Ly3/d;->i:Lm5/w;

    .line 93
    iget-object v5, v5, Lm5/w;->a:[B

    .line 94
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 95
    iget-object v5, v4, Ly3/d;->i:Lm5/w;

    .line 96
    iget-object v5, v5, Lm5/w;->a:[B

    rsub-int/lit8 v7, v12, 0x4

    .line 97
    invoke-interface {v6, v5, v7, v12}, Ls3/i;->readFully([BII)V

    .line 98
    iget-object v5, v4, Ly3/d;->i:Lm5/w;

    invoke-virtual {v5, v3}, Lm5/w;->D(I)V

    .line 99
    iget-object v5, v4, Ly3/d;->i:Lm5/w;

    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v9

    long-to-int v5, v9

    iput v5, v4, Ly3/d;->w:I

    goto/16 :goto_1c

    .line 100
    :cond_12
    new-array v9, v12, [B

    .line 101
    invoke-interface {v6, v9, v3, v12}, Ls3/i;->readFully([BII)V

    .line 102
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 103
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    .line 104
    new-instance v7, Ls3/w$a;

    invoke-direct {v7, v5, v9, v3, v3}, Ls3/w$a;-><init>(I[BII)V

    iput-object v7, v4, Ly3/d$b;->j:Ls3/w$a;

    goto/16 :goto_1c

    .line 105
    :cond_13
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 106
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    new-array v5, v12, [B

    iput-object v5, v4, Ly3/d$b;->i:[B

    .line 107
    invoke-interface {v6, v5, v3, v12}, Ls3/i;->readFully([BII)V

    goto/16 :goto_1c

    .line 108
    :cond_14
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 109
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    .line 110
    iget v5, v4, Ly3/d$b;->g:I

    const v7, 0x64767643

    if-eq v5, v7, :cond_16

    const v7, 0x64766343

    if-ne v5, v7, :cond_15

    goto :goto_b

    .line 111
    :cond_15
    invoke-interface {v6, v12}, Ls3/i;->k(I)V

    goto/16 :goto_1c

    .line 112
    :cond_16
    :goto_b
    new-array v5, v12, [B

    iput-object v5, v4, Ly3/d$b;->N:[B

    .line 113
    invoke-interface {v6, v5, v3, v12}, Ls3/i;->readFully([BII)V

    goto/16 :goto_1c

    .line 114
    :cond_17
    iget v5, v4, Ly3/d;->G:I

    if-eq v5, v9, :cond_18

    goto/16 :goto_1c

    .line 115
    :cond_18
    iget-object v5, v4, Ly3/d;->c:Landroid/util/SparseArray;

    iget v7, v4, Ly3/d;->M:I

    .line 116
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly3/d$b;

    iget v7, v4, Ly3/d;->P:I

    const/4 v9, 0x4

    if-ne v7, v9, :cond_19

    .line 117
    iget-object v5, v5, Ly3/d$b;->b:Ljava/lang/String;

    const-string v7, "V_VP9"

    .line 118
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 119
    iget-object v5, v4, Ly3/d;->n:Lm5/w;

    invoke-virtual {v5, v12}, Lm5/w;->A(I)V

    .line 120
    iget-object v4, v4, Ly3/d;->n:Lm5/w;

    .line 121
    iget-object v4, v4, Lm5/w;->a:[B

    .line 122
    invoke-interface {v6, v4, v3, v12}, Ls3/i;->readFully([BII)V

    goto/16 :goto_1c

    .line 123
    :cond_19
    invoke-interface {v6, v12}, Ls3/i;->k(I)V

    goto/16 :goto_1c

    .line 124
    :cond_1a
    iget v11, v4, Ly3/d;->G:I

    if-nez v11, :cond_1b

    .line 125
    iget-object v11, v4, Ly3/d;->b:Ly3/f;

    const/16 v13, 0x8

    invoke-virtual {v11, v6, v3, v5, v13}, Ly3/f;->c(Ls3/i;ZZI)J

    move-result-wide v13

    long-to-int v11, v13

    iput v11, v4, Ly3/d;->M:I

    .line 126
    iget-object v11, v4, Ly3/d;->b:Ly3/f;

    .line 127
    iget v11, v11, Ly3/f;->c:I

    .line 128
    iput v11, v4, Ly3/d;->N:I

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 129
    iput-wide v13, v4, Ly3/d;->I:J

    .line 130
    iput v5, v4, Ly3/d;->G:I

    .line 131
    iget-object v11, v4, Ly3/d;->g:Lm5/w;

    invoke-virtual {v11, v3}, Lm5/w;->A(I)V

    .line 132
    :cond_1b
    iget-object v11, v4, Ly3/d;->c:Landroid/util/SparseArray;

    iget v13, v4, Ly3/d;->M:I

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ly3/d$b;

    if-nez v11, :cond_1c

    .line 133
    iget v5, v4, Ly3/d;->N:I

    sub-int/2addr v12, v5

    invoke-interface {v6, v12}, Ls3/i;->k(I)V

    .line 134
    iput v3, v4, Ly3/d;->G:I

    goto/16 :goto_1c

    .line 135
    :cond_1c
    iget-object v13, v11, Ly3/d$b;->X:Ls3/w;

    .line 136
    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget v13, v4, Ly3/d;->G:I

    if-ne v13, v5, :cond_31

    .line 138
    invoke-virtual {v4, v6, v10}, Ly3/d;->k(Ls3/i;I)V

    .line 139
    iget-object v13, v4, Ly3/d;->g:Lm5/w;

    .line 140
    iget-object v13, v13, Lm5/w;->a:[B

    .line 141
    aget-byte v13, v13, v9

    and-int/lit8 v13, v13, 0x6

    shr-int/2addr v13, v5

    const/16 v14, 0xff

    if-nez v13, :cond_1f

    .line 142
    iput v5, v4, Ly3/d;->K:I

    .line 143
    iget-object v6, v4, Ly3/d;->L:[I

    if-nez v6, :cond_1d

    new-array v6, v5, [I

    goto :goto_c

    .line 144
    :cond_1d
    array-length v13, v6

    if-lt v13, v5, :cond_1e

    goto :goto_c

    .line 145
    :cond_1e
    array-length v6, v6

    mul-int/2addr v6, v9

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    new-array v6, v5, [I

    .line 146
    :goto_c
    iput-object v6, v4, Ly3/d;->L:[I

    .line 147
    iget v5, v4, Ly3/d;->N:I

    sub-int/2addr v12, v5

    sub-int/2addr v12, v10

    aput v12, v6, v3

    goto/16 :goto_15

    :cond_1f
    const/4 v15, 0x4

    .line 148
    invoke-virtual {v4, v6, v15}, Ly3/d;->k(Ls3/i;I)V

    .line 149
    iget-object v15, v4, Ly3/d;->g:Lm5/w;

    .line 150
    iget-object v15, v15, Lm5/w;->a:[B

    .line 151
    aget-byte v10, v15, v10

    and-int/2addr v10, v14

    add-int/2addr v10, v5

    iput v10, v4, Ly3/d;->K:I

    .line 152
    iget-object v15, v4, Ly3/d;->L:[I

    if-nez v15, :cond_20

    .line 153
    new-array v15, v10, [I

    goto :goto_d

    .line 154
    :cond_20
    array-length v14, v15

    if-lt v14, v10, :cond_21

    goto :goto_d

    .line 155
    :cond_21
    array-length v14, v15

    mul-int/2addr v14, v9

    invoke-static {v14, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v15, v10, [I

    .line 156
    :goto_d
    iput-object v15, v4, Ly3/d;->L:[I

    if-ne v13, v9, :cond_22

    .line 157
    iget v5, v4, Ly3/d;->N:I

    sub-int/2addr v12, v5

    add-int/lit8 v12, v12, -0x4

    iget v5, v4, Ly3/d;->K:I

    div-int/2addr v12, v5

    .line 158
    invoke-static {v15, v3, v5, v12}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_15

    :cond_22
    const/4 v9, 0x4

    if-ne v13, v5, :cond_25

    move v10, v3

    move v13, v10

    .line 159
    :goto_e
    iget v14, v4, Ly3/d;->K:I

    add-int/lit8 v14, v14, -0x1

    if-ge v10, v14, :cond_24

    .line 160
    iget-object v14, v4, Ly3/d;->L:[I

    aput v3, v14, v10

    :goto_f
    add-int/2addr v9, v5

    .line 161
    invoke-virtual {v4, v6, v9}, Ly3/d;->k(Ls3/i;I)V

    .line 162
    iget-object v14, v4, Ly3/d;->g:Lm5/w;

    .line 163
    iget-object v14, v14, Lm5/w;->a:[B

    add-int/lit8 v15, v9, -0x1

    .line 164
    aget-byte v14, v14, v15

    const/16 v15, 0xff

    and-int/2addr v14, v15

    .line 165
    iget-object v15, v4, Ly3/d;->L:[I

    aget v17, v15, v10

    add-int v17, v17, v14

    aput v17, v15, v10

    move/from16 v22, v3

    const/16 v3, 0xff

    if-eq v14, v3, :cond_23

    .line 166
    aget v14, v15, v10

    add-int/2addr v13, v14

    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v22

    goto :goto_e

    :cond_23
    move/from16 v3, v22

    goto :goto_f

    .line 167
    :cond_24
    iget-object v3, v4, Ly3/d;->L:[I

    iget v5, v4, Ly3/d;->N:I

    sub-int/2addr v12, v5

    sub-int/2addr v12, v9

    sub-int/2addr v12, v13

    aput v12, v3, v14

    goto/16 :goto_15

    :cond_25
    move/from16 v22, v3

    const/16 v3, 0xff

    const/4 v10, 0x3

    if-ne v13, v10, :cond_30

    move v14, v3

    move v10, v9

    move/from16 v3, v22

    move-object v9, v6

    move v6, v5

    move v5, v3

    .line 168
    :goto_10
    iget v13, v4, Ly3/d;->K:I

    add-int/lit8 v13, v13, -0x1

    if-ge v3, v13, :cond_2d

    .line 169
    iget-object v13, v4, Ly3/d;->L:[I

    aput v5, v13, v3

    add-int/lit8 v10, v10, 0x1

    .line 170
    invoke-virtual {v4, v9, v10}, Ly3/d;->k(Ls3/i;I)V

    .line 171
    iget-object v13, v4, Ly3/d;->g:Lm5/w;

    .line 172
    iget-object v13, v13, Lm5/w;->a:[B

    add-int/lit8 v15, v10, -0x1

    .line 173
    aget-byte v13, v13, v15

    if-eqz v13, :cond_2c

    const/16 v13, 0x8

    :goto_11
    if-ge v5, v13, :cond_29

    rsub-int/lit8 v13, v5, 0x7

    shl-int/2addr v6, v13

    .line 174
    iget-object v13, v4, Ly3/d;->g:Lm5/w;

    .line 175
    iget-object v13, v13, Lm5/w;->a:[B

    .line 176
    aget-byte v13, v13, v15

    and-int/2addr v13, v6

    if-eqz v13, :cond_28

    add-int/2addr v10, v5

    .line 177
    invoke-virtual {v4, v9, v10}, Ly3/d;->k(Ls3/i;I)V

    .line 178
    iget-object v9, v4, Ly3/d;->g:Lm5/w;

    .line 179
    iget-object v9, v9, Lm5/w;->a:[B

    add-int/lit8 v13, v15, 0x1

    .line 180
    aget-byte v9, v9, v15

    and-int/2addr v9, v14

    not-int v6, v6

    and-int/2addr v6, v9

    move/from16 v16, v13

    move v9, v14

    int-to-long v13, v6

    move-wide v14, v13

    :goto_12
    move/from16 v13, v16

    if-ge v13, v10, :cond_26

    const/16 v6, 0x8

    shl-long/2addr v14, v6

    .line 181
    iget-object v6, v4, Ly3/d;->g:Lm5/w;

    .line 182
    iget-object v6, v6, Lm5/w;->a:[B

    add-int/lit8 v16, v13, 0x1

    .line 183
    aget-byte v6, v6, v13

    and-int/2addr v6, v9

    move v13, v10

    int-to-long v9, v6

    or-long/2addr v14, v9

    const/16 v9, 0xff

    move v10, v13

    goto :goto_12

    :cond_26
    move v13, v10

    if-lez v3, :cond_27

    mul-int/lit8 v5, v5, 0x7

    add-int/lit8 v5, v5, 0x6

    const-wide/16 v9, 0x1

    shl-long v5, v9, v5

    sub-long/2addr v5, v9

    sub-long/2addr v14, v5

    :cond_27
    move v10, v13

    goto :goto_13

    :cond_28
    add-int/lit8 v5, v5, 0x1

    const/16 v13, 0x8

    const/4 v6, 0x1

    const/16 v14, 0xff

    move-object v9, v1

    goto :goto_11

    :cond_29
    const-wide/16 v14, 0x0

    :goto_13
    const-wide/32 v5, -0x80000000

    cmp-long v5, v14, v5

    if-ltz v5, :cond_2b

    cmp-long v5, v14, v18

    if-gtz v5, :cond_2b

    long-to-int v5, v14

    .line 184
    iget-object v6, v4, Ly3/d;->L:[I

    if-nez v3, :cond_2a

    goto :goto_14

    :cond_2a
    add-int/lit8 v9, v3, -0x1

    .line 185
    aget v9, v6, v9

    add-int/2addr v5, v9

    :goto_14
    aput v5, v6, v3

    .line 186
    aget v5, v6, v3

    add-int v22, v22, v5

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v14, 0xff

    move-object v9, v1

    goto/16 :goto_10

    :cond_2b
    const-string v1, "EBML lacing sample size out of range."

    const/4 v2, 0x0

    .line 187
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_2c
    const/4 v1, 0x0

    const-string v2, "No valid varint length mask found"

    .line 188
    invoke-static {v2, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 189
    :cond_2d
    iget-object v3, v4, Ly3/d;->L:[I

    iget v5, v4, Ly3/d;->N:I

    sub-int/2addr v12, v5

    sub-int/2addr v12, v10

    sub-int v12, v12, v22

    aput v12, v3, v13

    .line 190
    :goto_15
    iget-object v3, v4, Ly3/d;->g:Lm5/w;

    .line 191
    iget-object v3, v3, Lm5/w;->a:[B

    const/4 v5, 0x0

    .line 192
    aget-byte v5, v3, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v5

    .line 193
    iget-wide v5, v4, Ly3/d;->B:J

    int-to-long v9, v3

    invoke-virtual {v4, v9, v10}, Ly3/d;->m(J)J

    move-result-wide v9

    add-long/2addr v9, v5

    iput-wide v9, v4, Ly3/d;->H:J

    .line 194
    iget v3, v11, Ly3/d$b;->d:I

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2f

    const/16 v3, 0xa3

    if-ne v7, v3, :cond_2e

    iget-object v3, v4, Ly3/d;->g:Lm5/w;

    .line 195
    iget-object v3, v3, Lm5/w;->a:[B

    .line 196
    aget-byte v3, v3, v5

    const/16 v6, 0x80

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_2e

    goto :goto_16

    :cond_2e
    const/4 v3, 0x0

    goto :goto_17

    :cond_2f
    :goto_16
    const/4 v3, 0x1

    .line 197
    :goto_17
    iput v3, v4, Ly3/d;->O:I

    .line 198
    iput v5, v4, Ly3/d;->G:I

    const/4 v3, 0x0

    .line 199
    iput v3, v4, Ly3/d;->J:I

    goto :goto_18

    .line 200
    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected lacing value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_31
    :goto_18
    const/16 v3, 0xa3

    if-ne v7, v3, :cond_33

    .line 201
    :goto_19
    iget v3, v4, Ly3/d;->J:I

    iget v5, v4, Ly3/d;->K:I

    if-ge v3, v5, :cond_32

    .line 202
    iget-object v5, v4, Ly3/d;->L:[I

    aget v3, v5, v3

    const/4 v5, 0x0

    .line 203
    invoke-virtual {v4, v1, v11, v3, v5}, Ly3/d;->n(Ls3/i;Ly3/d$b;IZ)I

    move-result v25

    .line 204
    iget-wide v5, v4, Ly3/d;->H:J

    iget v3, v4, Ly3/d;->J:I

    iget v7, v11, Ly3/d$b;->e:I

    mul-int/2addr v3, v7

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v9, v3

    add-long v22, v9, v5

    .line 205
    iget v3, v4, Ly3/d;->O:I

    const/16 v26, 0x0

    move-object/from16 v20, v4

    move-object/from16 v21, v11

    move/from16 v24, v3

    invoke-virtual/range {v20 .. v26}, Ly3/d;->f(Ly3/d$b;JIII)V

    .line 206
    iget v3, v4, Ly3/d;->J:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v4, Ly3/d;->J:I

    goto :goto_19

    :cond_32
    const/4 v3, 0x0

    .line 207
    iput v3, v4, Ly3/d;->G:I

    goto :goto_1b

    :cond_33
    :goto_1a
    const/4 v3, 0x1

    .line 208
    iget v5, v4, Ly3/d;->J:I

    iget v6, v4, Ly3/d;->K:I

    if-ge v5, v6, :cond_34

    .line 209
    iget-object v6, v4, Ly3/d;->L:[I

    aget v7, v6, v5

    .line 210
    invoke-virtual {v4, v1, v11, v7, v3}, Ly3/d;->n(Ls3/i;Ly3/d$b;IZ)I

    move-result v7

    aput v7, v6, v5

    .line 211
    iget v5, v4, Ly3/d;->J:I

    add-int/2addr v5, v3

    iput v5, v4, Ly3/d;->J:I

    goto :goto_1a

    :cond_34
    const/4 v3, 0x0

    :goto_1b
    move-object v6, v1

    .line 212
    :goto_1c
    iput v3, v8, Ly3/a;->e:I

    goto/16 :goto_26

    .line 213
    :cond_35
    iget-wide v3, v8, Ly3/a;->g:J

    cmp-long v5, v3, v18

    if-gtz v5, :cond_3e

    .line 214
    iget-object v5, v8, Ly3/a;->d:Ly3/b;

    iget v7, v8, Ly3/a;->f:I

    long-to-int v3, v3

    if-nez v3, :cond_36

    const-string v3, ""

    goto :goto_1e

    .line 215
    :cond_36
    new-array v4, v3, [B

    const/4 v9, 0x0

    .line 216
    invoke-interface {v6, v4, v9, v3}, Ls3/i;->readFully([BII)V

    :goto_1d
    if-lez v3, :cond_37

    add-int/lit8 v10, v3, -0x1

    .line 217
    aget-byte v11, v4, v10

    if-nez v11, :cond_37

    move v3, v10

    goto :goto_1d

    .line 218
    :cond_37
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v4, v9, v3}, Ljava/lang/String;-><init>([BII)V

    move-object v3, v10

    .line 219
    :goto_1e
    check-cast v5, Ly3/d$a;

    .line 220
    iget-object v4, v5, Ly3/d$a;->a:Ly3/d;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x86

    if-eq v7, v5, :cond_3c

    const/16 v5, 0x4282

    if-eq v7, v5, :cond_3a

    const/16 v5, 0x536e

    if-eq v7, v5, :cond_39

    const v5, 0x22b59c

    if-eq v7, v5, :cond_38

    goto :goto_1f

    .line 221
    :cond_38
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 222
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    .line 223
    iput-object v3, v4, Ly3/d$b;->W:Ljava/lang/String;

    goto :goto_1f

    .line 224
    :cond_39
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 225
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    .line 226
    iput-object v3, v4, Ly3/d$b;->a:Ljava/lang/String;

    goto :goto_1f

    :cond_3a
    const-string v4, "webm"

    .line 227
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    const-string v4, "matroska"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_1f

    .line 228
    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 229
    :cond_3c
    invoke-virtual {v4, v7}, Ly3/d;->d(I)V

    .line 230
    iget-object v4, v4, Ly3/d;->u:Ly3/d$b;

    .line 231
    iput-object v3, v4, Ly3/d$b;->b:Ljava/lang/String;

    :cond_3d
    :goto_1f
    const/4 v3, 0x0

    .line 232
    iput v3, v8, Ly3/a;->e:I

    goto/16 :goto_26

    :cond_3e
    const-string v1, "String element size: "

    .line 233
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    iget-wide v2, v8, Ly3/a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 235
    :cond_3f
    iget-wide v3, v8, Ly3/a;->g:J

    cmp-long v5, v3, v16

    if-gtz v5, :cond_56

    .line 236
    iget-object v5, v8, Ly3/a;->d:Ly3/b;

    iget v7, v8, Ly3/a;->f:I

    long-to-int v3, v3

    invoke-virtual {v8, v6, v3}, Ly3/a;->a(Ls3/i;I)J

    move-result-wide v3

    check-cast v5, Ly3/d$a;

    .line 237
    iget-object v5, v5, Ly3/d$a;->a:Ly3/d;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x5031

    if-eq v7, v9, :cond_53

    const/16 v9, 0x5032

    if-eq v7, v9, :cond_51

    sparse-switch v7, :sswitch_data_1

    packed-switch v7, :pswitch_data_2

    goto/16 :goto_22

    .line 238
    :sswitch_5
    iput-wide v3, v5, Ly3/d;->r:J

    goto/16 :goto_22

    .line 239
    :sswitch_6
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 240
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 241
    iput v3, v5, Ly3/d$b;->e:I

    goto/16 :goto_22

    .line 242
    :sswitch_7
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    long-to-int v3, v3

    if-eqz v3, :cond_43

    const/4 v4, 0x1

    if-eq v3, v4, :cond_42

    const/4 v4, 0x2

    if-eq v3, v4, :cond_41

    const/4 v4, 0x3

    if-eq v3, v4, :cond_40

    goto/16 :goto_22

    .line 243
    :cond_40
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    iput v4, v3, Ly3/d$b;->r:I

    goto/16 :goto_22

    .line 244
    :cond_41
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    iput v4, v3, Ly3/d$b;->r:I

    goto/16 :goto_22

    .line 245
    :cond_42
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    iput v4, v3, Ly3/d$b;->r:I

    goto/16 :goto_22

    .line 246
    :cond_43
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    const/4 v4, 0x0

    iput v4, v3, Ly3/d$b;->r:I

    goto/16 :goto_22

    .line 247
    :sswitch_8
    iput-wide v3, v5, Ly3/d;->R:J

    goto/16 :goto_22

    .line 248
    :sswitch_9
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 249
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 250
    iput v3, v5, Ly3/d$b;->P:I

    goto/16 :goto_22

    .line 251
    :sswitch_a
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 252
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    .line 253
    iput-wide v3, v5, Ly3/d$b;->S:J

    goto/16 :goto_22

    .line 254
    :sswitch_b
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 255
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    .line 256
    iput-wide v3, v5, Ly3/d$b;->R:J

    goto/16 :goto_22

    .line 257
    :sswitch_c
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 258
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 259
    iput v3, v5, Ly3/d$b;->f:I

    goto/16 :goto_22

    .line 260
    :sswitch_d
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 261
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    const-wide/16 v9, 0x1

    cmp-long v3, v3, v9

    if-nez v3, :cond_44

    const/4 v3, 0x1

    goto :goto_20

    :cond_44
    const/4 v3, 0x0

    .line 262
    :goto_20
    iput-boolean v3, v5, Ly3/d$b;->U:Z

    goto/16 :goto_22

    .line 263
    :sswitch_e
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 264
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 265
    iput v3, v5, Ly3/d$b;->p:I

    goto/16 :goto_22

    .line 266
    :sswitch_f
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 267
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 268
    iput v3, v5, Ly3/d$b;->q:I

    goto/16 :goto_22

    .line 269
    :sswitch_10
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 270
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 271
    iput v3, v5, Ly3/d$b;->o:I

    goto/16 :goto_22

    :sswitch_11
    long-to-int v3, v3

    .line 272
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    if-eqz v3, :cond_48

    const/4 v4, 0x1

    if-eq v3, v4, :cond_47

    const/4 v7, 0x3

    if-eq v3, v7, :cond_46

    const/16 v4, 0xf

    if-eq v3, v4, :cond_45

    goto/16 :goto_22

    .line 273
    :cond_45
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    iput v7, v3, Ly3/d$b;->w:I

    goto/16 :goto_22

    .line 274
    :cond_46
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    iput v4, v3, Ly3/d$b;->w:I

    goto/16 :goto_22

    .line 275
    :cond_47
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    const/4 v4, 0x2

    iput v4, v3, Ly3/d$b;->w:I

    goto/16 :goto_22

    .line 276
    :cond_48
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    const/4 v4, 0x0

    iput v4, v3, Ly3/d$b;->w:I

    goto/16 :goto_22

    .line 277
    :sswitch_12
    iget-wide v9, v5, Ly3/d;->q:J

    add-long/2addr v3, v9

    iput-wide v3, v5, Ly3/d;->x:J

    goto/16 :goto_22

    :sswitch_13
    const-wide/16 v9, 0x1

    cmp-long v5, v3, v9

    if-nez v5, :cond_49

    goto/16 :goto_22

    .line 278
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AESSettingsCipherMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :sswitch_14
    const-wide/16 v9, 0x5

    cmp-long v5, v3, v9

    if-nez v5, :cond_4a

    goto/16 :goto_22

    .line 279
    :cond_4a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :sswitch_15
    const-wide/16 v9, 0x1

    cmp-long v5, v3, v9

    if-nez v5, :cond_4b

    goto/16 :goto_22

    .line 280
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EBMLReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :sswitch_16
    const-wide/16 v9, 0x1

    cmp-long v5, v3, v9

    if-ltz v5, :cond_4c

    const-wide/16 v9, 0x2

    cmp-long v5, v3, v9

    if-gtz v5, :cond_4c

    goto/16 :goto_22

    .line 281
    :cond_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DocTypeReadVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :sswitch_17
    const-wide/16 v9, 0x3

    cmp-long v5, v3, v9

    if-nez v5, :cond_4d

    goto/16 :goto_22

    .line 282
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentCompAlgo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 283
    :sswitch_18
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 284
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 285
    iput v3, v5, Ly3/d$b;->g:I

    goto/16 :goto_22

    :sswitch_19
    const/4 v3, 0x1

    .line 286
    iput-boolean v3, v5, Ly3/d;->Q:Z

    goto/16 :goto_22

    :sswitch_1a
    const/4 v9, 0x1

    .line 287
    iget-boolean v10, v5, Ly3/d;->E:Z

    if-nez v10, :cond_54

    .line 288
    invoke-virtual {v5, v7}, Ly3/d;->c(I)V

    .line 289
    iget-object v7, v5, Ly3/d;->D:Lm5/q;

    invoke-virtual {v7, v3, v4}, Lm5/q;->a(J)V

    .line 290
    iput-boolean v9, v5, Ly3/d;->E:Z

    goto/16 :goto_22

    :sswitch_1b
    long-to-int v3, v3

    .line 291
    iput v3, v5, Ly3/d;->P:I

    goto/16 :goto_22

    .line 292
    :sswitch_1c
    invoke-virtual {v5, v3, v4}, Ly3/d;->m(J)J

    move-result-wide v3

    iput-wide v3, v5, Ly3/d;->B:J

    goto/16 :goto_22

    .line 293
    :sswitch_1d
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 294
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 295
    iput v3, v5, Ly3/d$b;->c:I

    goto/16 :goto_22

    .line 296
    :sswitch_1e
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 297
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 298
    iput v3, v5, Ly3/d$b;->n:I

    goto/16 :goto_22

    .line 299
    :sswitch_1f
    invoke-virtual {v5, v7}, Ly3/d;->c(I)V

    .line 300
    iget-object v7, v5, Ly3/d;->C:Lm5/q;

    invoke-virtual {v5, v3, v4}, Ly3/d;->m(J)J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lm5/q;->a(J)V

    goto/16 :goto_22

    .line 301
    :sswitch_20
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 302
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 303
    iput v3, v5, Ly3/d$b;->m:I

    goto/16 :goto_22

    .line 304
    :sswitch_21
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 305
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 306
    iput v3, v5, Ly3/d$b;->O:I

    goto/16 :goto_22

    .line 307
    :sswitch_22
    invoke-virtual {v5, v3, v4}, Ly3/d;->m(J)J

    move-result-wide v3

    iput-wide v3, v5, Ly3/d;->I:J

    goto/16 :goto_22

    .line 308
    :sswitch_23
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 309
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    const-wide/16 v9, 0x1

    cmp-long v3, v3, v9

    if-nez v3, :cond_4e

    const/4 v3, 0x1

    goto :goto_21

    :cond_4e
    const/4 v3, 0x0

    .line 310
    :goto_21
    iput-boolean v3, v5, Ly3/d$b;->V:Z

    goto/16 :goto_22

    .line 311
    :sswitch_24
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 312
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 313
    iput v3, v5, Ly3/d$b;->d:I

    goto/16 :goto_22

    .line 314
    :pswitch_d
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 315
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 316
    iput v3, v5, Ly3/d$b;->C:I

    goto/16 :goto_22

    .line 317
    :pswitch_e
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 318
    iget-object v5, v5, Ly3/d;->u:Ly3/d$b;

    long-to-int v3, v3

    .line 319
    iput v3, v5, Ly3/d$b;->B:I

    goto :goto_22

    .line 320
    :pswitch_f
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 321
    iget-object v7, v5, Ly3/d;->u:Ly3/d$b;

    const/4 v9, 0x1

    iput-boolean v9, v7, Ly3/d$b;->x:Z

    long-to-int v3, v3

    .line 322
    invoke-static {v3}, Ln5/b;->b(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_54

    .line 323
    iget-object v4, v5, Ly3/d;->u:Ly3/d$b;

    iput v3, v4, Ly3/d$b;->y:I

    goto :goto_22

    :pswitch_10
    const/4 v9, -0x1

    .line 324
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    long-to-int v3, v3

    .line 325
    invoke-static {v3}, Ln5/b;->c(I)I

    move-result v3

    if-eq v3, v9, :cond_54

    .line 326
    iget-object v4, v5, Ly3/d;->u:Ly3/d$b;

    iput v3, v4, Ly3/d$b;->z:I

    goto :goto_22

    .line 327
    :pswitch_11
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    long-to-int v3, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_50

    const/4 v7, 0x2

    if-eq v3, v7, :cond_4f

    goto :goto_22

    .line 328
    :cond_4f
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    iput v4, v3, Ly3/d$b;->A:I

    goto :goto_22

    :cond_50
    const/4 v3, 0x2

    .line 329
    iget-object v4, v5, Ly3/d;->u:Ly3/d$b;

    iput v3, v4, Ly3/d$b;->A:I

    goto :goto_22

    :cond_51
    const-wide/16 v9, 0x1

    cmp-long v5, v3, v9

    if-nez v5, :cond_52

    goto :goto_22

    .line 330
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingScope "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_53
    const-wide/16 v9, 0x0

    cmp-long v5, v3, v9

    if-nez v5, :cond_55

    :cond_54
    :goto_22
    const/4 v3, 0x0

    .line 331
    iput v3, v8, Ly3/a;->e:I

    goto/16 :goto_26

    .line 332
    :cond_55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContentEncodingOrder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_56
    const/4 v1, 0x0

    const-string v2, "Invalid integer size: "

    .line 333
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    iget-wide v3, v8, Ly3/a;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 335
    :cond_57
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v3

    .line 336
    iget-wide v9, v8, Ly3/a;->g:J

    add-long/2addr v9, v3

    .line 337
    iget-object v5, v8, Ly3/a;->b:Ljava/util/ArrayDeque;

    new-instance v7, Ly3/a$a;

    iget v11, v8, Ly3/a;->f:I

    invoke-direct {v7, v11, v9, v10}, Ly3/a$a;-><init>(IJ)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 338
    iget-object v5, v8, Ly3/a;->d:Ly3/b;

    iget v7, v8, Ly3/a;->f:I

    iget-wide v9, v8, Ly3/a;->g:J

    check-cast v5, Ly3/d$a;

    .line 339
    iget-object v5, v5, Ly3/d$a;->a:Ly3/d;

    .line 340
    iget-object v11, v5, Ly3/d;->b0:Ls3/j;

    invoke-static {v11}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xa0

    if-eq v7, v11, :cond_64

    const/16 v11, 0xae

    if-eq v7, v11, :cond_63

    const/16 v11, 0xbb

    if-eq v7, v11, :cond_62

    const/16 v11, 0x4dbb

    if-eq v7, v11, :cond_60

    const/16 v11, 0x5035

    if-eq v7, v11, :cond_5f

    const/16 v11, 0x55d0

    if-eq v7, v11, :cond_5e

    const v11, 0x18538067

    if-eq v7, v11, :cond_5b

    const v3, 0x1c53bb6b

    if-eq v7, v3, :cond_5a

    const v3, 0x1f43b675

    if-eq v7, v3, :cond_58

    goto :goto_24

    .line 341
    :cond_58
    iget-boolean v3, v5, Ly3/d;->v:Z

    if-nez v3, :cond_61

    .line 342
    iget-boolean v3, v5, Ly3/d;->d:Z

    if-eqz v3, :cond_59

    iget-wide v3, v5, Ly3/d;->z:J

    const-wide/16 v9, -0x1

    cmp-long v3, v3, v9

    if-eqz v3, :cond_59

    const/4 v3, 0x1

    .line 343
    iput-boolean v3, v5, Ly3/d;->y:Z

    goto :goto_24

    :cond_59
    const/4 v3, 0x1

    .line 344
    iget-object v4, v5, Ly3/d;->b0:Ls3/j;

    new-instance v7, Ls3/u$b;

    iget-wide v9, v5, Ly3/d;->t:J

    invoke-direct {v7, v9, v10}, Ls3/u$b;-><init>(J)V

    invoke-interface {v4, v7}, Ls3/j;->j(Ls3/u;)V

    .line 345
    iput-boolean v3, v5, Ly3/d;->v:Z

    goto :goto_24

    .line 346
    :cond_5a
    new-instance v3, Lm5/q;

    invoke-direct {v3}, Lm5/q;-><init>()V

    iput-object v3, v5, Ly3/d;->C:Lm5/q;

    .line 347
    new-instance v3, Lm5/q;

    invoke-direct {v3}, Lm5/q;-><init>()V

    iput-object v3, v5, Ly3/d;->D:Lm5/q;

    goto :goto_24

    .line 348
    :cond_5b
    iget-wide v11, v5, Ly3/d;->q:J

    const-wide/16 v13, -0x1

    cmp-long v7, v11, v13

    if-eqz v7, :cond_5d

    cmp-long v7, v11, v3

    if-nez v7, :cond_5c

    goto :goto_23

    :cond_5c
    const-string v1, "Multiple Segment elements not supported"

    const/4 v2, 0x0

    .line 349
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 350
    :cond_5d
    :goto_23
    iput-wide v3, v5, Ly3/d;->q:J

    .line 351
    iput-wide v9, v5, Ly3/d;->p:J

    goto :goto_24

    .line 352
    :cond_5e
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 353
    iget-object v3, v5, Ly3/d;->u:Ly3/d$b;

    const/4 v4, 0x1

    .line 354
    iput-boolean v4, v3, Ly3/d$b;->x:Z

    goto :goto_24

    :cond_5f
    const/4 v3, 0x1

    .line 355
    invoke-virtual {v5, v7}, Ly3/d;->d(I)V

    .line 356
    iget-object v4, v5, Ly3/d;->u:Ly3/d$b;

    .line 357
    iput-boolean v3, v4, Ly3/d$b;->h:Z

    goto :goto_24

    :cond_60
    const/4 v3, -0x1

    .line 358
    iput v3, v5, Ly3/d;->w:I

    const-wide/16 v3, -0x1

    .line 359
    iput-wide v3, v5, Ly3/d;->x:J

    :cond_61
    :goto_24
    const/4 v3, 0x0

    goto :goto_25

    :cond_62
    const/4 v3, 0x0

    .line 360
    iput-boolean v3, v5, Ly3/d;->E:Z

    goto :goto_25

    :cond_63
    const/4 v3, 0x0

    .line 361
    new-instance v4, Ly3/d$b;

    invoke-direct {v4}, Ly3/d$b;-><init>()V

    iput-object v4, v5, Ly3/d;->u:Ly3/d$b;

    goto :goto_25

    :cond_64
    const/4 v3, 0x0

    .line 362
    iput-boolean v3, v5, Ly3/d;->Q:Z

    const-wide/16 v9, 0x0

    .line 363
    iput-wide v9, v5, Ly3/d;->R:J

    .line 364
    :goto_25
    iput v3, v8, Ly3/a;->e:I

    :goto_26
    const/4 v4, 0x1

    :goto_27
    if-eqz v4, :cond_67

    .line 365
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v7

    .line 366
    iget-boolean v5, v0, Ly3/d;->y:Z

    if-eqz v5, :cond_65

    .line 367
    iput-wide v7, v0, Ly3/d;->A:J

    .line 368
    iget-wide v7, v0, Ly3/d;->z:J

    iput-wide v7, v2, Ls3/t;->a:J

    .line 369
    iput-boolean v3, v0, Ly3/d;->y:Z

    goto :goto_28

    .line 370
    :cond_65
    iget-boolean v3, v0, Ly3/d;->v:Z

    if-eqz v3, :cond_66

    iget-wide v7, v0, Ly3/d;->A:J

    const-wide/16 v9, -0x1

    cmp-long v3, v7, v9

    if-eqz v3, :cond_66

    .line 371
    iput-wide v7, v2, Ls3/t;->a:J

    .line 372
    iput-wide v9, v0, Ly3/d;->A:J

    :goto_28
    const/4 v3, 0x1

    goto :goto_29

    :cond_66
    const/4 v3, 0x0

    :goto_29
    if-eqz v3, :cond_67

    const/4 v1, 0x1

    return v1

    :cond_67
    const/4 v5, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    .line 373
    :cond_68
    iget-wide v3, v8, Ly3/a;->g:J

    long-to-int v3, v3

    invoke-interface {v6, v3}, Ls3/i;->k(I)V

    const/4 v3, 0x0

    .line 374
    iput v3, v8, Ly3/a;->e:I

    const/4 v7, -0x1

    goto/16 :goto_1

    :cond_69
    if-nez v4, :cond_6c

    const/4 v1, 0x0

    .line 375
    :goto_2a
    iget-object v2, v0, Ly3/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6b

    .line 376
    iget-object v2, v0, Ly3/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/d$b;

    .line 377
    invoke-static {v2}, Ly3/d$b;->a(Ly3/d$b;)V

    .line 378
    iget-object v3, v2, Ly3/d$b;->T:Ls3/x;

    if-eqz v3, :cond_6a

    .line 379
    iget-object v4, v2, Ly3/d$b;->X:Ls3/w;

    iget-object v2, v2, Ly3/d$b;->j:Ls3/w$a;

    invoke-virtual {v3, v4, v2}, Ls3/x;->a(Ls3/w;Ls3/w$a;)V

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_6b
    const/4 v1, -0x1

    return v1

    :cond_6c
    const/4 v1, 0x0

    return v1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x75a2 -> :sswitch_4
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55d1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7673
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x83 -> :sswitch_24
        0x88 -> :sswitch_23
        0x9b -> :sswitch_22
        0x9f -> :sswitch_21
        0xb0 -> :sswitch_20
        0xb3 -> :sswitch_1f
        0xba -> :sswitch_1e
        0xd7 -> :sswitch_1d
        0xe7 -> :sswitch_1c
        0xee -> :sswitch_1b
        0xf1 -> :sswitch_1a
        0xfb -> :sswitch_19
        0x41e7 -> :sswitch_18
        0x4254 -> :sswitch_17
        0x4285 -> :sswitch_16
        0x42f7 -> :sswitch_15
        0x47e1 -> :sswitch_14
        0x47e8 -> :sswitch_13
        0x53ac -> :sswitch_12
        0x53b8 -> :sswitch_11
        0x54b0 -> :sswitch_10
        0x54b2 -> :sswitch_f
        0x54ba -> :sswitch_e
        0x55aa -> :sswitch_d
        0x55ee -> :sswitch_c
        0x56aa -> :sswitch_b
        0x56bb -> :sswitch_a
        0x6264 -> :sswitch_9
        0x75a2 -> :sswitch_8
        0x7671 -> :sswitch_7
        0x23e383 -> :sswitch_6
        0x2ad7b1 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x55b9
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method public final f(Ly3/d$b;JIII)V
    .locals 17
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v1, Ly3/d$b;->T:Ls3/x;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    .line 2
    iget-object v3, v1, Ly3/d$b;->X:Ls3/w;

    iget-object v8, v1, Ly3/d$b;->j:Ls3/w$a;

    move-object v1, v2

    move-object v2, v3

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Ls3/x;->b(Ls3/w;JIIILs3/w$a;)V

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v2, v1, Ly3/d$b;->b:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const-string v5, "S_TEXT/WEBVTT"

    const-string v6, "S_TEXT/ASS"

    const/4 v7, 0x2

    if-nez v2, :cond_1

    iget-object v2, v1, Ly3/d$b;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Ly3/d$b;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    :cond_1
    iget v2, v0, Ly3/d;->K:I

    const-string v8, "MatroskaExtractor"

    if-le v2, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    .line 7
    invoke-static {v8, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-wide v10, v0, Ly3/d;->I:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v12

    if-nez v2, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    .line 9
    invoke-static {v8, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_5

    .line 10
    :cond_4
    iget-object v2, v1, Ly3/d$b;->b:Ljava/lang/String;

    iget-object v8, v0, Ly3/d;->k:Lm5/w;

    .line 11
    iget-object v8, v8, Lm5/w;->a:[B

    .line 12
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, -0x1

    const v14, 0x2c0618eb

    if-eq v12, v14, :cond_9

    const v6, 0x3e4ca2d8

    if-eq v12, v6, :cond_7

    const v5, 0x54c61e47

    if-eq v12, v5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v13, v7

    goto :goto_1

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v13, v9

    goto :goto_1

    :cond_9
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    move v13, v4

    :goto_1
    const-wide/16 v2, 0x3e8

    if-eqz v13, :cond_d

    if-eq v13, v9, :cond_c

    if-ne v13, v7, :cond_b

    const-string v5, "%02d:%02d:%02d,%03d"

    .line 13
    invoke-static {v10, v11, v5, v2, v3}, Ly3/d;->i(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x13

    goto :goto_2

    .line 14
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_c
    const-string v5, "%02d:%02d:%02d.%03d"

    .line 15
    invoke-static {v10, v11, v5, v2, v3}, Ly3/d;->i(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_2

    :cond_d
    const-wide/16 v2, 0x2710

    const-string v5, "%01d:%02d:%02d:%02d"

    .line 16
    invoke-static {v10, v11, v5, v2, v3}, Ly3/d;->i(JLjava/lang/String;J)[B

    move-result-object v2

    const/16 v3, 0x15

    .line 17
    :goto_2
    array-length v5, v2

    invoke-static {v2, v4, v8, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    iget-object v2, v0, Ly3/d;->k:Lm5/w;

    .line 19
    iget v2, v2, Lm5/w;->b:I

    .line 20
    :goto_3
    iget-object v3, v0, Ly3/d;->k:Lm5/w;

    .line 21
    iget v5, v3, Lm5/w;->c:I

    if-ge v2, v5, :cond_f

    .line 22
    iget-object v5, v3, Lm5/w;->a:[B

    .line 23
    aget-byte v5, v5, v2

    if-nez v5, :cond_e

    .line 24
    invoke-virtual {v3, v2}, Lm5/w;->C(I)V

    goto :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 25
    :cond_f
    :goto_4
    iget-object v2, v1, Ly3/d$b;->X:Ls3/w;

    iget-object v3, v0, Ly3/d;->k:Lm5/w;

    .line 26
    iget v5, v3, Lm5/w;->c:I

    .line 27
    invoke-interface {v2, v3, v5}, Ls3/w;->f(Lm5/w;I)V

    .line 28
    iget-object v2, v0, Ly3/d;->k:Lm5/w;

    .line 29
    iget v2, v2, Lm5/w;->c:I

    add-int v2, p5, v2

    :goto_5
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_11

    .line 30
    iget v3, v0, Ly3/d;->K:I

    if-le v3, v9, :cond_10

    .line 31
    iget-object v3, v0, Ly3/d;->n:Lm5/w;

    invoke-virtual {v3, v4}, Lm5/w;->A(I)V

    goto :goto_6

    .line 32
    :cond_10
    iget-object v3, v0, Ly3/d;->n:Lm5/w;

    .line 33
    iget v4, v3, Lm5/w;->c:I

    .line 34
    iget-object v5, v1, Ly3/d$b;->X:Ls3/w;

    invoke-interface {v5, v3, v4}, Ls3/w;->a(Lm5/w;I)V

    add-int/2addr v2, v4

    :cond_11
    :goto_6
    move v14, v2

    .line 35
    iget-object v10, v1, Ly3/d$b;->X:Ls3/w;

    iget-object v1, v1, Ly3/d$b;->j:Ls3/w$a;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 36
    :goto_7
    iput-boolean v9, v0, Ly3/d;->F:Z

    return-void
.end method

.method public final g(Ls3/j;)V
    .locals 0

    iput-object p1, p0, Ly3/d;->b0:Ls3/j;

    return-void
.end method

.method public final h(I)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v0, p1

    .line 1
    iget-object v1, v7, Ly3/d;->b0:Ls3/j;

    invoke-static {v1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0xa0

    const-wide/16 v3, 0x0

    const-string v5, "A_OPUS"

    if-eq v0, v2, :cond_7f

    const/16 v2, 0xae

    const/4 v6, -0x1

    if-eq v0, v2, :cond_11

    const/16 v2, 0x4dbb

    const v5, 0x1c53bb6b

    if-eq v0, v2, :cond_f

    const/16 v2, 0x6240

    if-eq v0, v2, :cond_d

    const/16 v2, 0x6d80

    if-eq v0, v2, :cond_b

    const v2, 0x1549a966

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v2, :cond_9

    const v2, 0x1654ae6b

    if-eq v0, v2, :cond_7

    if-eq v0, v5, :cond_0

    goto/16 :goto_2d

    .line 2
    :cond_0
    iget-boolean v0, v7, Ly3/d;->v:Z

    if-nez v0, :cond_6

    .line 3
    iget-object v0, v7, Ly3/d;->b0:Ls3/j;

    iget-object v2, v7, Ly3/d;->C:Lm5/q;

    iget-object v5, v7, Ly3/d;->D:Lm5/q;

    .line 4
    iget-wide v10, v7, Ly3/d;->q:J

    const-wide/16 v12, -0x1

    cmp-long v6, v10, v12

    if-eqz v6, :cond_5

    iget-wide v10, v7, Ly3/d;->t:J

    cmp-long v6, v10, v8

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    .line 5
    iget v6, v2, Lm5/q;->a:I

    if-eqz v6, :cond_5

    if-eqz v5, :cond_5

    .line 6
    iget v8, v5, Lm5/q;->a:I

    if-eq v8, v6, :cond_1

    goto/16 :goto_2

    .line 7
    :cond_1
    new-array v8, v6, [I

    .line 8
    new-array v9, v6, [J

    .line 9
    new-array v10, v6, [J

    .line 10
    new-array v11, v6, [J

    move v12, v1

    :goto_0
    if-ge v12, v6, :cond_2

    .line 11
    invoke-virtual {v2, v12}, Lm5/q;->b(I)J

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 12
    iget-wide v13, v7, Ly3/d;->q:J

    invoke-virtual {v5, v12}, Lm5/q;->b(I)J

    move-result-wide v15

    add-long/2addr v15, v13

    aput-wide v15, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 v2, v6, -0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 13
    aget-wide v12, v9, v2

    aget-wide v14, v9, v1

    sub-long/2addr v12, v14

    long-to-int v5, v12

    aput v5, v8, v1

    .line 14
    aget-wide v12, v11, v2

    aget-wide v14, v11, v1

    sub-long/2addr v12, v14

    aput-wide v12, v10, v1

    move v1, v2

    goto :goto_1

    .line 15
    :cond_3
    iget-wide v5, v7, Ly3/d;->q:J

    iget-wide v12, v7, Ly3/d;->p:J

    add-long/2addr v5, v12

    aget-wide v12, v9, v2

    sub-long/2addr v5, v12

    long-to-int v1, v5

    aput v1, v8, v2

    .line 16
    iget-wide v5, v7, Ly3/d;->t:J

    aget-wide v12, v11, v2

    sub-long/2addr v5, v12

    aput-wide v5, v10, v2

    .line 17
    aget-wide v5, v10, v2

    cmp-long v1, v5, v3

    if-gtz v1, :cond_4

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding last cue point with unexpected duration: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MatroskaExtractor"

    invoke-static {v3, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v8, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    .line 20
    invoke-static {v9, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    .line 21
    invoke-static {v10, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    .line 22
    invoke-static {v11, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    .line 23
    :cond_4
    new-instance v1, Ls3/c;

    invoke-direct {v1, v8, v9, v10, v11}, Ls3/c;-><init>([I[J[J[J)V

    goto :goto_3

    .line 24
    :cond_5
    :goto_2
    new-instance v1, Ls3/u$b;

    iget-wide v2, v7, Ly3/d;->t:J

    invoke-direct {v1, v2, v3}, Ls3/u$b;-><init>(J)V

    .line 25
    :goto_3
    invoke-interface {v0, v1}, Ls3/j;->j(Ls3/u;)V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, v7, Ly3/d;->v:Z

    :cond_6
    const/4 v0, 0x0

    .line 27
    iput-object v0, v7, Ly3/d;->C:Lm5/q;

    .line 28
    iput-object v0, v7, Ly3/d;->D:Lm5/q;

    goto/16 :goto_2d

    :cond_7
    const/4 v0, 0x0

    .line 29
    iget-object v1, v7, Ly3/d;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 30
    iget-object v0, v7, Ly3/d;->b0:Ls3/j;

    invoke-interface {v0}, Ls3/j;->b()V

    goto/16 :goto_2d

    :cond_8
    const-string v1, "No valid tracks were found"

    .line 31
    invoke-static {v1, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 32
    :cond_9
    iget-wide v0, v7, Ly3/d;->r:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_a

    const-wide/32 v0, 0xf4240

    .line 33
    iput-wide v0, v7, Ly3/d;->r:J

    .line 34
    :cond_a
    iget-wide v0, v7, Ly3/d;->s:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_85

    .line 35
    invoke-virtual {v7, v0, v1}, Ly3/d;->m(J)J

    move-result-wide v0

    iput-wide v0, v7, Ly3/d;->t:J

    goto/16 :goto_2d

    .line 36
    :cond_b
    invoke-virtual/range {p0 .. p1}, Ly3/d;->d(I)V

    .line 37
    iget-object v0, v7, Ly3/d;->u:Ly3/d$b;

    iget-boolean v1, v0, Ly3/d$b;->h:Z

    if-eqz v1, :cond_85

    iget-object v0, v0, Ly3/d$b;->i:[B

    if-nez v0, :cond_c

    goto/16 :goto_2d

    :cond_c
    const-string v0, "Combining encryption and compression is not supported"

    const/4 v1, 0x0

    .line 38
    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 39
    :cond_d
    invoke-virtual/range {p0 .. p1}, Ly3/d;->d(I)V

    .line 40
    iget-object v0, v7, Ly3/d;->u:Ly3/d$b;

    iget-boolean v2, v0, Ly3/d$b;->h:Z

    if-eqz v2, :cond_85

    .line 41
    iget-object v2, v0, Ly3/d$b;->j:Ls3/w$a;

    if-eqz v2, :cond_e

    .line 42
    new-instance v3, Lr3/d;

    const/4 v4, 0x1

    new-array v5, v4, [Lr3/d$b;

    new-instance v6, Lr3/d$b;

    sget-object v8, Ln3/i;->a:Ljava/util/UUID;

    iget-object v2, v2, Ls3/w$a;->b:[B

    const-string v9, "video/webm"

    const/4 v10, 0x0

    .line 43
    invoke-direct {v6, v8, v10, v9, v2}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v6, v5, v1

    .line 44
    invoke-direct {v3, v10, v4, v5}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    .line 45
    iput-object v3, v0, Ly3/d$b;->l:Lr3/d;

    goto/16 :goto_2d

    :cond_e
    const/4 v0, 0x0

    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    .line 46
    invoke-static {v1, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 47
    :cond_f
    iget v0, v7, Ly3/d;->w:I

    if-eq v0, v6, :cond_10

    iget-wide v1, v7, Ly3/d;->x:J

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_10

    if-ne v0, v5, :cond_85

    .line 48
    iput-wide v1, v7, Ly3/d;->z:J

    goto/16 :goto_2d

    :cond_10
    const-string v0, "Mandatory element SeekID or SeekPosition not found"

    const/4 v1, 0x0

    .line 49
    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 50
    :cond_11
    iget-object v0, v7, Ly3/d;->u:Ly3/d$b;

    invoke-static {v0}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, v0, Ly3/d$b;->b:Ljava/lang/String;

    if-eqz v1, :cond_7e

    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "A_MS/ACM"

    const-string v4, "V_MPEG4/ISO/SP"

    const-string v6, "V_MPEG4/ISO/AP"

    const-string v8, "S_VOBSUB"

    const-string v9, "V_MPEG4/ISO/AVC"

    const-string v10, "V_MPEG4/ISO/ASP"

    const-string v11, "S_DVBSUB"

    const-string v12, "V_MS/VFW/FOURCC"

    const-string v13, "A_MPEG/L3"

    const-string v14, "A_MPEG/L2"

    const-string v15, "A_VORBIS"

    move-object/from16 v16, v0

    const-string v0, "A_TRUEHD"

    const/16 v17, 0x13

    const/16 v18, 0x12

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_4

    :cond_12
    const/16 v1, 0x20

    goto/16 :goto_5

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_4

    :cond_13
    const/16 v1, 0x1f

    goto/16 :goto_5

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_4

    :cond_14
    const/16 v1, 0x1e

    goto/16 :goto_5

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_4

    :cond_15
    const/16 v1, 0x1d

    goto/16 :goto_5

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_4

    :cond_16
    const/16 v1, 0x1c

    goto/16 :goto_5

    :sswitch_5
    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_4

    :cond_17
    const/16 v1, 0x1b

    goto/16 :goto_5

    :sswitch_6
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_4

    :cond_18
    const/16 v1, 0x1a

    goto/16 :goto_5

    :sswitch_7
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_4

    :cond_19
    const/16 v1, 0x19

    goto/16 :goto_5

    :sswitch_8
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_4

    :cond_1a
    const/16 v1, 0x18

    goto/16 :goto_5

    :sswitch_9
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_4

    :cond_1b
    const/16 v1, 0x17

    goto/16 :goto_5

    :sswitch_a
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_4

    :cond_1c
    const/16 v1, 0x16

    goto/16 :goto_5

    :sswitch_b
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_4

    :cond_1d
    const/16 v1, 0x15

    goto/16 :goto_5

    :sswitch_c
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_4

    :cond_1e
    const/16 v1, 0x14

    goto/16 :goto_5

    :sswitch_d
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_4

    :cond_1f
    move/from16 v1, v17

    goto/16 :goto_5

    :sswitch_e
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_4

    :cond_20
    move/from16 v1, v18

    goto/16 :goto_5

    :sswitch_f
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_4

    :cond_21
    const/16 v1, 0x11

    goto/16 :goto_5

    :sswitch_10
    const-string v2, "V_AV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_4

    :cond_22
    const/16 v1, 0x10

    goto/16 :goto_5

    :sswitch_11
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_4

    :cond_23
    const/16 v1, 0xf

    goto/16 :goto_5

    :sswitch_12
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_4

    :cond_24
    const/16 v1, 0xe

    goto/16 :goto_5

    :sswitch_13
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_4

    :cond_25
    const/16 v1, 0xd

    goto/16 :goto_5

    :sswitch_14
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_4

    :cond_26
    const/16 v1, 0xc

    goto/16 :goto_5

    :sswitch_15
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    goto/16 :goto_4

    :cond_27
    const/16 v1, 0xb

    goto/16 :goto_5

    :sswitch_16
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto/16 :goto_4

    :cond_28
    const/16 v1, 0xa

    goto/16 :goto_5

    :sswitch_17
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto/16 :goto_4

    :cond_29
    const/16 v1, 0x9

    goto/16 :goto_5

    :sswitch_18
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_4

    :cond_2a
    const/16 v1, 0x8

    goto :goto_5

    :sswitch_19
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    goto :goto_4

    :cond_2b
    const/4 v1, 0x7

    goto :goto_5

    :sswitch_1a
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    goto :goto_4

    :cond_2c
    const/4 v1, 0x6

    goto :goto_5

    :sswitch_1b
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_4

    :cond_2d
    const/4 v1, 0x5

    goto :goto_5

    :sswitch_1c
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_4

    :cond_2e
    const/4 v1, 0x4

    goto :goto_5

    :sswitch_1d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_4

    :cond_2f
    const/4 v1, 0x3

    goto :goto_5

    :sswitch_1e
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    goto :goto_4

    :cond_30
    const/4 v1, 0x2

    goto :goto_5

    :sswitch_1f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_4

    :cond_31
    const/4 v1, 0x1

    goto :goto_5

    :sswitch_20
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_4

    :cond_32
    const/4 v1, 0x0

    goto :goto_5

    :goto_4
    const/4 v1, -0x1

    :goto_5
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_6

    :pswitch_0
    const/4 v1, 0x1

    :goto_6
    if-eqz v1, :cond_7d

    .line 53
    iget-object v1, v7, Ly3/d;->b0:Ls3/j;

    move-object/from16 v2, v16

    iget v7, v2, Ly3/d$b;->c:I

    move-object/from16 v16, v1

    .line 54
    iget-object v1, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v19

    move/from16 p1, v7

    const/4 v7, 0x4

    sparse-switch v19, :sswitch_data_1

    goto/16 :goto_7

    :sswitch_21
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_7

    :cond_33
    const/16 v0, 0x20

    goto/16 :goto_8

    :sswitch_22
    const-string v0, "A_FLAC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_7

    :cond_34
    const/16 v0, 0x1f

    goto/16 :goto_8

    :sswitch_23
    const-string v0, "A_EAC3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_7

    :cond_35
    const/16 v0, 0x1e

    goto/16 :goto_8

    :sswitch_24
    const-string v0, "V_MPEG2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto/16 :goto_7

    :cond_36
    const/16 v0, 0x1d

    goto/16 :goto_8

    :sswitch_25
    const-string v0, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_7

    :cond_37
    const/16 v0, 0x1c

    goto/16 :goto_8

    :sswitch_26
    const-string v0, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    goto/16 :goto_7

    :cond_38
    const/16 v0, 0x1b

    goto/16 :goto_8

    :sswitch_27
    const-string v0, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto/16 :goto_7

    :cond_39
    const/16 v0, 0x1a

    goto/16 :goto_8

    :sswitch_28
    const-string v0, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto/16 :goto_7

    :cond_3a
    const/16 v0, 0x19

    goto/16 :goto_8

    :sswitch_29
    const-string v0, "A_PCM/INT/LIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_7

    :cond_3b
    const/16 v0, 0x18

    goto/16 :goto_8

    :sswitch_2a
    const-string v0, "A_PCM/INT/BIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto/16 :goto_7

    :cond_3c
    const/16 v0, 0x17

    goto/16 :goto_8

    :sswitch_2b
    const-string v0, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto/16 :goto_7

    :cond_3d
    const/16 v0, 0x16

    goto/16 :goto_8

    :sswitch_2c
    const-string v0, "A_DTS/EXPRESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_7

    :cond_3e
    const/16 v0, 0x15

    goto/16 :goto_8

    :sswitch_2d
    const-string v0, "V_THEORA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto/16 :goto_7

    :cond_3f
    const/16 v0, 0x14

    goto/16 :goto_8

    :sswitch_2e
    const-string v0, "S_HDMV/PGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto/16 :goto_7

    :cond_40
    move/from16 v0, v17

    goto/16 :goto_8

    :sswitch_2f
    const-string v0, "V_VP9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_7

    :cond_41
    move/from16 v0, v18

    goto/16 :goto_8

    :sswitch_30
    const-string v0, "V_VP8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto/16 :goto_7

    :cond_42
    const/16 v0, 0x11

    goto/16 :goto_8

    :sswitch_31
    const-string v0, "V_AV1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_7

    :cond_43
    const/16 v0, 0x10

    goto/16 :goto_8

    :sswitch_32
    const-string v0, "A_DTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto/16 :goto_7

    :cond_44
    const/16 v0, 0xf

    goto/16 :goto_8

    :sswitch_33
    const-string v0, "A_AC3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_7

    :cond_45
    const/16 v0, 0xe

    goto/16 :goto_8

    :sswitch_34
    const-string v0, "A_AAC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto/16 :goto_7

    :cond_46
    const/16 v0, 0xd

    goto/16 :goto_8

    :sswitch_35
    const-string v0, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto/16 :goto_7

    :cond_47
    const/16 v0, 0xc

    goto/16 :goto_8

    :sswitch_36
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    goto/16 :goto_7

    :cond_48
    const/16 v0, 0xb

    goto/16 :goto_8

    :sswitch_37
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_7

    :cond_49
    const/16 v0, 0xa

    goto/16 :goto_8

    :sswitch_38
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto/16 :goto_7

    :cond_4a
    const/16 v0, 0x9

    goto/16 :goto_8

    :sswitch_39
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_7

    :cond_4b
    const/16 v0, 0x8

    goto :goto_8

    :sswitch_3a
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    goto :goto_7

    :cond_4c
    const/4 v0, 0x7

    goto :goto_8

    :sswitch_3b
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_7

    :cond_4d
    const/4 v0, 0x6

    goto :goto_8

    :sswitch_3c
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_7

    :cond_4e
    const/4 v0, 0x5

    goto :goto_8

    :sswitch_3d
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto :goto_7

    :cond_4f
    move v0, v7

    goto :goto_8

    :sswitch_3e
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_7

    :cond_50
    const/4 v0, 0x3

    goto :goto_8

    :sswitch_3f
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto :goto_7

    :cond_51
    const/4 v0, 0x2

    goto :goto_8

    :sswitch_40
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    goto :goto_7

    :cond_52
    const/4 v0, 0x1

    goto :goto_8

    :sswitch_41
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_7

    :cond_53
    const/4 v0, 0x0

    goto :goto_8

    :goto_7
    const/4 v0, -0x1

    :goto_8
    const-string v1, "video/x-unknown"

    const-string v3, ". Setting mimeType to "

    const-string v4, "audio/raw"

    const-string v5, "audio/x-unknown"

    const-string v6, "MatroskaExtractor"

    packed-switch v0, :pswitch_data_1

    move-object/from16 v7, p0

    const-string v0, "Unrecognized codec identifier."

    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :pswitch_1
    const/16 v0, 0x1680

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    iget-object v3, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x8

    .line 58
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-wide v6, v2, Ly3/d$b;->R:J

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v4, v2, Ly3/d$b;->S:J

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 61
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "audio/opus"

    goto/16 :goto_10

    .line 62
    :pswitch_2
    iget-object v0, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "audio/flac"

    goto/16 :goto_e

    :pswitch_3
    const-string v1, "audio/eac3"

    goto/16 :goto_a

    :pswitch_4
    const-string v1, "video/mpeg2"

    goto/16 :goto_a

    :pswitch_5
    const-string v1, "application/x-subrip"

    goto/16 :goto_a

    :pswitch_6
    const-string v1, "text/vtt"

    goto/16 :goto_a

    .line 63
    :pswitch_7
    new-instance v0, Lm5/w;

    iget-object v1, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lm5/w;-><init>([B)V

    invoke-static {v0}, Ln5/e;->a(Lm5/w;)Ln5/e;

    move-result-object v0

    .line 64
    iget-object v1, v0, Ln5/e;->a:Ljava/util/List;

    .line 65
    iget v3, v0, Ln5/e;->b:I

    iput v3, v2, Ly3/d$b;->Y:I

    .line 66
    iget-object v0, v0, Ln5/e;->d:Ljava/lang/String;

    const-string v3, "video/hevc"

    goto/16 :goto_c

    .line 67
    :pswitch_8
    sget-object v0, Ly3/d;->d0:[B

    .line 68
    iget-object v1, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lu6/v;->w(Ljava/lang/Object;Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    const-string v1, "text/x-ssa"

    goto/16 :goto_e

    .line 69
    :pswitch_9
    iget v0, v2, Ly3/d$b;->P:I

    invoke-static {v0}, Lm5/g0;->y(I)I

    move-result v7

    if-nez v7, :cond_56

    const-string v0, "Unsupported little endian PCM bit depth: "

    .line 70
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    iget v1, v2, Ly3/d$b;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 72
    :pswitch_a
    iget v0, v2, Ly3/d$b;->P:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_54

    const/4 v7, 0x3

    goto :goto_9

    :cond_54
    const/16 v1, 0x10

    if-ne v0, v1, :cond_55

    const/high16 v7, 0x10000000

    goto :goto_9

    :cond_55
    const-string v0, "Unsupported big endian PCM bit depth: "

    .line 73
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    iget v1, v2, Ly3/d$b;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 75
    :pswitch_b
    iget v0, v2, Ly3/d$b;->P:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_57

    :cond_56
    :goto_9
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    goto/16 :goto_20

    :cond_57
    const-string v0, "Unsupported floating point PCM bit depth: "

    .line 76
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    iget v1, v2, Ly3/d$b;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_c
    const-string v1, "application/pgs"

    goto :goto_a

    :pswitch_d
    const-string v1, "video/x-vnd.on2.vp9"

    goto :goto_a

    :pswitch_e
    const-string v1, "video/x-vnd.on2.vp8"

    goto :goto_a

    :pswitch_f
    const-string v1, "video/av01"

    goto :goto_a

    :pswitch_10
    const-string v1, "audio/vnd.dts"

    goto :goto_a

    :pswitch_11
    const-string v1, "audio/ac3"

    goto :goto_a

    .line 78
    :pswitch_12
    iget-object v0, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 79
    iget-object v1, v2, Ly3/d$b;->k:[B

    invoke-static {v1}, Lp3/a;->e([B)Lp3/a$a;

    move-result-object v1

    .line 80
    iget v3, v1, Lp3/a$a;->a:I

    iput v3, v2, Ly3/d$b;->Q:I

    .line 81
    iget v3, v1, Lp3/a$a;->b:I

    iput v3, v2, Ly3/d$b;->O:I

    .line 82
    iget-object v1, v1, Lp3/a$a;->c:Ljava/lang/String;

    const-string v3, "audio/mp4a-latm"

    move-object v4, v3

    goto :goto_d

    :pswitch_13
    const-string v1, "audio/vnd.dts.hd"

    :goto_a
    :pswitch_14
    move-object v5, v1

    :goto_b
    const/4 v0, 0x0

    move-object v1, v0

    move-object v3, v5

    goto :goto_f

    .line 83
    :pswitch_15
    iget-object v0, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    const-string v1, "application/vobsub"

    goto :goto_e

    .line 84
    :pswitch_16
    new-instance v0, Lm5/w;

    iget-object v1, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lm5/w;-><init>([B)V

    invoke-static {v0}, Ln5/a;->b(Lm5/w;)Ln5/a;

    move-result-object v0

    .line 85
    iget-object v1, v0, Ln5/a;->a:Ljava/util/List;

    .line 86
    iget v3, v0, Ln5/a;->b:I

    iput v3, v2, Ly3/d$b;->Y:I

    .line 87
    iget-object v0, v0, Ln5/a;->f:Ljava/lang/String;

    const-string v3, "video/avc"

    :goto_c
    move-object v4, v3

    move-object/from16 v20, v1

    move-object v1, v0

    move-object/from16 v0, v20

    :goto_d
    const/4 v3, 0x1

    const/4 v5, 0x3

    const/4 v6, -0x1

    goto/16 :goto_1b

    :pswitch_17
    new-array v0, v7, [B

    .line 88
    iget-object v1, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    invoke-static {v0}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    const-string v1, "application/dvbsubs"

    :goto_e
    move-object v3, v1

    move-object v1, v0

    :goto_f
    const/4 v0, -0x1

    :goto_10
    const/4 v4, 0x3

    goto/16 :goto_18

    .line 90
    :pswitch_18
    iget-object v0, v2, Ly3/d$b;->b:Ljava/lang/String;

    .line 91
    invoke-virtual {v2, v0}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 92
    array-length v3, v0

    const/16 v4, 0x10

    if-gt v4, v3, :cond_58

    const/4 v3, 0x1

    goto :goto_11

    :cond_58
    const/4 v3, 0x0

    .line 93
    :goto_11
    :try_start_0
    invoke-static {v3}, Lm5/a;->a(Z)V

    .line 94
    aget-byte v3, v0, v4

    int-to-long v3, v3

    const-wide/16 v7, 0xff

    and-long/2addr v3, v7

    const/16 v5, 0x11

    aget-byte v5, v0, v5

    int-to-long v9, v5

    and-long/2addr v9, v7

    const/16 v5, 0x8

    shl-long/2addr v9, v5

    or-long/2addr v3, v9

    aget-byte v5, v0, v18

    int-to-long v9, v5

    and-long/2addr v9, v7

    const/16 v5, 0x10

    shl-long/2addr v9, v5

    or-long/2addr v3, v9

    aget-byte v5, v0, v17

    int-to-long v9, v5

    and-long/2addr v7, v9

    const/16 v5, 0x18

    shl-long/2addr v7, v5

    or-long/2addr v3, v7

    const-wide/32 v7, 0x58564944

    cmp-long v5, v3, v7

    if-nez v5, :cond_59

    .line 95
    new-instance v0, Landroid/util/Pair;

    const-string v1, "video/divx"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_59
    const-wide/32 v7, 0x33363248

    cmp-long v5, v3, v7

    if-nez v5, :cond_5a

    .line 96
    new-instance v0, Landroid/util/Pair;

    const-string v1, "video/3gpp"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_5a
    const-wide/32 v7, 0x31435657

    cmp-long v3, v3, v7

    if-nez v3, :cond_5d

    const/16 v1, 0x28

    .line 97
    :goto_12
    array-length v3, v0

    add-int/lit8 v3, v3, -0x4

    if-ge v1, v3, :cond_5c

    .line 98
    aget-byte v3, v0, v1

    if-nez v3, :cond_5b

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_5b

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5b

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, v0, v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_5b

    .line 99
    array-length v3, v0

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 100
    new-instance v1, Landroid/util/Pair;

    const-string v3, "video/wvc1"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_13

    :cond_5b
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_5c
    const-string v0, "Failed to find FourCC VC1 initialization data"

    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5d
    const/4 v0, 0x0

    const-string v3, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 102
    invoke-static {v6, v3}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    .line 104
    :goto_13
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 105
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v3, -0x1

    goto :goto_15

    :catch_0
    const-string v0, "Error parsing FourCC private data"

    const/4 v1, 0x0

    .line 106
    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :pswitch_19
    const-string v0, "audio/mpeg"

    goto :goto_14

    :pswitch_1a
    const-string v0, "audio/mpeg-L2"

    :goto_14
    move-object v1, v0

    const/16 v3, 0x1000

    const/4 v0, 0x0

    :goto_15
    const/4 v4, 0x1

    const/4 v5, 0x3

    move/from16 v20, v3

    move-object v3, v0

    move/from16 v0, v20

    move/from16 v21, v4

    move-object v4, v1

    move/from16 v1, v21

    goto/16 :goto_1f

    :pswitch_1b
    const/16 v0, 0x2000

    .line 107
    iget-object v1, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v1

    const-string v3, "Error parsing vorbis codec private"

    const/4 v4, 0x0

    .line 108
    :try_start_1
    aget-byte v4, v1, v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_63

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    :goto_16
    aget-byte v6, v1, v4

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_5e

    add-int/lit16 v5, v5, 0xff

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_5e
    add-int/lit8 v6, v4, 0x1

    .line 110
    aget-byte v4, v1, v4

    and-int/2addr v4, v7

    add-int/2addr v5, v4

    const/4 v4, 0x0

    .line 111
    :goto_17
    aget-byte v8, v1, v6

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_5f

    add-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_5f
    add-int/lit8 v8, v6, 0x1

    .line 112
    aget-byte v6, v1, v6

    and-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 113
    aget-byte v6, v1, v8

    const/4 v7, 0x1

    if-ne v6, v7, :cond_62

    .line 114
    new-array v6, v5, [B

    const/4 v7, 0x0

    .line 115
    invoke-static {v1, v8, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v5

    .line 116
    aget-byte v5, v1, v8

    const/4 v7, 0x3

    if-ne v5, v7, :cond_61

    add-int/2addr v8, v4

    .line 117
    aget-byte v4, v1, v8

    const/4 v5, 0x5

    if-ne v4, v5, :cond_60

    .line 118
    array-length v4, v1

    sub-int/2addr v4, v8

    new-array v4, v4, [B

    .line 119
    array-length v5, v1

    sub-int/2addr v5, v8

    const/4 v9, 0x0

    invoke-static {v1, v8, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "audio/vorbis"

    move v4, v7

    goto :goto_18

    :cond_60
    const/4 v0, 0x0

    .line 123
    :try_start_2
    invoke-static {v3, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_61
    const/4 v0, 0x0

    .line 124
    invoke-static {v3, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_62
    const/4 v0, 0x0

    .line 125
    :try_start_3
    invoke-static {v3, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_63
    const/4 v0, 0x0

    .line 126
    :try_start_4
    invoke-static {v3, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    const/4 v0, 0x0

    .line 127
    :catch_2
    invoke-static {v3, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :pswitch_1c
    const/4 v4, 0x3

    .line 128
    new-instance v0, Ls3/x;

    invoke-direct {v0}, Ls3/x;-><init>()V

    iput-object v0, v2, Ly3/d$b;->T:Ls3/x;

    const-string v3, "audio/true-hd"

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_18
    const/4 v5, 0x1

    move-object/from16 v20, v3

    move-object v3, v1

    move v1, v5

    move v5, v4

    move-object/from16 v4, v20

    goto/16 :goto_1f

    :pswitch_1d
    const/4 v0, 0x3

    .line 129
    new-instance v1, Lm5/w;

    iget-object v7, v2, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ly3/d$b;->b(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v1, v7}, Lm5/w;-><init>([B)V

    .line 130
    :try_start_5
    invoke-virtual {v1}, Lm5/w;->l()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_64

    goto :goto_19

    :cond_64
    const v9, 0xfffe

    if-ne v7, v9, :cond_65

    const/16 v7, 0x18

    .line 131
    invoke-virtual {v1, v7}, Lm5/w;->D(I)V

    .line 132
    invoke-virtual {v1}, Lm5/w;->m()J

    move-result-wide v9

    .line 133
    sget-object v7, Ly3/d;->g0:Ljava/util/UUID;

    .line 134
    invoke-virtual {v7}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_65

    .line 135
    invoke-virtual {v1}, Lm5/w;->m()J

    move-result-wide v9

    invoke-virtual {v7}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v11
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    cmp-long v1, v9, v11

    if-nez v1, :cond_65

    :goto_19
    move v1, v8

    goto :goto_1a

    :cond_65
    const/4 v1, 0x0

    :goto_1a
    if-eqz v1, :cond_67

    .line 136
    iget v1, v2, Ly3/d$b;->P:I

    invoke-static {v1}, Lm5/g0;->y(I)I

    move-result v1

    if-nez v1, :cond_66

    const-string v1, "Unsupported PCM bit depth: "

    .line 137
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    iget v4, v2, Ly3/d$b;->P:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_66
    const/4 v3, 0x0

    const/4 v5, 0x0

    move v6, v1

    move-object v1, v3

    move v3, v8

    move-object/from16 v20, v5

    move v5, v0

    move-object/from16 v0, v20

    :goto_1b
    const/4 v7, -0x1

    goto :goto_21

    :cond_67
    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    .line 139
    invoke-static {v6, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    const/4 v1, 0x0

    goto :goto_1e

    :catch_3
    const-string v0, "Error parsing MS/ACM codec private"

    const/4 v1, 0x0

    .line 140
    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :pswitch_1e
    const/4 v8, 0x1

    const/4 v0, 0x3

    .line 141
    iget-object v1, v2, Ly3/d$b;->k:[B

    if-nez v1, :cond_68

    const/4 v1, 0x0

    goto :goto_1d

    :cond_68
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_1d
    const-string v5, "video/mp4v-es"

    :goto_1e
    const/4 v3, -0x1

    move-object v4, v5

    move v5, v0

    move v0, v3

    move-object v3, v1

    move v1, v8

    :goto_1f
    const/4 v7, -0x1

    :goto_20
    const/4 v6, 0x0

    move/from16 v20, v7

    move v7, v0

    move-object v0, v3

    move v3, v1

    move-object v1, v6

    move/from16 v6, v20

    .line 142
    :goto_21
    iget-object v8, v2, Ly3/d$b;->N:[B

    if-eqz v8, :cond_69

    .line 143
    new-instance v9, Lm5/w;

    invoke-direct {v9, v8}, Lm5/w;-><init>([B)V

    .line 144
    invoke-static {v9}, Ln5/c;->a(Lm5/w;)Ln5/c;

    move-result-object v8

    if-eqz v8, :cond_69

    .line 145
    iget-object v1, v8, Ln5/c;->a:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    .line 146
    :cond_69
    iget-boolean v8, v2, Ly3/d$b;->V:Z

    or-int/lit8 v8, v8, 0x0

    .line 147
    iget-boolean v9, v2, Ly3/d$b;->U:Z

    if-eqz v9, :cond_6a

    const/4 v9, 0x2

    goto :goto_22

    :cond_6a
    const/4 v9, 0x0

    :goto_22
    or-int/2addr v8, v9

    .line 148
    new-instance v9, Ln3/s0$a;

    invoke-direct {v9}, Ln3/s0$a;-><init>()V

    .line 149
    invoke-static {v4}, Lm5/s;->k(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 150
    iget v5, v2, Ly3/d$b;->O:I

    .line 151
    iput v5, v9, Ln3/s0$a;->x:I

    .line 152
    iget v5, v2, Ly3/d$b;->Q:I

    .line 153
    iput v5, v9, Ln3/s0$a;->y:I

    .line 154
    iput v6, v9, Ln3/s0$a;->z:I

    goto/16 :goto_2a

    .line 155
    :cond_6b
    invoke-static {v4}, Lm5/s;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 156
    iget v3, v2, Ly3/d$b;->q:I

    if-nez v3, :cond_6e

    .line 157
    iget v3, v2, Ly3/d$b;->o:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_6c

    iget v3, v2, Ly3/d$b;->m:I

    :cond_6c
    iput v3, v2, Ly3/d$b;->o:I

    .line 158
    iget v3, v2, Ly3/d$b;->p:I

    if-ne v3, v5, :cond_6d

    iget v3, v2, Ly3/d$b;->n:I

    :cond_6d
    iput v3, v2, Ly3/d$b;->p:I

    goto :goto_23

    :cond_6e
    const/4 v5, -0x1

    :goto_23
    const/high16 v3, -0x40800000    # -1.0f

    .line 159
    iget v6, v2, Ly3/d$b;->o:I

    if-eq v6, v5, :cond_6f

    iget v10, v2, Ly3/d$b;->p:I

    if-eq v10, v5, :cond_6f

    .line 160
    iget v3, v2, Ly3/d$b;->n:I

    mul-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, v2, Ly3/d$b;->m:I

    mul-int/2addr v6, v10

    int-to-float v6, v6

    div-float/2addr v3, v6

    .line 161
    :cond_6f
    iget-boolean v6, v2, Ly3/d$b;->x:Z

    if-eqz v6, :cond_72

    .line 162
    iget v6, v2, Ly3/d$b;->D:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_71

    iget v6, v2, Ly3/d$b;->E:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_71

    iget v6, v2, Ly3/d$b;->F:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_71

    iget v6, v2, Ly3/d$b;->G:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_71

    iget v6, v2, Ly3/d$b;->H:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_71

    iget v6, v2, Ly3/d$b;->I:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_71

    iget v6, v2, Ly3/d$b;->J:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_71

    iget v6, v2, Ly3/d$b;->K:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_71

    iget v6, v2, Ly3/d$b;->L:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_71

    iget v6, v2, Ly3/d$b;->M:F

    cmpl-float v6, v6, v10

    if-nez v6, :cond_70

    goto/16 :goto_24

    :cond_70
    const/16 v6, 0x19

    new-array v6, v6, [B

    .line 163
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/4 v11, 0x0

    .line 164
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 165
    iget v11, v2, Ly3/d$b;->D:F

    const v12, 0x47435000    # 50000.0f

    mul-float/2addr v11, v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 166
    iget v11, v2, Ly3/d$b;->E:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 167
    iget v11, v2, Ly3/d$b;->F:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 168
    iget v11, v2, Ly3/d$b;->G:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 169
    iget v11, v2, Ly3/d$b;->H:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 170
    iget v11, v2, Ly3/d$b;->I:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 171
    iget v11, v2, Ly3/d$b;->J:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 172
    iget v11, v2, Ly3/d$b;->K:F

    mul-float/2addr v11, v12

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 173
    iget v11, v2, Ly3/d$b;->L:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 174
    iget v11, v2, Ly3/d$b;->M:F

    add-float/2addr v11, v13

    float-to-int v11, v11

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 175
    iget v11, v2, Ly3/d$b;->B:I

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 176
    iget v11, v2, Ly3/d$b;->C:I

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_25

    :cond_71
    :goto_24
    const/4 v6, 0x0

    .line 177
    :goto_25
    new-instance v10, Ln5/b;

    iget v11, v2, Ly3/d$b;->y:I

    iget v12, v2, Ly3/d$b;->A:I

    iget v13, v2, Ly3/d$b;->z:I

    invoke-direct {v10, v11, v12, v13, v6}, Ln5/b;-><init>(III[B)V

    goto :goto_26

    :cond_72
    const/4 v10, 0x0

    .line 178
    :goto_26
    iget-object v6, v2, Ly3/d$b;->a:Ljava/lang/String;

    if-eqz v6, :cond_73

    .line 179
    sget-object v11, Ly3/d;->h0:Ljava/util/Map;

    .line 180
    invoke-interface {v11, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 181
    iget-object v5, v2, Ly3/d$b;->a:Ljava/lang/String;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 182
    :cond_73
    iget v6, v2, Ly3/d$b;->r:I

    if-nez v6, :cond_78

    iget v6, v2, Ly3/d$b;->s:F

    const/4 v11, 0x0

    .line 183
    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_78

    iget v6, v2, Ly3/d$b;->t:F

    .line 184
    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_78

    .line 185
    iget v6, v2, Ly3/d$b;->u:F

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_74

    const/4 v5, 0x0

    goto :goto_28

    .line 186
    :cond_74
    iget v6, v2, Ly3/d$b;->t:F

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_75

    const/16 v5, 0x5a

    goto :goto_28

    .line 187
    :cond_75
    iget v6, v2, Ly3/d$b;->t:F

    const/high16 v11, -0x3ccc0000    # -180.0f

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-eqz v6, :cond_77

    iget v6, v2, Ly3/d$b;->t:F

    const/high16 v11, 0x43340000    # 180.0f

    .line 188
    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_76

    goto :goto_27

    .line 189
    :cond_76
    iget v6, v2, Ly3/d$b;->t:F

    const/high16 v11, -0x3d4c0000    # -90.0f

    invoke-static {v6, v11}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-nez v6, :cond_78

    const/16 v5, 0x10e

    goto :goto_28

    :cond_77
    :goto_27
    const/16 v5, 0xb4

    .line 190
    :cond_78
    :goto_28
    iget v6, v2, Ly3/d$b;->m:I

    .line 191
    iput v6, v9, Ln3/s0$a;->p:I

    .line 192
    iget v6, v2, Ly3/d$b;->n:I

    .line 193
    iput v6, v9, Ln3/s0$a;->q:I

    .line 194
    iput v3, v9, Ln3/s0$a;->t:F

    .line 195
    iput v5, v9, Ln3/s0$a;->s:I

    .line 196
    iget-object v3, v2, Ly3/d$b;->v:[B

    .line 197
    iput-object v3, v9, Ln3/s0$a;->u:[B

    .line 198
    iget v3, v2, Ly3/d$b;->w:I

    .line 199
    iput v3, v9, Ln3/s0$a;->v:I

    .line 200
    iput-object v10, v9, Ln3/s0$a;->w:Ln5/b;

    const/4 v3, 0x2

    goto :goto_2a

    :cond_79
    const-string v3, "application/x-subrip"

    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "text/x-ssa"

    .line 202
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "text/vtt"

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "application/vobsub"

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "application/pgs"

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "application/dvbsubs"

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_29

    :cond_7a
    const-string v0, "Unexpected MIME type."

    const/4 v1, 0x0

    .line 207
    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_7b
    :goto_29
    move v3, v5

    .line 208
    :goto_2a
    iget-object v5, v2, Ly3/d$b;->a:Ljava/lang/String;

    if-eqz v5, :cond_7c

    .line 209
    sget-object v6, Ly3/d;->h0:Ljava/util/Map;

    .line 210
    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 211
    iget-object v5, v2, Ly3/d$b;->a:Ljava/lang/String;

    .line 212
    iput-object v5, v9, Ln3/s0$a;->b:Ljava/lang/String;

    :cond_7c
    move/from16 v5, p1

    .line 213
    invoke-virtual {v9, v5}, Ln3/s0$a;->b(I)Ln3/s0$a;

    .line 214
    iput-object v4, v9, Ln3/s0$a;->k:Ljava/lang/String;

    .line 215
    iput v7, v9, Ln3/s0$a;->l:I

    .line 216
    iget-object v4, v2, Ly3/d$b;->W:Ljava/lang/String;

    .line 217
    iput-object v4, v9, Ln3/s0$a;->c:Ljava/lang/String;

    .line 218
    iput v8, v9, Ln3/s0$a;->d:I

    .line 219
    iput-object v0, v9, Ln3/s0$a;->m:Ljava/util/List;

    .line 220
    iput-object v1, v9, Ln3/s0$a;->h:Ljava/lang/String;

    .line 221
    iget-object v0, v2, Ly3/d$b;->l:Lr3/d;

    .line 222
    iput-object v0, v9, Ln3/s0$a;->n:Lr3/d;

    .line 223
    invoke-virtual {v9}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v0

    .line 224
    iget v1, v2, Ly3/d$b;->c:I

    move-object/from16 v4, v16

    invoke-interface {v4, v1, v3}, Ls3/j;->p(II)Ls3/w;

    move-result-object v1

    iput-object v1, v2, Ly3/d$b;->X:Ls3/w;

    .line 225
    invoke-interface {v1, v0}, Ls3/w;->b(Ln3/s0;)V

    move-object/from16 v7, p0

    .line 226
    iget-object v0, v7, Ly3/d;->c:Landroid/util/SparseArray;

    iget v1, v2, Ly3/d$b;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7d
    const/4 v0, 0x0

    .line 227
    iput-object v0, v7, Ly3/d;->u:Ly3/d$b;

    goto/16 :goto_2d

    :cond_7e
    const/4 v0, 0x0

    const-string v1, "CodecId is missing in TrackEntry element"

    .line 228
    invoke-static {v1, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 229
    :cond_7f
    iget v0, v7, Ly3/d;->G:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_80

    return-void

    .line 230
    :cond_80
    iget-object v0, v7, Ly3/d;->c:Landroid/util/SparseArray;

    iget v1, v7, Ly3/d;->M:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ly3/d$b;

    .line 231
    invoke-static {v8}, Ly3/d$b;->a(Ly3/d$b;)V

    .line 232
    iget-wide v0, v7, Ly3/d;->R:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_81

    iget-object v0, v8, Ly3/d$b;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 233
    iget-object v0, v7, Ly3/d;->n:Lm5/w;

    const/16 v1, 0x8

    .line 234
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 235
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, v7, Ly3/d;->R:J

    .line 236
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 238
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lm5/w;->B([BI)V

    :cond_81
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 240
    :goto_2b
    iget v2, v7, Ly3/d;->K:I

    if-ge v1, v2, :cond_82

    .line 241
    iget-object v2, v7, Ly3/d;->L:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_82
    const/4 v1, 0x0

    move v9, v1

    .line 242
    :goto_2c
    iget v1, v7, Ly3/d;->K:I

    if-ge v9, v1, :cond_84

    .line 243
    iget-wide v1, v7, Ly3/d;->H:J

    iget v3, v8, Ly3/d$b;->e:I

    mul-int/2addr v3, v9

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long v2, v1, v3

    .line 244
    iget v1, v7, Ly3/d;->O:I

    if-nez v9, :cond_83

    .line 245
    iget-boolean v4, v7, Ly3/d;->Q:Z

    if-nez v4, :cond_83

    or-int/lit8 v1, v1, 0x1

    :cond_83
    move v4, v1

    .line 246
    iget-object v1, v7, Ly3/d;->L:[I

    aget v5, v1, v9

    sub-int v10, v0, v5

    move-object/from16 v0, p0

    move-object v1, v8

    move v6, v10

    .line 247
    invoke-virtual/range {v0 .. v6}, Ly3/d;->f(Ly3/d$b;JIII)V

    add-int/lit8 v9, v9, 0x1

    move v0, v10

    goto :goto_2c

    :cond_84
    const/4 v0, 0x0

    .line 248
    iput v0, v7, Ly3/d;->G:I

    :cond_85
    :goto_2d
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7ce7f5de -> :sswitch_41
        -0x7ce7f3b0 -> :sswitch_40
        -0x76567dc0 -> :sswitch_3f
        -0x6a615338 -> :sswitch_3e
        -0x672350af -> :sswitch_3d
        -0x585f4fce -> :sswitch_3c
        -0x585f4fcd -> :sswitch_3b
        -0x51dc40b2 -> :sswitch_3a
        -0x37a9c464 -> :sswitch_39
        -0x2016c535 -> :sswitch_38
        -0x2016c4e5 -> :sswitch_37
        -0x19552dbd -> :sswitch_36
        -0x1538b2ba -> :sswitch_35
        0x3c02325 -> :sswitch_34
        0x3c02353 -> :sswitch_33
        0x3c030c5 -> :sswitch_32
        0x4e81333 -> :sswitch_31
        0x4e86155 -> :sswitch_30
        0x4e86156 -> :sswitch_2f
        0x5e8da3e -> :sswitch_2e
        0x1a8350d6 -> :sswitch_2d
        0x2056f406 -> :sswitch_2c
        0x25e26ee2 -> :sswitch_2b
        0x2b45174d -> :sswitch_2a
        0x2b453ce4 -> :sswitch_29
        0x2c0618eb -> :sswitch_28
        0x32fdf009 -> :sswitch_27
        0x3e4ca2d8 -> :sswitch_26
        0x54c61e47 -> :sswitch_25
        0x6bd6c624 -> :sswitch_24
        0x7446132a -> :sswitch_23
        0x7446b0a6 -> :sswitch_22
        0x744ad97d -> :sswitch_21
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_1e
        :pswitch_16
        :pswitch_15
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_14
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final j(Ls3/i;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ly3/e;

    invoke-direct {v1}, Ly3/e;-><init>()V

    .line 2
    move-object v2, v0

    check-cast v2, Ls3/e;

    .line 3
    iget-wide v3, v2, Ls3/e;->c:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const-wide/16 v6, 0x400

    if-eqz v5, :cond_1

    cmp-long v8, v3, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v3

    :cond_1
    :goto_0
    long-to-int v6, v6

    .line 4
    iget-object v7, v1, Ly3/e;->a:Lm5/w;

    .line 5
    iget-object v7, v7, Lm5/w;->a:[B

    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 6
    invoke-virtual {v2, v7, v9, v8, v9}, Ls3/e;->p([BIIZ)Z

    .line 7
    iget-object v7, v1, Ly3/e;->a:Lm5/w;

    invoke-virtual {v7}, Lm5/w;->u()J

    move-result-wide v10

    .line 8
    iput v8, v1, Ly3/e;->b:I

    :goto_1
    const-wide/32 v7, 0x1a45dfa3

    cmp-long v7, v10, v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 9
    iget v7, v1, Ly3/e;->b:I

    add-int/2addr v7, v8

    iput v7, v1, Ly3/e;->b:I

    if-ne v7, v6, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    iget-object v7, v1, Ly3/e;->a:Lm5/w;

    .line 11
    iget-object v7, v7, Lm5/w;->a:[B

    .line 12
    invoke-virtual {v2, v7, v9, v8, v9}, Ls3/e;->p([BIIZ)Z

    const/16 v7, 0x8

    shl-long v7, v10, v7

    const-wide/16 v10, -0x100

    and-long/2addr v7, v10

    .line 13
    iget-object v10, v1, Ly3/e;->a:Lm5/w;

    .line 14
    iget-object v10, v10, Lm5/w;->a:[B

    .line 15
    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    or-long/2addr v10, v7

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {v1, v0}, Ly3/e;->a(Ls3/i;)J

    move-result-wide v6

    .line 17
    iget v10, v1, Ly3/e;->b:I

    int-to-long v10, v10

    const-wide/high16 v12, -0x8000000000000000L

    cmp-long v14, v6, v12

    if-eqz v14, :cond_8

    if-eqz v5, :cond_4

    add-long v14, v10, v6

    cmp-long v3, v14, v3

    if-ltz v3, :cond_4

    goto :goto_3

    .line 18
    :cond_4
    :goto_2
    iget v3, v1, Ly3/e;->b:I

    int-to-long v3, v3

    add-long v14, v10, v6

    cmp-long v3, v3, v14

    if-gez v3, :cond_7

    .line 19
    invoke-virtual {v1, v0}, Ly3/e;->a(Ls3/i;)J

    move-result-wide v3

    cmp-long v3, v3, v12

    if-nez v3, :cond_5

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {v1, v0}, Ly3/e;->a(Ls3/i;)J

    move-result-wide v3

    const-wide/16 v14, 0x0

    cmp-long v5, v3, v14

    if-ltz v5, :cond_8

    const-wide/32 v14, 0x7fffffff

    cmp-long v14, v3, v14

    if-lez v14, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_4

    long-to-int v3, v3

    .line 21
    invoke-virtual {v2, v3, v9}, Ls3/e;->n(IZ)Z

    .line 22
    iget v4, v1, Ly3/e;->b:I

    add-int/2addr v4, v3

    iput v4, v1, Ly3/e;->b:I

    goto :goto_2

    :cond_7
    if-nez v3, :cond_8

    move v9, v8

    :cond_8
    :goto_3
    return v9
.end method

.method public final k(Ls3/i;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly3/d;->g:Lm5/w;

    .line 2
    iget v1, v0, Lm5/w;->c:I

    if-lt v1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lm5/w;->a:[B

    array-length v2, v1

    if-ge v2, p2, :cond_1

    .line 4
    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 5
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lm5/w;->a(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Ly3/d;->g:Lm5/w;

    .line 7
    iget-object v1, v0, Lm5/w;->a:[B

    .line 8
    iget v0, v0, Lm5/w;->c:I

    sub-int v2, p2, v0

    .line 9
    invoke-interface {p1, v1, v0, v2}, Ls3/i;->readFully([BII)V

    .line 10
    iget-object p1, p0, Ly3/d;->g:Lm5/w;

    invoke-virtual {p1, p2}, Lm5/w;->C(I)V

    return-void
.end method

.method public final l()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Ly3/d;->S:I

    .line 2
    iput v0, p0, Ly3/d;->T:I

    .line 3
    iput v0, p0, Ly3/d;->U:I

    .line 4
    iput-boolean v0, p0, Ly3/d;->V:Z

    .line 5
    iput-boolean v0, p0, Ly3/d;->W:Z

    .line 6
    iput-boolean v0, p0, Ly3/d;->X:Z

    .line 7
    iput v0, p0, Ly3/d;->Y:I

    .line 8
    iput-byte v0, p0, Ly3/d;->Z:B

    .line 9
    iput-boolean v0, p0, Ly3/d;->a0:Z

    .line 10
    iget-object v1, p0, Ly3/d;->j:Lm5/w;

    invoke-virtual {v1, v0}, Lm5/w;->A(I)V

    return-void
.end method

.method public final m(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .line 1
    iget-wide v2, p0, Ly3/d;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 2
    invoke-static/range {v0 .. v5}, Lm5/g0;->R(JJJ)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    .line 3
    invoke-static {p2, p1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1
.end method

.method public final n(Ls3/i;Ly3/d$b;IZ)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Ly3/d$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p2, Ly3/d;->c0:[B

    invoke-virtual {p0, p1, p2, p3}, Ly3/d;->o(Ls3/i;[BI)V

    .line 3
    iget p1, p0, Ly3/d;->T:I

    .line 4
    invoke-virtual {p0}, Ly3/d;->l()V

    return p1

    .line 5
    :cond_0
    iget-object v0, p2, Ly3/d$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p2, Ly3/d;->e0:[B

    invoke-virtual {p0, p1, p2, p3}, Ly3/d;->o(Ls3/i;[BI)V

    .line 7
    iget p1, p0, Ly3/d;->T:I

    .line 8
    invoke-virtual {p0}, Ly3/d;->l()V

    return p1

    .line 9
    :cond_1
    iget-object v0, p2, Ly3/d$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object p2, Ly3/d;->f0:[B

    invoke-virtual {p0, p1, p2, p3}, Ly3/d;->o(Ls3/i;[BI)V

    .line 11
    iget p1, p0, Ly3/d;->T:I

    .line 12
    invoke-virtual {p0}, Ly3/d;->l()V

    return p1

    .line 13
    :cond_2
    iget-object v0, p2, Ly3/d$b;->X:Ls3/w;

    .line 14
    iget-boolean v1, p0, Ly3/d;->V:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v1, :cond_14

    .line 15
    iget-boolean v1, p2, Ly3/d$b;->h:Z

    if-eqz v1, :cond_f

    .line 16
    iget v1, p0, Ly3/d;->O:I

    const v6, -0x40000001

    and-int/2addr v1, v6

    iput v1, p0, Ly3/d;->O:I

    .line 17
    iget-boolean v1, p0, Ly3/d;->W:Z

    const/16 v6, 0x80

    if-nez v1, :cond_4

    .line 18
    iget-object v1, p0, Ly3/d;->g:Lm5/w;

    .line 19
    iget-object v1, v1, Lm5/w;->a:[B

    .line 20
    invoke-interface {p1, v1, v2, v5}, Ls3/i;->readFully([BII)V

    .line 21
    iget v1, p0, Ly3/d;->S:I

    add-int/2addr v1, v5

    iput v1, p0, Ly3/d;->S:I

    .line 22
    iget-object v1, p0, Ly3/d;->g:Lm5/w;

    .line 23
    iget-object v1, v1, Lm5/w;->a:[B

    .line 24
    aget-byte v7, v1, v2

    and-int/2addr v7, v6

    if-eq v7, v6, :cond_3

    .line 25
    aget-byte v1, v1, v2

    iput-byte v1, p0, Ly3/d;->Z:B

    .line 26
    iput-boolean v5, p0, Ly3/d;->W:Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    const-string p2, "Extension bit is set in signal byte"

    .line 27
    invoke-static {p2, p1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p1

    throw p1

    .line 28
    :cond_4
    :goto_0
    iget-byte v1, p0, Ly3/d;->Z:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v5, :cond_5

    move v7, v5

    goto :goto_1

    :cond_5
    move v7, v2

    :goto_1
    if-eqz v7, :cond_10

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_6

    move v1, v5

    goto :goto_2

    :cond_6
    move v1, v2

    .line 29
    :goto_2
    iget v7, p0, Ly3/d;->O:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Ly3/d;->O:I

    .line 30
    iget-boolean v7, p0, Ly3/d;->a0:Z

    if-nez v7, :cond_8

    .line 31
    iget-object v7, p0, Ly3/d;->l:Lm5/w;

    .line 32
    iget-object v7, v7, Lm5/w;->a:[B

    const/16 v8, 0x8

    .line 33
    invoke-interface {p1, v7, v2, v8}, Ls3/i;->readFully([BII)V

    .line 34
    iget v7, p0, Ly3/d;->S:I

    add-int/2addr v7, v8

    iput v7, p0, Ly3/d;->S:I

    .line 35
    iput-boolean v5, p0, Ly3/d;->a0:Z

    .line 36
    iget-object v7, p0, Ly3/d;->g:Lm5/w;

    .line 37
    iget-object v9, v7, Lm5/w;->a:[B

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v6, v2

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 38
    aput-byte v6, v9, v2

    .line 39
    invoke-virtual {v7, v2}, Lm5/w;->D(I)V

    .line 40
    iget-object v6, p0, Ly3/d;->g:Lm5/w;

    invoke-interface {v0, v6, v5}, Ls3/w;->a(Lm5/w;I)V

    .line 41
    iget v6, p0, Ly3/d;->T:I

    add-int/2addr v6, v5

    iput v6, p0, Ly3/d;->T:I

    .line 42
    iget-object v6, p0, Ly3/d;->l:Lm5/w;

    invoke-virtual {v6, v2}, Lm5/w;->D(I)V

    .line 43
    iget-object v6, p0, Ly3/d;->l:Lm5/w;

    invoke-interface {v0, v6, v8}, Ls3/w;->a(Lm5/w;I)V

    .line 44
    iget v6, p0, Ly3/d;->T:I

    add-int/2addr v6, v8

    iput v6, p0, Ly3/d;->T:I

    :cond_8
    if-eqz v1, :cond_10

    .line 45
    iget-boolean v1, p0, Ly3/d;->X:Z

    if-nez v1, :cond_9

    .line 46
    iget-object v1, p0, Ly3/d;->g:Lm5/w;

    .line 47
    iget-object v1, v1, Lm5/w;->a:[B

    .line 48
    invoke-interface {p1, v1, v2, v5}, Ls3/i;->readFully([BII)V

    .line 49
    iget v1, p0, Ly3/d;->S:I

    add-int/2addr v1, v5

    iput v1, p0, Ly3/d;->S:I

    .line 50
    iget-object v1, p0, Ly3/d;->g:Lm5/w;

    invoke-virtual {v1, v2}, Lm5/w;->D(I)V

    .line 51
    iget-object v1, p0, Ly3/d;->g:Lm5/w;

    invoke-virtual {v1}, Lm5/w;->t()I

    move-result v1

    iput v1, p0, Ly3/d;->Y:I

    .line 52
    iput-boolean v5, p0, Ly3/d;->X:Z

    .line 53
    :cond_9
    iget v1, p0, Ly3/d;->Y:I

    mul-int/2addr v1, v4

    .line 54
    iget-object v6, p0, Ly3/d;->g:Lm5/w;

    invoke-virtual {v6, v1}, Lm5/w;->A(I)V

    .line 55
    iget-object v6, p0, Ly3/d;->g:Lm5/w;

    .line 56
    iget-object v6, v6, Lm5/w;->a:[B

    .line 57
    invoke-interface {p1, v6, v2, v1}, Ls3/i;->readFully([BII)V

    .line 58
    iget v6, p0, Ly3/d;->S:I

    add-int/2addr v6, v1

    iput v6, p0, Ly3/d;->S:I

    .line 59
    iget v1, p0, Ly3/d;->Y:I

    div-int/2addr v1, v3

    add-int/2addr v1, v5

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v3

    .line 60
    iget-object v7, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_a

    .line 61
    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_b

    .line 62
    :cond_a
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    .line 63
    :cond_b
    iget-object v7, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    iget-object v7, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v1, v2

    move v7, v1

    .line 65
    :goto_4
    iget v8, p0, Ly3/d;->Y:I

    if-ge v1, v8, :cond_d

    .line 66
    iget-object v8, p0, Ly3/d;->g:Lm5/w;

    invoke-virtual {v8}, Lm5/w;->w()I

    move-result v8

    .line 67
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_c

    .line 68
    iget-object v9, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 69
    :cond_c
    iget-object v9, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 70
    :cond_d
    iget v1, p0, Ly3/d;->S:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 71
    rem-int/2addr v8, v3

    if-ne v8, v5, :cond_e

    .line 72
    iget-object v7, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 73
    :cond_e
    iget-object v7, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 74
    iget-object v1, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 75
    :goto_6
    iget-object v1, p0, Ly3/d;->m:Lm5/w;

    iget-object v7, p0, Ly3/d;->o:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lm5/w;->B([BI)V

    .line 76
    iget-object v1, p0, Ly3/d;->m:Lm5/w;

    invoke-interface {v0, v1, v6}, Ls3/w;->a(Lm5/w;I)V

    .line 77
    iget v1, p0, Ly3/d;->T:I

    add-int/2addr v1, v6

    iput v1, p0, Ly3/d;->T:I

    goto :goto_7

    .line 78
    :cond_f
    iget-object v1, p2, Ly3/d$b;->i:[B

    if-eqz v1, :cond_10

    .line 79
    iget-object v6, p0, Ly3/d;->j:Lm5/w;

    array-length v7, v1

    invoke-virtual {v6, v1, v7}, Lm5/w;->B([BI)V

    .line 80
    :cond_10
    :goto_7
    iget-object v1, p2, Ly3/d$b;->b:Ljava/lang/String;

    const-string v6, "A_OPUS"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_8

    .line 81
    :cond_11
    iget p4, p2, Ly3/d$b;->f:I

    if-lez p4, :cond_12

    move p4, v5

    goto :goto_8

    :cond_12
    move p4, v2

    :goto_8
    if-eqz p4, :cond_13

    .line 82
    iget p4, p0, Ly3/d;->O:I

    const/high16 v1, 0x10000000

    or-int/2addr p4, v1

    iput p4, p0, Ly3/d;->O:I

    .line 83
    iget-object p4, p0, Ly3/d;->n:Lm5/w;

    invoke-virtual {p4, v2}, Lm5/w;->A(I)V

    .line 84
    iget-object p4, p0, Ly3/d;->j:Lm5/w;

    .line 85
    iget p4, p4, Lm5/w;->c:I

    add-int/2addr p4, p3

    .line 86
    iget v1, p0, Ly3/d;->S:I

    sub-int/2addr p4, v1

    .line 87
    iget-object v1, p0, Ly3/d;->g:Lm5/w;

    invoke-virtual {v1, v4}, Lm5/w;->A(I)V

    .line 88
    iget-object v1, p0, Ly3/d;->g:Lm5/w;

    .line 89
    iget-object v6, v1, Lm5/w;->a:[B

    shr-int/lit8 v7, p4, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 90
    aput-byte v7, v6, v2

    shr-int/lit8 v7, p4, 0x10

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 91
    aput-byte v7, v6, v5

    shr-int/lit8 v7, p4, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    .line 92
    aput-byte v7, v6, v3

    const/4 v7, 0x3

    and-int/lit16 p4, p4, 0xff

    int-to-byte p4, p4

    .line 93
    aput-byte p4, v6, v7

    .line 94
    invoke-interface {v0, v1, v4}, Ls3/w;->a(Lm5/w;I)V

    .line 95
    iget p4, p0, Ly3/d;->T:I

    add-int/2addr p4, v4

    iput p4, p0, Ly3/d;->T:I

    .line 96
    :cond_13
    iput-boolean v5, p0, Ly3/d;->V:Z

    .line 97
    :cond_14
    iget-object p4, p0, Ly3/d;->j:Lm5/w;

    .line 98
    iget p4, p4, Lm5/w;->c:I

    add-int/2addr p3, p4

    .line 99
    iget-object p4, p2, Ly3/d$b;->b:Ljava/lang/String;

    const-string v1, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_18

    iget-object p4, p2, Ly3/d$b;->b:Ljava/lang/String;

    const-string v1, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_15

    goto :goto_b

    .line 100
    :cond_15
    iget-object p4, p2, Ly3/d$b;->T:Ls3/x;

    if-eqz p4, :cond_17

    .line 101
    iget-object p4, p0, Ly3/d;->j:Lm5/w;

    .line 102
    iget p4, p4, Lm5/w;->c:I

    if-nez p4, :cond_16

    goto :goto_9

    :cond_16
    move v5, v2

    .line 103
    :goto_9
    invoke-static {v5}, Lm5/a;->e(Z)V

    .line 104
    iget-object p4, p2, Ly3/d$b;->T:Ls3/x;

    invoke-virtual {p4, p1}, Ls3/x;->c(Ls3/i;)V

    .line 105
    :cond_17
    :goto_a
    iget p4, p0, Ly3/d;->S:I

    if-ge p4, p3, :cond_1b

    sub-int p4, p3, p4

    .line 106
    invoke-virtual {p0, p1, v0, p4}, Ly3/d;->p(Ls3/i;Ls3/w;I)I

    move-result p4

    .line 107
    iget v1, p0, Ly3/d;->S:I

    add-int/2addr v1, p4

    iput v1, p0, Ly3/d;->S:I

    .line 108
    iget v1, p0, Ly3/d;->T:I

    add-int/2addr v1, p4

    iput v1, p0, Ly3/d;->T:I

    goto :goto_a

    .line 109
    :cond_18
    :goto_b
    iget-object p4, p0, Ly3/d;->f:Lm5/w;

    .line 110
    iget-object p4, p4, Lm5/w;->a:[B

    .line 111
    aput-byte v2, p4, v2

    .line 112
    aput-byte v2, p4, v5

    .line 113
    aput-byte v2, p4, v3

    .line 114
    iget v1, p2, Ly3/d$b;->Y:I

    rsub-int/lit8 v3, v1, 0x4

    .line 115
    :goto_c
    iget v5, p0, Ly3/d;->S:I

    if-ge v5, p3, :cond_1b

    .line 116
    iget v5, p0, Ly3/d;->U:I

    if-nez v5, :cond_1a

    .line 117
    iget-object v5, p0, Ly3/d;->j:Lm5/w;

    .line 118
    iget v6, v5, Lm5/w;->c:I

    iget v5, v5, Lm5/w;->b:I

    sub-int/2addr v6, v5

    .line 119
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v6, v3, v5

    sub-int v7, v1, v5

    .line 120
    invoke-interface {p1, p4, v6, v7}, Ls3/i;->readFully([BII)V

    if-lez v5, :cond_19

    .line 121
    iget-object v6, p0, Ly3/d;->j:Lm5/w;

    invoke-virtual {v6, p4, v3, v5}, Lm5/w;->d([BII)V

    .line 122
    :cond_19
    iget v5, p0, Ly3/d;->S:I

    add-int/2addr v5, v1

    iput v5, p0, Ly3/d;->S:I

    .line 123
    iget-object v5, p0, Ly3/d;->f:Lm5/w;

    invoke-virtual {v5, v2}, Lm5/w;->D(I)V

    .line 124
    iget-object v5, p0, Ly3/d;->f:Lm5/w;

    invoke-virtual {v5}, Lm5/w;->w()I

    move-result v5

    iput v5, p0, Ly3/d;->U:I

    .line 125
    iget-object v5, p0, Ly3/d;->e:Lm5/w;

    invoke-virtual {v5, v2}, Lm5/w;->D(I)V

    .line 126
    iget-object v5, p0, Ly3/d;->e:Lm5/w;

    invoke-interface {v0, v5, v4}, Ls3/w;->f(Lm5/w;I)V

    .line 127
    iget v5, p0, Ly3/d;->T:I

    add-int/2addr v5, v4

    iput v5, p0, Ly3/d;->T:I

    goto :goto_c

    .line 128
    :cond_1a
    invoke-virtual {p0, p1, v0, v5}, Ly3/d;->p(Ls3/i;Ls3/w;I)I

    move-result v5

    .line 129
    iget v6, p0, Ly3/d;->S:I

    add-int/2addr v6, v5

    iput v6, p0, Ly3/d;->S:I

    .line 130
    iget v6, p0, Ly3/d;->T:I

    add-int/2addr v6, v5

    iput v6, p0, Ly3/d;->T:I

    .line 131
    iget v6, p0, Ly3/d;->U:I

    sub-int/2addr v6, v5

    iput v6, p0, Ly3/d;->U:I

    goto :goto_c

    .line 132
    :cond_1b
    iget-object p1, p2, Ly3/d$b;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 133
    iget-object p1, p0, Ly3/d;->h:Lm5/w;

    invoke-virtual {p1, v2}, Lm5/w;->D(I)V

    .line 134
    iget-object p1, p0, Ly3/d;->h:Lm5/w;

    invoke-interface {v0, p1, v4}, Ls3/w;->f(Lm5/w;I)V

    .line 135
    iget p1, p0, Ly3/d;->T:I

    add-int/2addr p1, v4

    iput p1, p0, Ly3/d;->T:I

    .line 136
    :cond_1c
    iget p1, p0, Ly3/d;->T:I

    .line 137
    invoke-virtual {p0}, Ly3/d;->l()V

    return p1
.end method

.method public final o(Ls3/i;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    add-int/2addr v0, p3

    .line 2
    iget-object v1, p0, Ly3/d;->k:Lm5/w;

    .line 3
    iget-object v2, v1, Lm5/w;->a:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v3, v0, :cond_0

    add-int v2, v0, p3

    .line 4
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    array-length v3, v2

    invoke-virtual {v1, v2, v3}, Lm5/w;->B([BI)V

    goto :goto_0

    .line 6
    :cond_0
    array-length v1, p2

    invoke-static {p2, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    :goto_0
    iget-object v1, p0, Ly3/d;->k:Lm5/w;

    .line 8
    iget-object v1, v1, Lm5/w;->a:[B

    .line 9
    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Ls3/i;->readFully([BII)V

    .line 10
    iget-object p1, p0, Ly3/d;->k:Lm5/w;

    invoke-virtual {p1, v4}, Lm5/w;->D(I)V

    .line 11
    iget-object p1, p0, Ly3/d;->k:Lm5/w;

    invoke-virtual {p1, v0}, Lm5/w;->C(I)V

    return-void
.end method

.method public final p(Ls3/i;Ls3/w;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly3/d;->j:Lm5/w;

    .line 2
    iget v1, v0, Lm5/w;->c:I

    iget v0, v0, Lm5/w;->b:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    .line 3
    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    iget-object p3, p0, Ly3/d;->j:Lm5/w;

    invoke-interface {p2, p3, p1}, Ls3/w;->f(Lm5/w;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-interface {p2, p1, p3, v0}, Ls3/w;->d(Ll5/h;IZ)I

    move-result p1

    :goto_0
    return p1
.end method
