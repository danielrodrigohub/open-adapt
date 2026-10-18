.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.super Lp4/a;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$d;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$h;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;,
        Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final synthetic W:I


# instance fields
.field public final A:Ljava/lang/Object;

.field public final B:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/source/dash/b;",
            ">;"
        }
    .end annotation
.end field

.field public final C:Landroidx/activity/g;

.field public final D:Landroidx/appcompat/widget/k1;

.field public final E:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

.field public final F:Ll5/e0;

.field public G:Ll5/j;

.field public H:Ll5/d0;

.field public I:Ll5/j0;

.field public J:Ls4/c;

.field public K:Landroid/os/Handler;

.field public L:Ln3/y0$f;

.field public M:Landroid/net/Uri;

.field public N:Landroid/net/Uri;

.field public O:Lt4/c;

.field public P:Z

.field public Q:J

.field public R:J

.field public S:J

.field public T:I

.field public U:J

.field public V:I

.field public final o:Ln3/y0;

.field public final p:Z

.field public final q:Ll5/j$a;

.field public final r:Lcom/google/android/exoplayer2/source/dash/a$a;

.field public final s:Lp4/h;

.field public final t:Lr3/l;

.field public final u:Ll5/c0;

.field public final v:Ls4/b;

.field public final w:J

.field public final x:Lp4/e0$a;

.field public final y:Ll5/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll5/f0$a<",
            "+",
            "Lt4/c;",
            ">;"
        }
    .end annotation
.end field

.field public final z:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    invoke-static {v0}, Ln3/p0;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ln3/y0;Ll5/j$a;Ll5/f0$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lp4/h;Lr3/l;Ll5/c0;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp4/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Ln3/y0;

    .line 3
    iget-object v0, p1, Ln3/y0;->j:Ln3/y0$f;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:Ln3/y0$f;

    .line 4
    iget-object v0, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, v0, Ln3/y0$g;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:Landroid/net/Uri;

    .line 7
    iget-object p1, p1, Ln3/y0;->i:Ln3/y0$h;

    iget-object p1, p1, Ln3/y0$g;->a:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    .line 9
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Ll5/j$a;

    .line 10
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Ll5/f0$a;

    .line 11
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 12
    iput-object p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Lr3/l;

    .line 13
    iput-object p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    .line 14
    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:J

    .line 15
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Lp4/h;

    .line 16
    new-instance p2, Ls4/b;

    invoke-direct {p2}, Ls4/b;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ls4/b;

    const/4 p2, 0x0

    .line 17
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:Z

    .line 18
    invoke-virtual {p0, p1}, Lp4/a;->s(Lp4/x$b;)Lp4/e0$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lp4/e0$a;

    .line 19
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Ljava/lang/Object;

    .line 20
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Landroid/util/SparseArray;

    .line 21
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->U:J

    .line 23
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S:J

    .line 24
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    .line 25
    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$f;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:Ll5/e0;

    .line 26
    new-instance p1, Landroidx/activity/g;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Landroidx/activity/g;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Landroidx/activity/g;

    .line 27
    new-instance p1, Landroidx/appcompat/widget/k1;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Landroidx/appcompat/widget/k1;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroidx/appcompat/widget/k1;

    return-void
.end method

