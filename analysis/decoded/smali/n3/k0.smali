.class public final Ln3/k0;
.super Ln3/e;
.source "ExoPlayerImpl.java"

# interfaces
.implements Ln3/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/k0$a;,
        Ln3/k0$c;,
        Ln3/k0$b;,
        Ln3/k0$d;
    }
.end annotation


# static fields
.field public static final synthetic m0:I


# instance fields
.field public final A:Ln3/d;

.field public final B:Ln3/z1;

.field public final C:Ln3/d2;

.field public final D:Ln3/e2;

.field public final E:J

.field public F:I

.field public G:Z

.field public H:I

.field public I:I

.field public J:Z

.field public K:I

.field public L:Ln3/w1;

.field public M:Lp4/o0;

.field public N:Ln3/o1$a;

.field public O:Ln3/a1;

.field public P:Landroid/media/AudioTrack;

.field public Q:Ljava/lang/Object;

.field public R:Landroid/view/Surface;

.field public S:Landroid/view/SurfaceHolder;

.field public T:Lo5/j;

.field public U:Z

.field public V:Landroid/view/TextureView;

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:Lp3/d;

.field public final b:Lj5/t;

.field public b0:F

.field public final c:Ln3/o1$a;

.field public c0:Z

.field public final d:Lm5/e;

.field public d0:Lz4/c;

.field public final e:Landroid/content/Context;

.field public e0:Z

.field public final f:Ln3/o1;

.field public f0:Z

.field public final g:[Ln3/s1;

.field public g0:Ln3/o;

.field public final h:Lj5/s;

.field public h0:Ln5/t;

.field public final i:Lm5/l;

.field public i0:Ln3/a1;

.field public final j:Ln3/a0;

.field public j0:Ln3/l1;

.field public final k:Ln3/o0;

.field public k0:I

.field public final l:Lm5/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm5/o<",
            "Ln3/o1$c;",
            ">;"
        }
    .end annotation
.end field

.field public l0:J

.field public final m:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Ln3/r$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ln3/b2$b;

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/k0$d;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Z

.field public final q:Lp4/x$a;

.field public final r:Lo3/a;

.field public final s:Landroid/os/Looper;

.field public final t:Ll5/e;

.field public final u:J

.field public final v:J

.field public final w:Lm5/a0;

.field public final x:Ln3/k0$b;

.field public final y:Ln3/k0$c;

