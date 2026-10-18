.class public Lcom/bumptech/glide/i;
.super Lh3/a;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lh3/a<",
        "Lcom/bumptech/glide/i<",
        "TTranscodeType;>;>;"
    }
.end annotation


# instance fields
.field public final H:Landroid/content/Context;

.field public final I:Lcom/bumptech/glide/j;

.field public final J:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public final K:Lcom/bumptech/glide/e;

.field public L:Lcom/bumptech/glide/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field public M:Ljava/lang/Object;

.field public N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lh3/f<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field public O:Lcom/bumptech/glide/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public P:Lcom/bumptech/glide/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field public Q:Z

.field public R:Z

.field public S:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lh3/g;

    invoke-direct {v0}, Lh3/g;-><init>()V

    sget-object v1, Lr2/l;->b:Lr2/l$b;

    .line 2
    invoke-virtual {v0, v1}, Lh3/a;->e(Lr2/l;)Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    .line 3
    invoke-virtual {v0}, Lh3/a;->s()Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    .line 4
    invoke-virtual {v0}, Lh3/a;->w()Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/j;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/c;",
            "Lcom/bumptech/glide/j;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lh3/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/i;->Q:Z

    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/i;->I:Lcom/bumptech/glide/j;

    .line 4
    iput-object p3, p0, Lcom/bumptech/glide/i;->J:Ljava/lang/Class;

    .line 5
    iput-object p4, p0, Lcom/bumptech/glide/i;->H:Landroid/content/Context;

    .line 6
    iget-object p4, p2, Lcom/bumptech/glide/j;->h:Lcom/bumptech/glide/c;

    .line 7
    iget-object p4, p4, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/e;

    .line 8
    iget-object v0, p4, Lcom/bumptech/glide/e;->f:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/k;

    if-nez v0, :cond_1

    .line 9
    iget-object p4, p4, Lcom/bumptech/glide/e;->f:Ljava/util/Map;

    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/k;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 12
    sget-object v0, Lcom/bumptech/glide/e;->k:Lcom/bumptech/glide/b;

    .line 13
    :cond_2
    iput-object v0, p0, Lcom/bumptech/glide/i;->L:Lcom/bumptech/glide/k;

    .line 14
    iget-object p1, p1, Lcom/bumptech/glide/c;->j:Lcom/bumptech/glide/e;

    .line 15
    iput-object p1, p0, Lcom/bumptech/glide/i;->K:Lcom/bumptech/glide/e;

    .line 16
    iget-object p1, p2, Lcom/bumptech/glide/j;->p:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lh3/f;

    .line 18
    invoke-virtual {p0, p3}, Lcom/bumptech/glide/i;->C(Lh3/f;)Lcom/bumptech/glide/i;

    goto :goto_1

    .line 19
    :cond_3
    monitor-enter p2

    .line 20
    :try_start_0
    iget-object p1, p2, Lcom/bumptech/glide/j;->q:Lh3/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    .line 21
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->D(Lh3/a;)Lcom/bumptech/glide/i;

    return-void

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method public C(Lh3/f;)Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/f<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->F()Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->C(Lh3/f;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/i;->N:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/i;->N:Ljava/util/ArrayList;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/i;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_2
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public D(Lh3/a;)Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh3/a<",
            "*>;)",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lh3/a;->a(Lh3/a;)Lh3/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/i;

    return-object p1
.end method

.method public final E(Ljava/lang/Object;Li3/i;Lh3/e;Lcom/bumptech/glide/k;Lcom/bumptech/glide/g;IILh3/a;)Lh3/d;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Li3/i<",
            "TTranscodeType;>;",
            "Lh3/f<",
            "TTranscodeType;>;",
            "Lh3/e;",
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/g;",
            "II",
            "Lh3/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lh3/d;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p8

    .line 1
    iget-object v0, v9, Lcom/bumptech/glide/i;->P:Lcom/bumptech/glide/i;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lh3/b;

    move-object/from16 v1, p3

    invoke-direct {v0, v10, v1}, Lh3/b;-><init>(Ljava/lang/Object;Lh3/e;)V

    move-object v4, v0

    move-object v12, v4

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    const/4 v0, 0x0

    move-object v12, v0

    move-object v4, v1

    .line 3
    :goto_0
    iget-object v0, v9, Lcom/bumptech/glide/i;->O:Lcom/bumptech/glide/i;

    if-eqz v0, :cond_5

    .line 4
    iget-boolean v1, v9, Lcom/bumptech/glide/i;->S:Z

    if-nez v1, :cond_4

    .line 5
    iget-object v1, v0, Lcom/bumptech/glide/i;->L:Lcom/bumptech/glide/k;

    .line 6
    iget-boolean v2, v0, Lcom/bumptech/glide/i;->Q:Z

    if-eqz v2, :cond_1

    move-object/from16 v13, p4

    goto :goto_1

    :cond_1
    move-object v13, v1

    .line 7
    :goto_1
    iget v0, v0, Lh3/a;->h:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lh3/a;->l(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, v9, Lcom/bumptech/glide/i;->O:Lcom/bumptech/glide/i;

    .line 9
    iget-object v0, v0, Lh3/a;->k:Lcom/bumptech/glide/g;

    move-object/from16 v6, p5

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    .line 10
    invoke-virtual {v9, v6}, Lcom/bumptech/glide/i;->G(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;

    move-result-object v0

    :goto_2
    move-object v14, v0

    .line 11
    iget-object v0, v9, Lcom/bumptech/glide/i;->O:Lcom/bumptech/glide/i;

    .line 12
    iget v1, v0, Lh3/a;->r:I

    .line 13
    iget v0, v0, Lh3/a;->q:I

    .line 14
    invoke-static/range {p6 .. p7}, Ll3/l;->j(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v9, Lcom/bumptech/glide/i;->O:Lcom/bumptech/glide/i;

    .line 15
    iget v3, v2, Lh3/a;->r:I

    iget v2, v2, Lh3/a;->q:I

    invoke-static {v3, v2}, Ll3/l;->j(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 16
    iget v0, v11, Lh3/a;->r:I

    .line 17
    iget v1, v11, Lh3/a;->q:I

    move v15, v0

    move/from16 v16, v1

    goto :goto_3

    :cond_3
    move/from16 v16, v0

    move v15, v1

    .line 18
    :goto_3
    new-instance v8, Lh3/j;

    invoke-direct {v8, v10, v4}, Lh3/j;-><init>(Ljava/lang/Object;Lh3/e;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object v4, v8

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 p3, v8

    move/from16 v8, p7

    .line 19
    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/i;->N(Ljava/lang/Object;Li3/i;Lh3/a;Lh3/e;Lcom/bumptech/glide/k;Lcom/bumptech/glide/g;II)Lh3/d;

    move-result-object v8

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, v9, Lcom/bumptech/glide/i;->S:Z

    .line 21
    iget-object v7, v9, Lcom/bumptech/glide/i;->O:Lcom/bumptech/glide/i;

    move-object v0, v7

    move-object/from16 v3, p3

    move-object v4, v13

    move-object v5, v14

    move v6, v15

    move-object v13, v7

    move/from16 v7, v16

    move-object v14, v8

    move-object v8, v13

    .line 22
    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/i;->E(Ljava/lang/Object;Li3/i;Lh3/e;Lcom/bumptech/glide/k;Lcom/bumptech/glide/g;IILh3/a;)Lh3/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    iput-boolean v1, v9, Lcom/bumptech/glide/i;->S:Z

    move-object/from16 v1, p3

    .line 24
    iput-object v14, v1, Lh3/j;->c:Lh3/d;

    .line 25
    iput-object v0, v1, Lh3/j;->d:Lh3/d;

    move-object v13, v1

    goto :goto_4

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    .line 27
    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/i;->N(Ljava/lang/Object;Li3/i;Lh3/a;Lh3/e;Lcom/bumptech/glide/k;Lcom/bumptech/glide/g;II)Lh3/d;

    move-result-object v8

    move-object v13, v8

    :goto_4
    if-nez v12, :cond_6

    return-object v13

    .line 28
    :cond_6
    iget-object v0, v9, Lcom/bumptech/glide/i;->P:Lcom/bumptech/glide/i;

    .line 29
    iget v1, v0, Lh3/a;->r:I

    .line 30
    iget v0, v0, Lh3/a;->q:I

    .line 31
    invoke-static/range {p6 .. p7}, Ll3/l;->j(II)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v9, Lcom/bumptech/glide/i;->P:Lcom/bumptech/glide/i;

    .line 32
    iget v3, v2, Lh3/a;->r:I

    iget v2, v2, Lh3/a;->q:I

    invoke-static {v3, v2}, Ll3/l;->j(II)Z

    move-result v2

    if-nez v2, :cond_7

    .line 33
    iget v0, v11, Lh3/a;->r:I

    .line 34
    iget v1, v11, Lh3/a;->q:I

    move v6, v0

    move v7, v1

    goto :goto_5

    :cond_7
    move v7, v0

    move v6, v1

    .line 35
    :goto_5
    iget-object v8, v9, Lcom/bumptech/glide/i;->P:Lcom/bumptech/glide/i;

    iget-object v4, v8, Lcom/bumptech/glide/i;->L:Lcom/bumptech/glide/k;

    .line 36
    iget-object v5, v8, Lh3/a;->k:Lcom/bumptech/glide/g;

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v12

    .line 37
    invoke-virtual/range {v0 .. v8}, Lcom/bumptech/glide/i;->E(Ljava/lang/Object;Li3/i;Lh3/e;Lcom/bumptech/glide/k;Lcom/bumptech/glide/g;IILh3/a;)Lh3/d;

    move-result-object v0

    .line 38
    iput-object v13, v12, Lh3/b;->c:Lh3/d;

    .line 39
    iput-object v0, v12, Lh3/b;->d:Lh3/d;

    return-object v12
.end method

.method public F()Lcom/bumptech/glide/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lh3/a;->c()Lh3/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    .line 2
    iget-object v1, v0, Lcom/bumptech/glide/i;->L:Lcom/bumptech/glide/k;

    invoke-virtual {v1}, Lcom/bumptech/glide/k;->a()Lcom/bumptech/glide/k;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/i;->L:Lcom/bumptech/glide/k;

    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/i;->N:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/bumptech/glide/i;->N:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/bumptech/glide/i;->N:Ljava/util/ArrayList;

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/bumptech/glide/i;->O:Lcom/bumptech/glide/i;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/bumptech/glide/i;->F()Lcom/bumptech/glide/i;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/i;->O:Lcom/bumptech/glide/i;

    .line 7
    :cond_1
    iget-object v1, v0, Lcom/bumptech/glide/i;->P:Lcom/bumptech/glide/i;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/bumptech/glide/i;->F()Lcom/bumptech/glide/i;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/i;->P:Lcom/bumptech/glide/i;

    :cond_2
    return-object v0
.end method

.method public final G(Lcom/bumptech/glide/g;)Lcom/bumptech/glide/g;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/g;

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown priority: "

    .line 4
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lh3/a;->k:Lcom/bumptech/glide/g;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    sget-object p1, Lcom/bumptech/glide/g;->i:Lcom/bumptech/glide/g;

    return-object p1

    .line 8
    :cond_2
    sget-object p1, Lcom/bumptech/glide/g;->h:Lcom/bumptech/glide/g;

    return-object p1
.end method

.method public final H(Li3/i;Lh3/a;)Li3/i;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Li3/i<",
            "TTranscodeType;>;>(TY;",
            "Lh3/f<",
            "TTranscodeType;>;",
            "Lh3/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    const-string v0, "Argument must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/i;->R:Z

    if-eqz v0, :cond_5

    .line 3
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/bumptech/glide/i;->L:Lcom/bumptech/glide/k;

    .line 4
    iget-object v6, p2, Lh3/a;->k:Lcom/bumptech/glide/g;

    .line 5
    iget v7, p2, Lh3/a;->r:I

    .line 6
    iget v8, p2, Lh3/a;->q:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v9, p2

    .line 7
    invoke-virtual/range {v1 .. v9}, Lcom/bumptech/glide/i;->E(Ljava/lang/Object;Li3/i;Lh3/e;Lcom/bumptech/glide/k;Lcom/bumptech/glide/g;IILh3/a;)Lh3/d;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Li3/i;->e()Lh3/d;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lh3/d;->h(Lh3/d;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    iget-boolean p2, p2, Lh3/a;->p:Z

    if-nez p2, :cond_0

    .line 11
    invoke-interface {v1}, Lh3/d;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    const-string p2, "Argument must not be null"

    .line 12
    invoke-static {v1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-interface {v1}, Lh3/d;->isRunning()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    invoke-interface {v1}, Lh3/d;->f()V

    :cond_1
    return-object p1

    .line 15
    :cond_2
    iget-object p2, p0, Lcom/bumptech/glide/i;->I:Lcom/bumptech/glide/j;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/j;->o(Li3/i;)V

    .line 16
    invoke-interface {p1, v0}, Li3/i;->i(Lh3/d;)V

    .line 17
    iget-object p2, p0, Lcom/bumptech/glide/i;->I:Lcom/bumptech/glide/j;

    .line 18
    monitor-enter p2

    .line 19
    :try_start_0
    iget-object v1, p2, Lcom/bumptech/glide/j;->m:Le3/r;

    .line 20
    iget-object v1, v1, Le3/r;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v1, p2, Lcom/bumptech/glide/j;->k:Le3/n;

    .line 22
    iget-object v2, v1, Le3/n;->a:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 23
    iget-boolean v2, v1, Le3/n;->c:Z

    if-nez v2, :cond_3

    .line 24
    invoke-interface {v0}, Lh3/d;->f()V

    goto :goto_1

    .line 25
    :cond_3
    invoke-interface {v0}, Lh3/d;->clear()V

    const/4 v2, 0x2

    const-string v3, "RequestTracker"

    .line 26
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Paused, delaying request"

    .line 27
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_4
    iget-object v1, v1, Le3/n;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :goto_1
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must call #load() before calling #into()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(Landroid/widget/ImageView;)Li3/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Li3/j<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ll3/l;->a()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Lh3/a;->h:I

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lh3/a;->l(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lh3/a;->u:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/bumptech/glide/i$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0}, Lh3/a;->o()Lh3/a;

    move-result-object v0

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0}, Lh3/a;->p()Lh3/a;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0}, Lh3/a;->o()Lh3/a;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->c()Lh3/a;

    move-result-object v0

    invoke-virtual {v0}, Lh3/a;->n()Lh3/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/i;->K:Lcom/bumptech/glide/e;

    iget-object v2, p0, Lcom/bumptech/glide/i;->J:Ljava/lang/Class;

    .line 12
    iget-object v1, v1, Lcom/bumptech/glide/e;->c:Landroidx/lifecycle/o;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    new-instance v1, Li3/b;

    invoke-direct {v1, p1}, Li3/b;-><init>(Landroid/widget/ImageView;)V

    goto :goto_2

    .line 15
    :cond_1
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    new-instance v1, Li3/e;

    invoke-direct {v1, p1}, Li3/e;-><init>(Landroid/widget/ImageView;)V

    .line 17
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/bumptech/glide/i;->H(Li3/i;Lh3/a;)Li3/i;

    return-object v1

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", try .as*(Class).transcode(ResourceTranscoder)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public J(Ljava/lang/Integer;)Lcom/bumptech/glide/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->M(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/i;->H:Landroid/content/Context;

    .line 2
    sget-object v1, Lk3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lk3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/f;

    if-nez v2, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Cannot resolve info for"

    .line 6
    invoke-static {v3}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppVersionSignature"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 8
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    :goto_1
    new-instance v3, Lk3/d;

    invoke-direct {v3, v2}, Lk3/d;-><init>(Ljava/lang/Object;)V

    .line 11
    sget-object v2, Lk3/b;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lp2/f;

    if-nez v2, :cond_1

    move-object v2, v3

    .line 12
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 13
    new-instance v1, Lk3/a;

    invoke-direct {v1, v0, v2}, Lk3/a;-><init>(ILp2/f;)V

    .line 14
    new-instance v0, Lh3/g;

    invoke-direct {v0}, Lh3/g;-><init>()V

    invoke-virtual {v0, v1}, Lh3/a;->v(Lp2/f;)Lh3/a;

    move-result-object v0

    check-cast v0, Lh3/g;

    .line 15
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/i;->D(Lh3/a;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1
.end method

.method public K(Ljava/lang/Object;)Lcom/bumptech/glide/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->M(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/lang/String;)Lcom/bumptech/glide/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->M(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1
.end method

.method public final M(Ljava/lang/Object;)Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lh3/a;->C:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bumptech/glide/i;->F()Lcom/bumptech/glide/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->M(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bumptech/glide/i;->M:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/bumptech/glide/i;->R:Z

    .line 5
    invoke-virtual {p0}, Lh3/a;->t()Lh3/a;

    return-object p0
.end method

.method public final N(Ljava/lang/Object;Li3/i;Lh3/a;Lh3/e;Lcom/bumptech/glide/k;Lcom/bumptech/glide/g;II)Lh3/d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Li3/i<",
            "TTranscodeType;>;",
            "Lh3/f<",
            "TTranscodeType;>;",
            "Lh3/a<",
            "*>;",
            "Lh3/e;",
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/g;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lh3/d;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v2, v0, Lcom/bumptech/glide/i;->H:Landroid/content/Context;

    iget-object v3, v0, Lcom/bumptech/glide/i;->K:Lcom/bumptech/glide/e;

    iget-object v5, v0, Lcom/bumptech/glide/i;->M:Ljava/lang/Object;

    iget-object v6, v0, Lcom/bumptech/glide/i;->J:Ljava/lang/Class;

    iget-object v12, v0, Lcom/bumptech/glide/i;->N:Ljava/util/ArrayList;

    .line 2
    iget-object v14, v3, Lcom/bumptech/glide/e;->g:Lr2/m;

    .line 3
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v15, Lh3/i;

    move-object v1, v15

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v13, p4

    invoke-direct/range {v1 .. v14}, Lh3/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/e;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lh3/a;IILcom/bumptech/glide/g;Li3/i;Ljava/util/List;Lh3/e;Lr2/m;)V

    return-object v15
.end method

.method public bridge synthetic a(Lh3/a;)Lh3/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->D(Lh3/a;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Lh3/a;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/i;->F()Lcom/bumptech/glide/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/i;->F()Lcom/bumptech/glide/i;

    move-result-object v0

    return-object v0
.end method