.method public static y(Lt4/g;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/a;

    iget v2, v2, Lt4/a;->b:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    return v0
.end method


# virtual methods
.method public final A(Ll5/f0;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll5/f0<",
            "*>;JJ)V"
        }
    .end annotation

    .line 1
    new-instance p2, Lp4/r;

    iget-wide p3, p1, Ll5/f0;->a:J

    .line 2
    iget-object p3, p1, Ll5/f0;->d:Ll5/i0;

    .line 3
    iget-object p4, p3, Ll5/i0;->c:Landroid/net/Uri;

    .line 4
    iget-object p3, p3, Ll5/i0;->d:Ljava/util/Map;

    .line 5
    invoke-direct {p2, p3}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 6
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    invoke-interface {p3}, Ll5/c0;->d()V

    .line 7
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lp4/e0$a;

    iget p1, p1, Ll5/f0;->c:I

    invoke-virtual {p3, p2, p1}, Lp4/e0$a;->d(Lp4/r;I)V

    return-void
.end method

.method public final B(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve time offset."

    .line 1
    invoke-static {v0, v1, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    return-void
.end method

.method public final C(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S:J

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    return-void
.end method

.method public final D(Z)V
    .locals 41

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .line 1
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8

    .line 2
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3
    iget v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:I

    if-lt v3, v5, :cond_7

    .line 4
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/dash/b;

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:I

    sub-int/2addr v3, v7

    .line 5
    iput-object v6, v5, Lcom/google/android/exoplayer2/source/dash/b;->C:Lt4/c;

    .line 6
    iput v3, v5, Lcom/google/android/exoplayer2/source/dash/b;->D:I

    .line 7
    iget-object v7, v5, Lcom/google/android/exoplayer2/source/dash/b;->t:Lcom/google/android/exoplayer2/source/dash/d;

    .line 8
    iput-boolean v1, v7, Lcom/google/android/exoplayer2/source/dash/d;->o:Z

    .line 9
    iput-object v6, v7, Lcom/google/android/exoplayer2/source/dash/d;->m:Lt4/c;

    .line 10
    iget-object v8, v7, Lcom/google/android/exoplayer2/source/dash/d;->l:Ljava/util/TreeMap;

    .line 11
    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 12
    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 13
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 15
    iget-object v11, v7, Lcom/google/android/exoplayer2/source/dash/d;->m:Lt4/c;

    iget-wide v11, v11, Lt4/c;->h:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    .line 16
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v7, v5, Lcom/google/android/exoplayer2/source/dash/b;->z:[Lr4/h;

    if-eqz v7, :cond_3

    .line 18
    array-length v8, v7

    move v9, v1

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 19
    iget-object v10, v10, Lr4/h;->l:Lr4/i;

    .line 20
    check-cast v10, Lcom/google/android/exoplayer2/source/dash/a;

    invoke-interface {v10, v6, v3}, Lcom/google/android/exoplayer2/source/dash/a;->f(Lt4/c;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 21
    :cond_2
    iget-object v7, v5, Lcom/google/android/exoplayer2/source/dash/b;->y:Lp4/v$a;

    invoke-interface {v7, v5}, Lp4/n0$a;->j(Lp4/n0;)V

    .line 22
    :cond_3
    invoke-virtual {v6, v3}, Lt4/c;->b(I)Lt4/g;

    move-result-object v7

    iget-object v7, v7, Lt4/g;->d:Ljava/util/List;

    iput-object v7, v5, Lcom/google/android/exoplayer2/source/dash/b;->E:Ljava/util/List;

    .line 23
    iget-object v7, v5, Lcom/google/android/exoplayer2/source/dash/b;->A:[Ls4/g;

    array-length v8, v7

    move v9, v1

    :goto_3
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    .line 24
    iget-object v11, v5, Lcom/google/android/exoplayer2/source/dash/b;->E:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lt4/f;

    .line 25
    invoke-virtual {v12}, Lt4/f;->a()Ljava/lang/String;

    move-result-object v13

    .line 26
    iget-object v14, v10, Ls4/g;->l:Lt4/f;

    invoke-virtual {v14}, Lt4/f;->a()Ljava/lang/String;

    move-result-object v14

    .line 27
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 28
    invoke-virtual {v6}, Lt4/c;->c()I

    move-result v11

    sub-int/2addr v11, v4

    .line 29
    iget-boolean v13, v6, Lt4/c;->d:Z

    if-eqz v13, :cond_5

    if-ne v3, v11, :cond_5

    move v11, v4

    goto :goto_4

    :cond_5
    move v11, v1

    :goto_4
    invoke-virtual {v10, v12, v11}, Ls4/g;->c(Lt4/f;Z)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 30
    :cond_8
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    invoke-virtual {v2, v1}, Lt4/c;->b(I)Lt4/g;

    move-result-object v2

    .line 31
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    invoke-virtual {v3}, Lt4/c;->c()I

    move-result v3

    sub-int/2addr v3, v4

    .line 32
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    invoke-virtual {v5, v3}, Lt4/c;->b(I)Lt4/g;

    move-result-object v5

    .line 33
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    invoke-virtual {v6, v3}, Lt4/c;->e(I)J

    move-result-wide v6

    .line 34
    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S:J

    invoke-static {v8, v9}, Lm5/g0;->x(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lm5/g0;->L(J)J

    move-result-wide v8

    .line 35
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    .line 36
    invoke-virtual {v3, v1}, Lt4/c;->e(I)J

    move-result-wide v10

    .line 37
    iget-wide v12, v2, Lt4/g;->b:J

    invoke-static {v12, v13}, Lm5/g0;->L(J)J

    move-result-wide v12

    .line 38
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y(Lt4/g;)Z

    move-result v3

    move v14, v1

    move-object/from16 v16, v5

    move-wide v4, v12

    .line 39
    :goto_5
    iget-object v15, v2, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/4 v1, 0x3

    move-wide/from16 v18, v6

    if-ge v14, v15, :cond_e

    .line 40
    iget-object v15, v2, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lt4/a;

    .line 41
    iget-object v6, v15, Lt4/a;->c:Ljava/util/List;

    if-eqz v3, :cond_9

    .line 42
    iget v7, v15, Lt4/a;->b:I

    if-eq v7, v1, :cond_a

    .line 43
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_a
    move-object v7, v2

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    .line 44
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt4/j;

    invoke-virtual {v6}, Lt4/j;->b()Ls4/d;

    move-result-object v6

    if-nez v6, :cond_c

    goto :goto_6

    .line 45
    :cond_c
    invoke-interface {v6, v10, v11, v8, v9}, Ls4/d;->l(JJ)J

    move-result-wide v22

    const-wide/16 v20, 0x0

    cmp-long v7, v22, v20

    if-nez v7, :cond_d

    :goto_6
    move-object v7, v2

    goto :goto_8

    :cond_d
    move-object v7, v2

    .line 46
    invoke-interface {v6, v10, v11, v8, v9}, Ls4/d;->f(JJ)J

    move-result-wide v1

    .line 47
    invoke-interface {v6, v1, v2}, Ls4/d;->c(J)J

    move-result-wide v1

    add-long/2addr v1, v12

    .line 48
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move-object v2, v7

    move-wide/from16 v6, v18

    const/4 v1, 0x0

    goto :goto_5

    :cond_e
    move-object v7, v2

    move-wide v12, v4

    :goto_8
    move-object/from16 v2, v16

    .line 49
    iget-wide v3, v2, Lt4/g;->b:J

    invoke-static {v3, v4}, Lm5/g0;->L(J)J

    move-result-wide v3

    .line 50
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y(Lt4/g;)Z

    move-result v5

    const-wide v10, 0x7fffffffffffffffL

    const/4 v6, 0x0

    .line 51
    :goto_9
    iget-object v14, v2, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const-wide/16 v22, 0x1

    if-ge v6, v14, :cond_14

    .line 52
    iget-object v14, v2, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lt4/a;

    .line 53
    iget-object v15, v14, Lt4/a;->c:Ljava/util/List;

    if-eqz v5, :cond_f

    .line 54
    iget v14, v14, Lt4/a;->b:I

    if-eq v14, v1, :cond_10

    .line 55
    :cond_f
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_11

    :cond_10
    move-object/from16 v16, v2

    move-wide/from16 v1, v18

    move-wide/from16 v18, v8

    move-object v9, v7

    goto :goto_b

    :cond_11
    const/4 v14, 0x0

    .line 56
    invoke-interface {v15, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lt4/j;

    invoke-virtual {v15}, Lt4/j;->b()Ls4/d;

    move-result-object v14

    if-nez v14, :cond_12

    add-long v3, v3, v18

    move-object/from16 v16, v2

    :goto_a
    move-wide/from16 v18, v8

    move-object v9, v7

    goto :goto_c

    :cond_12
    move-object/from16 v16, v2

    move-wide/from16 v1, v18

    .line 57
    invoke-interface {v14, v1, v2, v8, v9}, Ls4/d;->l(JJ)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v24, v18, v20

    if-nez v24, :cond_13

    goto :goto_a

    .line 58
    :cond_13
    invoke-interface {v14, v1, v2, v8, v9}, Ls4/d;->f(JJ)J

    move-result-wide v24

    add-long v24, v24, v18

    move-wide/from16 v18, v8

    move-object v9, v7

    sub-long v7, v24, v22

    .line 59
    invoke-interface {v14, v7, v8}, Ls4/d;->c(J)J

    move-result-wide v22

    add-long v22, v22, v3

    .line 60
    invoke-interface {v14, v7, v8, v1, v2}, Ls4/d;->e(JJ)J

    move-result-wide v7

    add-long v7, v7, v22

    .line 61
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    move-wide v10, v7

    :goto_b
    add-int/lit8 v6, v6, 0x1

    move-object v7, v9

    move-wide/from16 v8, v18

    move-wide/from16 v18, v1

    move-object/from16 v2, v16

    const/4 v1, 0x3

    goto :goto_9

    :cond_14
    move-object/from16 v16, v2

    move-wide/from16 v18, v8

    move-object v9, v7

    move-wide v3, v10

    .line 62
    :goto_c
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-boolean v1, v1, Lt4/c;->d:Z

    if-eqz v1, :cond_18

    move-object/from16 v1, v16

    const/4 v7, 0x0

    .line 63
    :goto_d
    iget-object v2, v1, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v7, v2, :cond_17

    .line 64
    iget-object v2, v1, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/a;

    iget-object v2, v2, Lt4/a;->c:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/j;

    invoke-virtual {v2}, Lt4/j;->b()Ls4/d;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 65
    invoke-interface {v2}, Ls4/d;->i()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_e

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_16
    :goto_e
    const/4 v15, 0x1

    goto :goto_f

    :cond_17
    const/4 v15, 0x0

    :goto_f
    if-nez v15, :cond_18

    const/4 v15, 0x1

    goto :goto_10

    :cond_18
    const/4 v15, 0x0

    :goto_10
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v15, :cond_19

    .line 66
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-wide v5, v5, Lt4/c;->f:J

    cmp-long v7, v5, v1

    if-eqz v7, :cond_19

    .line 67
    invoke-static {v5, v6}, Lm5/g0;->L(J)J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 68
    invoke-static {v12, v13, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    :cond_19
    sub-long v34, v3, v12

    .line 69
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-boolean v4, v3, Lt4/c;->d:Z

    if-eqz v4, :cond_2e

    .line 70
    iget-wide v3, v3, Lt4/c;->a:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_11

    :cond_1a
    const/4 v3, 0x0

    :goto_11
    invoke-static {v3}, Lm5/a;->e(Z)V

    .line 71
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-wide v3, v3, Lt4/c;->a:J

    .line 72
    invoke-static {v3, v4}, Lm5/g0;->L(J)J

    move-result-wide v3

    sub-long v3, v18, v3

    sub-long/2addr v3, v12

    .line 73
    invoke-static {v3, v4}, Lm5/g0;->X(J)J

    move-result-wide v5

    .line 74
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Ln3/y0;

    iget-object v7, v7, Ln3/y0;->j:Ln3/y0$f;

    iget-wide v7, v7, Ln3/y0$f;->j:J

    cmp-long v10, v7, v1

    if-eqz v10, :cond_1b

    .line 75
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_12

    .line 76
    :cond_1b
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-object v7, v7, Lt4/c;->j:Lt4/l;

    if-eqz v7, :cond_1c

    iget-wide v7, v7, Lt4/l;->c:J

    cmp-long v10, v7, v1

    if-eqz v10, :cond_1c

    .line 77
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_12

    :cond_1c
    move-wide v7, v5

    :goto_12
    sub-long v10, v3, v34

    .line 78
    invoke-static {v10, v11}, Lm5/g0;->X(J)J

    move-result-wide v10

    const-wide/16 v18, 0x0

    cmp-long v14, v10, v18

    if-gez v14, :cond_1d

    cmp-long v14, v7, v18

    if-lez v14, :cond_1d

    const-wide/16 v10, 0x0

    .line 79
    :cond_1d
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    move/from16 v16, v15

    iget-wide v14, v14, Lt4/c;->c:J

    cmp-long v18, v14, v1

    if-eqz v18, :cond_1e

    add-long/2addr v10, v14

    .line 80
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    :cond_1e
    move-wide/from16 v26, v10

    .line 81
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Ln3/y0;

    iget-object v10, v10, Ln3/y0;->j:Ln3/y0$f;

    iget-wide v10, v10, Ln3/y0$f;->i:J

    cmp-long v14, v10, v1

    if-eqz v14, :cond_1f

    move-wide/from16 v24, v10

    move-wide/from16 v28, v5

    .line 82
    invoke-static/range {v24 .. v29}, Lm5/g0;->j(JJJ)J

    move-result-wide v26

    goto :goto_13

    .line 83
    :cond_1f
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-object v10, v10, Lt4/c;->j:Lt4/l;

    if-eqz v10, :cond_20

    iget-wide v10, v10, Lt4/l;->b:J

    cmp-long v14, v10, v1

    if-eqz v14, :cond_20

    move-wide/from16 v24, v10

    move-wide/from16 v28, v5

    .line 84
    invoke-static/range {v24 .. v29}, Lm5/g0;->j(JJJ)J

    move-result-wide v26

    :cond_20
    :goto_13
    move-wide/from16 v5, v26

    cmp-long v10, v5, v7

    if-lez v10, :cond_21

    move-wide v7, v5

    .line 85
    :cond_21
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:Ln3/y0$f;

    iget-wide v10, v10, Ln3/y0$f;->h:J

    cmp-long v14, v10, v1

    if-eqz v14, :cond_22

    goto :goto_14

    .line 86
    :cond_22
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-object v11, v10, Lt4/c;->j:Lt4/l;

    if-eqz v11, :cond_23

    iget-wide v14, v11, Lt4/l;->a:J

    cmp-long v11, v14, v1

    if-eqz v11, :cond_23

    move-wide v10, v14

    goto :goto_14

    .line 87
    :cond_23
    iget-wide v10, v10, Lt4/c;->g:J

    cmp-long v14, v10, v1

    if-eqz v14, :cond_24

    goto :goto_14

    .line 88
    :cond_24
    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->w:J

    :goto_14
    cmp-long v14, v10, v5

    if-gez v14, :cond_25

    move-wide v10, v5

    :cond_25
    cmp-long v14, v10, v7

    const-wide/16 v18, 0x2

    const-wide/32 v1, 0x4c4b40

    if-lez v14, :cond_26

    .line 89
    div-long v10, v34, v18

    .line 90
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    sub-long v10, v3, v10

    .line 91
    invoke-static {v10, v11}, Lm5/g0;->X(J)J

    move-result-wide v28

    move-wide/from16 v30, v5

    move-wide/from16 v32, v7

    .line 92
    invoke-static/range {v28 .. v33}, Lm5/g0;->j(JJJ)J

    move-result-wide v10

    .line 93
    :cond_26
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Ln3/y0;

    iget-object v14, v14, Ln3/y0;->j:Ln3/y0$f;

    iget v15, v14, Ln3/y0$f;->k:F

    const v24, -0x800001

    cmpl-float v25, v15, v24

    if-eqz v25, :cond_27

    goto :goto_15

    .line 94
    :cond_27
    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-object v15, v15, Lt4/c;->j:Lt4/l;

    if-eqz v15, :cond_28

    .line 95
    iget v15, v15, Lt4/l;->d:F

    goto :goto_15

    :cond_28
    move/from16 v15, v24

    .line 96
    :goto_15
    iget v14, v14, Ln3/y0$f;->l:F

    cmpl-float v25, v14, v24

    if-eqz v25, :cond_29

    goto :goto_16

    .line 97
    :cond_29
    iget-object v14, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-object v14, v14, Lt4/c;->j:Lt4/l;

    if-eqz v14, :cond_2a

    .line 98
    iget v14, v14, Lt4/l;->e:F

    goto :goto_16

    :cond_2a
    move/from16 v14, v24

    :goto_16
    cmpl-float v25, v15, v24

    const/high16 v26, 0x3f800000    # 1.0f

    if-nez v25, :cond_2c

    cmpl-float v24, v14, v24

    if-nez v24, :cond_2c

    .line 99
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-object v1, v1, Lt4/c;->j:Lt4/l;

    if-eqz v1, :cond_2b

    iget-wide v1, v1, Lt4/l;->a:J

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v1, v27

    if-nez v1, :cond_2c

    :cond_2b
    move/from16 v14, v26

    move v15, v14

    .line 100
    :cond_2c
    new-instance v1, Ln3/y0$f$a;

    invoke-direct {v1}, Ln3/y0$f$a;-><init>()V

    .line 101
    iput-wide v10, v1, Ln3/y0$f$a;->a:J

    .line 102
    iput-wide v5, v1, Ln3/y0$f$a;->b:J

    .line 103
    iput-wide v7, v1, Ln3/y0$f$a;->c:J

    .line 104
    iput v15, v1, Ln3/y0$f$a;->d:F

    .line 105
    iput v14, v1, Ln3/y0$f$a;->e:F

    .line 106
    new-instance v2, Ln3/y0$f;

    invoke-direct {v2, v1}, Ln3/y0$f;-><init>(Ln3/y0$f$a;)V

    .line 107
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:Ln3/y0$f;

    .line 108
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-wide v1, v1, Lt4/c;->a:J

    .line 109
    invoke-static {v12, v13}, Lm5/g0;->X(J)J

    move-result-wide v5

    add-long/2addr v5, v1

    .line 110
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:Ln3/y0$f;

    iget-wide v1, v1, Ln3/y0$f;->h:J

    invoke-static {v1, v2}, Lm5/g0;->L(J)J

    move-result-wide v1

    sub-long v1, v3, v1

    .line 111
    div-long v3, v34, v18

    const-wide/32 v7, 0x4c4b40

    .line 112
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    cmp-long v7, v1, v3

    if-gez v7, :cond_2d

    move-wide/from16 v36, v3

    goto :goto_17

    :cond_2d
    move-wide/from16 v36, v1

    :goto_17
    move-wide/from16 v27, v5

    goto :goto_18

    :cond_2e
    move/from16 v16, v15

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v36, 0x0

    .line 113
    :goto_18
    iget-wide v1, v9, Lt4/g;->b:J

    invoke-static {v1, v2}, Lm5/g0;->L(J)J

    move-result-wide v1

    sub-long v32, v12, v1

    .line 114
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-wide v3, v2, Lt4/c;->a:J

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S:J

    iget v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:I

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Ln3/y0;

    .line 115
    iget-boolean v9, v2, Lt4/c;->d:Z

    if-eqz v9, :cond_2f

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->L:Ln3/y0$f;

    goto :goto_19

    :cond_2f
    const/4 v9, 0x0

    :goto_19
    move-object/from16 v40, v9

    move-object/from16 v24, v1

    move-wide/from16 v25, v3

    move-wide/from16 v29, v5

    move/from16 v31, v7

    move-object/from16 v38, v2

    move-object/from16 v39, v8

    invoke-direct/range {v24 .. v40}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$b;-><init>(JJJIJJJLt4/c;Ln3/y0;Ln3/y0$f;)V

    .line 116
    invoke-virtual {v0, v1}, Lp4/a;->w(Ln3/b2;)V

    .line 117
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:Z

    if-nez v1, :cond_40

    .line 118
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroidx/appcompat/widget/k1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x1388

    if-eqz v16, :cond_3d

    .line 119
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/os/Handler;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D:Landroidx/appcompat/widget/k1;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S:J

    .line 120
    invoke-static {v6, v7}, Lm5/g0;->x(J)J

    move-result-wide v6

    .line 121
    invoke-virtual {v5}, Lt4/c;->c()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    .line 122
    invoke-virtual {v5, v8}, Lt4/c;->b(I)Lt4/g;

    move-result-object v9

    .line 123
    iget-wide v10, v9, Lt4/g;->b:J

    invoke-static {v10, v11}, Lm5/g0;->L(J)J

    move-result-wide v10

    .line 124
    invoke-virtual {v5, v8}, Lt4/c;->e(I)J

    move-result-wide v12

    .line 125
    invoke-static {v6, v7}, Lm5/g0;->L(J)J

    move-result-wide v6

    .line 126
    iget-wide v14, v5, Lt4/c;->a:J

    invoke-static {v14, v15}, Lm5/g0;->L(J)J

    move-result-wide v14

    .line 127
    invoke-static {v1, v2}, Lm5/g0;->L(J)J

    move-result-wide v18

    const/4 v5, 0x0

    .line 128
    :goto_1a
    iget-object v8, v9, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_33

    .line 129
    iget-object v8, v9, Lt4/g;->c:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt4/a;

    iget-object v8, v8, Lt4/a;->c:Ljava/util/List;

    .line 130
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_30

    const/4 v1, 0x0

    goto :goto_1b

    :cond_30
    const/4 v1, 0x0

    .line 131
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/j;

    invoke-virtual {v2}, Lt4/j;->b()Ls4/d;

    move-result-object v2

    if-eqz v2, :cond_32

    add-long v26, v14, v10

    .line 132
    invoke-interface {v2, v12, v13, v6, v7}, Ls4/d;->g(JJ)J

    move-result-wide v28

    add-long v28, v28, v26

    sub-long v28, v28, v6

    const-wide/32 v26, 0x186a0

    sub-long v30, v18, v26

    cmp-long v2, v28, v30

    if-ltz v2, :cond_31

    cmp-long v2, v28, v18

    if-lez v2, :cond_32

    add-long v26, v18, v26

    cmp-long v2, v28, v26

    if-gez v2, :cond_32

    :cond_31
    move-wide/from16 v18, v28

    :cond_32
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v1, 0x1388

    goto :goto_1a

    :cond_33
    const/4 v1, 0x0

    const-wide/16 v5, 0x3e8

    .line 133
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 134
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    div-long v7, v18, v5

    mul-long v9, v7, v5

    sub-long v9, v18, v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-nez v13, :cond_34

    goto/16 :goto_21

    :cond_34
    xor-long v11, v18, v5

    const/16 v14, 0x3f

    shr-long/2addr v11, v14

    long-to-int v11, v11

    const/16 v17, 0x1

    or-int/lit8 v11, v11, 0x1

    .line 136
    sget-object v12, Lv6/b;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v12, v12, v14

    packed-switch v12, :pswitch_data_0

    .line 137
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 138
    :pswitch_0
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 139
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v5, v9

    sub-long/2addr v9, v5

    const-wide/16 v5, 0x0

    cmp-long v9, v9, v5

    if-nez v9, :cond_38

    .line 140
    sget-object v9, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne v2, v9, :cond_35

    move/from16 v9, v17

    goto :goto_1c

    :cond_35
    move v9, v1

    :goto_1c
    sget-object v10, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne v2, v10, :cond_36

    move/from16 v2, v17

    goto :goto_1d

    :cond_36
    move v2, v1

    :goto_1d
    and-long v12, v7, v22

    cmp-long v10, v12, v5

    if-eqz v10, :cond_37

    move/from16 v1, v17

    :cond_37
    and-int/2addr v1, v2

    or-int/2addr v1, v9

    goto :goto_20

    :cond_38
    if-lez v9, :cond_3a

    goto :goto_1e

    :pswitch_1
    if-lez v11, :cond_3a

    goto :goto_1e

    :pswitch_2
    if-gez v11, :cond_3a

    :goto_1e
    :pswitch_3
    move/from16 v1, v17

    goto :goto_20

    :pswitch_4
    if-nez v13, :cond_39

    goto :goto_1f

    :cond_39
    move/from16 v17, v1

    :goto_1f
    if-eqz v17, :cond_3c

    :cond_3a
    :goto_20
    :pswitch_5
    if-eqz v1, :cond_3b

    int-to-long v1, v11

    add-long/2addr v7, v1

    .line 141
    :cond_3b
    :goto_21
    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_22

    .line 142
    :cond_3c
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "mode was UNNECESSARY, but rounding was necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_3d
    :goto_22
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Z

    if-eqz v1, :cond_3e

    .line 144
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G()V

    goto :goto_23

    :cond_3e
    if-eqz p1, :cond_40

    .line 145
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-boolean v2, v1, Lt4/c;->d:Z

    if-eqz v2, :cond_40

    iget-wide v1, v1, Lt4/c;->e:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_40

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_3f

    const-wide/16 v1, 0x1388

    .line 146
    :cond_3f
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:J

    add-long/2addr v5, v1

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 148
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/os/Handler;

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Landroidx/activity/g;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_40
    :goto_23
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final E(Lfe/h;Ll5/f0$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfe/h;",
            "Ll5/f0$a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ll5/f0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Ll5/j;

    iget-object p1, p1, Lfe/h;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Ll5/f0;-><init>(Ll5/j;Landroid/net/Uri;ILl5/f0$a;)V

    new-instance p1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$g;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F(Ll5/f0;Ll5/d0$a;I)V

    return-void
.end method

.method public final F(Ll5/f0;Ll5/d0$a;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll5/f0<",
            "TT;>;",
            "Ll5/d0$a<",
            "Ll5/f0<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Ll5/d0;

    invoke-virtual {v0, p1, p2, p3}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    move-result-wide v5

    .line 2
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->x:Lp4/e0$a;

    new-instance p3, Lp4/r;

    iget-wide v2, p1, Ll5/f0;->a:J

    iget-object v4, p1, Ll5/f0;->b:Ll5/m;

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lp4/r;-><init>(JLl5/m;J)V

    iget p1, p1, Ll5/f0;->c:I

    invoke-virtual {p2, p3, p1}, Lp4/e0$a;->m(Lp4/r;I)V

    return-void
.end method

.method public final G()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->C:Landroidx/activity/g;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Z

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->A:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:Landroid/net/Uri;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Z

    .line 9
    new-instance v0, Ll5/f0;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Ll5/j;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->y:Ll5/f0$a;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Ll5/f0;-><init>(Ll5/j;Landroid/net/Uri;ILl5/f0$a;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->z:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$e;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    .line 10
    invoke-interface {v2, v4}, Ll5/c0;->c(I)I

    move-result v2

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F(Ll5/f0;Ll5/d0$a;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final a()Ln3/y0;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->o:Ln3/y0;

    return-object v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:Ll5/e0;

    invoke-interface {v0}, Ll5/e0;->b()V

    return-void
.end method

.method public final d(Lp4/v;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/b;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/b;->t:Lcom/google/android/exoplayer2/source/dash/d;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/dash/d;->p:Z

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/d;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/dash/b;->z:[Lr4/h;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 6
    invoke-virtual {v4, p1}, Lr4/h;->A(Lr4/h$b;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, p1, Lcom/google/android/exoplayer2/source/dash/b;->y:Lp4/v$a;

    .line 8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/exoplayer2/source/dash/b;->h:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final q(Lp4/x$b;Ll5/b;J)Lp4/v;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, p2

    .line 1
    iget-object v2, v1, Lp4/w;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:I

    sub-int v3, v2, v3

    move v6, v3

    .line 2
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    .line 3
    invoke-virtual {v2, v3}, Lt4/c;->b(I)Lt4/g;

    move-result-object v2

    iget-wide v4, v2, Lt4/g;->b:J

    .line 4
    iget-object v2, v0, Lp4/a;->j:Lp4/e0$a;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v1, v4, v5}, Lp4/e0$a;->r(ILp4/x$b;J)Lp4/e0$a;

    move-result-object v12

    .line 5
    invoke-virtual/range {p0 .. p1}, Lp4/a;->r(Lp4/x$b;)Lr3/k$a;

    move-result-object v10

    .line 6
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/b;

    move-object v2, v1

    iget v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:I

    add-int v15, v4, v3

    move v3, v15

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ls4/b;

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->r:Lcom/google/android/exoplayer2/source/dash/a$a;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Ll5/j0;

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Lr3/l;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->u:Ll5/c0;

    iget-wide v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S:J

    move/from16 p1, v15

    iget-object v15, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->F:Ll5/e0;

    move/from16 v20, p1

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->s:Lp4/h;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->E:Lcom/google/android/exoplayer2/source/dash/DashMediaSource$c;

    move-object/from16 v18, v1

    .line 7
    iget-object v1, v0, Lp4/a;->n:Lo3/v0;

    move-object/from16 v19, v1

    invoke-static {v1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-direct/range {v2 .. v19}, Lcom/google/android/exoplayer2/source/dash/b;-><init>(ILt4/c;Ls4/b;ILcom/google/android/exoplayer2/source/dash/a$a;Ll5/j0;Lr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;JLl5/e0;Ll5/b;Lp4/h;Lcom/google/android/exoplayer2/source/dash/d$b;Lo3/v0;)V

    .line 9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Landroid/util/SparseArray;

    move-object/from16 v2, p1

    move/from16 v4, v20

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public final v(Ll5/j0;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->I:Ll5/j0;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Lr3/l;

    invoke-interface {p1}, Lr3/l;->b()V

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Lr3/l;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lp4/a;->n:Lo3/v0;

    invoke-static {v1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {p1, v0, v1}, Lr3/l;->f(Landroid/os/Looper;Lo3/v0;)V

    .line 6
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->D(Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->q:Ll5/j$a;

    invoke-interface {p1}, Ll5/j$a;->a()Ll5/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Ll5/j;

    .line 9
    new-instance p1, Ll5/d0;

    const-string v0, "DashMediaSource"

    invoke-direct {p1, v0}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Ll5/d0;

    const/4 p1, 0x0

    .line 10
    invoke-static {p1}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/os/Handler;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G()V

    :goto_0
    return-void
.end method

.method public final x()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->P:Z

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->G:Ll5/j;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Ll5/d0;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Ll5/d0;->f(Ll5/d0$e;)V

    .line 5
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Ll5/d0;

    :cond_0
    const-wide/16 v2, 0x0

    .line 6
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->Q:J

    .line 7
    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->R:J

    .line 8
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->p:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->O:Lt4/c;

    .line 9
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->N:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->M:Landroid/net/Uri;

    .line 10
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->J:Ls4/c;

    .line 11
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->K:Landroid/os/Handler;

    :cond_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->S:J

    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->T:I

    .line 16
    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->U:J

    .line 17
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->V:I

    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->B:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 19
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->v:Ls4/b;

    .line 20
    iget-object v1, v0, Ls4/b;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 21
    iget-object v1, v0, Ls4/b;->b:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 22
    iget-object v0, v0, Ls4/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->t:Lr3/l;

    invoke-interface {v0}, Lr3/l;->a()V

    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->H:Ll5/d0;

    new-instance v1, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    .line 2
    sget-object v2, Lm5/y;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    sget-boolean v3, Lm5/y;->c:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$a;->a()V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ll5/d0;

    const-string v2, "SntpClient"

    invoke-direct {v0, v2}, Ll5/d0;-><init>(Ljava/lang/String;)V

    .line 6
    :cond_1
    new-instance v2, Lm5/y$c;

    invoke-direct {v2}, Lm5/y$c;-><init>()V

    new-instance v3, Lm5/y$b;

    invoke-direct {v3, v1}, Lm5/y$b;-><init>(Lm5/y$a;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