.field public final z:Ln3/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.exoplayer"

    invoke-static {v0}, Ln3/p0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ln3/r$b;Ln3/o1;)V
    .locals 40
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ln3/e;-><init>()V

    .line 2
    new-instance v2, Lm5/e;

    invoke-direct {v2}, Lm5/e;-><init>()V

    iput-object v2, v1, Ln3/k0;->d:Lm5/e;

    :try_start_0
    const-string v2, "ExoPlayerImpl"

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ExoPlayerLib/2.18.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lm5/g0;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v2, v3}, Lm5/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, v0, Ln3/r$b;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Ln3/k0;->e:Landroid/content/Context;

    .line 7
    iget-object v2, v0, Ln3/r$b;->b:Lm5/a0;

    new-instance v3, Lo3/r0;

    invoke-direct {v3, v2}, Lo3/r0;-><init>(Lm5/c;)V

    iput-object v3, v1, Ln3/k0;->r:Lo3/a;

    .line 8
    iget-object v2, v0, Ln3/r$b;->h:Lp3/d;

    iput-object v2, v1, Ln3/k0;->a0:Lp3/d;

    .line 9
    iget v2, v0, Ln3/r$b;->i:I

    iput v2, v1, Ln3/k0;->W:I

    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v1, Ln3/k0;->c0:Z

    .line 11
    iget-wide v3, v0, Ln3/r$b;->p:J

    iput-wide v3, v1, Ln3/k0;->E:J

    .line 12
    new-instance v10, Ln3/k0$b;

    invoke-direct {v10, v1}, Ln3/k0$b;-><init>(Ln3/k0;)V

    iput-object v10, v1, Ln3/k0;->x:Ln3/k0$b;

    .line 13
    new-instance v3, Ln3/k0$c;

    invoke-direct {v3}, Ln3/k0$c;-><init>()V

    iput-object v3, v1, Ln3/k0;->y:Ln3/k0$c;

    .line 14
    new-instance v3, Landroid/os/Handler;

    iget-object v4, v0, Ln3/r$b;->g:Landroid/os/Looper;

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    iget-object v4, v0, Ln3/r$b;->c:Lt6/o;

    .line 16
    invoke-interface {v4}, Lt6/o;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ln3/v1;

    move-object v6, v3

    move-object v7, v10

    move-object v8, v10

    move-object v9, v10

    .line 17
    invoke-interface/range {v5 .. v10}, Ln3/v1;->a(Landroid/os/Handler;Ln5/s;Lp3/p;Lz4/n;Lf4/e;)[Ln3/s1;

    move-result-object v4

    iput-object v4, v1, Ln3/k0;->g:[Ln3/s1;

    .line 18
    array-length v5, v4

    const/4 v6, 0x1

    if-lez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v2

    :goto_0
    invoke-static {v5}, Lm5/a;->e(Z)V

    .line 19
    iget-object v5, v0, Ln3/r$b;->e:Lt6/o;

    invoke-interface {v5}, Lt6/o;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lj5/s;

    iput-object v5, v1, Ln3/k0;->h:Lj5/s;

    .line 20
    iget-object v5, v0, Ln3/r$b;->d:Lt6/o;

    invoke-interface {v5}, Lt6/o;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp4/x$a;

    iput-object v5, v1, Ln3/k0;->q:Lp4/x$a;

    .line 21
    iget-object v5, v0, Ln3/r$b;->f:Lt6/o;

    invoke-interface {v5}, Lt6/o;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll5/e;

    iput-object v5, v1, Ln3/k0;->t:Ll5/e;

    .line 22
    iget-boolean v5, v0, Ln3/r$b;->j:Z

    iput-boolean v5, v1, Ln3/k0;->p:Z

    .line 23
    iget-object v5, v0, Ln3/r$b;->k:Ln3/w1;

    iput-object v5, v1, Ln3/k0;->L:Ln3/w1;

    .line 24
    iget-wide v7, v0, Ln3/r$b;->l:J

    iput-wide v7, v1, Ln3/k0;->u:J

    .line 25
    iget-wide v7, v0, Ln3/r$b;->m:J

    iput-wide v7, v1, Ln3/k0;->v:J

    .line 26
    iget-object v5, v0, Ln3/r$b;->g:Landroid/os/Looper;

    iput-object v5, v1, Ln3/k0;->s:Landroid/os/Looper;

    .line 27
    iget-object v7, v0, Ln3/r$b;->b:Lm5/a0;

    iput-object v7, v1, Ln3/k0;->w:Lm5/a0;

    if-nez p2, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p2

    .line 28
    :goto_1
    iput-object v8, v1, Ln3/k0;->f:Ln3/o1;

    .line 29
    new-instance v8, Lm5/o;

    new-instance v9, Ln3/z;

    invoke-direct {v9, v1, v2}, Ln3/z;-><init>(Ljava/lang/Object;I)V

    .line 30
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {v8, v10, v5, v7, v9}, Lm5/o;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lm5/c;Lm5/o$b;)V

    .line 31
    iput-object v8, v1, Ln3/k0;->l:Lm5/o;

    .line 32
    new-instance v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v5, v1, Ln3/k0;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 33
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Ln3/k0;->o:Ljava/util/ArrayList;

    .line 34
    new-instance v5, Lp4/o0$a;

    .line 35
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    invoke-direct {v5, v7}, Lp4/o0$a;-><init>(Ljava/util/Random;)V

    .line 36
    iput-object v5, v1, Ln3/k0;->M:Lp4/o0;

    .line 37
    new-instance v5, Lj5/t;

    array-length v7, v4

    new-array v7, v7, [Ln3/u1;

    array-length v4, v4

    new-array v4, v4, [Lj5/l;

    sget-object v8, Ln3/c2;->i:Ln3/c2;

    const/4 v9, 0x0

    invoke-direct {v5, v7, v4, v8, v9}, Lj5/t;-><init>([Ln3/u1;[Lj5/l;Ln3/c2;Ljava/lang/Object;)V

    iput-object v5, v1, Ln3/k0;->b:Lj5/t;

    .line 38
    new-instance v4, Ln3/b2$b;

    invoke-direct {v4}, Ln3/b2$b;-><init>()V

    iput-object v4, v1, Ln3/k0;->n:Ln3/b2$b;

    .line 39
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    const/16 v5, 0x15

    new-array v7, v5, [I

    aput v6, v7, v2

    const/4 v8, 0x2

    aput v8, v7, v6

    const/4 v10, 0x3

    aput v10, v7, v8

    const/16 v11, 0xd

    aput v11, v7, v10

    const/16 v12, 0xe

    const/4 v13, 0x4

    aput v12, v7, v13

    const/16 v14, 0xf

    const/4 v15, 0x5

    aput v14, v7, v15

    const/16 v16, 0x10

    const/4 v15, 0x6

    aput v16, v7, v15

    const/16 v17, 0x11

    const/4 v15, 0x7

    aput v17, v7, v15

    const/16 v18, 0x12

    const/16 v15, 0x8

    aput v18, v7, v15

    const/16 v19, 0x13

    const/16 v15, 0x9

    aput v19, v7, v15

    const/16 v15, 0x1f

    const/16 v10, 0xa

    aput v15, v7, v10

    const/16 v20, 0xb

    const/16 v21, 0x14

    aput v21, v7, v20

    const/16 v20, 0xc

    const/16 v22, 0x1e

    aput v22, v7, v20

    aput v5, v7, v11

    const/16 v11, 0x16

    aput v11, v7, v12

    const/16 v11, 0x17

    aput v11, v7, v14

    const/16 v11, 0x18

    aput v11, v7, v16

    const/16 v11, 0x19

    aput v11, v7, v17

    const/16 v11, 0x1a

    aput v11, v7, v18

    const/16 v11, 0x1b

    aput v11, v7, v19

    const/16 v11, 0x1c

    aput v11, v7, v21

    move v11, v2

    :goto_2
    if-ge v11, v5, :cond_2

    .line 40
    aget v12, v7, v11

    const/4 v14, 0x0

    xor-int/2addr v14, v6

    .line 41
    invoke-static {v14}, Lm5/a;->e(Z)V

    .line 42
    invoke-virtual {v4, v12, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/16 v7, 0x1d

    .line 43
    iget-object v11, v1, Ln3/k0;->h:Lj5/s;

    .line 44
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    instance-of v11, v11, Lj5/i;

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    xor-int/2addr v11, v6

    .line 46
    invoke-static {v11}, Lm5/a;->e(Z)V

    .line 47
    invoke-virtual {v4, v7, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 48
    :cond_3
    new-instance v7, Ln3/o1$a;

    const/4 v11, 0x0

    xor-int/2addr v11, v6

    .line 49
    invoke-static {v11}, Lm5/a;->e(Z)V

    .line 50
    new-instance v11, Lm5/j;

    invoke-direct {v11, v4}, Lm5/j;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 51
    invoke-direct {v7, v11}, Ln3/o1$a;-><init>(Lm5/j;)V

    .line 52
    iput-object v7, v1, Ln3/k0;->c:Ln3/o1$a;

    .line 53
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    move v7, v2

    .line 54
    :goto_3
    invoke-virtual {v11}, Lm5/j;->c()I

    move-result v12

    if-ge v7, v12, :cond_4

    .line 55
    invoke-virtual {v11, v7}, Lm5/j;->b(I)I

    move-result v12

    const/4 v14, 0x0

    xor-int/2addr v14, v6

    .line 56
    invoke-static {v14}, Lm5/a;->e(Z)V

    .line 57
    invoke-virtual {v4, v12, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    xor-int/2addr v7, v6

    .line 58
    invoke-static {v7}, Lm5/a;->e(Z)V

    .line 59
    invoke-virtual {v4, v13, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    const/4 v7, 0x0

    xor-int/2addr v7, v6

    .line 60
    invoke-static {v7}, Lm5/a;->e(Z)V

    .line 61
    invoke-virtual {v4, v10, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 62
    new-instance v7, Ln3/o1$a;

    const/4 v11, 0x0

    xor-int/2addr v11, v6

    .line 63
    invoke-static {v11}, Lm5/a;->e(Z)V

    .line 64
    new-instance v11, Lm5/j;

    invoke-direct {v11, v4}, Lm5/j;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 65
    invoke-direct {v7, v11}, Ln3/o1$a;-><init>(Lm5/j;)V

    .line 66
    iput-object v7, v1, Ln3/k0;->N:Ln3/o1$a;

    .line 67
    iget-object v4, v1, Ln3/k0;->w:Lm5/a0;

    iget-object v7, v1, Ln3/k0;->s:Landroid/os/Looper;

    invoke-virtual {v4, v7, v9}, Lm5/a0;->b(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lm5/l;

    move-result-object v4

    iput-object v4, v1, Ln3/k0;->i:Lm5/l;

    .line 68
    new-instance v4, Ln3/a0;

    invoke-direct {v4, v1}, Ln3/a0;-><init>(Ljava/lang/Object;)V

    iput-object v4, v1, Ln3/k0;->j:Ln3/a0;

    .line 69
    iget-object v7, v1, Ln3/k0;->b:Lj5/t;

    invoke-static {v7}, Ln3/l1;->h(Lj5/t;)Ln3/l1;

    move-result-object v7

    iput-object v7, v1, Ln3/k0;->j0:Ln3/l1;

    .line 70
    iget-object v7, v1, Ln3/k0;->r:Lo3/a;

    iget-object v11, v1, Ln3/k0;->f:Ln3/o1;

    iget-object v12, v1, Ln3/k0;->s:Landroid/os/Looper;

    invoke-interface {v7, v11, v12}, Lo3/a;->W(Ln3/o1;Landroid/os/Looper;)V

    .line 71
    sget v7, Lm5/g0;->a:I

    if-ge v7, v15, :cond_5

    .line 72
    new-instance v11, Lo3/v0;

    invoke-direct {v11}, Lo3/v0;-><init>()V

    goto :goto_4

    .line 73
    :cond_5
    iget-object v11, v1, Ln3/k0;->e:Landroid/content/Context;

    iget-boolean v12, v0, Ln3/r$b;->q:Z

    invoke-static {v11, v1, v12}, Ln3/k0$a;->a(Landroid/content/Context;Ln3/k0;Z)Lo3/v0;

    move-result-object v11

    :goto_4
    move-object/from16 v37, v11

    .line 74
    new-instance v11, Ln3/o0;

    iget-object v12, v1, Ln3/k0;->g:[Ln3/s1;

    iget-object v14, v1, Ln3/k0;->h:Lj5/s;

    iget-object v15, v1, Ln3/k0;->b:Lj5/t;

    .line 75
    new-instance v24, Ln3/k;

    invoke-direct/range {v24 .. v24}, Ln3/k;-><init>()V

    iget-object v13, v1, Ln3/k0;->t:Ll5/e;

    iget v8, v1, Ln3/k0;->F:I

    iget-boolean v10, v1, Ln3/k0;->G:Z

    iget-object v6, v1, Ln3/k0;->r:Lo3/a;

    iget-object v9, v1, Ln3/k0;->L:Ln3/w1;

    iget-object v5, v0, Ln3/r$b;->n:Ln3/j;

    move-object/from16 v38, v3

    iget-wide v2, v0, Ln3/r$b;->o:J

    const/16 v33, 0x0

    iget-object v0, v1, Ln3/k0;->s:Landroid/os/Looper;

    move/from16 v39, v7

    iget-object v7, v1, Ln3/k0;->w:Lm5/a0;

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v14

    move-object/from16 v23, v15

    move-object/from16 v25, v13

    move/from16 v26, v8

    move/from16 v27, v10

    move-object/from16 v28, v6

    move-object/from16 v29, v9

    move-object/from16 v30, v5

    move-wide/from16 v31, v2

    move-object/from16 v34, v0

    move-object/from16 v35, v7

    move-object/from16 v36, v4

    invoke-direct/range {v20 .. v37}, Ln3/o0;-><init>([Ln3/s1;Lj5/s;Lj5/t;Ln3/x0;Ll5/e;IZLo3/a;Ln3/w1;Ln3/w0;JZLandroid/os/Looper;Lm5/c;Ln3/o0$e;Lo3/v0;)V

    iput-object v11, v1, Ln3/k0;->k:Ln3/o0;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 76
    iput v0, v1, Ln3/k0;->b0:F

    const/4 v0, 0x0

    .line 77
    iput v0, v1, Ln3/k0;->F:I

    .line 78
    sget-object v0, Ln3/a1;->N:Ln3/a1;

    iput-object v0, v1, Ln3/k0;->O:Ln3/a1;

    .line 79
    iput-object v0, v1, Ln3/k0;->i0:Ln3/a1;

    const/4 v0, -0x1

    .line 80
    iput v0, v1, Ln3/k0;->k0:I

    move/from16 v2, v39

    const/16 v3, 0x15

    if-ge v2, v3, :cond_8

    .line 81
    iget-object v0, v1, Ln3/k0;->P:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    .line 82
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eqz v0, :cond_6

    .line 83
    iget-object v0, v1, Ln3/k0;->P:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, v1, Ln3/k0;->P:Landroid/media/AudioTrack;

    .line 85
    :cond_6
    iget-object v0, v1, Ln3/k0;->P:Landroid/media/AudioTrack;

    if-nez v0, :cond_7

    const/16 v4, 0xfa0

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x2

    .line 86
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v3, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, v1, Ln3/k0;->P:Landroid/media/AudioTrack;

    .line 87
    :cond_7
    iget-object v0, v1, Ln3/k0;->P:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    .line 88
    iput v0, v1, Ln3/k0;->Z:I

    goto :goto_6

    .line 89
    :cond_8
    iget-object v2, v1, Ln3/k0;->e:Landroid/content/Context;

    const-string v3, "audio"

    .line 90
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    if-nez v2, :cond_9

    goto :goto_5

    .line 91
    :cond_9
    invoke-virtual {v2}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    .line 92
    :goto_5
    iput v0, v1, Ln3/k0;->Z:I

    .line 93
    :goto_6
    sget-object v0, Lz4/c;->i:Lz4/c;

    iput-object v0, v1, Ln3/k0;->d0:Lz4/c;

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, v1, Ln3/k0;->e0:Z

    .line 95
    iget-object v0, v1, Ln3/k0;->r:Lo3/a;

    invoke-virtual {v1, v0}, Ln3/k0;->a0(Ln3/o1$c;)V

    .line 96
    iget-object v0, v1, Ln3/k0;->t:Ll5/e;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, v1, Ln3/k0;->s:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, v1, Ln3/k0;->r:Lo3/a;

    invoke-interface {v0, v2, v3}, Ll5/e;->b(Landroid/os/Handler;Ll5/e$a;)V

    .line 97
    iget-object v0, v1, Ln3/k0;->x:Ln3/k0$b;

    .line 98
    iget-object v2, v1, Ln3/k0;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Ln3/b;

    move-object/from16 v2, p1

    iget-object v3, v2, Ln3/r$b;->a:Landroid/content/Context;

    iget-object v4, v1, Ln3/k0;->x:Ln3/k0$b;

    move-object/from16 v5, v38

    invoke-direct {v0, v3, v5, v4}, Ln3/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Ln3/b$b;)V

    iput-object v0, v1, Ln3/k0;->z:Ln3/b;

    .line 100
    invoke-virtual {v0}, Ln3/b;->a()V

    .line 101
    new-instance v0, Ln3/d;

    iget-object v3, v2, Ln3/r$b;->a:Landroid/content/Context;

    iget-object v4, v1, Ln3/k0;->x:Ln3/k0$b;

    invoke-direct {v0, v3, v5, v4}, Ln3/d;-><init>(Landroid/content/Context;Landroid/os/Handler;Ln3/d$b;)V

    iput-object v0, v1, Ln3/k0;->A:Ln3/d;

    .line 102
    invoke-virtual {v0}, Ln3/d;->c()V

    .line 103
    new-instance v0, Ln3/z1;

    iget-object v3, v2, Ln3/r$b;->a:Landroid/content/Context;

    iget-object v4, v1, Ln3/k0;->x:Ln3/k0$b;

    invoke-direct {v0, v3, v5, v4}, Ln3/z1;-><init>(Landroid/content/Context;Landroid/os/Handler;Ln3/z1$a;)V

    iput-object v0, v1, Ln3/k0;->B:Ln3/z1;

    .line 104
    iget-object v3, v1, Ln3/k0;->a0:Lp3/d;

    iget v3, v3, Lp3/d;->j:I

    invoke-static {v3}, Lm5/g0;->B(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ln3/z1;->d(I)V

    .line 105
    new-instance v3, Ln3/d2;

    iget-object v4, v2, Ln3/r$b;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Ln3/d2;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Ln3/k0;->C:Ln3/d2;

    const/4 v4, 0x0

    .line 106
    iput-boolean v4, v3, Ln3/d2;->a:Z

    .line 107
    new-instance v3, Ln3/e2;

    iget-object v2, v2, Ln3/r$b;->a:Landroid/content/Context;

    invoke-direct {v3, v2}, Ln3/e2;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Ln3/k0;->D:Ln3/e2;

    const/4 v2, 0x0

    .line 108
    iput-boolean v2, v3, Ln3/e2;->a:Z

    .line 109
    new-instance v2, Ln3/o;

    .line 110
    invoke-virtual {v0}, Ln3/z1;->a()I

    move-result v3

    .line 111
    iget-object v4, v0, Ln3/z1;->d:Landroid/media/AudioManager;

    iget v0, v0, Ln3/z1;->f:I

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/4 v4, 0x0

    .line 112
    invoke-direct {v2, v4, v3, v0}, Ln3/o;-><init>(III)V

    .line 113
    iput-object v2, v1, Ln3/k0;->g0:Ln3/o;

    .line 114
    sget-object v0, Ln5/t;->l:Ln5/t;

    iput-object v0, v1, Ln3/k0;->h0:Ln5/t;

    .line 115
    iget-object v0, v1, Ln3/k0;->h:Lj5/s;

    iget-object v2, v1, Ln3/k0;->a0:Lp3/d;

    invoke-virtual {v0, v2}, Lj5/s;->d(Lp3/d;)V

    .line 116
    iget v0, v1, Ln3/k0;->Z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Ln3/k0;->w0(IILjava/lang/Object;)V

    .line 117
    iget v0, v1, Ln3/k0;->Z:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v0}, Ln3/k0;->w0(IILjava/lang/Object;)V

    .line 118
    iget-object v0, v1, Ln3/k0;->a0:Lp3/d;

    const/4 v2, 0x3

    invoke-virtual {v1, v3, v2, v0}, Ln3/k0;->w0(IILjava/lang/Object;)V

    .line 119
    iget v0, v1, Ln3/k0;->W:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2, v0}, Ln3/k0;->w0(IILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    .line 121
    invoke-virtual {v1, v4, v2, v0}, Ln3/k0;->w0(IILjava/lang/Object;)V

    .line 122
    iget-boolean v0, v1, Ln3/k0;->c0:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Ln3/k0;->w0(IILjava/lang/Object;)V

    .line 123
    iget-object v0, v1, Ln3/k0;->y:Ln3/k0$c;

    const/4 v2, 0x7

    invoke-virtual {v1, v4, v2, v0}, Ln3/k0;->w0(IILjava/lang/Object;)V

    .line 124
    iget-object v0, v1, Ln3/k0;->y:Ln3/k0$c;

    const/16 v2, 0x8

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2, v0}, Ln3/k0;->w0(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object v0, v1, Ln3/k0;->d:Lm5/e;

    invoke-virtual {v0}, Lm5/e;->c()Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, v1, Ln3/k0;->d:Lm5/e;

    invoke-virtual {v2}, Lm5/e;->c()Z

    .line 126
    throw v0
.end method

.method public static l0(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public static n0(Ln3/l1;)J
    .locals 6

    .line 1
    new-instance v0, Ln3/b2$d;

    invoke-direct {v0}, Ln3/b2$d;-><init>()V

    .line 2
    new-instance v1, Ln3/b2$b;

    invoke-direct {v1}, Ln3/b2$b;-><init>()V

    .line 3
    iget-object v2, p0, Ln3/l1;->a:Ln3/b2;

    iget-object v3, p0, Ln3/l1;->b:Lp4/x$b;

    iget-object v3, v3, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 4
    iget-wide v2, p0, Ln3/l1;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 5
    iget-object p0, p0, Ln3/l1;->a:Ln3/b2;

    iget v1, v1, Ln3/b2$b;->j:I

    invoke-virtual {p0, v1, v0}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object p0

    .line 6
    iget-wide v0, p0, Ln3/b2$d;->t:J

    goto :goto_0

    .line 7
    :cond_0
    iget-wide v0, v1, Ln3/b2$b;->l:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public static o0(Ln3/l1;)Z
    .locals 2

    iget v0, p0, Ln3/l1;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Ln3/l1;->l:Z

    if-eqz v0, :cond_0

    iget p0, p0, Ln3/l1;->m:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final A()Ln5/t;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->h0:Ln5/t;

    return-object v0
.end method

.method public final A0(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-static {p1, p1, v0}, Lm5/g0;->h(FFF)F

    move-result p1

    .line 3
    iget v0, p0, Ln3/k0;->b0:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput p1, p0, Ln3/k0;->b0:F

    .line 5
    iget-object v0, p0, Ln3/k0;->A:Ln3/d;

    .line 6
    iget v0, v0, Ln3/d;->g:F

    mul-float/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 7
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Ln3/k0;->w0(IILjava/lang/Object;)V

    .line 8
    iget-object v0, p0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0x16

    new-instance v2, Ln3/b0;

    invoke-direct {v2, p1}, Ln3/b0;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->d(ILm5/o$a;)V

    return-void
.end method

.method public final B()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    invoke-virtual {p0}, Ln3/k0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    iget v0, v0, Lp4/w;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final B0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 3
    iget-object v0, p0, Ln3/k0;->A:Ln3/d;

    invoke-virtual {p0}, Ln3/k0;->p()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ln3/d;->e(ZI)I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ln3/k0;->C0(Ln3/q;)V

    .line 5
    sget-object v0, Lz4/c;->i:Lz4/c;

    iput-object v0, p0, Ln3/k0;->d0:Lz4/c;

    return-void
.end method

.method public final C()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    invoke-virtual {p0}, Ln3/k0;->k0()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final C0(Ln3/q;)V
    .locals 13

    .line 1
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v0, v1}, Ln3/l1;->a(Lp4/x$b;)Ln3/l1;

    move-result-object v0

    .line 2
    iget-wide v1, v0, Ln3/l1;->r:J

    iput-wide v1, v0, Ln3/l1;->p:J

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, v0, Ln3/l1;->q:J

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v0, v2}, Ln3/l1;->f(I)Ln3/l1;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ln3/l1;->d(Ln3/q;)Ln3/l1;

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 6
    iget p1, p0, Ln3/k0;->H:I

    add-int/2addr p1, v2

    iput p1, p0, Ln3/k0;->H:I

    .line 7
    iget-object p1, p0, Ln3/k0;->k:Ln3/o0;

    .line 8
    iget-object p1, p1, Ln3/o0;->o:Lm5/l;

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lm5/l;->j(I)Lm5/l$a;

    move-result-object p1

    check-cast p1, Lm5/b0$a;

    invoke-virtual {p1}, Lm5/b0$a;->b()V

    .line 9
    iget-object p1, v4, Ln3/l1;->a:Ln3/b2;

    .line 10
    invoke-virtual {p1}, Ln3/b2;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object p1, p1, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {p1}, Ln3/b2;->s()Z

    move-result p1

    if-nez p1, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x4

    .line 11
    invoke-virtual {p0, v4}, Ln3/k0;->j0(Ln3/l1;)J

    move-result-wide v10

    const/4 v12, -0x1

    move-object v3, p0

    .line 12
    invoke-virtual/range {v3 .. v12}, Ln3/k0;->F0(Ln3/l1;IIZZIJI)V

    return-void
.end method

.method public final D0()V
    .locals 14

    .line 1
    iget-object v0, p0, Ln3/k0;->N:Ln3/o1$a;

    .line 2
    iget-object v1, p0, Ln3/k0;->f:Ln3/o1;

    iget-object v2, p0, Ln3/k0;->c:Ln3/o1$a;

    sget v3, Lm5/g0;->a:I

    .line 3
    invoke-interface {v1}, Ln3/o1;->j()Z

    move-result v3

    .line 4
    invoke-interface {v1}, Ln3/o1;->q()Z

    move-result v4

    .line 5
    invoke-interface {v1}, Ln3/o1;->F()Z

    move-result v5

    .line 6
    invoke-interface {v1}, Ln3/o1;->v()Z

    move-result v6

    .line 7
    invoke-interface {v1}, Ln3/o1;->d0()Z

    move-result v7

    .line 8
    invoke-interface {v1}, Ln3/o1;->K()Z

    move-result v8

    .line 9
    invoke-interface {v1}, Ln3/o1;->O()Ln3/b2;

    move-result-object v1

    invoke-virtual {v1}, Ln3/b2;->s()Z

    move-result v1

    .line 10
    new-instance v9, Ln3/o1$a$a;

    invoke-direct {v9}, Ln3/o1$a$a;-><init>()V

    .line 11
    invoke-virtual {v9, v2}, Ln3/o1$a$a;->a(Ln3/o1$a;)Ln3/o1$a$a;

    xor-int/lit8 v2, v3, 0x1

    const/4 v10, 0x4

    .line 12
    invoke-virtual {v9, v10, v2}, Ln3/o1$a$a;->b(IZ)Ln3/o1$a$a;

    const/4 v10, 0x5

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v11

    .line 13
    :goto_0
    invoke-virtual {v9, v10, v13}, Ln3/o1$a$a;->b(IZ)Ln3/o1$a$a;

    const/4 v10, 0x6

    if-eqz v5, :cond_1

    if-nez v3, :cond_1

    move v13, v12

    goto :goto_1

    :cond_1
    move v13, v11

    .line 14
    :goto_1
    invoke-virtual {v9, v10, v13}, Ln3/o1$a$a;->b(IZ)Ln3/o1$a$a;

    const/4 v10, 0x7

    if-nez v1, :cond_3

    if-nez v5, :cond_2

    if-eqz v7, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    if-nez v3, :cond_3

    move v5, v12

    goto :goto_2

    :cond_3
    move v5, v11

    .line 15
    :goto_2
    invoke-virtual {v9, v10, v5}, Ln3/o1$a$a;->b(IZ)Ln3/o1$a$a;

    const/16 v5, 0x8

    if-eqz v6, :cond_4

    if-nez v3, :cond_4

    move v10, v12

    goto :goto_3

    :cond_4
    move v10, v11

    .line 16
    :goto_3
    invoke-virtual {v9, v5, v10}, Ln3/o1$a$a;->b(IZ)Ln3/o1$a$a;

    const/16 v5, 0x9

    if-nez v1, :cond_6

    if-nez v6, :cond_5

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    :cond_5
    if-nez v3, :cond_6

    move v1, v12

    goto :goto_4

    :cond_6
    move v1, v11

    .line 17
    :goto_4
    invoke-virtual {v9, v5, v1}, Ln3/o1$a$a;->b(IZ)Ln3/o1$a$a;

    const/16 v1, 0xa

    .line 18
    invoke-virtual {v9, v1, v2}, Ln3/o1$a$a;->b(IZ)Ln3/o1$a$a;

    const/16 v1, 0xb

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    move v2, v12

    goto :goto_5

    :cond_7
    move v2, v11

    .line 19
    :goto_5
    invoke-virtual {v9, v1, v2}, Ln3/o1$a$a;->b(IZ)Ln3/o1$a$a;

    const/16 v1, 0xc

    if-eqz v4, :cond_8

    if-nez v3, :cond_8

    move v11, v12

    .line 20
    :cond_8
    invoke-virtual {v9, v1, v11}, Ln3/o1$a$a;->b(IZ)Ln3/o1$a$a;

    .line 21
    invoke-virtual {v9}, Ln3/o1$a$a;->c()Ln3/o1$a;

    move-result-object v1

    .line 22
    iput-object v1, p0, Ln3/k0;->N:Ln3/o1$a;

    .line 23
    invoke-virtual {v1, v0}, Ln3/o1$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 24
    iget-object v0, p0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0xd

    new-instance v2, Ln3/y;

    invoke-direct {v2, p0}, Ln3/y;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->b(ILm5/o$a;)V

    :cond_9
    return-void
.end method

.method public final E(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget v0, p0, Ln3/k0;->F:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Ln3/k0;->F:I

    .line 4
    iget-object v0, p0, Ln3/k0;->k:Ln3/o0;

    .line 5
    iget-object v0, v0, Ln3/o0;->o:Lm5/l;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lm5/l;->d(III)Lm5/l$a;

    move-result-object v0

    check-cast v0, Lm5/b0$a;

    invoke-virtual {v0}, Lm5/b0$a;->b()V

    .line 6
    iget-object v0, p0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0x8

    new-instance v2, Ln3/c0;

    invoke-direct {v2, p1}, Ln3/c0;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->b(ILm5/o$a;)V

    .line 7
    invoke-virtual {p0}, Ln3/k0;->D0()V

    .line 8
    iget-object p1, p0, Ln3/k0;->l:Lm5/o;

    invoke-virtual {p1}, Lm5/o;->a()V

    :cond_0
    return-void
.end method

.method public final E0(ZII)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    if-eq p2, v2, :cond_1

    move v1, v2

    .line 1
    :cond_1
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-boolean v4, v0, Ln3/l1;->l:Z

    if-ne v4, v3, :cond_2

    iget v4, v0, Ln3/l1;->m:I

    if-ne v4, v1, :cond_2

    return-void

    .line 2
    :cond_2
    iget v4, p0, Ln3/k0;->H:I

    add-int/2addr v4, v2

    iput v4, p0, Ln3/k0;->H:I

    .line 3
    invoke-virtual {v0, v3, v1}, Ln3/l1;->c(ZI)Ln3/l1;

    move-result-object v4

    .line 4
    iget-object v0, p0, Ln3/k0;->k:Ln3/o0;

    .line 5
    iget-object v0, v0, Ln3/o0;->o:Lm5/l;

    .line 6
    invoke-interface {v0, v2, v3, v1}, Lm5/l;->d(III)Lm5/l$a;

    move-result-object v0

    .line 7
    check-cast v0, Lm5/b0$a;

    invoke-virtual {v0}, Lm5/b0$a;->b()V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, v4

    move v3, p3

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v8

    move v9, v10

    .line 8
    invoke-virtual/range {v0 .. v9}, Ln3/k0;->F0(Ln3/l1;IIZZIJI)V

    return-void
.end method

.method public final F0(Ln3/l1;IIZZIJI)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    .line 1
    iget-object v3, v0, Ln3/k0;->j0:Ln3/l1;

    .line 2
    iput-object v1, v0, Ln3/k0;->j0:Ln3/l1;

    .line 3
    iget-object v4, v3, Ln3/l1;->a:Ln3/b2;

    iget-object v5, v1, Ln3/l1;->a:Ln3/b2;

    .line 4
    invoke-virtual {v4, v5}, Ln3/b2;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 5
    iget-object v6, v3, Ln3/l1;->a:Ln3/b2;

    .line 6
    iget-object v7, v1, Ln3/l1;->a:Ln3/b2;

    .line 7
    invoke-virtual {v7}, Ln3/b2;->s()Z

    move-result v8

    const/4 v9, -0x1

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v13, 0x0

    if-eqz v8, :cond_0

    .line 9
    invoke-virtual {v6}, Ln3/b2;->s()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 10
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 11
    :cond_0
    invoke-virtual {v7}, Ln3/b2;->s()Z

    move-result v8

    invoke-virtual {v6}, Ln3/b2;->s()Z

    move-result v14

    if-eq v8, v14, :cond_1

    .line 12
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 13
    :cond_1
    iget-object v8, v3, Ln3/l1;->b:Lp4/x$b;

    iget-object v8, v8, Lp4/w;->a:Ljava/lang/Object;

    iget-object v14, v0, Ln3/k0;->n:Ln3/b2$b;

    .line 14
    invoke-virtual {v6, v8, v14}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v8

    iget v8, v8, Ln3/b2$b;->j:I

    .line 15
    iget-object v14, v0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v6, v8, v14}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v6

    iget-object v6, v6, Ln3/b2$d;->h:Ljava/lang/Object;

    .line 16
    iget-object v8, v1, Ln3/l1;->b:Lp4/x$b;

    iget-object v8, v8, Lp4/w;->a:Ljava/lang/Object;

    iget-object v14, v0, Ln3/k0;->n:Ln3/b2$b;

    .line 17
    invoke-virtual {v7, v8, v14}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v8

    iget v8, v8, Ln3/b2$b;->j:I

    .line 18
    iget-object v14, v0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v7, v8, v14}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v7

    iget-object v7, v7, Ln3/b2$d;->h:Ljava/lang/Object;

    .line 19
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p5, :cond_2

    if-nez v2, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    if-ne v2, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    move v4, v11

    .line 20
    :goto_0
    new-instance v6, Landroid/util/Pair;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v6, v7, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v6

    goto :goto_1

    .line 21
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_5
    if-eqz p5, :cond_6

    if-nez v2, :cond_6

    .line 22
    iget-object v4, v3, Ln3/l1;->b:Lp4/x$b;

    iget-wide v6, v4, Lp4/w;->d:J

    iget-object v4, v1, Ln3/l1;->b:Lp4/x$b;

    iget-wide v14, v4, Lp4/w;->d:J

    cmp-long v4, v6, v14

    if-gez v4, :cond_6

    .line 23
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 24
    :cond_6
    new-instance v4, Landroid/util/Pair;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v4, v6, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :goto_1
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 26
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 27
    iget-object v7, v0, Ln3/k0;->O:Ln3/a1;

    if-eqz v6, :cond_8

    .line 28
    iget-object v10, v1, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v10}, Ln3/b2;->s()Z

    move-result v10

    if-nez v10, :cond_7

    .line 29
    iget-object v10, v1, Ln3/l1;->a:Ln3/b2;

    iget-object v14, v1, Ln3/l1;->b:Lp4/x$b;

    iget-object v14, v14, Lp4/w;->a:Ljava/lang/Object;

    iget-object v15, v0, Ln3/k0;->n:Ln3/b2$b;

    .line 30
    invoke-virtual {v10, v14, v15}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v10

    iget v10, v10, Ln3/b2$b;->j:I

    .line 31
    iget-object v14, v1, Ln3/l1;->a:Ln3/b2;

    iget-object v15, v0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v14, v10, v15}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v10

    iget-object v10, v10, Ln3/b2$d;->j:Ln3/y0;

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    .line 32
    :goto_2
    sget-object v14, Ln3/a1;->N:Ln3/a1;

    iput-object v14, v0, Ln3/k0;->i0:Ln3/a1;

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    :goto_3
    if-nez v6, :cond_9

    .line 33
    iget-object v14, v3, Ln3/l1;->j:Ljava/util/List;

    iget-object v15, v1, Ln3/l1;->j:Ljava/util/List;

    .line 34
    invoke-interface {v14, v15}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 35
    :cond_9
    iget-object v7, v0, Ln3/k0;->i0:Ln3/a1;

    .line 36
    new-instance v14, Ln3/a1$a;

    invoke-direct {v14, v7}, Ln3/a1$a;-><init>(Ln3/a1;)V

    .line 37
    iget-object v7, v1, Ln3/l1;->j:Ljava/util/List;

    move v15, v13

    .line 38
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v15, v8, :cond_b

    .line 39
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lf4/a;

    move v11, v13

    .line 40
    :goto_5
    iget-object v12, v8, Lf4/a;->h:[Lf4/a$b;

    array-length v9, v12

    if-ge v11, v9, :cond_a

    .line 41
    aget-object v9, v12, v11

    .line 42
    invoke-interface {v9, v14}, Lf4/a$b;->i(Ln3/a1$a;)V

    add-int/lit8 v11, v11, 0x1

    const/4 v9, -0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v9, -0x1

    const/4 v11, 0x3

    goto :goto_4

    .line 43
    :cond_b
    new-instance v7, Ln3/a1;

    invoke-direct {v7, v14}, Ln3/a1;-><init>(Ln3/a1$a;)V

    .line 44
    iput-object v7, v0, Ln3/k0;->i0:Ln3/a1;

    .line 45
    invoke-virtual/range {p0 .. p0}, Ln3/k0;->g0()Ln3/a1;

    move-result-object v7

    .line 46
    :cond_c
    iget-object v8, v0, Ln3/k0;->O:Ln3/a1;

    invoke-virtual {v7, v8}, Ln3/a1;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    .line 47
    iput-object v7, v0, Ln3/k0;->O:Ln3/a1;

    .line 48
    iget-boolean v7, v3, Ln3/l1;->l:Z

    iget-boolean v9, v1, Ln3/l1;->l:Z

    if-eq v7, v9, :cond_d

    move v7, v5

    goto :goto_6

    :cond_d
    move v7, v13

    .line 49
    :goto_6
    iget v9, v3, Ln3/l1;->e:I

    iget v11, v1, Ln3/l1;->e:I

    if-eq v9, v11, :cond_e

    move v9, v5

    goto :goto_7

    :cond_e
    move v9, v13

    :goto_7
    if-nez v9, :cond_f

    if-eqz v7, :cond_10

    .line 50
    :cond_f
    invoke-virtual/range {p0 .. p0}, Ln3/k0;->G0()V

    .line 51
    :cond_10
    iget-boolean v11, v3, Ln3/l1;->g:Z

    iget-boolean v12, v1, Ln3/l1;->g:Z

    if-eq v11, v12, :cond_11

    move v11, v5

    goto :goto_8

    :cond_11
    move v11, v13

    .line 52
    :goto_8
    iget-object v12, v3, Ln3/l1;->a:Ln3/b2;

    iget-object v14, v1, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v12, v14}, Ln3/b2;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 53
    iget-object v12, v0, Ln3/k0;->l:Lm5/o;

    new-instance v14, Ln3/h0;

    move/from16 v15, p2

    invoke-direct {v14, v1, v15}, Ln3/h0;-><init>(Ln3/l1;I)V

    invoke-virtual {v12, v13, v14}, Lm5/o;->b(ILm5/o$a;)V

    :cond_12
    if-eqz p5, :cond_1a

    .line 54
    new-instance v12, Ln3/b2$b;

    invoke-direct {v12}, Ln3/b2$b;-><init>()V

    .line 55
    iget-object v14, v3, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v14}, Ln3/b2;->s()Z

    move-result v14

    if-nez v14, :cond_13

    .line 56
    iget-object v14, v3, Ln3/l1;->b:Lp4/x$b;

    iget-object v14, v14, Lp4/w;->a:Ljava/lang/Object;

    .line 57
    iget-object v15, v3, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v15, v14, v12}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 58
    iget v15, v12, Ln3/b2$b;->j:I

    .line 59
    iget-object v13, v3, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v13, v14}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v13

    .line 60
    iget-object v5, v3, Ln3/l1;->a:Ln3/b2;

    move/from16 p2, v13

    iget-object v13, v0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v5, v15, v13}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v5

    iget-object v5, v5, Ln3/b2$d;->h:Ljava/lang/Object;

    .line 61
    iget-object v13, v0, Ln3/e;->a:Ln3/b2$d;

    iget-object v13, v13, Ln3/b2$d;->j:Ln3/y0;

    move/from16 v21, p2

    move-object/from16 v17, v5

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move/from16 v18, v15

    goto :goto_9

    :cond_13
    move/from16 v18, p9

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    :goto_9
    if-nez v2, :cond_16

    .line 62
    iget-object v5, v3, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v5}, Lp4/w;->a()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 63
    iget-object v5, v3, Ln3/l1;->b:Lp4/x$b;

    iget v13, v5, Lp4/w;->b:I

    iget v5, v5, Lp4/w;->c:I

    .line 64
    invoke-virtual {v12, v13, v5}, Ln3/b2$b;->b(II)J

    move-result-wide v12

    .line 65
    invoke-static {v3}, Ln3/k0;->n0(Ln3/l1;)J

    move-result-wide v14

    move v5, v11

    goto :goto_b

    .line 66
    :cond_14
    iget-object v5, v3, Ln3/l1;->b:Lp4/x$b;

    iget v5, v5, Lp4/w;->e:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_15

    .line 67
    iget-object v5, v0, Ln3/k0;->j0:Ln3/l1;

    invoke-static {v5}, Ln3/k0;->n0(Ln3/l1;)J

    move-result-wide v12

    move v5, v11

    goto :goto_a

    .line 68
    :cond_15
    iget-wide v13, v12, Ln3/b2$b;->l:J

    move v5, v11

    iget-wide v11, v12, Ln3/b2$b;->k:J

    add-long/2addr v13, v11

    move-wide v12, v13

    goto :goto_a

    :cond_16
    move v5, v11

    .line 69
    iget-object v11, v3, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v11}, Lp4/w;->a()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 70
    iget-wide v12, v3, Ln3/l1;->r:J

    .line 71
    invoke-static {v3}, Ln3/k0;->n0(Ln3/l1;)J

    move-result-wide v14

    goto :goto_b

    .line 72
    :cond_17
    iget-wide v11, v12, Ln3/b2$b;->l:J

    iget-wide v13, v3, Ln3/l1;->r:J

    add-long/2addr v11, v13

    move-wide v12, v11

    :goto_a
    move-wide v14, v12

    .line 73
    :goto_b
    new-instance v11, Ln3/o1$d;

    .line 74
    invoke-static {v12, v13}, Lm5/g0;->X(J)J

    move-result-wide v22

    .line 75
    invoke-static {v14, v15}, Lm5/g0;->X(J)J

    move-result-wide v24

    iget-object v12, v3, Ln3/l1;->b:Lp4/x$b;

    iget v13, v12, Lp4/w;->b:I

    iget v12, v12, Lp4/w;->c:I

    move-object/from16 v16, v11

    move/from16 v26, v13

    move/from16 v27, v12

    invoke-direct/range {v16 .. v27}, Ln3/o1$d;-><init>(Ljava/lang/Object;ILn3/y0;Ljava/lang/Object;IJJII)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Ln3/k0;->C()I

    move-result v12

    .line 77
    iget-object v13, v0, Ln3/k0;->j0:Ln3/l1;

    iget-object v13, v13, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v13}, Ln3/b2;->s()Z

    move-result v13

    if-nez v13, :cond_18

    .line 78
    iget-object v13, v0, Ln3/k0;->j0:Ln3/l1;

    iget-object v14, v13, Ln3/l1;->b:Lp4/x$b;

    iget-object v14, v14, Lp4/w;->a:Ljava/lang/Object;

    .line 79
    iget-object v13, v13, Ln3/l1;->a:Ln3/b2;

    iget-object v15, v0, Ln3/k0;->n:Ln3/b2$b;

    invoke-virtual {v13, v14, v15}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 80
    iget-object v13, v0, Ln3/k0;->j0:Ln3/l1;

    iget-object v13, v13, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v13, v14}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v13

    .line 81
    iget-object v15, v0, Ln3/k0;->j0:Ln3/l1;

    iget-object v15, v15, Ln3/l1;->a:Ln3/b2;

    move/from16 p2, v13

    iget-object v13, v0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v15, v12, v13}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v13

    iget-object v13, v13, Ln3/b2$d;->h:Ljava/lang/Object;

    .line 82
    iget-object v15, v0, Ln3/e;->a:Ln3/b2$d;

    iget-object v15, v15, Ln3/b2$d;->j:Ln3/y0;

    move/from16 v31, p2

    move-object/from16 v27, v13

    move-object/from16 v30, v14

    move-object/from16 v29, v15

    goto :goto_c

    :cond_18
    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, -0x1

    .line 83
    :goto_c
    invoke-static/range {p7 .. p8}, Lm5/g0;->X(J)J

    move-result-wide v32

    .line 84
    new-instance v13, Ln3/o1$d;

    .line 85
    iget-object v14, v0, Ln3/k0;->j0:Ln3/l1;

    iget-object v14, v14, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v14}, Lp4/w;->a()Z

    move-result v14

    if-eqz v14, :cond_19

    .line 86
    iget-object v14, v0, Ln3/k0;->j0:Ln3/l1;

    invoke-static {v14}, Ln3/k0;->n0(Ln3/l1;)J

    move-result-wide v14

    invoke-static {v14, v15}, Lm5/g0;->X(J)J

    move-result-wide v14

    move-wide/from16 v34, v14

    goto :goto_d

    :cond_19
    move-wide/from16 v34, v32

    .line 87
    :goto_d
    iget-object v14, v0, Ln3/k0;->j0:Ln3/l1;

    iget-object v14, v14, Ln3/l1;->b:Lp4/x$b;

    iget v15, v14, Lp4/w;->b:I

    iget v14, v14, Lp4/w;->c:I

    move-object/from16 v26, v13

    move/from16 v28, v12

    move/from16 v36, v15

    move/from16 v37, v14

    invoke-direct/range {v26 .. v37}, Ln3/o1$d;-><init>(Ljava/lang/Object;ILn3/y0;Ljava/lang/Object;IJJII)V

    .line 88
    iget-object v12, v0, Ln3/k0;->l:Lm5/o;

    const/16 v14, 0xb

    new-instance v15, Ln3/e0;

    invoke-direct {v15, v2, v11, v13}, Ln3/e0;-><init>(ILn3/o1$d;Ln3/o1$d;)V

    invoke-virtual {v12, v14, v15}, Lm5/o;->b(ILm5/o$a;)V

    goto :goto_e

    :cond_1a
    move v5, v11

    :goto_e
    if-eqz v6, :cond_1b

    .line 89
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    new-instance v6, Ln3/f0;

    invoke-direct {v6, v10, v4}, Ln3/f0;-><init>(Ln3/y0;I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v6}, Lm5/o;->b(ILm5/o$a;)V

    .line 90
    :cond_1b
    iget-object v2, v3, Ln3/l1;->f:Ln3/q;

    iget-object v4, v1, Ln3/l1;->f:Ln3/q;

    if-eq v2, v4, :cond_1c

    .line 91
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    new-instance v4, Ln3/x;

    const/4 v6, 0x0

    invoke-direct {v4, v1, v6}, Ln3/x;-><init>(Ljava/lang/Object;I)V

    const/16 v6, 0xa

    invoke-virtual {v2, v6, v4}, Lm5/o;->b(ILm5/o$a;)V

    .line 92
    iget-object v2, v1, Ln3/l1;->f:Ln3/q;

    if-eqz v2, :cond_1c

    .line 93
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    new-instance v4, Ly0/c0;

    const/4 v10, 0x1

    invoke-direct {v4, v1, v10}, Ly0/c0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v6, v4}, Lm5/o;->b(ILm5/o$a;)V

    .line 94
    :cond_1c
    iget-object v2, v3, Ln3/l1;->i:Lj5/t;

    iget-object v4, v1, Ln3/l1;->i:Lj5/t;

    if-eq v2, v4, :cond_1d

    .line 95
    iget-object v2, v0, Ln3/k0;->h:Lj5/s;

    iget-object v4, v4, Lj5/t;->e:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lj5/s;->a(Ljava/lang/Object;)V

    .line 96
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    new-instance v4, Ly0/b0;

    const/4 v6, 0x1

    invoke-direct {v4, v1, v6}, Ly0/b0;-><init>(Ljava/lang/Object;I)V

    const/4 v10, 0x2

    invoke-virtual {v2, v10, v4}, Lm5/o;->b(ILm5/o$a;)V

    goto :goto_f

    :cond_1d
    const/4 v6, 0x1

    :goto_f
    if-eqz v8, :cond_1e

    .line 97
    iget-object v2, v0, Ln3/k0;->O:Ln3/a1;

    .line 98
    iget-object v4, v0, Ln3/k0;->l:Lm5/o;

    const/16 v8, 0xe

    new-instance v10, Ln3/z;

    invoke-direct {v10, v2, v6}, Ln3/z;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v8, v10}, Lm5/o;->b(ILm5/o$a;)V

    :cond_1e
    if-eqz v5, :cond_1f

    .line 99
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    new-instance v4, Ln3/a0;

    invoke-direct {v4, v1}, Ln3/a0;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v4}, Lm5/o;->b(ILm5/o$a;)V

    :cond_1f
    if-nez v9, :cond_20

    if-eqz v7, :cond_21

    .line 100
    :cond_20
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    new-instance v4, Ln3/w;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ln3/w;-><init>(Ljava/lang/Object;I)V

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v4}, Lm5/o;->b(ILm5/o$a;)V

    :cond_21
    if-eqz v9, :cond_22

    .line 101
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    const/4 v4, 0x4

    new-instance v5, Ly0/c;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Ly0/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4, v5}, Lm5/o;->b(ILm5/o$a;)V

    :cond_22
    if-eqz v7, :cond_23

    .line 102
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    const/4 v4, 0x5

    new-instance v5, Ln3/i0;

    move/from16 v6, p3

    invoke-direct {v5, v1, v6}, Ln3/i0;-><init>(Ln3/l1;I)V

    invoke-virtual {v2, v4, v5}, Lm5/o;->b(ILm5/o$a;)V

    .line 103
    :cond_23
    iget v2, v3, Ln3/l1;->m:I

    iget v4, v1, Ln3/l1;->m:I

    if-eq v2, v4, :cond_24

    .line 104
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    const/4 v4, 0x6

    new-instance v5, Lo3/c;

    const/4 v6, 0x2

    invoke-direct {v5, v1, v6}, Lo3/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4, v5}, Lm5/o;->b(ILm5/o$a;)V

    .line 105
    :cond_24
    invoke-static {v3}, Ln3/k0;->o0(Ln3/l1;)Z

    move-result v2

    invoke-static/range {p1 .. p1}, Ln3/k0;->o0(Ln3/l1;)Z

    move-result v4

    if-eq v2, v4, :cond_25

    .line 106
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    const/4 v4, 0x7

    new-instance v5, Lm0/b;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Lm0/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4, v5}, Lm5/o;->b(ILm5/o$a;)V

    .line 107
    :cond_25
    iget-object v2, v3, Ln3/l1;->n:Ln3/m1;

    iget-object v4, v1, Ln3/l1;->n:Ln3/m1;

    invoke-virtual {v2, v4}, Ln3/m1;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 108
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    const/16 v4, 0xc

    new-instance v5, Ln3/g0;

    invoke-direct {v5, v1}, Ln3/g0;-><init>(Ln3/l1;)V

    invoke-virtual {v2, v4, v5}, Lm5/o;->b(ILm5/o$a;)V

    :cond_26
    if-eqz p4, :cond_27

    .line 109
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    sget-object v4, Ly0/l;->d:Ly0/l;

    const/4 v5, -0x1

    invoke-virtual {v2, v5, v4}, Lm5/o;->b(ILm5/o$a;)V

    .line 110
    :cond_27
    invoke-virtual/range {p0 .. p0}, Ln3/k0;->D0()V

    .line 111
    iget-object v2, v0, Ln3/k0;->l:Lm5/o;

    invoke-virtual {v2}, Lm5/o;->a()V

    .line 112
    iget-boolean v2, v3, Ln3/l1;->o:Z

    iget-boolean v1, v1, Ln3/l1;->o:Z

    if-eq v2, v1, :cond_28

    .line 113
    iget-object v1, v0, Ln3/k0;->m:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/r$a;

    .line 114
    invoke-interface {v2}, Ln3/r$a;->i()V

    goto :goto_10

    :cond_28
    return-void
