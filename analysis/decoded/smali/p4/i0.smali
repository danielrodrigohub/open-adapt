.class public final Lp4/i0;
.super Ljava/lang/Object;
.source "ProgressiveMediaPeriod.java"

# interfaces
.implements Lp4/v;
.implements Ls3/j;
.implements Ll5/d0$a;
.implements Ll5/d0$e;
.implements Lp4/l0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/i0$d;,
        Lp4/i0$e;,
        Lp4/i0$a;,
        Lp4/i0$c;,
        Lp4/i0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp4/v;",
        "Ls3/j;",
        "Ll5/d0$a<",
        "Lp4/i0$a;",
        ">;",
        "Ll5/d0$e;",
        "Lp4/l0$c;"
    }
.end annotation


# static fields
.field public static final T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final U:Ln3/s0;


# instance fields
.field public A:[Lp4/i0$d;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Lp4/i0$e;

.field public F:Ls3/u;

.field public G:J

.field public H:Z

.field public I:I

.field public J:Z

.field public K:Z

.field public L:I

.field public M:Z

.field public N:J

.field public O:J

.field public P:Z

.field public Q:I

.field public R:Z

.field public S:Z

.field public final h:Landroid/net/Uri;

.field public final i:Ll5/j;

.field public final j:Lr3/l;

.field public final k:Ll5/c0;

.field public final l:Lp4/e0$a;

.field public final m:Lr3/k$a;

.field public final n:Lp4/i0$b;

.field public final o:Ll5/b;

.field public final p:Ljava/lang/String;

.field public final q:J

.field public final r:Ll5/d0;

.field public final s:Lp4/h0;

.field public final t:Lm5/e;

.field public final u:Ly0/x;

.field public final v:Ly0/y;

.field public final w:Landroid/os/Handler;

.field public x:Lp4/v$a;

.field public y:Lj4/b;

.field public z:[Lp4/l0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 4
    sput-object v0, Lp4/i0;->T:Ljava/util/Map;

    .line 5
    new-instance v0, Ln3/s0$a;

    invoke-direct {v0}, Ln3/s0$a;-><init>()V

    const-string v1, "icy"

    .line 6
    iput-object v1, v0, Ln3/s0$a;->a:Ljava/lang/String;

    const-string v1, "application/x-icy"

    .line 7
    iput-object v1, v0, Ln3/s0$a;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {v0}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v0

    sput-object v0, Lp4/i0;->U:Ln3/s0;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ll5/j;Lp4/h0;Lr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;Lp4/i0$b;Ll5/b;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/i0;->h:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lp4/i0;->i:Ll5/j;

    .line 4
    iput-object p4, p0, Lp4/i0;->j:Lr3/l;

    .line 5
    iput-object p5, p0, Lp4/i0;->m:Lr3/k$a;

    .line 6
    iput-object p6, p0, Lp4/i0;->k:Ll5/c0;

    .line 7
    iput-object p7, p0, Lp4/i0;->l:Lp4/e0$a;

    .line 8
    iput-object p8, p0, Lp4/i0;->n:Lp4/i0$b;

    .line 9
    iput-object p9, p0, Lp4/i0;->o:Ll5/b;

    .line 10
    iput-object p10, p0, Lp4/i0;->p:Ljava/lang/String;

    int-to-long p1, p11

    .line 11
    iput-wide p1, p0, Lp4/i0;->q:J

    .line 12
    new-instance p1, Ll5/d0;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lp4/i0;->r:Ll5/d0;

    .line 13
    iput-object p3, p0, Lp4/i0;->s:Lp4/h0;

    .line 14
    new-instance p1, Lm5/e;

    invoke-direct {p1}, Lm5/e;-><init>()V

    iput-object p1, p0, Lp4/i0;->t:Lm5/e;

    .line 15
    new-instance p1, Ly0/x;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ly0/x;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lp4/i0;->u:Ly0/x;

    .line 16
    new-instance p1, Ly0/y;

    invoke-direct {p1, p0, p2}, Ly0/y;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lp4/i0;->v:Ly0/y;

    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 18
    iput-object p1, p0, Lp4/i0;->w:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p3, p1, [Lp4/i0$d;

    .line 19
    iput-object p3, p0, Lp4/i0;->A:[Lp4/i0$d;

    new-array p1, p1, [Lp4/l0;

    .line 20
    iput-object p1, p0, Lp4/i0;->z:[Lp4/l0;

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    iput-wide p3, p0, Lp4/i0;->O:J

    .line 22
    iput-wide p3, p0, Lp4/i0;->G:J

    .line 23
    iput p2, p0, Lp4/i0;->I:I

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lp4/i0;->v()V

    .line 2
    iget-object v0, p0, Lp4/i0;->E:Lp4/i0$e;

    iget-object v1, v0, Lp4/i0$e;->d:[Z

    .line 3
    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    .line 4
    iget-object v0, v0, Lp4/i0$e;->a:Lp4/u0;

    invoke-virtual {v0, p1}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v0

    const/4 v2, 0x0

    .line 5
    iget-object v0, v0, Lp4/t0;->k:[Ln3/s0;

    aget-object v5, v0, v2

    .line 6
    iget-object v3, p0, Lp4/i0;->l:Lp4/e0$a;

    iget-object v0, v5, Ln3/s0;->s:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lm5/s;->i(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-wide v8, p0, Lp4/i0;->N:J

    .line 8
    invoke-virtual/range {v3 .. v9}, Lp4/e0$a;->b(ILn3/s0;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 9
    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final B(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp4/i0;->v()V

    .line 2
    iget-object v0, p0, Lp4/i0;->E:Lp4/i0$e;

    iget-object v0, v0, Lp4/i0$e;->b:[Z

    .line 3
    iget-boolean v1, p0, Lp4/i0;->P:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp4/i0;->z:[Lp4/l0;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lp4/l0;->u(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lp4/i0;->O:J

    .line 6
    iput-boolean v0, p0, Lp4/i0;->P:Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lp4/i0;->K:Z

    .line 8
    iput-wide v1, p0, Lp4/i0;->N:J

    .line 9
    iput v0, p0, Lp4/i0;->Q:I

    .line 10
    iget-object p1, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 11
    invoke-virtual {v3, v0}, Lp4/l0;->C(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lp4/i0;->x:Lp4/v$a;

    .line 13
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final C(Lp4/i0$d;)Ls3/w;
    .locals 5

    .line 1
    iget-object v0, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lp4/i0;->A:[Lp4/i0$d;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lp4/i0$d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object p1, p0, Lp4/i0;->z:[Lp4/l0;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lp4/i0;->o:Ll5/b;

    iget-object v2, p0, Lp4/i0;->j:Lr3/l;

    iget-object v3, p0, Lp4/i0;->m:Lr3/k$a;

    .line 5
    new-instance v4, Lp4/l0;

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-direct {v4, v1, v2, v3}, Lp4/l0;-><init>(Ll5/b;Lr3/l;Lr3/k$a;)V

    .line 9
    iput-object p0, v4, Lp4/l0;->f:Lp4/l0$c;

    .line 10
    iget-object v1, p0, Lp4/i0;->A:[Lp4/i0$d;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lp4/i0$d;

    .line 11
    aput-object p1, v1, v0

    .line 12
    sget p1, Lm5/g0;->a:I

    iput-object v1, p0, Lp4/i0;->A:[Lp4/i0$d;

    .line 13
    iget-object p1, p0, Lp4/i0;->z:[Lp4/l0;

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lp4/l0;

    .line 14
    aput-object v4, p1, v0

    .line 15
    iput-object p1, p0, Lp4/i0;->z:[Lp4/l0;

    return-object v4
.end method

.method public final D()V
    .locals 26

    move-object/from16 v7, p0

    .line 1
    new-instance v8, Lp4/i0$a;

    iget-object v2, v7, Lp4/i0;->h:Landroid/net/Uri;

    iget-object v3, v7, Lp4/i0;->i:Ll5/j;

    iget-object v4, v7, Lp4/i0;->s:Lp4/h0;

    iget-object v6, v7, Lp4/i0;->t:Lm5/e;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lp4/i0$a;-><init>(Lp4/i0;Landroid/net/Uri;Ll5/j;Lp4/h0;Ls3/j;Lm5/e;)V

    .line 2
    iget-boolean v0, v7, Lp4/i0;->C:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual/range {p0 .. p0}, Lp4/i0;->y()Z

    move-result v0

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 4
    iget-wide v0, v7, Lp4/i0;->G:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iget-wide v9, v7, Lp4/i0;->O:J

    cmp-long v0, v9, v0

    if-lez v0, :cond_0

    .line 5
    iput-boolean v5, v7, Lp4/i0;->R:Z

    .line 6
    iput-wide v2, v7, Lp4/i0;->O:J

    return-void

    .line 7
    :cond_0
    iget-object v0, v7, Lp4/i0;->F:Ls3/u;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-wide v9, v7, Lp4/i0;->O:J

    invoke-interface {v0, v9, v10}, Ls3/u;->h(J)Ls3/u$a;

    move-result-object v0

    iget-object v0, v0, Ls3/u$a;->a:Ls3/v;

    iget-wide v0, v0, Ls3/v;->b:J

    iget-wide v9, v7, Lp4/i0;->O:J

    .line 10
    iget-object v4, v8, Lp4/i0$a;->g:Ls3/t;

    iput-wide v0, v4, Ls3/t;->a:J

    .line 11
    iput-wide v9, v8, Lp4/i0$a;->j:J

    .line 12
    iput-boolean v5, v8, Lp4/i0$a;->i:Z

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, v8, Lp4/i0$a;->m:Z

    .line 14
    iget-object v1, v7, Lp4/i0;->z:[Lp4/l0;

    array-length v4, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v1, v0

    .line 15
    iget-wide v9, v7, Lp4/i0;->O:J

    .line 16
    iput-wide v9, v5, Lp4/l0;->t:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iput-wide v2, v7, Lp4/i0;->O:J

    .line 18
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lp4/i0;->w()I

    move-result v0

    iput v0, v7, Lp4/i0;->Q:I

    .line 19
    iget-object v0, v7, Lp4/i0;->r:Ll5/d0;

    iget-object v1, v7, Lp4/i0;->k:Ll5/c0;

    iget v2, v7, Lp4/i0;->I:I

    .line 20
    invoke-interface {v1, v2}, Ll5/c0;->c(I)I

    move-result v1

    .line 21
    invoke-virtual {v0, v8, v7, v1}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    move-result-wide v13

    .line 22
    iget-object v12, v8, Lp4/i0$a;->k:Ll5/m;

    .line 23
    iget-object v15, v7, Lp4/i0;->l:Lp4/e0$a;

    new-instance v16, Lp4/r;

    .line 24
    iget-wide v10, v8, Lp4/i0$a;->a:J

    move-object/from16 v9, v16

    .line 25
    invoke-direct/range {v9 .. v14}, Lp4/r;-><init>(JLl5/m;J)V

    const/16 v17, 0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 26
    iget-wide v0, v8, Lp4/i0$a;->j:J

    .line 27
    iget-wide v2, v7, Lp4/i0;->G:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v2

    .line 28
    invoke-virtual/range {v15 .. v25}, Lp4/e0$a;->n(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public final E()Z
    .locals 1

    iget-boolean v0, p0, Lp4/i0;->K:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lp4/i0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/i0;->r:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp4/i0;->t:Lm5/e;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, v0, Lm5/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lp4/i0;->B:Z

    .line 2
    iget-object v0, p0, Lp4/i0;->w:Landroid/os/Handler;

    iget-object v1, p0, Lp4/i0;->u:Ly0/x;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()J
    .locals 2

    invoke-virtual {p0}, Lp4/i0;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(JLn3/w1;)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lp4/i0;->v()V

    .line 2
    iget-object v0, p0, Lp4/i0;->F:Ls3/u;

    invoke-interface {v0}, Ls3/u;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    .line 3
    :cond_0
    iget-object v0, p0, Lp4/i0;->F:Ls3/u;

    invoke-interface {v0, p1, p2}, Ls3/u;->h(J)Ls3/u$a;

    move-result-object v0

    .line 4
    iget-object v1, v0, Ls3/u$a;->a:Ls3/v;

    iget-wide v5, v1, Ls3/v;->a:J

    iget-object v0, v0, Ls3/u$a;->b:Ls3/v;

    iget-wide v7, v0, Ls3/v;->a:J

    move-object v2, p3

    move-wide v3, p1

    invoke-virtual/range {v2 .. v8}, Ln3/w1;->a(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final e()J
    .locals 11

    .line 1
    invoke-virtual {p0}, Lp4/i0;->v()V

    .line 2
    iget-boolean v0, p0, Lp4/i0;->R:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lp4/i0;->L:I

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lp4/i0;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-wide v0, p0, Lp4/i0;->O:J

    return-wide v0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lp4/i0;->D:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v0, v0

    move v6, v3

    move-wide v7, v4

    :goto_0
    if-ge v6, v0, :cond_4

    .line 7
    iget-object v9, p0, Lp4/i0;->E:Lp4/i0$e;

    iget-object v10, v9, Lp4/i0$e;->b:[Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lp4/i0$e;->c:[Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lp4/i0;->z:[Lp4/l0;

    aget-object v9, v9, v6

    .line 8
    monitor-enter v9

    .line 9
    :try_start_0
    iget-boolean v10, v9, Lp4/l0;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    if-nez v10, :cond_2

    .line 10
    iget-object v9, p0, Lp4/i0;->z:[Lp4/l0;

    aget-object v9, v9, v6

    .line 11
    invoke-virtual {v9}, Lp4/l0;->o()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit v9

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    .line 13
    invoke-virtual {p0, v3}, Lp4/i0;->x(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    .line 14
    iget-wide v7, p0, Lp4/i0;->N:J

    :cond_6
    return-wide v7

    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final f(J)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lp4/i0;->R:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lp4/i0;->r:Ll5/d0;

    .line 2
    invoke-virtual {p1}, Ll5/d0;->c()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lp4/i0;->P:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lp4/i0;->C:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lp4/i0;->L:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lp4/i0;->t:Lm5/e;

    invoke-virtual {p1}, Lm5/e;->c()Z

    move-result p1

    .line 4
    iget-object p2, p0, Lp4/i0;->r:Ll5/d0;

    invoke-virtual {p2}, Ll5/d0;->d()Z

    move-result p2

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lp4/i0;->D()V

    const/4 p1, 0x1

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(J)V
    .locals 0

    return-void
.end method

.method public final h(Ll5/d0$d;JJ)V
    .locals 15

    move-object v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lp4/i0$a;

    .line 2
    iget-wide v2, v0, Lp4/i0;->G:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, v0, Lp4/i0;->F:Ls3/u;

    if-eqz v2, :cond_1

    .line 3
    invoke-interface {v2}, Ls3/u;->f()Z

    move-result v2

    .line 4
    invoke-virtual {p0, v3}, Lp4/i0;->x(Z)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    .line 5
    :goto_0
    iput-wide v4, v0, Lp4/i0;->G:J

    .line 6
    iget-object v6, v0, Lp4/i0;->n:Lp4/i0$b;

    iget-boolean v7, v0, Lp4/i0;->H:Z

    check-cast v6, Lp4/j0;

    invoke-virtual {v6, v4, v5, v2, v7}, Lp4/j0;->z(JZZ)V

    .line 7
    :cond_1
    iget-object v2, v1, Lp4/i0$a;->c:Ll5/i0;

    .line 8
    new-instance v5, Lp4/r;

    .line 9
    iget-object v4, v2, Ll5/i0;->c:Landroid/net/Uri;

    .line 10
    iget-object v2, v2, Ll5/i0;->d:Ljava/util/Map;

    .line 11
    invoke-direct {v5, v2}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 12
    iget-object v2, v0, Lp4/i0;->k:Ll5/c0;

    invoke-interface {v2}, Ll5/c0;->d()V

    .line 13
    iget-object v4, v0, Lp4/i0;->l:Lp4/e0$a;

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 14
    iget-wide v11, v1, Lp4/i0$a;->j:J

    .line 15
    iget-wide v13, v0, Lp4/i0;->G:J

    .line 16
    invoke-virtual/range {v4 .. v14}, Lp4/e0$a;->h(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    .line 17
    iput-boolean v3, v0, Lp4/i0;->R:Z

    .line 18
    iget-object v1, v0, Lp4/i0;->x:Lp4/v$a;

    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lp4/l0;->B()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lp4/i0;->s:Lp4/h0;

    check-cast v0, Lp4/c;

    .line 4
    iget-object v1, v0, Lp4/c;->b:Ls3/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ls3/h;->a()V

    .line 6
    iput-object v2, v0, Lp4/c;->b:Ls3/h;

    .line 7
    :cond_1
    iput-object v2, v0, Lp4/c;->c:Ls3/e;

    return-void
.end method

.method public final j(Ls3/u;)V
    .locals 3

    iget-object v0, p0, Lp4/i0;->w:Landroid/os/Handler;

    new-instance v1, Landroidx/lifecycle/c;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Landroidx/lifecycle/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final k(Ll5/d0$d;JJZ)V
    .locals 14

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Lp4/i0$a;

    .line 2
    iget-object v2, v1, Lp4/i0$a;->c:Ll5/i0;

    .line 3
    new-instance v4, Lp4/r;

    .line 4
    iget-object v3, v2, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object v2, v2, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {v4, v2}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-object v2, v0, Lp4/i0;->k:Ll5/c0;

    invoke-interface {v2}, Ll5/c0;->d()V

    .line 8
    iget-object v3, v0, Lp4/i0;->l:Lp4/e0$a;

    .line 9
    iget-wide v10, v1, Lp4/i0$a;->j:J

    .line 10
    iget-wide v12, v0, Lp4/i0;->G:J

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 11
    invoke-virtual/range {v3 .. v13}, Lp4/e0$a;->e(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_1

    .line 12
    iget-object v1, v0, Lp4/i0;->z:[Lp4/l0;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 13
    invoke-virtual {v5, v3}, Lp4/l0;->C(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iget v1, v0, Lp4/i0;->L:I

    if-lez v1, :cond_1

    .line 15
    iget-object v1, v0, Lp4/i0;->x:Lp4/v$a;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-interface {v1, p0}, Lp4/n0$a;->j(Lp4/n0;)V

    :cond_1
    return-void
.end method

.method public final l()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp4/i0;->K:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lp4/i0;->R:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp4/i0;->w()I

    move-result v0

    iget v1, p0, Lp4/i0;->Q:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lp4/i0;->K:Z

    .line 4
    iget-wide v0, p0, Lp4/i0;->N:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lp4/i0$a;

    .line 2
    iget-object v2, v1, Lp4/i0$a;->c:Ll5/i0;

    .line 3
    new-instance v4, Lp4/r;

    .line 4
    iget-object v3, v2, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    iget-object v2, v2, Ll5/i0;->d:Ljava/util/Map;

    .line 6
    invoke-direct {v4, v2}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 7
    iget-wide v2, v1, Lp4/i0$a;->j:J

    .line 8
    invoke-static {v2, v3}, Lm5/g0;->X(J)J

    iget-wide v2, v0, Lp4/i0;->G:J

    .line 9
    invoke-static {v2, v3}, Lm5/g0;->X(J)J

    .line 10
    iget-object v2, v0, Lp4/i0;->k:Ll5/c0;

    new-instance v3, Ll5/c0$c;

    move-object/from16 v14, p6

    move/from16 v5, p7

    invoke-direct {v3, v14, v5}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    .line 11
    invoke-interface {v2, v3}, Ll5/c0;->b(Ll5/c0$c;)J

    move-result-wide v2

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    const/4 v8, 0x1

    if-nez v7, :cond_0

    .line 12
    sget-object v2, Ll5/d0;->f:Ll5/d0$b;

    goto :goto_5

    .line 13
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lp4/i0;->w()I

    move-result v7

    .line 14
    iget v9, v0, Lp4/i0;->Q:I

    const/4 v10, 0x0

    if-le v7, v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v10

    .line 15
    :goto_0
    iget-boolean v11, v0, Lp4/i0;->M:Z

    if-nez v11, :cond_5

    iget-object v11, v0, Lp4/i0;->F:Ls3/u;

    if-eqz v11, :cond_2

    invoke-interface {v11}, Ls3/u;->i()J

    move-result-wide v11

    cmp-long v5, v11, v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 16
    :cond_2
    iget-boolean v5, v0, Lp4/i0;->C:Z

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Lp4/i0;->E()Z

    move-result v5

    if-nez v5, :cond_3

    .line 17
    iput-boolean v8, v0, Lp4/i0;->P:Z

    goto :goto_4

    .line 18
    :cond_3
    iget-boolean v5, v0, Lp4/i0;->C:Z

    iput-boolean v5, v0, Lp4/i0;->K:Z

    const-wide/16 v5, 0x0

    .line 19
    iput-wide v5, v0, Lp4/i0;->N:J

    .line 20
    iput v10, v0, Lp4/i0;->Q:I

    .line 21
    iget-object v7, v0, Lp4/i0;->z:[Lp4/l0;

    array-length v11, v7

    move v12, v10

    :goto_1
    if-ge v12, v11, :cond_4

    aget-object v13, v7, v12

    .line 22
    invoke-virtual {v13, v10}, Lp4/l0;->C(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 23
    :cond_4
    iget-object v7, v1, Lp4/i0$a;->g:Ls3/t;

    iput-wide v5, v7, Ls3/t;->a:J

    .line 24
    iput-wide v5, v1, Lp4/i0$a;->j:J

    .line 25
    iput-boolean v8, v1, Lp4/i0$a;->i:Z

    .line 26
    iput-boolean v10, v1, Lp4/i0$a;->m:Z

    goto :goto_3

    .line 27
    :cond_5
    :goto_2
    iput v7, v0, Lp4/i0;->Q:I

    :goto_3
    move v10, v8

    :goto_4
    if-eqz v10, :cond_6

    .line 28
    new-instance v5, Ll5/d0$b;

    .line 29
    invoke-direct {v5, v9, v2, v3}, Ll5/d0$b;-><init>(IJ)V

    move-object v2, v5

    goto :goto_5

    .line 30
    :cond_6
    sget-object v2, Ll5/d0;->e:Ll5/d0$b;

    .line 31
    :goto_5
    invoke-virtual {v2}, Ll5/d0$b;->a()Z

    move-result v3

    xor-int/lit8 v16, v3, 0x1

    .line 32
    iget-object v3, v0, Lp4/i0;->l:Lp4/e0$a;

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 33
    iget-wide v10, v1, Lp4/i0$a;->j:J

    .line 34
    iget-wide v12, v0, Lp4/i0;->G:J

    move-object/from16 v14, p6

    move/from16 v15, v16

    .line 35
    invoke-virtual/range {v3 .. v15}, Lp4/e0$a;->j(Lp4/r;IILn3/s0;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v16, :cond_7

    .line 36
    iget-object v1, v0, Lp4/i0;->k:Ll5/c0;

    invoke-interface {v1}, Ll5/c0;->d()V

    :cond_7
    return-object v2
.end method

.method public final n([Lj5/l;[Z[Lp4/m0;[ZJ)J
    .locals 8

    .line 1
    invoke-virtual {p0}, Lp4/i0;->v()V

    .line 2
    iget-object v0, p0, Lp4/i0;->E:Lp4/i0$e;

    iget-object v1, v0, Lp4/i0$e;->a:Lp4/u0;

    .line 3
    iget-object v0, v0, Lp4/i0$e;->c:[Z

    .line 4
    iget v2, p0, Lp4/i0;->L:I

    const/4 v3, 0x0

    move v4, v3

    .line 5
    :goto_0
    array-length v5, p1

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 6
    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v5, p1, v4

    if-eqz v5, :cond_0

    aget-boolean v5, p2, v4

    if-nez v5, :cond_1

    .line 7
    :cond_0
    aget-object v5, p3, v4

    check-cast v5, Lp4/i0$c;

    .line 8
    iget v5, v5, Lp4/i0$c;->h:I

    .line 9
    aget-boolean v7, v0, v5

    invoke-static {v7}, Lm5/a;->e(Z)V

    .line 10
    iget v7, p0, Lp4/i0;->L:I

    sub-int/2addr v7, v6

    iput v7, p0, Lp4/i0;->L:I

    .line 11
    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    .line 12
    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget-boolean p2, p0, Lp4/i0;->J:Z

    if-eqz p2, :cond_3

    if-nez v2, :cond_4

    goto :goto_1

    :cond_3
    const-wide/16 v4, 0x0

    cmp-long p2, p5, v4

    if-eqz p2, :cond_4

    :goto_1
    move p2, v6

    goto :goto_2

    :cond_4
    move p2, v3

    :goto_2
    move v2, v3

    .line 14
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_9

    .line 15
    aget-object v4, p3, v2

    if-nez v4, :cond_8

    aget-object v4, p1, v2

    if-eqz v4, :cond_8

    .line 16
    aget-object v4, p1, v2

    .line 17
    invoke-interface {v4}, Lj5/o;->length()I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-static {v5}, Lm5/a;->e(Z)V

    .line 18
    invoke-interface {v4, v3}, Lj5/o;->i(I)I

    move-result v5

    if-nez v5, :cond_6

    move v5, v6

    goto :goto_5

    :cond_6
    move v5, v3

    :goto_5
    invoke-static {v5}, Lm5/a;->e(Z)V

    .line 19
    invoke-interface {v4}, Lj5/o;->l()Lp4/t0;

    move-result-object v4

    invoke-virtual {v1, v4}, Lp4/u0;->c(Lp4/t0;)I

    move-result v4

    .line 20
    aget-boolean v5, v0, v4

    xor-int/2addr v5, v6

    invoke-static {v5}, Lm5/a;->e(Z)V

    .line 21
    iget v5, p0, Lp4/i0;->L:I

    add-int/2addr v5, v6

    iput v5, p0, Lp4/i0;->L:I

    .line 22
    aput-boolean v6, v0, v4

    .line 23
    new-instance v5, Lp4/i0$c;

    invoke-direct {v5, p0, v4}, Lp4/i0$c;-><init>(Lp4/i0;I)V

    aput-object v5, p3, v2

    .line 24
    aput-boolean v6, p4, v2

    if-nez p2, :cond_8

    .line 25
    iget-object p2, p0, Lp4/i0;->z:[Lp4/l0;

    aget-object p2, p2, v4

    .line 26
    invoke-virtual {p2, p5, p6, v6}, Lp4/l0;->D(JZ)Z

    move-result v4

    if-nez v4, :cond_7

    .line 27
    iget v4, p2, Lp4/l0;->q:I

    iget p2, p2, Lp4/l0;->s:I

    add-int/2addr v4, p2

    if-eqz v4, :cond_7

    move p2, v6

    goto :goto_6

    :cond_7
    move p2, v3

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 28
    :cond_9
    iget p1, p0, Lp4/i0;->L:I

    if-nez p1, :cond_c

    .line 29
    iput-boolean v3, p0, Lp4/i0;->P:Z

    .line 30
    iput-boolean v3, p0, Lp4/i0;->K:Z

    .line 31
    iget-object p1, p0, Lp4/i0;->r:Ll5/d0;

    invoke-virtual {p1}, Ll5/d0;->d()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 32
    iget-object p1, p0, Lp4/i0;->z:[Lp4/l0;

    array-length p2, p1

    :goto_7
    if-ge v3, p2, :cond_a

    aget-object p3, p1, v3

    .line 33
    invoke-virtual {p3}, Lp4/l0;->j()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 34
    :cond_a
    iget-object p1, p0, Lp4/i0;->r:Ll5/d0;

    invoke-virtual {p1}, Ll5/d0;->a()V

    goto :goto_a

    .line 35
    :cond_b
    iget-object p1, p0, Lp4/i0;->z:[Lp4/l0;

    array-length p2, p1

    move p3, v3

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    .line 36
    invoke-virtual {p4, v3}, Lp4/l0;->C(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    .line 37
    invoke-virtual {p0, p5, p6}, Lp4/i0;->t(J)J

    move-result-wide p5

    .line 38
    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    .line 39
    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    .line 40
    aput-boolean v6, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 41
    :cond_e
    :goto_a
    iput-boolean v6, p0, Lp4/i0;->J:Z

    return-wide p5
.end method

.method public final o()Lp4/u0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp4/i0;->v()V

    .line 2
    iget-object v0, p0, Lp4/i0;->E:Lp4/i0$e;

    iget-object v0, v0, Lp4/i0$e;->a:Lp4/u0;

    return-object v0
.end method

.method public final p(II)Ls3/w;
    .locals 1

    new-instance p2, Lp4/i0$d;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lp4/i0$d;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lp4/i0;->C(Lp4/i0$d;)Ls3/w;

    move-result-object p1

    return-object p1
.end method

.method public final q()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/i0;->r:Ll5/d0;

    iget-object v1, p0, Lp4/i0;->k:Ll5/c0;

    iget v2, p0, Lp4/i0;->I:I

    invoke-interface {v1, v2}, Ll5/c0;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ll5/d0;->e(I)V

    .line 2
    iget-boolean v0, p0, Lp4/i0;->R:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lp4/i0;->C:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Loading finished before preparation is complete."

    .line 3
    invoke-static {v1, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lp4/i0;->w:Landroid/os/Handler;

    iget-object v1, p0, Lp4/i0;->u:Ly0/x;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s(JZ)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lp4/i0;->v()V

    .line 2
    invoke-virtual {p0}, Lp4/i0;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lp4/i0;->E:Lp4/i0$e;

    iget-object v0, v0, Lp4/i0$e;->c:[Z

    .line 4
    iget-object v1, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    iget-object v3, p0, Lp4/i0;->z:[Lp4/l0;

    aget-object v3, v3, v2

    aget-boolean v4, v0, v2

    invoke-virtual {v3, p1, p2, p3, v4}, Lp4/l0;->i(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final t(J)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lp4/i0;->v()V

    .line 2
    iget-object v0, p0, Lp4/i0;->E:Lp4/i0$e;

    iget-object v0, v0, Lp4/i0$e;->b:[Z

    .line 3
    iget-object v1, p0, Lp4/i0;->F:Ls3/u;

    invoke-interface {v1}, Ls3/u;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lp4/i0;->K:Z

    .line 5
    iput-wide p1, p0, Lp4/i0;->N:J

    .line 6
    invoke-virtual {p0}, Lp4/i0;->y()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iput-wide p1, p0, Lp4/i0;->O:J

    return-wide p1

    .line 8
    :cond_1
    iget v2, p0, Lp4/i0;->I:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_5

    .line 9
    iget-object v2, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v2, v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_4

    .line 10
    iget-object v4, p0, Lp4/i0;->z:[Lp4/l0;

    aget-object v4, v4, v3

    .line 11
    invoke-virtual {v4, p1, p2, v1}, Lp4/l0;->D(JZ)Z

    move-result v4

    if-nez v4, :cond_3

    .line 12
    aget-boolean v4, v0, v3

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lp4/i0;->D:Z

    if-nez v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_5

    return-wide p1

    .line 13
    :cond_5
    iput-boolean v1, p0, Lp4/i0;->P:Z

    .line 14
    iput-wide p1, p0, Lp4/i0;->O:J

    .line 15
    iput-boolean v1, p0, Lp4/i0;->R:Z

    .line 16
    iget-object v0, p0, Lp4/i0;->r:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    iget-object v0, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 18
    invoke-virtual {v3}, Lp4/l0;->j()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 19
    :cond_6
    iget-object v0, p0, Lp4/i0;->r:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->a()V

    goto :goto_5

    .line 20
    :cond_7
    iget-object v0, p0, Lp4/i0;->r:Ll5/d0;

    const/4 v2, 0x0

    .line 21
    iput-object v2, v0, Ll5/d0;->c:Ljava/io/IOException;

    .line 22
    iget-object v0, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v2, v0

    move v3, v1

    :goto_4
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    .line 23
    invoke-virtual {v4, v1}, Lp4/l0;->C(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-wide p1
.end method

.method public final u(Lp4/v$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4/i0;->x:Lp4/v$a;

    .line 2
    iget-object p1, p0, Lp4/i0;->t:Lm5/e;

    invoke-virtual {p1}, Lm5/e;->c()Z

    .line 3
    invoke-virtual {p0}, Lp4/i0;->D()V

    return-void
.end method

.method public final v()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackState",
            "seekMap"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp4/i0;->C:Z

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Lp4/i0;->E:Lp4/i0$e;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lp4/i0;->F:Ls3/u;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final w()I
    .locals 6

    .line 1
    iget-object v0, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    iget v5, v4, Lp4/l0;->q:I

    iget v4, v4, Lp4/l0;->p:I

    add-int/2addr v5, v4

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final x(Z)J
    .locals 5

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez p1, :cond_0

    .line 2
    iget-object v3, p0, Lp4/i0;->E:Lp4/i0$e;

    .line 3
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v3, v3, Lp4/i0$e;->c:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 5
    :cond_0
    iget-object v3, p0, Lp4/i0;->z:[Lp4/l0;

    aget-object v3, v3, v2

    .line 6
    invoke-virtual {v3}, Lp4/l0;->o()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public final y()Z
    .locals 4

    iget-wide v0, p0, Lp4/i0;->O:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lp4/i0;->S:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lp4/i0;->C:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lp4/i0;->B:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lp4/i0;->F:Ls3/u;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    iget-object v0, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Lp4/l0;->s()Ln3/s0;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lp4/i0;->t:Lm5/e;

    invoke-virtual {v0}, Lm5/e;->b()Z

    .line 5
    iget-object v0, p0, Lp4/i0;->z:[Lp4/l0;

    array-length v0, v0

    .line 6
    new-array v1, v0, [Lp4/t0;

    .line 7
    new-array v3, v0, [Z

    move v4, v2

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_9

    .line 8
    iget-object v6, p0, Lp4/i0;->z:[Lp4/l0;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lp4/l0;->s()Ln3/s0;

    move-result-object v6

    .line 9
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v7, v6, Ln3/s0;->s:Ljava/lang/String;

    .line 11
    invoke-static {v7}, Lm5/s;->k(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 12
    invoke-static {v7}, Lm5/s;->n(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v5

    .line 13
    :goto_3
    aput-boolean v7, v3, v4

    .line 14
    iget-boolean v9, p0, Lp4/i0;->D:Z

    or-int/2addr v7, v9

    iput-boolean v7, p0, Lp4/i0;->D:Z

    .line 15
    iget-object v7, p0, Lp4/i0;->y:Lj4/b;

    if-eqz v7, :cond_8

    if-nez v8, :cond_5

    .line 16
    iget-object v9, p0, Lp4/i0;->A:[Lp4/i0$d;

    aget-object v9, v9, v4

    iget-boolean v9, v9, Lp4/i0$d;->b:Z

    if-eqz v9, :cond_7

    .line 17
    :cond_5
    iget-object v9, v6, Ln3/s0;->q:Lf4/a;

    if-nez v9, :cond_6

    .line 18
    new-instance v9, Lf4/a;

    new-array v10, v5, [Lf4/a$b;

    aput-object v7, v10, v2

    invoke-direct {v9, v10}, Lf4/a;-><init>([Lf4/a$b;)V

    goto :goto_4

    :cond_6
    new-array v10, v5, [Lf4/a$b;

    aput-object v7, v10, v2

    .line 19
    invoke-virtual {v9, v10}, Lf4/a;->a([Lf4/a$b;)Lf4/a;

    move-result-object v9

    .line 20
    :goto_4
    invoke-virtual {v6}, Ln3/s0;->b()Ln3/s0$a;

    move-result-object v6

    .line 21
    iput-object v9, v6, Ln3/s0$a;->i:Lf4/a;

    .line 22
    invoke-virtual {v6}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v6

    :cond_7
    if-eqz v8, :cond_8

    .line 23
    iget v8, v6, Ln3/s0;->m:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    iget v8, v6, Ln3/s0;->n:I

    if-ne v8, v9, :cond_8

    iget v8, v7, Lj4/b;->h:I

    if-eq v8, v9, :cond_8

    .line 24
    invoke-virtual {v6}, Ln3/s0;->b()Ln3/s0$a;

    move-result-object v6

    iget v7, v7, Lj4/b;->h:I

    .line 25
    iput v7, v6, Ln3/s0$a;->f:I

    .line 26
    invoke-virtual {v6}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v6

    .line 27
    :cond_8
    iget-object v7, p0, Lp4/i0;->j:Lr3/l;

    invoke-interface {v7, v6}, Lr3/l;->e(Ln3/s0;)I

    move-result v7

    invoke-virtual {v6, v7}, Ln3/s0;->c(I)Ln3/s0;

    move-result-object v6

    .line 28
    new-instance v7, Lp4/t0;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ln3/s0;

    aput-object v6, v5, v2

    invoke-direct {v7, v8, v5}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    aput-object v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 29
    :cond_9
    new-instance v0, Lp4/i0$e;

    new-instance v2, Lp4/u0;

    invoke-direct {v2, v1}, Lp4/u0;-><init>([Lp4/t0;)V

    invoke-direct {v0, v2, v3}, Lp4/i0$e;-><init>(Lp4/u0;[Z)V

    iput-object v0, p0, Lp4/i0;->E:Lp4/i0$e;

    .line 30
    iput-boolean v5, p0, Lp4/i0;->C:Z

    .line 31
    iget-object v0, p0, Lp4/i0;->x:Lp4/v$a;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v0, p0}, Lp4/v$a;->i(Lp4/v;)V

    :cond_a
    :goto_5
    return-void
.end method