.end method

.method public final G()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    invoke-virtual {p0}, Ln3/k0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    iget v0, v0, Lp4/w;->c:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final G0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/k0;->s()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 4
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-boolean v0, v0, Ln3/l1;->o:Z

    .line 5
    iget-object v3, p0, Ln3/k0;->C:Ln3/d2;

    invoke-virtual {p0}, Ln3/k0;->p()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Ln3/d2;->a(Z)V

    .line 6
    iget-object v0, p0, Ln3/k0;->D:Ln3/e2;

    invoke-virtual {p0}, Ln3/k0;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ln3/e2;->a(Z)V

    goto :goto_2

    .line 7
    :cond_3
    :goto_1
    iget-object v0, p0, Ln3/k0;->C:Ln3/d2;

    invoke-virtual {v0, v2}, Ln3/d2;->a(Z)V

    .line 8
    iget-object v0, p0, Ln3/k0;->D:Ln3/e2;

    invoke-virtual {v0, v2}, Ln3/e2;->a(Z)V

    :goto_2
    return-void
.end method

.method public final H(Ln3/o1$c;)V
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/k0;->l:Lm5/o;

    .line 3
    iget-object v1, v0, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm5/o$c;

    .line 4
    iget-object v3, v2, Lm5/o$c;->a:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    iget-object v3, v0, Lm5/o;->c:Lm5/o$b;

    const/4 v4, 0x1

    .line 6
    iput-boolean v4, v2, Lm5/o$c;->d:Z

    .line 7
    iget-boolean v4, v2, Lm5/o$c;->c:Z

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, v2, Lm5/o$c;->a:Ljava/lang/Object;

    iget-object v5, v2, Lm5/o$c;->b:Lm5/j$a;

    invoke-virtual {v5}, Lm5/j$a;->b()Lm5/j;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lm5/o$b;->a(Ljava/lang/Object;Lm5/j;)V

    .line 9
    :cond_1
    iget-object v3, v0, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final H0()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/k0;->d:Lm5/e;

    invoke-virtual {v0}, Lm5/e;->a()V

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln3/k0;->s:Landroid/os/Looper;

    .line 4
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 6
    iget-object v1, p0, Ln3/k0;->s:Landroid/os/Looper;

    .line 7
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 8
    invoke-static {v1, v0}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-boolean v1, p0, Ln3/k0;->e0:Z

    if-nez v1, :cond_1

    .line 10
    iget-boolean v1, p0, Ln3/k0;->f0:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v0, v1}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iput-boolean v2, p0, Ln3/k0;->f0:Z

    goto :goto_1

    .line 12
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public final I(Landroid/view/SurfaceView;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    instance-of v0, p1, Ln5/j;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/k0;->v0()V

    .line 4
    invoke-virtual {p0, p1}, Ln3/k0;->z0(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/k0;->x0(Landroid/view/SurfaceHolder;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    instance-of v0, p1, Lo5/j;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Ln3/k0;->v0()V

    .line 8
    move-object v0, p1

    check-cast v0, Lo5/j;

    iput-object v0, p0, Ln3/k0;->T:Lo5/j;

    .line 9
    iget-object v0, p0, Ln3/k0;->y:Ln3/k0$c;

    invoke-virtual {p0, v0}, Ln3/k0;->i0(Ln3/p1$b;)Ln3/p1;

    move-result-object v0

    const/16 v1, 0x2710

    .line 10
    invoke-virtual {v0, v1}, Ln3/p1;->e(I)Ln3/p1;

    iget-object v1, p0, Ln3/k0;->T:Lo5/j;

    .line 11
    invoke-virtual {v0, v1}, Ln3/p1;->d(Ljava/lang/Object;)Ln3/p1;

    .line 12
    invoke-virtual {v0}, Ln3/p1;->c()Ln3/p1;

    .line 13
    iget-object v0, p0, Ln3/k0;->T:Lo5/j;

    iget-object v1, p0, Ln3/k0;->x:Ln3/k0$b;

    .line 14
    iget-object v0, v0, Lo5/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Ln3/k0;->T:Lo5/j;

    invoke-virtual {v0}, Lo5/j;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln3/k0;->z0(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln3/k0;->x0(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 18
    :goto_0
    invoke-virtual {p0}, Ln3/k0;->H0()V

    if-nez p1, :cond_3

    .line 19
    invoke-virtual {p0}, Ln3/k0;->h0()V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {p0}, Ln3/k0;->v0()V

    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Ln3/k0;->U:Z

    .line 22
    iput-object p1, p0, Ln3/k0;->S:Landroid/view/SurfaceHolder;

    .line 23
    iget-object v1, p0, Ln3/k0;->x:Ln3/k0$b;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 24
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 25
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 26
    invoke-virtual {p0, v1}, Ln3/k0;->z0(Ljava/lang/Object;)V

    .line 27
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ln3/k0;->r0(II)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-virtual {p0, v0}, Ln3/k0;->z0(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1, p1}, Ln3/k0;->r0(II)V

    :goto_1
    return-void
.end method

.method public final J(Landroid/view/SurfaceView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p0}, Ln3/k0;->H0()V

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Ln3/k0;->S:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ln3/k0;->h0()V

    :cond_1
    return-void
.end method

.method public final L()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget v0, v0, Ln3/l1;->m:I

    return v0
.end method

.method public final M()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget v0, p0, Ln3/k0;->F:I

    return v0
.end method

.method public final N()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    invoke-virtual {p0}, Ln3/k0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->b:Lp4/x$b;

    .line 4
    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v2, v1, Lp4/w;->a:Ljava/lang/Object;

    iget-object v3, p0, Ln3/k0;->n:Ln3/b2$b;

    invoke-virtual {v0, v2, v3}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 5
    iget-object v0, p0, Ln3/k0;->n:Ln3/b2$b;

    iget v2, v1, Lp4/w;->b:I

    iget v1, v1, Lp4/w;->c:I

    invoke-virtual {v0, v2, v1}, Ln3/b2$b;->b(II)J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Lm5/g0;->X(J)J

    move-result-wide v0

    return-wide v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ln3/k0;->O()Ln3/b2;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ln3/k0;->C()I

    move-result v1

    iget-object v2, p0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v0, v1, v2}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b2$d;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final O()Ln3/b2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    return-object v0
.end method

.method public final P()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Ln3/k0;->s:Landroid/os/Looper;

    return-object v0
.end method

.method public final Q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-boolean v0, p0, Ln3/k0;->G:Z

    return v0
.end method

.method public final S()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-wide v0, p0, Ln3/k0;->l0:J

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->k:Lp4/x$b;

    iget-wide v1, v1, Lp4/w;->d:J

    iget-object v3, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v3, v3, Lp4/w;->d:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {p0}, Ln3/k0;->C()I

    move-result v1

    iget-object v2, p0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v0, v1, v2}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v0

    invoke-virtual {v0}, Ln3/b2$d;->c()J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_1
    iget-wide v0, v0, Ln3/l1;->p:J

    .line 7
    iget-object v2, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v2, v2, Ln3/l1;->k:Lp4/x$b;

    invoke-virtual {v2}, Lp4/w;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v0, v0, Ln3/l1;->k:Lp4/x$b;

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    iget-object v2, p0, Ln3/k0;->n:Ln3/b2$b;

    .line 9
    invoke-virtual {v1, v0, v2}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v0

    .line 10
    iget-object v1, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->k:Lp4/x$b;

    iget v1, v1, Lp4/w;->b:I

    .line 11
    invoke-virtual {v0, v1}, Ln3/b2$b;->e(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    .line 12
    iget-wide v0, v0, Ln3/b2$b;->k:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 13
    :cond_3
    :goto_0
    iget-object v2, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v3, v2, Ln3/l1;->a:Ln3/b2;

    iget-object v2, v2, Ln3/l1;->k:Lp4/x$b;

    .line 14
    invoke-virtual {p0, v3, v2, v0, v1}, Ln3/k0;->s0(Ln3/b2;Lp4/x$b;J)J

    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lm5/g0;->X(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final V(Landroid/view/TextureView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/k0;->h0()V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Ln3/k0;->v0()V

    .line 4
    iput-object p1, p0, Ln3/k0;->V:Landroid/view/TextureView;

    .line 5
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 6
    invoke-static {v0, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Ln3/k0;->x:Ln3/k0$b;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Ln3/k0;->z0(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1, p1}, Ln3/k0;->r0(II)V

    goto :goto_1

    .line 11
    :cond_3
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 12
    invoke-virtual {p0, v1}, Ln3/k0;->z0(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Ln3/k0;->R:Landroid/view/Surface;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ln3/k0;->r0(II)V

    :goto_1
    return-void
.end method

.method public final X()Ln3/a1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->O:Ln3/a1;

    return-object v0
.end method

.method public final Y(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln3/y0;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ln3/k0;->H0()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, v10, Ln3/k0;->q:Lp4/x$a;

    move-object/from16 v4, p1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln3/y0;

    invoke-interface {v3, v5}, Lp4/x$a;->c(Ln3/y0;)Lp4/x;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ln3/k0;->H0()V

    .line 6
    invoke-virtual/range {p0 .. p0}, Ln3/k0;->k0()I

    .line 7
    invoke-virtual/range {p0 .. p0}, Ln3/k0;->b0()J

    .line 8
    iget v2, v10, Ln3/k0;->H:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v10, Ln3/k0;->H:I

    .line 9
    iget-object v2, v10, Ln3/k0;->o:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v2, v10, Ln3/k0;->o:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 12
    invoke-virtual {v10, v2}, Ln3/k0;->u0(I)V

    .line 13
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 14
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 15
    new-instance v4, Ln3/h1$c;

    .line 16
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp4/x;

    iget-boolean v6, v10, Ln3/k0;->p:Z

    invoke-direct {v4, v5, v6}, Ln3/h1$c;-><init>(Lp4/x;Z)V

    .line 17
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v5, v10, Ln3/k0;->o:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, 0x0

    new-instance v7, Ln3/k0$d;

    iget-object v8, v4, Ln3/h1$c;->b:Ljava/lang/Object;

    iget-object v4, v4, Ln3/h1$c;->a:Lp4/t;

    .line 19
    iget-object v4, v4, Lp4/t;->v:Lp4/t$a;

    .line 20
    invoke-direct {v7, v8, v4}, Ln3/k0$d;-><init>(Ljava/lang/Object;Ln3/b2;)V

    .line 21
    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, v10, Ln3/k0;->M:Lp4/o0;

    .line 23
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 24
    invoke-interface {v0, v2}, Lp4/o0;->d(I)Lp4/o0;

    move-result-object v0

    iput-object v0, v10, Ln3/k0;->M:Lp4/o0;

    .line 25
    new-instance v0, Ln3/q1;

    iget-object v2, v10, Ln3/k0;->o:Ljava/util/ArrayList;

    iget-object v4, v10, Ln3/k0;->M:Lp4/o0;

    invoke-direct {v0, v2, v4}, Ln3/q1;-><init>(Ljava/util/Collection;Lp4/o0;)V

    .line 26
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v2

    const/4 v4, -0x1

    if-nez v2, :cond_4

    .line 27
    iget v2, v0, Ln3/q1;->m:I

    if-ge v4, v2, :cond_3

    goto :goto_2

    .line 28
    :cond_3
    new-instance v0, Ln3/v0;

    invoke-direct {v0}, Ln3/v0;-><init>()V

    throw v0

    .line 29
    :cond_4
    :goto_2
    iget-boolean v2, v10, Ln3/k0;->G:Z

    invoke-virtual {v0, v2}, Ln3/a;->c(Z)I

    move-result v14

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 30
    iget-object v2, v10, Ln3/k0;->j0:Ln3/l1;

    .line 31
    invoke-virtual {v10, v0, v14, v5, v6}, Ln3/k0;->q0(Ln3/b2;IJ)Landroid/util/Pair;

    move-result-object v7

    .line 32
    invoke-virtual {v10, v2, v0, v7}, Ln3/k0;->p0(Ln3/l1;Ln3/b2;Landroid/util/Pair;)Ln3/l1;

    move-result-object v2

    .line 33
    iget v7, v2, Ln3/l1;->e:I

    if-eq v14, v4, :cond_7

    if-eq v7, v3, :cond_7

    .line 34
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v4

    if-nez v4, :cond_6

    .line 35
    iget v0, v0, Ln3/q1;->m:I

    if-lt v14, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v7, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v7, 0x4

    .line 36
    :cond_7
    :goto_4
    invoke-virtual {v2, v7}, Ln3/l1;->f(I)Ln3/l1;

    move-result-object v2

    .line 37
    iget-object v0, v10, Ln3/k0;->k:Ln3/o0;

    .line 38
    invoke-static {v5, v6}, Lm5/g0;->L(J)J

    move-result-wide v15

    iget-object v13, v10, Ln3/k0;->M:Lp4/o0;

    .line 39
    iget-object v0, v0, Ln3/o0;->o:Lm5/l;

    new-instance v4, Ln3/o0$a;

    const/16 v17, 0x0

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Ln3/o0$a;-><init>(Ljava/util/List;Lp4/o0;IJLn3/n0;)V

    const/16 v5, 0x11

    .line 40
    invoke-interface {v0, v5, v4}, Lm5/l;->g(ILjava/lang/Object;)Lm5/l$a;

    move-result-object v0

    .line 41
    check-cast v0, Lm5/b0$a;

    invoke-virtual {v0}, Lm5/b0$a;->b()V

    .line 42
    iget-object v0, v10, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    iget-object v4, v2, Ln3/l1;->b:Lp4/x$b;

    iget-object v4, v4, Lp4/w;->a:Ljava/lang/Object;

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v10, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    .line 44
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0

    if-nez v0, :cond_8

    move v5, v3

    goto :goto_5

    :cond_8
    move v5, v1

    :goto_5
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 45
    invoke-virtual {v10, v2}, Ln3/k0;->j0(Ln3/l1;)J

    move-result-wide v8

    const/4 v11, -0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move-wide v7, v8

    move v9, v11

    .line 46
    invoke-virtual/range {v0 .. v9}, Ln3/k0;->F0(Ln3/l1;IIZZIJI)V

    return-void
.end method

.method public final a0(Ln3/o1$c;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ln3/k0;->l:Lm5/o;

    .line 3
    iget-boolean v1, v0, Lm5/o;->g:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lm5/o$c;

    invoke-direct {v1, p1}, Lm5/o$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    invoke-virtual {p0}, Ln3/k0;->p()Z

    move-result v0

    .line 3
    iget-object v1, p0, Ln3/k0;->A:Ln3/d;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Ln3/d;->e(ZI)I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ln3/k0;->l0(ZI)I

    move-result v3

    .line 5
    invoke-virtual {p0, v0, v1, v3}, Ln3/k0;->E0(ZII)V

    .line 6
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget v1, v0, Ln3/l1;->e:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Ln3/l1;->d(Ln3/q;)Ln3/l1;

    move-result-object v0

    .line 8
    iget-object v1, v0, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v1}, Ln3/b2;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 9
    :cond_1
    invoke-virtual {v0, v2}, Ln3/l1;->f(I)Ln3/l1;

    move-result-object v5

    .line 10
    iget v0, p0, Ln3/k0;->H:I

    add-int/2addr v0, v3

    iput v0, p0, Ln3/k0;->H:I

    .line 11
    iget-object v0, p0, Ln3/k0;->k:Ln3/o0;

    .line 12
    iget-object v0, v0, Ln3/o0;->o:Lm5/l;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lm5/l;->j(I)Lm5/l$a;

    move-result-object v0

    check-cast v0, Lm5/b0$a;

    invoke-virtual {v0}, Lm5/b0$a;->b()V

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x5

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, -0x1

    move-object v4, p0

    .line 13
    invoke-virtual/range {v4 .. v13}, Ln3/k0;->F0(Ln3/l1;IIZZIJI)V

    return-void
.end method

.method public final b0()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    invoke-virtual {p0, v0}, Ln3/k0;->j0(Ln3/l1;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lm5/g0;->X(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c0()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-wide v0, p0, Ln3/k0;->u:J

    return-wide v0
.end method

.method public final d()Ln3/m1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->n:Ln3/m1;

    return-object v0
.end method

.method public final g0()Ln3/a1;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/k0;->O()Ln3/b2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Ln3/k0;->i0:Ln3/a1;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ln3/k0;->C()I

    move-result v1

    iget-object v2, p0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v0, v1, v2}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v0

    iget-object v0, v0, Ln3/b2$d;->j:Ln3/y0;

    .line 5
    iget-object v1, p0, Ln3/k0;->i0:Ln3/a1;

    invoke-virtual {v1}, Ln3/a1;->b()Ln3/a1$a;

    move-result-object v1

    iget-object v0, v0, Ln3/y0;->k:Ln3/a1;

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object v2, v0, Ln3/a1;->h:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 7
    iput-object v2, v1, Ln3/a1$a;->a:Ljava/lang/CharSequence;

    .line 8
    :cond_2
    iget-object v2, v0, Ln3/a1;->i:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 9
    iput-object v2, v1, Ln3/a1$a;->b:Ljava/lang/CharSequence;

    .line 10
    :cond_3
    iget-object v2, v0, Ln3/a1;->j:Ljava/lang/CharSequence;

    if-eqz v2, :cond_4

    .line 11
    iput-object v2, v1, Ln3/a1$a;->c:Ljava/lang/CharSequence;

    .line 12
    :cond_4
    iget-object v2, v0, Ln3/a1;->k:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    .line 13
    iput-object v2, v1, Ln3/a1$a;->d:Ljava/lang/CharSequence;

    .line 14
    :cond_5
    iget-object v2, v0, Ln3/a1;->l:Ljava/lang/CharSequence;

    if-eqz v2, :cond_6

    .line 15
    iput-object v2, v1, Ln3/a1$a;->e:Ljava/lang/CharSequence;

    .line 16
    :cond_6
    iget-object v2, v0, Ln3/a1;->m:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 17
    iput-object v2, v1, Ln3/a1$a;->f:Ljava/lang/CharSequence;

    .line 18
    :cond_7
    iget-object v2, v0, Ln3/a1;->n:Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    .line 19
    iput-object v2, v1, Ln3/a1$a;->g:Ljava/lang/CharSequence;

    .line 20
    :cond_8
    iget-object v2, v0, Ln3/a1;->o:Ln3/r1;

    if-eqz v2, :cond_9

    .line 21
    iput-object v2, v1, Ln3/a1$a;->h:Ln3/r1;

    .line 22
    :cond_9
    iget-object v2, v0, Ln3/a1;->p:Ln3/r1;

    if-eqz v2, :cond_a

    .line 23
    iput-object v2, v1, Ln3/a1$a;->i:Ln3/r1;

    .line 24
    :cond_a
    iget-object v2, v0, Ln3/a1;->q:[B

    if-eqz v2, :cond_b

    .line 25
    iget-object v3, v0, Ln3/a1;->r:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    iput-object v2, v1, Ln3/a1$a;->j:[B

    .line 27
    iput-object v3, v1, Ln3/a1$a;->k:Ljava/lang/Integer;

    .line 28
    :cond_b
    iget-object v2, v0, Ln3/a1;->s:Landroid/net/Uri;

    if-eqz v2, :cond_c

    .line 29
    iput-object v2, v1, Ln3/a1$a;->l:Landroid/net/Uri;

    .line 30
    :cond_c
    iget-object v2, v0, Ln3/a1;->t:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 31
    iput-object v2, v1, Ln3/a1$a;->m:Ljava/lang/Integer;

    .line 32
    :cond_d
    iget-object v2, v0, Ln3/a1;->u:Ljava/lang/Integer;

    if-eqz v2, :cond_e

    .line 33
    iput-object v2, v1, Ln3/a1$a;->n:Ljava/lang/Integer;

    .line 34
    :cond_e
    iget-object v2, v0, Ln3/a1;->v:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    .line 35
    iput-object v2, v1, Ln3/a1$a;->o:Ljava/lang/Integer;

    .line 36
    :cond_f
    iget-object v2, v0, Ln3/a1;->w:Ljava/lang/Boolean;

    if-eqz v2, :cond_10

    .line 37
    iput-object v2, v1, Ln3/a1$a;->p:Ljava/lang/Boolean;

    .line 38
    :cond_10
    iget-object v2, v0, Ln3/a1;->x:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    .line 39
    iput-object v2, v1, Ln3/a1$a;->q:Ljava/lang/Integer;

    .line 40
    :cond_11
    iget-object v2, v0, Ln3/a1;->y:Ljava/lang/Integer;

    if-eqz v2, :cond_12

    .line 41
    iput-object v2, v1, Ln3/a1$a;->q:Ljava/lang/Integer;

    .line 42
    :cond_12
    iget-object v2, v0, Ln3/a1;->z:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    .line 43
    iput-object v2, v1, Ln3/a1$a;->r:Ljava/lang/Integer;

    .line 44
    :cond_13
    iget-object v2, v0, Ln3/a1;->A:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    .line 45
    iput-object v2, v1, Ln3/a1$a;->s:Ljava/lang/Integer;

    .line 46
    :cond_14
    iget-object v2, v0, Ln3/a1;->B:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    .line 47
    iput-object v2, v1, Ln3/a1$a;->t:Ljava/lang/Integer;

    .line 48
    :cond_15
    iget-object v2, v0, Ln3/a1;->C:Ljava/lang/Integer;

    if-eqz v2, :cond_16

    .line 49
    iput-object v2, v1, Ln3/a1$a;->u:Ljava/lang/Integer;

    .line 50
    :cond_16
    iget-object v2, v0, Ln3/a1;->D:Ljava/lang/Integer;

    if-eqz v2, :cond_17

    .line 51
    iput-object v2, v1, Ln3/a1$a;->v:Ljava/lang/Integer;

    .line 52
    :cond_17
    iget-object v2, v0, Ln3/a1;->E:Ljava/lang/CharSequence;

    if-eqz v2, :cond_18

    .line 53
    iput-object v2, v1, Ln3/a1$a;->w:Ljava/lang/CharSequence;

    .line 54
    :cond_18
    iget-object v2, v0, Ln3/a1;->F:Ljava/lang/CharSequence;

    if-eqz v2, :cond_19

    .line 55
    iput-object v2, v1, Ln3/a1$a;->x:Ljava/lang/CharSequence;

    .line 56
    :cond_19
    iget-object v2, v0, Ln3/a1;->G:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1a

    .line 57
    iput-object v2, v1, Ln3/a1$a;->y:Ljava/lang/CharSequence;

    .line 58
    :cond_1a
    iget-object v2, v0, Ln3/a1;->H:Ljava/lang/Integer;

    if-eqz v2, :cond_1b

    .line 59
    iput-object v2, v1, Ln3/a1$a;->z:Ljava/lang/Integer;

    .line 60
    :cond_1b
    iget-object v2, v0, Ln3/a1;->I:Ljava/lang/Integer;

    if-eqz v2, :cond_1c

    .line 61
    iput-object v2, v1, Ln3/a1$a;->A:Ljava/lang/Integer;

    .line 62
    :cond_1c
    iget-object v2, v0, Ln3/a1;->J:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1d

    .line 63
    iput-object v2, v1, Ln3/a1$a;->B:Ljava/lang/CharSequence;

    .line 64
    :cond_1d
    iget-object v2, v0, Ln3/a1;->K:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1e

    .line 65
    iput-object v2, v1, Ln3/a1$a;->C:Ljava/lang/CharSequence;

    .line 66
    :cond_1e
    iget-object v2, v0, Ln3/a1;->L:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1f

    .line 67
    iput-object v2, v1, Ln3/a1$a;->D:Ljava/lang/CharSequence;

    .line 68
    :cond_1f
    iget-object v0, v0, Ln3/a1;->M:Landroid/os/Bundle;

    if-eqz v0, :cond_20

    .line 69
    iput-object v0, v1, Ln3/a1$a;->E:Landroid/os/Bundle;

    .line 70
    :cond_20
    :goto_0
    invoke-virtual {v1}, Ln3/a1$a;->a()Ln3/a1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Ln3/k1;
    .locals 1

    invoke-virtual {p0}, Ln3/k0;->m0()Ln3/q;

    move-result-object v0

    return-object v0
.end method

.method public final h0()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    invoke-virtual {p0}, Ln3/k0;->v0()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Ln3/k0;->z0(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0}, Ln3/k0;->r0(II)V

    return-void
.end method

.method public final i(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->A:Ln3/d;

    invoke-virtual {p0}, Ln3/k0;->s()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ln3/d;->e(ZI)I

    move-result v0

    .line 3
    invoke-static {p1, v0}, Ln3/k0;->l0(ZI)I

    move-result v1

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Ln3/k0;->E0(ZII)V

    return-void
.end method

.method public final i0(Ln3/p1$b;)Ln3/p1;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ln3/k0;->k0()I

    move-result v0

    .line 2
    new-instance v8, Ln3/p1;

    iget-object v2, p0, Ln3/k0;->k:Ln3/o0;

    iget-object v1, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v4, v1, Ln3/l1;->a:Ln3/b2;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    .line 3
    iget-object v6, p0, Ln3/k0;->w:Lm5/a0;

    .line 4
    iget-object v7, v2, Ln3/o0;->q:Landroid/os/Looper;

    move-object v1, v8

    move-object v3, p1

    .line 5
    invoke-direct/range {v1 .. v7}, Ln3/p1;-><init>(Ln3/p1$a;Ln3/p1$b;Ln3/b2;ILm5/c;Landroid/os/Looper;)V

    return-object v8
.end method

.method public final j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v0}, Lp4/w;->a()Z

    move-result v0

    return v0
.end method

.method public final j0(Ln3/l1;)J
    .locals 4

    .line 1
    iget-object v0, p1, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Ln3/k0;->l0:J

    invoke-static {v0, v1}, Lm5/g0;->L(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p1, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v0}, Lp4/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p1, Ln3/l1;->r:J

    return-wide v0

    .line 5
    :cond_1
    iget-object v0, p1, Ln3/l1;->a:Ln3/b2;

    iget-object v1, p1, Ln3/l1;->b:Lp4/x$b;

    iget-wide v2, p1, Ln3/l1;->r:J

    invoke-virtual {p0, v0, v1, v2, v3}, Ln3/k0;->s0(Ln3/b2;Lp4/x$b;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final k()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-wide v0, p0, Ln3/k0;->v:J

    return-wide v0
.end method

.method public final k0()I
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Ln3/k0;->k0:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    iget-object v2, p0, Ln3/k0;->n:Ln3/b2$b;

    invoke-virtual {v1, v0, v2}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v0

    iget v0, v0, Ln3/b2$b;->j:I

    return v0
.end method

.method public final l()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    invoke-virtual {p0}, Ln3/k0;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    iget-object v2, p0, Ln3/k0;->n:Ln3/b2$b;

    invoke-virtual {v1, v0, v2}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 4
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-wide v1, v0, Ln3/l1;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 5
    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    .line 6
    invoke-virtual {p0}, Ln3/k0;->C()I

    move-result v1

    iget-object v2, p0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {v0, v1, v2}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ln3/b2$d;->b()J

    move-result-wide v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Ln3/k0;->n:Ln3/b2$b;

    .line 9
    iget-wide v0, v0, Ln3/b2$b;->l:J

    invoke-static {v0, v1}, Lm5/g0;->X(J)J

    move-result-wide v0

    .line 10
    iget-object v2, p0, Ln3/k0;->j0:Ln3/l1;

    iget-wide v2, v2, Ln3/l1;->c:J

    invoke-static {v2, v3}, Lm5/g0;->X(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 11
    :cond_1
    invoke-virtual {p0}, Ln3/k0;->b0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-wide v0, v0, Ln3/l1;->q:J

    invoke-static {v0, v1}, Lm5/g0;->X(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m0()Ln3/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->f:Ln3/q;

    return-object v0
.end method

.method public final n(IJ)V
    .locals 13

    move-object v10, p0

    move v0, p1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v1, v10, Ln3/k0;->r:Lo3/a;

    invoke-interface {v1}, Lo3/a;->b0()V

    .line 3
    iget-object v1, v10, Ln3/k0;->j0:Ln3/l1;

    iget-object v1, v1, Ln3/l1;->a:Ln3/b2;

    if-ltz v0, :cond_3

    .line 4
    invoke-virtual {v1}, Ln3/b2;->s()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ln3/b2;->r()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 5
    :cond_0
    iget v2, v10, Ln3/k0;->H:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v10, Ln3/k0;->H:I

    .line 6
    invoke-virtual {p0}, Ln3/k0;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekTo ignored because an ad is playing"

    .line 7
    invoke-static {v0, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ln3/o0$d;

    iget-object v1, v10, Ln3/k0;->j0:Ln3/l1;

    invoke-direct {v0, v1}, Ln3/o0$d;-><init>(Ln3/l1;)V

    .line 9
    invoke-virtual {v0, v3}, Ln3/o0$d;->a(I)V

    .line 10
    iget-object v1, v10, Ln3/k0;->j:Ln3/a0;

    iget-object v1, v1, Ln3/a0;->b:Ljava/lang/Object;

    check-cast v1, Ln3/k0;

    .line 11
    iget-object v2, v1, Ln3/k0;->i:Lm5/l;

    new-instance v4, Ly0/v;

    invoke-direct {v4, v1, v0, v3}, Ly0/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v4}, Lm5/l;->i(Ljava/lang/Runnable;)Z

    return-void

    .line 12
    :cond_1
    invoke-virtual {p0}, Ln3/k0;->s()I

    move-result v2

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    .line 13
    :goto_0
    invoke-virtual {p0}, Ln3/k0;->C()I

    move-result v9

    .line 14
    iget-object v2, v10, Ln3/k0;->j0:Ln3/l1;

    invoke-virtual {v2, v3}, Ln3/l1;->f(I)Ln3/l1;

    move-result-object v2

    move-wide v3, p2

    .line 15
    invoke-virtual {p0, v1, p1, v3, v4}, Ln3/k0;->q0(Ln3/b2;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 16
    invoke-virtual {p0, v2, v1, v5}, Ln3/k0;->p0(Ln3/l1;Ln3/b2;Landroid/util/Pair;)Ln3/l1;

    move-result-object v2

    .line 17
    iget-object v5, v10, Ln3/k0;->k:Ln3/o0;

    invoke-static/range {p2 .. p3}, Lm5/g0;->L(J)J

    move-result-wide v3

    .line 18
    iget-object v5, v5, Ln3/o0;->o:Lm5/l;

    new-instance v6, Ln3/o0$g;

    invoke-direct {v6, v1, p1, v3, v4}, Ln3/o0$g;-><init>(Ln3/b2;IJ)V

    const/4 v0, 0x3

    .line 19
    invoke-interface {v5, v0, v6}, Lm5/l;->g(ILjava/lang/Object;)Lm5/l$a;

    move-result-object v0

    .line 20
    check-cast v0, Lm5/b0$a;

    invoke-virtual {v0}, Lm5/b0$a;->b()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 21
    invoke-virtual {p0, v2}, Ln3/k0;->j0(Ln3/l1;)J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v11

    .line 22
    invoke-virtual/range {v0 .. v9}, Ln3/k0;->F0(Ln3/l1;IIZZIJI)V

    return-void

    .line 23
    :cond_3
    new-instance v0, Ln3/v0;

    invoke-direct {v0}, Ln3/v0;-><init>()V

    throw v0
.end method

.method public final o()Ln3/o1$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->N:Ln3/o1$a;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-boolean v0, v0, Ln3/l1;->l:Z

    return v0
.end method

.method public final p0(Ln3/l1;Ln3/b2;Landroid/util/Pair;)Ln3/l1;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/l1;",
            "Ln3/b2;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Ln3/l1;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Ln3/b2;->s()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, Lm5/a;->a(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v6, v3, Ln3/l1;->a:Ln3/b2;

    .line 3
    invoke-virtual/range {p1 .. p2}, Ln3/l1;->g(Ln3/b2;)Ln3/l1;

    move-result-object v7

    .line 4
    invoke-virtual/range {p2 .. p2}, Ln3/b2;->s()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    sget-object v1, Ln3/l1;->s:Lp4/x$b;

    sget-object v1, Ln3/l1;->s:Lp4/x$b;

    .line 6
    iget-wide v2, v0, Ln3/k0;->l0:J

    invoke-static {v2, v3}, Lm5/g0;->L(J)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    .line 7
    sget-object v17, Lp4/u0;->k:Lp4/u0;

    iget-object v2, v0, Ln3/k0;->b:Lj5/t;

    .line 8
    sget-object v19, Lu6/p0;->l:Lu6/p0;

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v18, v2

    .line 9
    invoke-virtual/range {v7 .. v19}, Ln3/l1;->b(Lp4/x$b;JJJJLp4/u0;Lj5/t;Ljava/util/List;)Ln3/l1;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Ln3/l1;->a(Lp4/x$b;)Ln3/l1;

    move-result-object v1

    .line 11
    iget-wide v2, v1, Ln3/l1;->r:J

    iput-wide v2, v1, Ln3/l1;->p:J

    return-object v1

    .line 12
    :cond_2
    iget-object v3, v7, Ln3/l1;->b:Lp4/x$b;

    iget-object v3, v3, Lp4/w;->a:Ljava/lang/Object;

    .line 13
    sget v8, Lm5/g0;->a:I

    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v5

    if-eqz v8, :cond_3

    .line 14
    new-instance v9, Lp4/x$b;

    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v9, v10}, Lp4/x$b;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v9, v7, Ln3/l1;->b:Lp4/x$b;

    :goto_2
    move-object v15, v9

    .line 15
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 16
    invoke-virtual/range {p0 .. p0}, Ln3/k0;->l()J

    move-result-wide v9

    invoke-static {v9, v10}, Lm5/g0;->L(J)J

    move-result-wide v9

    .line 17
    invoke-virtual {v6}, Ln3/b2;->s()Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    iget-object v2, v0, Ln3/k0;->n:Ln3/b2$b;

    .line 19
    invoke-virtual {v6, v3, v2}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v2

    .line 20
    iget-wide v2, v2, Ln3/b2$b;->l:J

    sub-long/2addr v9, v2

    :cond_4
    if-nez v8, :cond_b

    cmp-long v2, v13, v9

    if-gez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    if-nez v2, :cond_8

    .line 21
    iget-object v2, v7, Ln3/l1;->k:Lp4/x$b;

    iget-object v2, v2, Lp4/w;->a:Ljava/lang/Object;

    .line 22
    invoke-virtual {v1, v2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 23
    iget-object v3, v0, Ln3/k0;->n:Ln3/b2$b;

    .line 24
    invoke-virtual {v1, v2, v3, v4}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v2

    .line 25
    iget v2, v2, Ln3/b2$b;->j:I

    iget-object v3, v15, Lp4/w;->a:Ljava/lang/Object;

    iget-object v4, v0, Ln3/k0;->n:Ln3/b2$b;

    .line 26
    invoke-virtual {v1, v3, v4}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    move-result-object v3

    iget v3, v3, Ln3/b2$b;->j:I

    if-eq v2, v3, :cond_a

    .line 27
    :cond_6
    iget-object v2, v15, Lp4/w;->a:Ljava/lang/Object;

    iget-object v3, v0, Ln3/k0;->n:Ln3/b2$b;

    invoke-virtual {v1, v2, v3}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 28
    invoke-virtual {v15}, Lp4/w;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 29
    iget-object v1, v0, Ln3/k0;->n:Ln3/b2$b;

    iget v2, v15, Lp4/w;->b:I

    iget v3, v15, Lp4/w;->c:I

    invoke-virtual {v1, v2, v3}, Ln3/b2$b;->b(II)J

    move-result-wide v1

    goto :goto_3

    .line 30
    :cond_7
    iget-object v1, v0, Ln3/k0;->n:Ln3/b2$b;

    iget-wide v1, v1, Ln3/b2$b;->k:J

    .line 31
    :goto_3
    iget-wide v9, v7, Ln3/l1;->r:J

    iget-wide v11, v7, Ln3/l1;->r:J

    iget-wide v13, v7, Ln3/l1;->d:J

    iget-wide v3, v7, Ln3/l1;->r:J

    sub-long v3, v1, v3

    iget-object v5, v7, Ln3/l1;->h:Lp4/u0;

    iget-object v6, v7, Ln3/l1;->i:Lj5/t;

    iget-object v8, v7, Ln3/l1;->j:Ljava/util/List;

    move-object/from16 v19, v8

    move-object v8, v15

    move-object v0, v15

    move-wide v15, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 32
    invoke-virtual/range {v7 .. v19}, Ln3/l1;->b(Lp4/x$b;JJJJLp4/u0;Lj5/t;Ljava/util/List;)Ln3/l1;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v0}, Ln3/l1;->a(Lp4/x$b;)Ln3/l1;

    move-result-object v7

    .line 34
    iput-wide v1, v7, Ln3/l1;->p:J

    goto :goto_4

    :cond_8
    move-object v0, v15

    .line 35
    invoke-virtual {v0}, Lp4/w;->a()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lm5/a;->e(Z)V

    const-wide/16 v1, 0x0

    .line 36
    iget-wide v3, v7, Ln3/l1;->q:J

    sub-long v5, v13, v9

    sub-long/2addr v3, v5

    .line 37
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 38
    iget-wide v1, v7, Ln3/l1;->p:J

    .line 39
    iget-object v3, v7, Ln3/l1;->k:Lp4/x$b;

    iget-object v4, v7, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v3, v4}, Lp4/w;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    add-long v1, v13, v15

    .line 40
    :cond_9
    iget-object v3, v7, Ln3/l1;->h:Lp4/u0;

    iget-object v4, v7, Ln3/l1;->i:Lj5/t;

    iget-object v5, v7, Ln3/l1;->j:Ljava/util/List;

    move-object v8, v0

    move-wide v9, v13

    move-wide v11, v13

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    .line 41
    invoke-virtual/range {v7 .. v19}, Ln3/l1;->b(Lp4/x$b;JJJJLp4/u0;Lj5/t;Ljava/util/List;)Ln3/l1;

    move-result-object v7

    .line 42
    iput-wide v1, v7, Ln3/l1;->p:J

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    goto :goto_9

    :cond_b
    :goto_5
    move-object v0, v15

    .line 43
    invoke-virtual {v0}, Lp4/w;->a()Z

    move-result v1

    xor-int/2addr v1, v5

    invoke-static {v1}, Lm5/a;->e(Z)V

    const-wide/16 v15, 0x0

    if-eqz v8, :cond_c

    .line 44
    sget-object v1, Lp4/u0;->k:Lp4/u0;

    goto :goto_6

    :cond_c
    iget-object v1, v7, Ln3/l1;->h:Lp4/u0;

    :goto_6
    move-object/from16 v17, v1

    if-eqz v8, :cond_d

    move-object v1, v0

    move-object/from16 v0, p0

    .line 45
    iget-object v2, v0, Ln3/k0;->b:Lj5/t;

    goto :goto_7

    :cond_d
    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v2, v7, Ln3/l1;->i:Lj5/t;

    :goto_7
    move-object/from16 v18, v2

    if-eqz v8, :cond_e

    .line 46
    sget-object v2, Lu6/v;->i:Lu6/v$b;

    .line 47
    sget-object v2, Lu6/p0;->l:Lu6/p0;

    goto :goto_8

    .line 48
    :cond_e
    iget-object v2, v7, Ln3/l1;->j:Ljava/util/List;

    :goto_8
    move-object/from16 v19, v2

    move-object v8, v1

    move-wide v9, v13

    move-wide v11, v13

    move-wide v2, v13

    .line 49
    invoke-virtual/range {v7 .. v19}, Ln3/l1;->b(Lp4/x$b;JJJJLp4/u0;Lj5/t;Ljava/util/List;)Ln3/l1;

    move-result-object v4

    .line 50
    invoke-virtual {v4, v1}, Ln3/l1;->a(Lp4/x$b;)Ln3/l1;

    move-result-object v7

    .line 51
    iput-wide v2, v7, Ln3/l1;->p:J

    :goto_9
    return-object v7
.end method

.method public final q0(Ln3/b2;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b2;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput p2, p0, Ln3/k0;->k0:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    const-wide/16 p3, 0x0

    .line 3
    :cond_0
    iput-wide p3, p0, Ln3/k0;->l0:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 4
    invoke-virtual {p1}, Ln3/b2;->r()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 5
    :cond_2
    iget-boolean p2, p0, Ln3/k0;->G:Z

    invoke-virtual {p1, p2}, Ln3/b2;->c(Z)I

    move-result p2

    .line 6
    iget-object p3, p0, Ln3/e;->a:Ln3/b2$d;

    invoke-virtual {p1, p2, p3}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    move-result-object p3

    invoke-virtual {p3}, Ln3/b2$d;->b()J

    move-result-wide p3

    :cond_3
    move v3, p2

    .line 7
    iget-object v1, p0, Ln3/e;->a:Ln3/b2$d;

    iget-object v2, p0, Ln3/k0;->n:Ln3/b2$b;

    invoke-static {p3, p4}, Lm5/g0;->L(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ln3/b2;->l(Ln3/b2$d;Ln3/b2$b;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final r(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-boolean v0, p0, Ln3/k0;->G:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Ln3/k0;->G:Z

    .line 4
    iget-object v0, p0, Ln3/k0;->k:Ln3/o0;

    .line 5
    iget-object v0, v0, Ln3/o0;->o:Lm5/l;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lm5/l;->d(III)Lm5/l$a;

    move-result-object v0

    check-cast v0, Lm5/b0$a;

    invoke-virtual {v0}, Lm5/b0$a;->b()V

    .line 6
    iget-object v0, p0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0x9

    new-instance v2, Ln3/j0;

    invoke-direct {v2, p1}, Ln3/j0;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->b(ILm5/o$a;)V

    .line 7
    invoke-virtual {p0}, Ln3/k0;->D0()V

    .line 8
    iget-object p1, p0, Ln3/k0;->l:Lm5/o;

    invoke-virtual {p1}, Lm5/o;->a()V

    :cond_0
    return-void
.end method

.method public final r0(II)V
    .locals 3

    .line 1
    iget v0, p0, Ln3/k0;->X:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Ln3/k0;->Y:I

    if-eq p2, v0, :cond_1

    .line 2
    :cond_0
    iput p1, p0, Ln3/k0;->X:I

    .line 3
    iput p2, p0, Ln3/k0;->Y:I

    .line 4
    iget-object v0, p0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0x18

    new-instance v2, Ln3/d0;

    invoke-direct {v2, p1, p2}, Ln3/d0;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lm5/o;->d(ILm5/o$a;)V

    :cond_1
    return-void
.end method

.method public final s()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget v0, v0, Ln3/l1;->e:I

    return v0
.end method

.method public final s0(Ln3/b2;Lp4/x$b;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lp4/w;->a:Ljava/lang/Object;

    iget-object v0, p0, Ln3/k0;->n:Ln3/b2$b;

    invoke-virtual {p1, p2, v0}, Ln3/b2;->j(Ljava/lang/Object;Ln3/b2$b;)Ln3/b2$b;

    .line 2
    iget-object p1, p0, Ln3/k0;->n:Ln3/b2$b;

    .line 3
    iget-wide p1, p1, Ln3/b2$b;->l:J

    add-long/2addr p3, p1

    return-wide p3
.end method

.method public final t()Ln3/c2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->i:Lj5/t;

    iget-object v0, v0, Lj5/t;->d:Ln3/c2;

    return-object v0
.end method

.method public final t0()V
    .locals 6

    const-string v0, "ExoPlayerImpl"

    const-string v1, "Release "

    .line 1
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ExoPlayerLib/2.18.1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lm5/g0;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v2, Ln3/p0;->a:Ljava/util/HashSet;

    .line 4
    const-class v2, Ln3/p0;

    monitor-enter v2

    .line 5
    :try_start_0
    sget-object v3, Ln3/p0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lm5/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 9
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ln3/k0;->P:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 11
    iput-object v2, p0, Ln3/k0;->P:Landroid/media/AudioTrack;

    .line 12
    :cond_0
    iget-object v0, p0, Ln3/k0;->z:Ln3/b;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ln3/b;->a()V

    .line 13
    iget-object v0, p0, Ln3/k0;->B:Ln3/z1;

    .line 14
    iget-object v3, v0, Ln3/z1;->e:Ln3/z1$b;

    if-eqz v3, :cond_1

    .line 15
    :try_start_1
    iget-object v4, v0, Ln3/z1;->a:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "StreamVolumeManager"

    const-string v5, "Error unregistering stream volume receiver"

    .line 16
    invoke-static {v4, v5, v3}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :goto_0
    iput-object v2, v0, Ln3/z1;->e:Ln3/z1$b;

    .line 18
    :cond_1
    iget-object v0, p0, Ln3/k0;->C:Ln3/d2;

    .line 19
    iput-boolean v1, v0, Ln3/d2;->b:Z

    .line 20
    iget-object v0, p0, Ln3/k0;->D:Ln3/e2;

    .line 21
    iput-boolean v1, v0, Ln3/e2;->b:Z

    .line 22
    iget-object v0, p0, Ln3/k0;->A:Ln3/d;

    .line 23
    iput-object v2, v0, Ln3/d;->c:Ln3/d$b;

    .line 24
    invoke-virtual {v0}, Ln3/d;->a()V

    .line 25
    iget-object v0, p0, Ln3/k0;->k:Ln3/o0;

    .line 26
    monitor-enter v0

    .line 27
    :try_start_2
    iget-boolean v1, v0, Ln3/o0;->G:Z

    const/4 v3, 0x1

    if-nez v1, :cond_3

    iget-object v1, v0, Ln3/o0;->p:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    iget-object v1, v0, Ln3/o0;->o:Lm5/l;

    const/4 v4, 0x7

    invoke-interface {v1, v4}, Lm5/l;->e(I)Z

    .line 29
    new-instance v1, Ln3/s;

    invoke-direct {v1, v0, v3}, Ln3/s;-><init>(Ljava/lang/Object;I)V

    iget-wide v4, v0, Ln3/o0;->C:J

    invoke-virtual {v0, v1, v4, v5}, Ln3/o0;->n0(Lt6/o;J)V

    .line 30
    iget-boolean v1, v0, Ln3/o0;->G:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    goto :goto_2

    .line 31
    :cond_3
    :goto_1
    monitor-exit v0

    move v1, v3

    :goto_2
    if-nez v1, :cond_4

    .line 32
    iget-object v0, p0, Ln3/k0;->l:Lm5/o;

    const/16 v1, 0xa

    sget-object v4, Ln3/n;->d:Ln3/n;

    invoke-virtual {v0, v1, v4}, Lm5/o;->d(ILm5/o$a;)V

    .line 33
    :cond_4
    iget-object v0, p0, Ln3/k0;->l:Lm5/o;

    invoke-virtual {v0}, Lm5/o;->c()V

    .line 34
    iget-object v0, p0, Ln3/k0;->i:Lm5/l;

    invoke-interface {v0}, Lm5/l;->a()V

    .line 35
    iget-object v0, p0, Ln3/k0;->t:Ll5/e;

    iget-object v1, p0, Ln3/k0;->r:Lo3/a;

    invoke-interface {v0, v1}, Ll5/e;->d(Ll5/e$a;)V

    .line 36
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    invoke-virtual {v0, v3}, Ln3/l1;->f(I)Ln3/l1;

    move-result-object v0

    iput-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    .line 37
    iget-object v1, v0, Ln3/l1;->b:Lp4/x$b;

    invoke-virtual {v0, v1}, Ln3/l1;->a(Lp4/x$b;)Ln3/l1;

    move-result-object v0

    iput-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    .line 38
    iget-wide v3, v0, Ln3/l1;->r:J

    iput-wide v3, v0, Ln3/l1;->p:J

    .line 39
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Ln3/l1;->q:J

    .line 40
    iget-object v0, p0, Ln3/k0;->r:Lo3/a;

    invoke-interface {v0}, Lo3/a;->a()V

    .line 41
    iget-object v0, p0, Ln3/k0;->h:Lj5/s;

    invoke-virtual {v0}, Lj5/s;->b()V

    .line 42
    invoke-virtual {p0}, Ln3/k0;->v0()V

    .line 43
    iget-object v0, p0, Ln3/k0;->R:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 45
    iput-object v2, p0, Ln3/k0;->R:Landroid/view/Surface;

    .line 46
    :cond_5
    sget-object v0, Lz4/c;->i:Lz4/c;

    iput-object v0, p0, Ln3/k0;->d0:Lz4/c;

    return-void

    :catchall_0
    move-exception v1

    .line 47
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v0

    .line 48
    monitor-exit v2

    throw v0
.end method

.method public final u()V
    .locals 0

    invoke-virtual {p0}, Ln3/k0;->H0()V

    return-void
.end method

.method public final u0(I)V
    .locals 2

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1
    iget-object v1, p0, Ln3/k0;->o:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/k0;->M:Lp4/o0;

    invoke-interface {v0, p1}, Lp4/o0;->e(I)Lp4/o0;

    move-result-object p1

    iput-object p1, p0, Ln3/k0;->M:Lp4/o0;

    return-void
.end method

.method public final v0()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/k0;->T:Lo5/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/k0;->y:Ln3/k0$c;

    invoke-virtual {p0, v0}, Ln3/k0;->i0(Ln3/p1$b;)Ln3/p1;

    move-result-object v0

    const/16 v2, 0x2710

    .line 3
    invoke-virtual {v0, v2}, Ln3/p1;->e(I)Ln3/p1;

    .line 4
    invoke-virtual {v0, v1}, Ln3/p1;->d(Ljava/lang/Object;)Ln3/p1;

    .line 5
    invoke-virtual {v0}, Ln3/p1;->c()Ln3/p1;

    .line 6
    iget-object v0, p0, Ln3/k0;->T:Lo5/j;

    iget-object v2, p0, Ln3/k0;->x:Ln3/k0$b;

    .line 7
    iget-object v0, v0, Lo5/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iput-object v1, p0, Ln3/k0;->T:Lo5/j;

    .line 9
    :cond_0
    iget-object v0, p0, Ln3/k0;->V:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Ln3/k0;->x:Ln3/k0$b;

    if-eq v0, v2, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 11
    invoke-static {v0, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Ln3/k0;->V:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 13
    :goto_0
    iput-object v1, p0, Ln3/k0;->V:Landroid/view/TextureView;

    .line 14
    :cond_2
    iget-object v0, p0, Ln3/k0;->S:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 15
    iget-object v2, p0, Ln3/k0;->x:Ln3/k0$b;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 16
    iput-object v1, p0, Ln3/k0;->S:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method public final w0(IILjava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/k0;->g:[Ln3/s1;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Ln3/s1;->u()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 3
    invoke-virtual {p0, v3}, Ln3/k0;->i0(Ln3/p1$b;)Ln3/p1;

    move-result-object v3

    invoke-virtual {v3, p2}, Ln3/p1;->e(I)Ln3/p1;

    invoke-virtual {v3, p3}, Ln3/p1;->d(Ljava/lang/Object;)Ln3/p1;

    invoke-virtual {v3}, Ln3/p1;->c()Ln3/p1;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final x()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->a:Ln3/b2;

    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v1, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v0, v0, Ln3/l1;->b:Lp4/x$b;

    iget-object v0, v0, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final x0(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/k0;->U:Z

    .line 2
    iput-object p1, p0, Ln3/k0;->S:Landroid/view/SurfaceHolder;

    .line 3
    iget-object v1, p0, Ln3/k0;->x:Ln3/k0$b;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 4
    iget-object p1, p0, Ln3/k0;->S:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Ln3/k0;->S:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ln3/k0;->r0(II)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0, v0}, Ln3/k0;->r0(II)V

    :goto_0
    return-void
.end method

.method public final y()Lz4/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->d0:Lz4/c;

    return-object v0
.end method

.method public final y0(Ln3/m1;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    .line 2
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    iget-object v0, v0, Ln3/l1;->n:Ln3/m1;

    invoke-virtual {v0, p1}, Ln3/m1;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Ln3/k0;->j0:Ln3/l1;

    invoke-virtual {v0, p1}, Ln3/l1;->e(Ln3/m1;)Ln3/l1;

    move-result-object v2

    .line 4
    iget v0, p0, Ln3/k0;->H:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ln3/k0;->H:I

    .line 5
    iget-object v0, p0, Ln3/k0;->k:Ln3/o0;

    .line 6
    iget-object v0, v0, Ln3/o0;->o:Lm5/l;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lm5/l;->g(ILjava/lang/Object;)Lm5/l$a;

    move-result-object p1

    check-cast p1, Lm5/b0$a;

    invoke-virtual {p1}, Lm5/b0$a;->b()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v1, p0

    .line 7
    invoke-virtual/range {v1 .. v10}, Ln3/k0;->F0(Ln3/l1;IIZZIJI)V

    return-void
.end method

.method public final z(Landroid/view/TextureView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/k0;->H0()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Ln3/k0;->V:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/k0;->h0()V

    :cond_0
    return-void
.end method

.method public final z0(Ljava/lang/Object;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/k0;->g:[Ln3/s1;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 3
    invoke-interface {v6}, Ln3/s1;->u()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 4
    invoke-virtual {p0, v6}, Ln3/k0;->i0(Ln3/p1$b;)Ln3/p1;

    move-result-object v6

    .line 5
    invoke-virtual {v6, v5}, Ln3/p1;->e(I)Ln3/p1;

    .line 6
    invoke-virtual {v6, p1}, Ln3/p1;->d(Ljava/lang/Object;)Ln3/p1;

    .line 7
    invoke-virtual {v6}, Ln3/p1;->c()Ln3/p1;

    .line 8
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Ln3/k0;->Q:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 10
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/p1;

    .line 11
    iget-wide v6, p0, Ln3/k0;->E:J

    invoke-virtual {v1, v6, v7}, Ln3/p1;->a(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v3, v5

    goto :goto_2

    .line 12
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 13
    :cond_2
    :goto_2
    iget-object v0, p0, Ln3/k0;->Q:Ljava/lang/Object;

    iget-object v1, p0, Ln3/k0;->R:Landroid/view/Surface;

    if-ne v0, v1, :cond_3

    .line 14
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ln3/k0;->R:Landroid/view/Surface;

    .line 16
    :cond_3
    iput-object p1, p0, Ln3/k0;->Q:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 17
    new-instance p1, Ln3/q0;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Ln3/q0;-><init>(I)V

    const/16 v0, 0x3eb

    .line 18
    invoke-static {p1, v0}, Ln3/q;->d(Ljava/lang/RuntimeException;I)Ln3/q;

    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Ln3/k0;->C0(Ln3/q;)V

    :cond_4
    return-void
.end method
