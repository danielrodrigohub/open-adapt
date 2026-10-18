.class public final Lu4/n;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Ll5/d0$a;
.implements Ll5/d0$e;
.implements Lp4/n0;
.implements Ls3/j;
.implements Lp4/l0$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu4/n$c;,
        Lu4/n$d;,
        Lu4/n$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll5/d0$a<",
        "Lr4/e;",
        ">;",
        "Ll5/d0$e;",
        "Lp4/n0;",
        "Ls3/j;",
        "Lp4/l0$c;"
    }
.end annotation


# static fields
.field public static final f0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr3/d;",
            ">;"
        }
    .end annotation
.end field

.field public B:Lr4/e;

.field public C:[Lu4/n$d;

.field public D:[I

.field public E:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public F:Landroid/util/SparseIntArray;

.field public G:Lu4/n$c;

.field public H:I

.field public I:I

.field public J:Z

.field public K:Z

.field public L:I

.field public M:Ln3/s0;

.field public N:Ln3/s0;

.field public O:Z

.field public P:Lp4/u0;

.field public Q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lp4/t0;",
            ">;"
        }
    .end annotation
.end field

.field public R:[I

.field public S:I

.field public T:Z

.field public U:[Z

.field public V:[Z

.field public W:J

.field public X:J

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:J

.field public d0:Lr3/d;

.field public e0:Lu4/j;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Lu4/n$b;

.field public final k:Lu4/g;

.field public final l:Ll5/b;

.field public final m:Ln3/s0;

.field public final n:Lr3/l;

.field public final o:Lr3/k$a;

.field public final p:Ll5/c0;

.field public final q:Ll5/d0;

.field public final r:Lp4/e0$a;

.field public final s:I

.field public final t:Lu4/g$b;

.field public final u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu4/j;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu4/j;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Ly0/s;

.field public final x:Landroidx/activity/d;

.field public final y:Landroid/os/Handler;

.field public final z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu4/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lu4/n;->f0:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILu4/n$b;Lu4/g;Ljava/util/Map;Ll5/b;JLn3/s0;Lr3/l;Lr3/k$a;Ll5/c0;Lp4/e0$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lu4/n$b;",
            "Lu4/g;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lr3/d;",
            ">;",
            "Ll5/b;",
            "J",
            "Ln3/s0;",
            "Lr3/l;",
            "Lr3/k$a;",
            "Ll5/c0;",
            "Lp4/e0$a;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu4/n;->h:Ljava/lang/String;

    .line 3
    iput p2, p0, Lu4/n;->i:I

    .line 4
    iput-object p3, p0, Lu4/n;->j:Lu4/n$b;

    .line 5
    iput-object p4, p0, Lu4/n;->k:Lu4/g;

    .line 6
    iput-object p5, p0, Lu4/n;->A:Ljava/util/Map;

    .line 7
    iput-object p6, p0, Lu4/n;->l:Ll5/b;

    .line 8
    iput-object p9, p0, Lu4/n;->m:Ln3/s0;

    .line 9
    iput-object p10, p0, Lu4/n;->n:Lr3/l;

    .line 10
    iput-object p11, p0, Lu4/n;->o:Lr3/k$a;

    .line 11
    iput-object p12, p0, Lu4/n;->p:Ll5/c0;

    .line 12
    iput-object p13, p0, Lu4/n;->r:Lp4/e0$a;

    .line 13
    iput p14, p0, Lu4/n;->s:I

    .line 14
    new-instance p1, Ll5/d0;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lu4/n;->q:Ll5/d0;

    .line 15
    new-instance p1, Lu4/g$b;

    invoke-direct {p1}, Lu4/g$b;-><init>()V

    iput-object p1, p0, Lu4/n;->t:Lu4/g$b;

    const/4 p1, 0x0

    new-array p2, p1, [I

    .line 16
    iput-object p2, p0, Lu4/n;->D:[I

    .line 17
    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Lu4/n;->f0:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lu4/n;->E:Ljava/util/HashSet;

    .line 18
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lu4/n;->F:Landroid/util/SparseIntArray;

    new-array p2, p1, [Lu4/n$d;

    .line 19
    iput-object p2, p0, Lu4/n;->C:[Lu4/n$d;

    new-array p2, p1, [Z

    .line 20
    iput-object p2, p0, Lu4/n;->V:[Z

    new-array p1, p1, [Z

    .line 21
    iput-object p1, p0, Lu4/n;->U:[Z

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu4/n;->u:Ljava/util/ArrayList;

    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lu4/n;->v:Ljava/util/List;

    .line 24
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu4/n;->z:Ljava/util/ArrayList;

    .line 25
    new-instance p1, Ly0/s;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Ly0/s;-><init>(Ljava/lang/Object;I)V

    .line 26
    iput-object p1, p0, Lu4/n;->w:Ly0/s;

    .line 27
    new-instance p1, Landroidx/activity/d;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Landroidx/activity/d;-><init>(Ljava/lang/Object;I)V

    .line 28
    iput-object p1, p0, Lu4/n;->x:Landroidx/activity/d;

    const/4 p1, 0x0

    .line 29
    invoke-static {p1}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 30
    iput-object p1, p0, Lu4/n;->y:Landroid/os/Handler;

    .line 31
    iput-wide p7, p0, Lu4/n;->W:J

    .line 32
    iput-wide p7, p0, Lu4/n;->X:J

    return-void
.end method

.method public static B(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static w(II)Ls3/g;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p0, Ls3/g;

    invoke-direct {p0}, Ls3/g;-><init>()V

    return-object p0
.end method

.method public static y(Ln3/s0;Ln3/s0;Z)Ln3/s0;
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p1, Ln3/s0;->s:Ljava/lang/String;

    invoke-static {v0}, Lm5/s;->i(Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Ln3/s0;->p:Ljava/lang/String;

    invoke-static {v1, v0}, Lm5/g0;->r(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Ln3/s0;->p:Ljava/lang/String;

    invoke-static {v1, v0}, Lm5/g0;->s(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lm5/s;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Ln3/s0;->p:Ljava/lang/String;

    iget-object v3, p1, Ln3/s0;->s:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lm5/s;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v3, p1, Ln3/s0;->s:Ljava/lang/String;

    .line 8
    :goto_0
    new-instance v4, Ln3/s0$a;

    invoke-direct {v4, p1}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 9
    iget-object v5, p0, Ln3/s0;->h:Ljava/lang/String;

    .line 10
    iput-object v5, v4, Ln3/s0$a;->a:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Ln3/s0;->i:Ljava/lang/String;

    .line 12
    iput-object v5, v4, Ln3/s0$a;->b:Ljava/lang/String;

    .line 13
    iget-object v5, p0, Ln3/s0;->j:Ljava/lang/String;

    .line 14
    iput-object v5, v4, Ln3/s0$a;->c:Ljava/lang/String;

    .line 15
    iget v5, p0, Ln3/s0;->k:I

    .line 16
    iput v5, v4, Ln3/s0$a;->d:I

    .line 17
    iget v5, p0, Ln3/s0;->l:I

    .line 18
    iput v5, v4, Ln3/s0$a;->e:I

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    .line 19
    iget v6, p0, Ln3/s0;->m:I

    goto :goto_1

    :cond_2
    move v6, v5

    .line 20
    :goto_1
    iput v6, v4, Ln3/s0$a;->f:I

    if-eqz p2, :cond_3

    .line 21
    iget p2, p0, Ln3/s0;->n:I

    goto :goto_2

    :cond_3
    move p2, v5

    .line 22
    :goto_2
    iput p2, v4, Ln3/s0$a;->g:I

    .line 23
    iput-object v1, v4, Ln3/s0$a;->h:Ljava/lang/String;

    const/4 p2, 0x2

    if-ne v0, p2, :cond_4

    .line 24
    iget p2, p0, Ln3/s0;->x:I

    .line 25
    iput p2, v4, Ln3/s0$a;->p:I

    .line 26
    iget p2, p0, Ln3/s0;->y:I

    .line 27
    iput p2, v4, Ln3/s0$a;->q:I

    .line 28
    iget p2, p0, Ln3/s0;->z:F

    .line 29
    iput p2, v4, Ln3/s0$a;->r:F

    :cond_4
    if-eqz v3, :cond_5

    .line 30
    iput-object v3, v4, Ln3/s0$a;->k:Ljava/lang/String;

    .line 31
    :cond_5
    iget p2, p0, Ln3/s0;->F:I

    if-eq p2, v5, :cond_6

    if-ne v0, v2, :cond_6

    .line 32
    iput p2, v4, Ln3/s0$a;->x:I

    .line 33
    :cond_6
    iget-object p0, p0, Ln3/s0;->q:Lf4/a;

    if-eqz p0, :cond_8

    .line 34
    iget-object p1, p1, Ln3/s0;->q:Lf4/a;

    if-eqz p1, :cond_7

    .line 35
    invoke-virtual {p1, p0}, Lf4/a;->b(Lf4/a;)Lf4/a;

    move-result-object p0

    .line 36
    :cond_7
    iput-object p0, v4, Ln3/s0$a;->i:Lf4/a;

    .line 37
    :cond_8
    new-instance p0, Ln3/s0;

    invoke-direct {p0, v4}, Ln3/s0;-><init>(Ln3/s0$a;)V

    return-object p0
.end method


# virtual methods
.method public final A()Lu4/j;
    .locals 2

    iget-object v0, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu4/j;

    return-object v0
.end method

.method public final C()Z
    .locals 4

    iget-wide v0, p0, Lu4/n;->X:J

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

.method public final D()V
    .locals 15

    .line 1
    iget-boolean v0, p0, Lu4/n;->O:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lu4/n;->R:[I

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lu4/n;->J:Z

    if-nez v0, :cond_0

    goto/16 :goto_12

    .line 2
    :cond_0
    iget-object v0, p0, Lu4/n;->C:[Lu4/n$d;

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
    iget-object v0, p0, Lu4/n;->P:Lp4/u0;

    const/4 v1, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v0, :cond_b

    .line 5
    iget v0, v0, Lp4/u0;->h:I

    .line 6
    new-array v5, v0, [I

    iput-object v5, p0, Lu4/n;->R:[I

    .line 7
    invoke-static {v5, v3}, Ljava/util/Arrays;->fill([II)V

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_a

    move v5, v2

    .line 8
    :goto_2
    iget-object v6, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v7, v6

    if-ge v5, v7, :cond_9

    .line 9
    aget-object v6, v6, v5

    .line 10
    invoke-virtual {v6}, Lp4/l0;->s()Ln3/s0;

    move-result-object v6

    invoke-static {v6}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v7, p0, Lu4/n;->P:Lp4/u0;

    invoke-virtual {v7, v3}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v7

    .line 12
    iget-object v7, v7, Lp4/t0;->k:[Ln3/s0;

    aget-object v7, v7, v2

    .line 13
    iget-object v8, v6, Ln3/s0;->s:Ljava/lang/String;

    .line 14
    iget-object v9, v7, Ln3/s0;->s:Ljava/lang/String;

    .line 15
    invoke-static {v8}, Lm5/s;->i(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v1, :cond_3

    .line 16
    invoke-static {v9}, Lm5/s;->i(Ljava/lang/String;)I

    move-result v6

    if-ne v10, v6, :cond_7

    goto :goto_3

    .line 17
    :cond_3
    invoke-static {v8, v9}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    const-string v9, "application/cea-608"

    .line 18
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "application/cea-708"

    .line 19
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 20
    :cond_5
    iget v6, v6, Ln3/s0;->K:I

    iget v7, v7, Ln3/s0;->K:I

    if-ne v6, v7, :cond_7

    :cond_6
    :goto_3
    move v6, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v6, v2

    :goto_5
    if-eqz v6, :cond_8

    .line 21
    iget-object v6, p0, Lu4/n;->R:[I

    aput v5, v6, v3

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_a
    iget-object v0, p0, Lu4/n;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu4/m;

    .line 23
    invoke-virtual {v1}, Lu4/m;->a()V

    goto :goto_7

    .line 24
    :cond_b
    iget-object v0, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v0, v0

    const/4 v5, -0x2

    move v6, v2

    move v8, v3

    move v7, v5

    :goto_8
    const/4 v9, 0x2

    if-ge v6, v0, :cond_11

    .line 25
    iget-object v10, p0, Lu4/n;->C:[Lu4/n$d;

    aget-object v10, v10, v6

    .line 26
    invoke-virtual {v10}, Lp4/l0;->s()Ln3/s0;

    move-result-object v10

    invoke-static {v10}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v10, Ln3/s0;->s:Ljava/lang/String;

    .line 27
    invoke-static {v10}, Lm5/s;->n(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_9

    .line 28
    :cond_c
    invoke-static {v10}, Lm5/s;->k(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    move v9, v4

    goto :goto_9

    .line 29
    :cond_d
    invoke-static {v10}, Lm5/s;->m(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    move v9, v1

    goto :goto_9

    :cond_e
    move v9, v5

    .line 30
    :goto_9
    invoke-static {v9}, Lu4/n;->B(I)I

    move-result v10

    invoke-static {v7}, Lu4/n;->B(I)I

    move-result v11

    if-le v10, v11, :cond_f

    move v8, v6

    move v7, v9

    goto :goto_a

    :cond_f
    if-ne v9, v7, :cond_10

    if-eq v8, v3, :cond_10

    move v8, v3

    :cond_10
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 31
    :cond_11
    iget-object v1, p0, Lu4/n;->k:Lu4/g;

    .line 32
    iget-object v1, v1, Lu4/g;->h:Lp4/t0;

    .line 33
    iget v5, v1, Lp4/t0;->h:I

    .line 34
    iput v3, p0, Lu4/n;->S:I

    .line 35
    new-array v3, v0, [I

    iput-object v3, p0, Lu4/n;->R:[I

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_12

    .line 36
    iget-object v6, p0, Lu4/n;->R:[I

    aput v3, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 37
    :cond_12
    new-array v3, v0, [Lp4/t0;

    move v6, v2

    :goto_c
    if-ge v6, v0, :cond_19

    .line 38
    iget-object v10, p0, Lu4/n;->C:[Lu4/n$d;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Lp4/l0;->s()Ln3/s0;

    move-result-object v10

    invoke-static {v10}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v6, v8, :cond_16

    .line 39
    new-array v11, v5, [Ln3/s0;

    move v12, v2

    :goto_d
    if-ge v12, v5, :cond_15

    .line 40
    iget-object v13, v1, Lp4/t0;->k:[Ln3/s0;

    aget-object v13, v13, v12

    if-ne v7, v4, :cond_13

    .line 41
    iget-object v14, p0, Lu4/n;->m:Ln3/s0;

    if-eqz v14, :cond_13

    .line 42
    invoke-virtual {v13, v14}, Ln3/s0;->g(Ln3/s0;)Ln3/s0;

    move-result-object v13

    :cond_13
    if-ne v5, v4, :cond_14

    .line 43
    invoke-virtual {v10, v13}, Ln3/s0;->g(Ln3/s0;)Ln3/s0;

    move-result-object v13

    goto :goto_e

    .line 44
    :cond_14
    invoke-static {v13, v10, v4}, Lu4/n;->y(Ln3/s0;Ln3/s0;Z)Ln3/s0;

    move-result-object v13

    :goto_e
    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 45
    :cond_15
    new-instance v10, Lp4/t0;

    iget-object v12, p0, Lu4/n;->h:Ljava/lang/String;

    invoke-direct {v10, v12, v11}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    aput-object v10, v3, v6

    .line 46
    iput v6, p0, Lu4/n;->S:I

    goto :goto_11

    :cond_16
    if-ne v7, v9, :cond_17

    .line 47
    iget-object v11, v10, Ln3/s0;->s:Ljava/lang/String;

    invoke-static {v11}, Lm5/s;->k(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 48
    iget-object v11, p0, Lu4/n;->m:Ln3/s0;

    goto :goto_f

    :cond_17
    const/4 v11, 0x0

    .line 49
    :goto_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lu4/n;->h:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":muxed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v6, v8, :cond_18

    move v13, v6

    goto :goto_10

    :cond_18
    add-int/lit8 v13, v6, -0x1

    :goto_10
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 50
    new-instance v13, Lp4/t0;

    new-array v14, v4, [Ln3/s0;

    .line 51
    invoke-static {v11, v10, v2}, Lu4/n;->y(Ln3/s0;Ln3/s0;Z)Ln3/s0;

    move-result-object v10

    aput-object v10, v14, v2

    invoke-direct {v13, v12, v14}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    aput-object v13, v3, v6

    :goto_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 52
    :cond_19
    invoke-virtual {p0, v3}, Lu4/n;->x([Lp4/t0;)Lp4/u0;

    move-result-object v0

    iput-object v0, p0, Lu4/n;->P:Lp4/u0;

    .line 53
    iget-object v0, p0, Lu4/n;->Q:Ljava/util/Set;

    if-nez v0, :cond_1a

    move v2, v4

    :cond_1a
    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lu4/n;->Q:Ljava/util/Set;

    .line 55
    iput-boolean v4, p0, Lu4/n;->K:Z

    .line 56
    iget-object v0, p0, Lu4/n;->j:Lu4/n$b;

    check-cast v0, Lu4/l;

    invoke-virtual {v0}, Lu4/l;->p()V

    :cond_1b
    :goto_12
    return-void
.end method

.method public final E()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->b()V

    .line 2
    iget-object v0, p0, Lu4/n;->k:Lu4/g;

    .line 3
    iget-object v1, v0, Lu4/g;->n:Lp4/b;

    if-nez v1, :cond_1

    .line 4
    iget-object v1, v0, Lu4/g;->o:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lu4/g;->s:Z

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, v0, Lu4/g;->g:Lv4/j;

    invoke-interface {v0, v1}, Lv4/j;->g(Landroid/net/Uri;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    throw v1
.end method

.method public final varargs F([Lp4/t0;[I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lu4/n;->x([Lp4/t0;)Lp4/u0;

    move-result-object p1

    iput-object p1, p0, Lu4/n;->P:Lp4/u0;

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lu4/n;->Q:Ljava/util/Set;

    .line 3
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    aget v2, p2, v1

    .line 4
    iget-object v3, p0, Lu4/n;->Q:Ljava/util/Set;

    iget-object v4, p0, Lu4/n;->P:Lp4/u0;

    invoke-virtual {v4, v2}, Lp4/u0;->b(I)Lp4/t0;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lu4/n;->S:I

    .line 6
    iget-object p1, p0, Lu4/n;->y:Landroid/os/Handler;

    iget-object p2, p0, Lu4/n;->j:Lu4/n$b;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ly0/y;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Ly0/y;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lu4/n;->K:Z

    return-void
.end method

.method public final G()V
    .locals 6

    .line 1
    iget-object v0, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    iget-boolean v5, p0, Lu4/n;->Y:Z

    invoke-virtual {v4, v5}, Lp4/l0;->C(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v2, p0, Lu4/n;->Y:Z

    return-void
.end method

.method public final H(JZ)Z
    .locals 4

    .line 1
    iput-wide p1, p0, Lu4/n;->W:J

    .line 2
    invoke-virtual {p0}, Lu4/n;->C()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iput-wide p1, p0, Lu4/n;->X:J

    return v1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lu4/n;->J:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    .line 5
    iget-object p3, p0, Lu4/n;->C:[Lu4/n$d;

    array-length p3, p3

    move v0, v2

    :goto_0
    if-ge v0, p3, :cond_3

    .line 6
    iget-object v3, p0, Lu4/n;->C:[Lu4/n$d;

    aget-object v3, v3, v0

    .line 7
    invoke-virtual {v3, p1, p2, v2}, Lp4/l0;->D(JZ)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    iget-object v3, p0, Lu4/n;->V:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lu4/n;->T:Z

    if-nez v3, :cond_2

    :cond_1
    move p3, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move p3, v1

    :goto_1
    if-eqz p3, :cond_4

    return v2

    .line 9
    :cond_4
    iput-wide p1, p0, Lu4/n;->X:J

    .line 10
    iput-boolean v2, p0, Lu4/n;->a0:Z

    .line 11
    iget-object p1, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 12
    iget-object p1, p0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {p1}, Ll5/d0;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iget-boolean p1, p0, Lu4/n;->J:Z

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lu4/n;->C:[Lu4/n$d;

    array-length p2, p1

    :goto_2
    if-ge v2, p2, :cond_5

    aget-object p3, p1, v2

    .line 15
    invoke-virtual {p3}, Lp4/l0;->j()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 16
    :cond_5
    iget-object p1, p0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {p1}, Ll5/d0;->a()V

    goto :goto_3

    .line 17
    :cond_6
    iget-object p1, p0, Lu4/n;->q:Ll5/d0;

    const/4 p2, 0x0

    .line 18
    iput-object p2, p1, Ll5/d0;->c:Ljava/io/IOException;

    .line 19
    invoke-virtual {p0}, Lu4/n;->G()V

    :goto_3
    return v1
.end method

.method public final I(J)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lu4/n;->c0:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput-wide p1, p0, Lu4/n;->c0:J

    .line 3
    iget-object v0, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3, p1, p2}, Lp4/l0;->E(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lu4/n;->b0:Z

    .line 2
    iget-object v0, p0, Lu4/n;->y:Landroid/os/Handler;

    iget-object v1, p0, Lu4/n;->x:Landroidx/activity/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu4/n;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lu4/n;->X:J

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lu4/n;->a0:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lu4/n;->A()Lu4/j;

    move-result-object v0

    iget-wide v0, v0, Lr4/e;->h:J

    :goto_0
    return-wide v0
.end method

.method public final e()J
    .locals 7

    .line 1
    iget-boolean v0, p0, Lu4/n;->a0:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lu4/n;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lu4/n;->X:J

    return-wide v0

    .line 4
    :cond_1
    iget-wide v0, p0, Lu4/n;->W:J

    .line 5
    invoke-virtual {p0}, Lu4/n;->A()Lu4/j;

    move-result-object v2

    .line 6
    iget-boolean v3, v2, Lu4/j;->H:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu4/j;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 8
    iget-wide v2, v2, Lr4/e;->h:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 9
    :cond_4
    iget-boolean v2, p0, Lu4/n;->J:Z

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 11
    invoke-virtual {v5}, Lp4/l0;->o()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public final f(J)Z
    .locals 58

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lu4/n;->a0:Z

    const/4 v10, 0x0

    if-nez v1, :cond_41

    iget-object v1, v0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v1}, Ll5/d0;->d()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, v0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v1}, Ll5/d0;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2f

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lu4/n;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-wide v2, v0, Lu4/n;->X:J

    .line 5
    iget-object v4, v0, Lu4/n;->C:[Lu4/n$d;

    array-length v5, v4

    move v6, v10

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 6
    iget-wide v8, v0, Lu4/n;->X:J

    .line 7
    iput-wide v8, v7, Lp4/l0;->t:J

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, v0, Lu4/n;->v:Ljava/util/List;

    .line 9
    invoke-virtual/range {p0 .. p0}, Lu4/n;->A()Lu4/j;

    move-result-object v2

    .line 10
    iget-boolean v3, v2, Lu4/j;->H:Z

    if-eqz v3, :cond_2

    .line 11
    iget-wide v2, v2, Lr4/e;->h:J

    goto :goto_1

    .line 12
    :cond_2
    iget-wide v3, v0, Lu4/n;->W:J

    iget-wide v5, v2, Lr4/e;->g:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_3
    :goto_1
    move-object v8, v1

    move-wide v14, v2

    .line 13
    iget-object v1, v0, Lu4/n;->t:Lu4/g$b;

    const/4 v13, 0x0

    .line 14
    iput-object v13, v1, Lu4/g$b;->a:Lr4/e;

    .line 15
    iput-boolean v10, v1, Lu4/g$b;->b:Z

    .line 16
    iput-object v13, v1, Lu4/g$b;->c:Landroid/net/Uri;

    .line 17
    iget-object v12, v0, Lu4/n;->k:Lu4/g;

    iget-boolean v1, v0, Lu4/n;->K:Z

    if-nez v1, :cond_5

    .line 18
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v19, v10

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v19, 0x1

    :goto_3
    iget-object v9, v0, Lu4/n;->t:Lu4/g$b;

    .line 19
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v6, v13

    goto :goto_4

    :cond_6
    invoke-static {v8}, Lg0/n;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu4/j;

    move-object v6, v1

    :goto_4
    if-nez v6, :cond_7

    const/4 v4, -0x1

    goto :goto_5

    .line 21
    :cond_7
    iget-object v1, v12, Lu4/g;->h:Lp4/t0;

    iget-object v2, v6, Lr4/e;->d:Ln3/s0;

    invoke-virtual {v1, v2}, Lp4/t0;->b(Ln3/s0;)I

    move-result v1

    move v4, v1

    :goto_5
    sub-long v1, v14, p1

    .line 22
    iget-wide v10, v12, Lu4/g;->r:J

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v10, v8

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_9

    sub-long v10, v10, p1

    goto :goto_7

    :cond_9
    move-wide v10, v8

    :goto_7
    if-eqz v6, :cond_a

    .line 23
    iget-boolean v3, v12, Lu4/g;->p:Z

    if-nez v3, :cond_a

    move-wide/from16 v21, v14

    .line 24
    iget-wide v13, v6, Lr4/e;->h:J

    iget-wide v7, v6, Lr4/e;->g:J

    sub-long/2addr v13, v7

    sub-long/2addr v1, v13

    const-wide/16 v7, 0x0

    .line 25
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide v24, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v10, v24

    if-eqz v3, :cond_b

    sub-long/2addr v10, v13

    .line 26
    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    move-wide v10, v7

    move-wide/from16 v13, v21

    move-wide v7, v1

    goto :goto_8

    :cond_a
    move-wide/from16 v24, v8

    move-wide/from16 v21, v14

    :cond_b
    move-wide v7, v1

    move-wide/from16 v13, v21

    .line 27
    :goto_8
    invoke-virtual {v12, v6, v13, v14}, Lu4/g;->a(Lu4/j;J)[Lr4/n;

    move-result-object v9

    .line 28
    iget-object v1, v12, Lu4/g;->q:Lj5/l;

    move-wide/from16 v2, p1

    move v0, v4

    move-wide v4, v7

    move-object v8, v6

    move-wide v6, v10

    move-object/from16 p1, v8

    move-wide/from16 v10, v24

    move-object/from16 v8, v17

    move-object/from16 v10, v18

    invoke-interface/range {v1 .. v9}, Lj5/l;->g(JJJLjava/util/List;[Lr4/n;)V

    .line 29
    iget-object v1, v12, Lu4/g;->q:Lj5/l;

    invoke-interface {v1}, Lj5/l;->k()I

    move-result v4

    if-eq v0, v4, :cond_c

    const/4 v1, 0x1

    goto :goto_9

    :cond_c
    const/4 v1, 0x0

    .line 30
    :goto_9
    iget-object v2, v12, Lu4/g;->e:[Landroid/net/Uri;

    aget-object v2, v2, v4

    .line 31
    iget-object v3, v12, Lu4/g;->g:Lv4/j;

    invoke-interface {v3, v2}, Lv4/j;->e(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 32
    iput-object v2, v10, Lu4/g$b;->c:Landroid/net/Uri;

    .line 33
    iget-boolean v0, v12, Lu4/g;->s:Z

    iget-object v1, v12, Lu4/g;->o:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v12, Lu4/g;->s:Z

    .line 34
    iput-object v2, v12, Lu4/g;->o:Landroid/net/Uri;

    :goto_a
    move-object/from16 v0, p0

    goto/16 :goto_2c

    .line 35
    :cond_d
    iget-object v3, v12, Lu4/g;->g:Lv4/j;

    const/4 v5, 0x1

    .line 36
    invoke-interface {v3, v2, v5}, Lv4/j;->j(Landroid/net/Uri;Z)Lv4/e;

    move-result-object v3

    .line 37
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-boolean v6, v3, Lv4/g;->c:Z

    iput-boolean v6, v12, Lu4/g;->p:Z

    .line 39
    iget-boolean v6, v3, Lv4/e;->o:Z

    if-eqz v6, :cond_e

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_b

    .line 40
    :cond_e
    iget-wide v6, v3, Lv4/e;->h:J

    iget-wide v8, v3, Lv4/e;->u:J

    add-long/2addr v6, v8

    .line 41
    iget-object v8, v12, Lu4/g;->g:Lv4/j;

    invoke-interface {v8}, Lv4/j;->o()J

    move-result-wide v8

    sub-long v8, v6, v8

    :goto_b
    iput-wide v8, v12, Lu4/g;->r:J

    .line 42
    iget-wide v6, v3, Lv4/e;->h:J

    iget-object v8, v12, Lu4/g;->g:Lv4/j;

    invoke-interface {v8}, Lv4/j;->o()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v11, v12

    move-object v8, v12

    move-object/from16 v12, p1

    move-wide v14, v13

    const/4 v9, 0x0

    move v13, v1

    move-wide/from16 v21, v14

    move-object v14, v3

    move-wide v15, v6

    move-wide/from16 v17, v21

    .line 43
    invoke-virtual/range {v11 .. v18}, Lu4/g;->c(Lu4/j;ZLv4/e;JJ)Landroid/util/Pair;

    move-result-object v11

    .line 44
    iget-object v12, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 45
    iget-object v11, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 46
    iget-wide v14, v3, Lv4/e;->k:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_10

    move-object/from16 v15, p1

    if-eqz v15, :cond_f

    if-eqz v1, :cond_f

    .line 47
    iget-object v1, v8, Lu4/g;->e:[Landroid/net/Uri;

    aget-object v2, v1, v0

    .line 48
    iget-object v1, v8, Lu4/g;->g:Lv4/j;

    .line 49
    invoke-interface {v1, v2, v5}, Lv4/j;->j(Landroid/net/Uri;Z)Lv4/e;

    move-result-object v3

    .line 50
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-wide v6, v3, Lv4/e;->h:J

    iget-object v1, v8, Lu4/g;->g:Lv4/j;

    invoke-interface {v1}, Lv4/j;->o()J

    move-result-wide v11

    sub-long/2addr v6, v11

    const/4 v13, 0x0

    move-object v11, v8

    move-object v12, v15

    move-object v14, v3

    move-object v1, v15

    move-wide v15, v6

    move-wide/from16 v17, v21

    .line 52
    invoke-virtual/range {v11 .. v18}, Lu4/g;->c(Lu4/j;ZLv4/e;JJ)Landroid/util/Pair;

    move-result-object v4

    .line 53
    iget-object v11, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 54
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v11, v4

    move v4, v0

    goto :goto_c

    :cond_f
    move-object v1, v15

    goto :goto_c

    :cond_10
    move-object/from16 v1, p1

    .line 55
    :goto_c
    iget-wide v14, v3, Lv4/e;->k:J

    cmp-long v0, v12, v14

    if-gez v0, :cond_11

    .line 56
    new-instance v0, Lp4/b;

    invoke-direct {v0}, Lp4/b;-><init>()V

    iput-object v0, v8, Lu4/g;->n:Lp4/b;

    goto/16 :goto_a

    :cond_11
    sub-long v14, v12, v14

    long-to-int v0, v14

    .line 57
    iget-object v14, v3, Lv4/e;->r:Lu6/v;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const-wide/16 v15, 0x1

    if-ne v0, v14, :cond_13

    const/4 v14, -0x1

    if-eq v11, v14, :cond_12

    goto :goto_d

    :cond_12
    const/4 v11, 0x0

    .line 58
    :goto_d
    iget-object v0, v3, Lv4/e;->s:Lu6/v;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_17

    .line 59
    new-instance v0, Lu4/g$e;

    iget-object v9, v3, Lv4/e;->s:Lu6/v;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv4/e$d;

    invoke-direct {v0, v9, v12, v13, v11}, Lu4/g$e;-><init>(Lv4/e$d;JI)V

    goto :goto_e

    :cond_13
    const/4 v14, -0x1

    .line 60
    iget-object v9, v3, Lv4/e;->r:Lu6/v;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv4/e$c;

    if-ne v11, v14, :cond_14

    .line 61
    new-instance v0, Lu4/g$e;

    invoke-direct {v0, v9, v12, v13, v14}, Lu4/g$e;-><init>(Lv4/e$d;JI)V

    :goto_e
    move-object v13, v0

    goto :goto_f

    .line 62
    :cond_14
    iget-object v14, v9, Lv4/e$c;->t:Lu6/v;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ge v11, v14, :cond_15

    .line 63
    new-instance v0, Lu4/g$e;

    iget-object v9, v9, Lv4/e$c;->t:Lu6/v;

    .line 64
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv4/e$d;

    invoke-direct {v0, v9, v12, v13, v11}, Lu4/g$e;-><init>(Lv4/e$d;JI)V

    goto :goto_e

    :cond_15
    add-int/2addr v0, v5

    .line 65
    iget-object v9, v3, Lv4/e;->r:Lu6/v;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v0, v9, :cond_16

    .line 66
    new-instance v9, Lu4/g$e;

    iget-object v11, v3, Lv4/e;->r:Lu6/v;

    .line 67
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/e$d;

    add-long/2addr v12, v15

    const/4 v11, -0x1

    invoke-direct {v9, v0, v12, v13, v11}, Lu4/g$e;-><init>(Lv4/e$d;JI)V

    move-object v13, v9

    goto :goto_f

    .line 68
    :cond_16
    iget-object v0, v3, Lv4/e;->s:Lu6/v;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 69
    new-instance v0, Lu4/g$e;

    iget-object v9, v3, Lv4/e;->s:Lu6/v;

    const/4 v11, 0x0

    .line 70
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lv4/e$d;

    add-long/2addr v12, v15

    invoke-direct {v0, v9, v12, v13, v11}, Lu4/g$e;-><init>(Lv4/e$d;JI)V

    goto :goto_e

    :cond_17
    const/4 v13, 0x0

    :goto_f
    if-nez v13, :cond_1b

    .line 71
    iget-boolean v0, v3, Lv4/e;->o:Z

    if-nez v0, :cond_18

    .line 72
    iput-object v2, v10, Lu4/g$b;->c:Landroid/net/Uri;

    .line 73
    iget-boolean v0, v8, Lu4/g;->s:Z

    iget-object v1, v8, Lu4/g;->o:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, v8, Lu4/g;->s:Z

    .line 74
    iput-object v2, v8, Lu4/g;->o:Landroid/net/Uri;

    goto/16 :goto_a

    :cond_18
    if-nez v19, :cond_1a

    .line 75
    iget-object v0, v3, Lv4/e;->r:Lu6/v;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_10

    .line 76
    :cond_19
    new-instance v13, Lu4/g$e;

    iget-object v0, v3, Lv4/e;->r:Lu6/v;

    .line 77
    invoke-static {v0}, Lg0/n;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv4/e$d;

    iget-wide v11, v3, Lv4/e;->k:J

    iget-object v9, v3, Lv4/e;->r:Lu6/v;

    .line 78
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move-wide/from16 p1, v6

    int-to-long v5, v9

    add-long/2addr v11, v5

    sub-long/2addr v11, v15

    const/4 v5, -0x1

    invoke-direct {v13, v0, v11, v12, v5}, Lu4/g$e;-><init>(Lv4/e$d;JI)V

    goto :goto_11

    :cond_1a
    :goto_10
    move v0, v5

    .line 79
    iput-boolean v0, v10, Lu4/g$b;->b:Z

    goto/16 :goto_a

    :cond_1b
    move-wide/from16 p1, v6

    :goto_11
    const/4 v0, 0x0

    .line 80
    iput-boolean v0, v8, Lu4/g;->s:Z

    const/4 v0, 0x0

    .line 81
    iput-object v0, v8, Lu4/g;->o:Landroid/net/Uri;

    .line 82
    iget-object v5, v13, Lu4/g$e;->a:Lv4/e$d;

    iget-object v5, v5, Lv4/e$d;->i:Lv4/e$c;

    if-eqz v5, :cond_1d

    .line 83
    iget-object v5, v5, Lv4/e$d;->n:Ljava/lang/String;

    if-nez v5, :cond_1c

    goto :goto_12

    .line 84
    :cond_1c
    iget-object v6, v3, Lv4/g;->a:Ljava/lang/String;

    invoke-static {v6, v5}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_13

    :cond_1d
    :goto_12
    move-object v5, v0

    .line 85
    :goto_13
    invoke-virtual {v8, v5, v4}, Lu4/g;->d(Landroid/net/Uri;I)Lr4/e;

    move-result-object v6

    iput-object v6, v10, Lu4/g$b;->a:Lr4/e;

    if-eqz v6, :cond_1e

    :goto_14
    goto/16 :goto_a

    .line 86
    :cond_1e
    iget-object v6, v13, Lu4/g$e;->a:Lv4/e$d;

    if-eqz v6, :cond_20

    .line 87
    iget-object v6, v6, Lv4/e$d;->n:Ljava/lang/String;

    if-nez v6, :cond_1f

    goto :goto_15

    .line 88
    :cond_1f
    iget-object v7, v3, Lv4/g;->a:Ljava/lang/String;

    invoke-static {v7, v6}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_16

    :cond_20
    :goto_15
    move-object v6, v0

    .line 89
    :goto_16
    invoke-virtual {v8, v6, v4}, Lu4/g;->d(Landroid/net/Uri;I)Lr4/e;

    move-result-object v7

    iput-object v7, v10, Lu4/g$b;->a:Lr4/e;

    if-eqz v7, :cond_21

    goto :goto_14

    .line 90
    :cond_21
    sget-object v7, Lu4/j;->L:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_22

    goto :goto_17

    .line 91
    :cond_22
    iget-object v7, v1, Lu4/j;->m:Landroid/net/Uri;

    invoke-virtual {v2, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    iget-boolean v7, v1, Lu4/j;->H:Z

    if-eqz v7, :cond_23

    :goto_17
    move-wide/from16 v17, p1

    goto :goto_1a

    .line 92
    :cond_23
    iget-object v7, v13, Lu4/g$e;->a:Lv4/e$d;

    iget-wide v11, v7, Lv4/e$d;->l:J

    move-wide/from16 v15, p1

    add-long/2addr v11, v15

    .line 93
    instance-of v9, v7, Lv4/e$a;

    if-eqz v9, :cond_26

    .line 94
    check-cast v7, Lv4/e$a;

    iget-boolean v7, v7, Lv4/e$a;->s:Z

    if-nez v7, :cond_25

    iget v7, v13, Lu4/g$e;->c:I

    if-nez v7, :cond_24

    iget-boolean v7, v3, Lv4/g;->c:Z

    if-eqz v7, :cond_24

    goto :goto_18

    :cond_24
    const/4 v7, 0x0

    goto :goto_19

    :cond_25
    :goto_18
    const/4 v7, 0x1

    goto :goto_19

    .line 95
    :cond_26
    iget-boolean v7, v3, Lv4/g;->c:Z

    :goto_19
    move-wide/from16 v17, v15

    if-eqz v7, :cond_28

    .line 96
    iget-wide v14, v1, Lr4/e;->h:J

    cmp-long v7, v11, v14

    if-gez v7, :cond_27

    goto :goto_1b

    :cond_27
    :goto_1a
    const/16 v56, 0x0

    goto :goto_1c

    :cond_28
    :goto_1b
    const/16 v56, 0x1

    :goto_1c
    if-eqz v56, :cond_29

    .line 97
    iget-boolean v7, v13, Lu4/g$e;->d:Z

    if-eqz v7, :cond_29

    goto :goto_14

    .line 98
    :cond_29
    iget-object v7, v8, Lu4/g;->a:Lu4/i;

    iget-object v9, v8, Lu4/g;->b:Ll5/j;

    iget-object v11, v8, Lu4/g;->f:[Ln3/s0;

    aget-object v31, v11, v4

    iget-object v4, v8, Lu4/g;->i:Ljava/util/List;

    iget-object v11, v8, Lu4/g;->q:Lj5/l;

    .line 99
    invoke-interface {v11}, Lj5/l;->n()I

    move-result v38

    iget-object v11, v8, Lu4/g;->q:Lj5/l;

    .line 100
    invoke-interface {v11}, Lj5/l;->q()Ljava/lang/Object;

    move-result-object v39

    iget-boolean v11, v8, Lu4/g;->l:Z

    iget-object v12, v8, Lu4/g;->d:Le2/e;

    iget-object v14, v8, Lu4/g;->j:Lu4/f;

    .line 101
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_2a

    move-object v6, v0

    goto :goto_1d

    .line 102
    :cond_2a
    iget-object v14, v14, Lu4/f;->a:Lu4/e;

    invoke-virtual {v14, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 103
    :goto_1d
    iget-object v14, v8, Lu4/g;->j:Lu4/f;

    .line 104
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_2b

    move-object v5, v0

    goto :goto_1e

    .line 105
    :cond_2b
    iget-object v14, v14, Lu4/f;->a:Lu4/e;

    invoke-virtual {v14, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 106
    :goto_1e
    iget-object v8, v8, Lu4/g;->k:Lo3/v0;

    .line 107
    iget-object v15, v13, Lu4/g$e;->a:Lv4/e$d;

    const/16 v44, 0x1

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v46

    .line 109
    iget-object v14, v3, Lv4/g;->a:Ljava/lang/String;

    iget-object v0, v15, Lv4/e$d;->h:Ljava/lang/String;

    .line 110
    invoke-static {v14, v0}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v19, v10

    move/from16 v21, v11

    iget-wide v10, v15, Lv4/e$d;->p:J

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 111
    iget-wide v7, v15, Lv4/e$d;->q:J

    .line 112
    iget-boolean v14, v13, Lu4/g$e;->d:Z

    if-eqz v14, :cond_2c

    const/16 v14, 0x8

    move/from16 v52, v14

    goto :goto_1f

    :cond_2c
    const/16 v52, 0x0

    :goto_1f
    const-string v14, "The uri must be set."

    .line 113
    invoke-static {v0, v14}, Lm5/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v30, Ll5/m;

    const-wide/16 v42, 0x0

    const/16 v45, 0x0

    const/16 v51, 0x0

    const/16 v53, 0x0

    move-object/from16 v40, v30

    move-object/from16 v41, v0

    move-wide/from16 v47, v10

    move-wide/from16 v49, v7

    .line 115
    invoke-direct/range {v40 .. v53}, Ll5/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    if-eqz v6, :cond_2d

    const/16 v32, 0x1

    goto :goto_20

    :cond_2d
    const/16 v32, 0x0

    :goto_20
    if-eqz v32, :cond_2e

    .line 116
    iget-object v0, v15, Lv4/e$d;->o:Ljava/lang/String;

    .line 117
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Lu4/j;->f(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_21

    :cond_2e
    const/4 v0, 0x0

    :goto_21
    if-eqz v6, :cond_2f

    .line 119
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    new-instance v7, Lu4/a;

    invoke-direct {v7, v9, v6, v0}, Lu4/a;-><init>(Ll5/j;[B[B)V

    move-object/from16 v29, v7

    goto :goto_22

    :cond_2f
    move-object/from16 v29, v9

    .line 121
    :goto_22
    iget-object v0, v15, Lv4/e$d;->i:Lv4/e$c;

    if-eqz v0, :cond_33

    if-eqz v5, :cond_30

    const/4 v11, 0x1

    goto :goto_23

    :cond_30
    const/4 v11, 0x0

    :goto_23
    if-eqz v11, :cond_31

    .line 122
    iget-object v6, v0, Lv4/e$d;->o:Ljava/lang/String;

    .line 123
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {v6}, Lu4/j;->f(Ljava/lang/String;)[B

    move-result-object v6

    goto :goto_24

    :cond_31
    const/4 v6, 0x0

    .line 125
    :goto_24
    iget-object v7, v3, Lv4/g;->a:Ljava/lang/String;

    iget-object v8, v0, Lv4/e$d;->h:Ljava/lang/String;

    invoke-static {v7, v8}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v41

    .line 126
    new-instance v7, Ll5/m;

    move/from16 p2, v11

    iget-wide v10, v0, Lv4/e$d;->p:J

    move-object/from16 v26, v12

    move-object v8, v13

    iget-wide v12, v0, Lv4/e$d;->q:J

    move-object/from16 v40, v7

    move-wide/from16 v42, v10

    move-wide/from16 v44, v12

    invoke-direct/range {v40 .. v45}, Ll5/m;-><init>(Landroid/net/Uri;JJ)V

    if-eqz v5, :cond_32

    .line 127
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    new-instance v0, Lu4/a;

    invoke-direct {v0, v9, v5, v6}, Lu4/a;-><init>(Ll5/j;[B[B)V

    move-object v13, v0

    goto :goto_25

    :cond_32
    move-object v13, v9

    :goto_25
    move/from16 v35, p2

    move-object/from16 v33, v13

    goto :goto_26

    :cond_33
    move-object/from16 v26, v12

    move-object v8, v13

    const/4 v7, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    .line 129
    :goto_26
    iget-wide v5, v15, Lv4/e$d;->l:J

    add-long v40, v17, v5

    .line 130
    iget-wide v5, v15, Lv4/e$d;->j:J

    add-long v42, v40, v5

    .line 131
    iget v0, v3, Lv4/e;->j:I

    iget v3, v15, Lv4/e$d;->k:I

    add-int/2addr v0, v3

    if-eqz v1, :cond_38

    .line 132
    iget-object v3, v1, Lu4/j;->q:Ll5/m;

    if-eq v7, v3, :cond_35

    if-eqz v7, :cond_34

    if-eqz v3, :cond_34

    iget-object v5, v7, Ll5/m;->a:Landroid/net/Uri;

    iget-object v3, v3, Ll5/m;->a:Landroid/net/Uri;

    .line 133
    invoke-virtual {v5, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-wide v5, v7, Ll5/m;->f:J

    iget-object v3, v1, Lu4/j;->q:Ll5/m;

    iget-wide v9, v3, Ll5/m;->f:J

    cmp-long v3, v5, v9

    if-nez v3, :cond_34

    goto :goto_27

    :cond_34
    const/4 v11, 0x0

    goto :goto_28

    :cond_35
    :goto_27
    const/4 v11, 0x1

    .line 134
    :goto_28
    iget-object v3, v1, Lu4/j;->m:Landroid/net/Uri;

    .line 135
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-boolean v3, v1, Lu4/j;->H:Z

    if-eqz v3, :cond_36

    const/4 v3, 0x1

    goto :goto_29

    :cond_36
    const/4 v3, 0x0

    .line 136
    :goto_29
    iget-object v5, v1, Lu4/j;->y:Lk4/g;

    .line 137
    iget-object v6, v1, Lu4/j;->z:Lm5/w;

    if-eqz v11, :cond_37

    if-eqz v3, :cond_37

    .line 138
    iget-boolean v3, v1, Lu4/j;->J:Z

    if-nez v3, :cond_37

    iget v3, v1, Lu4/j;->l:I

    if-ne v3, v0, :cond_37

    .line 139
    iget-object v1, v1, Lu4/j;->C:Lu4/k;

    move-object v13, v1

    goto :goto_2a

    :cond_37
    const/4 v13, 0x0

    :goto_2a
    move-object/from16 v54, v5

    move-object/from16 v55, v6

    move-object/from16 v53, v13

    goto :goto_2b

    .line 140
    :cond_38
    new-instance v1, Lk4/g;

    invoke-direct {v1}, Lk4/g;-><init>()V

    .line 141
    new-instance v3, Lm5/w;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Lm5/w;-><init>(I)V

    move-object/from16 v54, v1

    move-object/from16 v55, v3

    const/16 v53, 0x0

    .line 142
    :goto_2b
    new-instance v1, Lu4/j;

    iget-wide v5, v8, Lu4/g$e;->b:J

    iget v3, v8, Lu4/g$e;->c:I

    iget-boolean v8, v8, Lu4/g$e;->d:Z

    const/4 v9, 0x1

    xor-int/lit8 v47, v8, 0x1

    iget-boolean v8, v15, Lv4/e$d;->r:Z

    move-object/from16 v9, v26

    .line 143
    iget-object v10, v9, Le2/e;->a:Ljava/lang/Object;

    check-cast v10, Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm5/d0;

    if-nez v10, :cond_39

    .line 144
    new-instance v10, Lm5/d0;

    const-wide v11, 0x7ffffffffffffffeL

    invoke-direct {v10, v11, v12}, Lm5/d0;-><init>(J)V

    .line 145
    iget-object v9, v9, Le2/e;->a:Ljava/lang/Object;

    check-cast v9, Landroid/util/SparseArray;

    invoke-virtual {v9, v0, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_39
    move-object/from16 v51, v10

    .line 146
    iget-object v9, v15, Lv4/e$d;->m:Lr3/d;

    move-object/from16 v52, v9

    move-object/from16 v27, v1

    move-object/from16 v28, v22

    move-object/from16 v34, v7

    move-object/from16 v36, v2

    move-object/from16 v37, v4

    move-wide/from16 v44, v5

    move/from16 v46, v3

    move/from16 v48, v0

    move/from16 v49, v8

    move/from16 v50, v21

    move-object/from16 v57, v23

    invoke-direct/range {v27 .. v57}, Lu4/j;-><init>(Lu4/i;Ll5/j;Ll5/m;Ln3/s0;ZLl5/j;Ll5/m;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLm5/d0;Lr3/d;Lu4/k;Lk4/g;Lm5/w;ZLo3/v0;)V

    move-object/from16 v0, v19

    .line 147
    iput-object v1, v0, Lu4/g$b;->a:Lr4/e;

    goto/16 :goto_a

    .line 148
    :goto_2c
    iget-object v1, v0, Lu4/n;->t:Lu4/g$b;

    iget-boolean v2, v1, Lu4/g$b;->b:Z

    .line 149
    iget-object v3, v1, Lu4/g$b;->a:Lr4/e;

    .line 150
    iget-object v1, v1, Lu4/g$b;->c:Landroid/net/Uri;

    if-eqz v2, :cond_3a

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 151
    iput-wide v4, v0, Lu4/n;->X:J

    const/4 v1, 0x1

    .line 152
    iput-boolean v1, v0, Lu4/n;->a0:Z

    return v1

    :cond_3a
    if-nez v3, :cond_3c

    if-eqz v1, :cond_3b

    .line 153
    iget-object v2, v0, Lu4/n;->j:Lu4/n$b;

    check-cast v2, Lu4/l;

    .line 154
    iget-object v2, v2, Lu4/l;->i:Lv4/j;

    invoke-interface {v2, v1}, Lv4/j;->i(Landroid/net/Uri;)V

    :cond_3b
    const/4 v1, 0x0

    return v1

    .line 155
    :cond_3c
    instance-of v1, v3, Lu4/j;

    if-eqz v1, :cond_40

    .line 156
    move-object v1, v3

    check-cast v1, Lu4/j;

    .line 157
    iput-object v1, v0, Lu4/n;->e0:Lu4/j;

    .line 158
    iget-object v2, v1, Lr4/e;->d:Ln3/s0;

    iput-object v2, v0, Lu4/n;->M:Ln3/s0;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 159
    iput-wide v4, v0, Lu4/n;->X:J

    .line 160
    iget-object v2, v0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v2, Lu6/v;->i:Lu6/v$b;

    const/4 v2, 0x4

    const-string v4, "initialCapacity"

    .line 162
    invoke-static {v2, v4}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v2, v2, [Ljava/lang/Object;

    .line 163
    iget-object v4, v0, Lu4/n;->C:[Lu4/n$d;

    array-length v5, v4

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_2d
    if-ge v11, v5, :cond_3e

    aget-object v7, v4, v11

    .line 164
    iget v8, v7, Lp4/l0;->q:I

    iget v7, v7, Lp4/l0;->p:I

    add-int/2addr v8, v7

    .line 165
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 166
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v6, 0x1

    .line 167
    array-length v9, v2

    if-ge v9, v8, :cond_3d

    .line 168
    array-length v9, v2

    .line 169
    invoke-static {v9, v8}, Lu6/t$b;->a(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 170
    :cond_3d
    aput-object v7, v2, v6

    add-int/lit8 v11, v11, 0x1

    move v6, v8

    goto :goto_2d

    .line 171
    :cond_3e
    invoke-static {v2, v6}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v2

    .line 172
    iput-object v0, v1, Lu4/j;->D:Lu4/n;

    .line 173
    iput-object v2, v1, Lu4/j;->I:Lu6/v;

    .line 174
    iget-object v2, v0, Lu4/n;->C:[Lu4/n$d;

    array-length v4, v2

    const/4 v10, 0x0

    :goto_2e
    if-ge v10, v4, :cond_40

    aget-object v5, v2, v10

    .line 175
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget v6, v1, Lu4/j;->k:I

    .line 177
    iput v6, v5, Lp4/l0;->C:I

    .line 178
    iget-boolean v6, v1, Lu4/j;->n:Z

    if-eqz v6, :cond_3f

    const/4 v6, 0x1

    .line 179
    iput-boolean v6, v5, Lp4/l0;->G:Z

    :cond_3f
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 180
    :cond_40
    iput-object v3, v0, Lu4/n;->B:Lr4/e;

    .line 181
    iget-object v1, v0, Lu4/n;->q:Ll5/d0;

    iget-object v2, v0, Lu4/n;->p:Ll5/c0;

    iget v4, v3, Lr4/e;->c:I

    .line 182
    invoke-interface {v2, v4}, Ll5/c0;->c(I)I

    move-result v2

    .line 183
    invoke-virtual {v1, v3, v0, v2}, Ll5/d0;->g(Ll5/d0$d;Ll5/d0$a;I)J

    move-result-wide v8

    .line 184
    iget-object v15, v0, Lu4/n;->r:Lp4/e0$a;

    new-instance v16, Lp4/r;

    iget-wide v5, v3, Lr4/e;->a:J

    iget-object v7, v3, Lr4/e;->b:Ll5/m;

    move-object/from16 v4, v16

    invoke-direct/range {v4 .. v9}, Lp4/r;-><init>(JLl5/m;J)V

    iget v1, v3, Lr4/e;->c:I

    iget v2, v0, Lu4/n;->i:I

    iget-object v4, v3, Lr4/e;->d:Ln3/s0;

    iget v5, v3, Lr4/e;->e:I

    iget-object v6, v3, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v7, v3, Lr4/e;->g:J

    iget-wide v9, v3, Lr4/e;->h:J

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    invoke-virtual/range {v15 .. v25}, Lp4/e0$a;->n(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    const/4 v1, 0x1

    return v1

    :cond_41
    :goto_2f
    move v1, v10

    return v1
.end method

.method public final g(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->c()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lu4/n;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lu4/n;->B:Lr4/e;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lu4/n;->k:Lu4/g;

    iget-object v1, p0, Lu4/n;->B:Lr4/e;

    iget-object v2, p0, Lu4/n;->v:Ljava/util/List;

    .line 6
    iget-object v3, v0, Lu4/g;->n:Lp4/b;

    if-eqz v3, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, v0, Lu4/g;->q:Lj5/l;

    invoke-interface {v0, p1, p2, v1, v2}, Lj5/l;->h(JLr4/e;Ljava/util/List;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {p1}, Ll5/d0;->a()V

    :cond_2
    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lu4/n;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    const/4 v1, 0x2

    if-lez v0, :cond_4

    .line 10
    iget-object v2, p0, Lu4/n;->k:Lu4/g;

    iget-object v3, p0, Lu4/n;->v:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    .line 11
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu4/j;

    invoke-virtual {v2, v3}, Lu4/g;->b(Lu4/j;)I

    move-result v2

    if-ne v2, v1, :cond_4

    move v0, v4

    goto :goto_1

    .line 12
    :cond_4
    iget-object v2, p0, Lu4/n;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 13
    invoke-virtual {p0, v0}, Lu4/n;->z(I)V

    .line 14
    :cond_5
    iget-object v0, p0, Lu4/n;->k:Lu4/g;

    iget-object v2, p0, Lu4/n;->v:Ljava/util/List;

    .line 15
    iget-object v3, v0, Lu4/g;->n:Lp4/b;

    if-nez v3, :cond_7

    iget-object v3, v0, Lu4/g;->q:Lj5/l;

    invoke-interface {v3}, Lj5/o;->length()I

    move-result v3

    if-ge v3, v1, :cond_6

    goto :goto_2

    .line 16
    :cond_6
    iget-object v0, v0, Lu4/g;->q:Lj5/l;

    invoke-interface {v0, p1, p2, v2}, Lj5/l;->j(JLjava/util/List;)I

    move-result p1

    goto :goto_3

    .line 17
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 18
    :goto_3
    iget-object p2, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_8

    .line 19
    invoke-virtual {p0, p1}, Lu4/n;->z(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final h(Ll5/d0$d;JJ)V
    .locals 14

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Lr4/e;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lu4/n;->B:Lr4/e;

    .line 3
    iget-object v2, v0, Lu4/n;->k:Lu4/g;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of v3, v1, Lu4/g$a;

    if-eqz v3, :cond_0

    .line 5
    move-object v3, v1

    check-cast v3, Lu4/g$a;

    .line 6
    iget-object v4, v3, Lr4/k;->j:[B

    .line 7
    iput-object v4, v2, Lu4/g;->m:[B

    .line 8
    iget-object v2, v2, Lu4/g;->j:Lu4/f;

    iget-object v4, v3, Lr4/e;->b:Ll5/m;

    iget-object v4, v4, Ll5/m;->a:Landroid/net/Uri;

    .line 9
    iget-object v3, v3, Lu4/g$a;->l:[B

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, v2, Lu4/f;->a:Lu4/e;

    .line 12
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v2, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 14
    :cond_0
    new-instance v4, Lp4/r;

    iget-wide v2, v1, Lr4/e;->a:J

    .line 15
    iget-object v2, v1, Lr4/e;->i:Ll5/i0;

    .line 16
    iget-object v3, v2, Ll5/i0;->c:Landroid/net/Uri;

    .line 17
    iget-object v2, v2, Ll5/i0;->d:Ljava/util/Map;

    .line 18
    invoke-direct {v4, v2}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 19
    iget-object v2, v0, Lu4/n;->p:Ll5/c0;

    invoke-interface {v2}, Ll5/c0;->d()V

    .line 20
    iget-object v3, v0, Lu4/n;->r:Lp4/e0$a;

    iget v5, v1, Lr4/e;->c:I

    iget v6, v0, Lu4/n;->i:I

    iget-object v7, v1, Lr4/e;->d:Ln3/s0;

    iget v8, v1, Lr4/e;->e:I

    iget-object v9, v1, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lr4/e;->g:J

    iget-wide v12, v1, Lr4/e;->h:J

    invoke-virtual/range {v3 .. v13}, Lp4/e0$a;->h(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    .line 21
    iget-boolean v1, v0, Lu4/n;->K:Z

    if-nez v1, :cond_1

    .line 22
    iget-wide v1, v0, Lu4/n;->W:J

    invoke-virtual {p0, v1, v2}, Lu4/n;->f(J)Z

    goto :goto_0

    .line 23
    :cond_1
    iget-object v1, v0, Lu4/n;->j:Lu4/n$b;

    check-cast v1, Lu4/l;

    invoke-virtual {v1, p0}, Lu4/l;->j(Lp4/n0;)V

    :goto_0
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lp4/l0;->B()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Ls3/u;)V
    .locals 0

    return-void
.end method

.method public final k(Ll5/d0$d;JJZ)V
    .locals 14

    move-object v0, p0

    .line 1
    move-object v1, p1

    check-cast v1, Lr4/e;

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lu4/n;->B:Lr4/e;

    .line 3
    new-instance v4, Lp4/r;

    iget-wide v2, v1, Lr4/e;->a:J

    .line 4
    iget-object v2, v1, Lr4/e;->i:Ll5/i0;

    .line 5
    iget-object v3, v2, Ll5/i0;->c:Landroid/net/Uri;

    .line 6
    iget-object v2, v2, Ll5/i0;->d:Ljava/util/Map;

    .line 7
    invoke-direct {v4, v2}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 8
    iget-object v2, v0, Lu4/n;->p:Ll5/c0;

    invoke-interface {v2}, Ll5/c0;->d()V

    .line 9
    iget-object v3, v0, Lu4/n;->r:Lp4/e0$a;

    iget v5, v1, Lr4/e;->c:I

    iget v6, v0, Lu4/n;->i:I

    iget-object v7, v1, Lr4/e;->d:Ln3/s0;

    iget v8, v1, Lr4/e;->e:I

    iget-object v9, v1, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v10, v1, Lr4/e;->g:J

    iget-wide v12, v1, Lr4/e;->h:J

    invoke-virtual/range {v3 .. v13}, Lp4/e0$a;->e(Lp4/r;IILn3/s0;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    .line 10
    invoke-virtual {p0}, Lu4/n;->C()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lu4/n;->L:I

    if-nez v1, :cond_1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lu4/n;->G()V

    .line 12
    :cond_1
    iget v1, v0, Lu4/n;->L:I

    if-lez v1, :cond_2

    .line 13
    iget-object v1, v0, Lu4/n;->j:Lu4/n$b;

    check-cast v1, Lu4/l;

    invoke-virtual {v1, p0}, Lu4/l;->j(Lp4/n0;)V

    :cond_2
    return-void
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v12, p6

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Lr4/e;

    .line 2
    instance-of v2, v1, Lu4/j;

    if-eqz v2, :cond_1

    .line 3
    move-object v3, v1

    check-cast v3, Lu4/j;

    .line 4
    iget-boolean v3, v3, Lu4/j;->K:Z

    if-nez v3, :cond_1

    .line 5
    instance-of v3, v12, Ll5/z;

    if-eqz v3, :cond_1

    .line 6
    move-object v3, v12

    check-cast v3, Ll5/z;

    iget v3, v3, Ll5/z;->k:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    .line 7
    :cond_0
    sget-object v1, Ll5/d0;->d:Ll5/d0$b;

    goto/16 :goto_5

    .line 8
    :cond_1
    iget-object v3, v1, Lr4/e;->i:Ll5/i0;

    .line 9
    iget-wide v3, v3, Ll5/i0;->b:J

    .line 10
    new-instance v5, Lp4/r;

    .line 11
    iget-object v6, v1, Lr4/e;->i:Ll5/i0;

    .line 12
    iget-object v7, v6, Ll5/i0;->c:Landroid/net/Uri;

    .line 13
    iget-object v6, v6, Ll5/i0;->d:Ljava/util/Map;

    .line 14
    invoke-direct {v5, v6}, Lp4/r;-><init>(Ljava/util/Map;)V

    .line 15
    iget-wide v6, v1, Lr4/e;->g:J

    .line 16
    invoke-static {v6, v7}, Lm5/g0;->X(J)J

    iget-wide v6, v1, Lr4/e;->h:J

    .line 17
    invoke-static {v6, v7}, Lm5/g0;->X(J)J

    .line 18
    new-instance v6, Ll5/c0$c;

    move/from16 v7, p7

    invoke-direct {v6, v12, v7}, Ll5/c0$c;-><init>(Ljava/io/IOException;I)V

    .line 19
    iget-object v7, v0, Lu4/n;->p:Ll5/c0;

    iget-object v8, v0, Lu4/n;->k:Lu4/g;

    .line 20
    iget-object v8, v8, Lu4/g;->q:Lj5/l;

    .line 21
    invoke-static {v8}, Lj5/r;->a(Lj5/l;)Ll5/c0$a;

    move-result-object v8

    .line 22
    invoke-interface {v7, v8, v6}, Ll5/c0;->a(Ll5/c0$a;Ll5/c0$c;)Ll5/c0$b;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    .line 23
    iget v9, v7, Ll5/c0$b;->a:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 24
    iget-object v9, v0, Lu4/n;->k:Lu4/g;

    iget-wide v10, v7, Ll5/c0$b;->b:J

    .line 25
    iget-object v7, v9, Lu4/g;->q:Lj5/l;

    iget-object v9, v9, Lu4/g;->h:Lp4/t0;

    iget-object v13, v1, Lr4/e;->d:Ln3/s0;

    .line 26
    invoke-virtual {v9, v13}, Lp4/t0;->b(Ln3/s0;)I

    move-result v9

    invoke-interface {v7, v9}, Lj5/o;->t(I)I

    move-result v9

    .line 27
    invoke-interface {v7, v9, v10, v11}, Lj5/l;->b(IJ)Z

    move-result v7

    move v14, v7

    goto :goto_0

    :cond_2
    move v14, v8

    :goto_0
    const/4 v7, 0x1

    if-eqz v14, :cond_6

    if-eqz v2, :cond_5

    const-wide/16 v9, 0x0

    cmp-long v2, v3, v9

    if-nez v2, :cond_5

    .line 28
    iget-object v2, v0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu4/j;

    if-ne v2, v1, :cond_3

    move v8, v7

    .line 29
    :cond_3
    invoke-static {v8}, Lm5/a;->e(Z)V

    .line 30
    iget-object v2, v0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31
    iget-wide v2, v0, Lu4/n;->W:J

    iput-wide v2, v0, Lu4/n;->X:J

    goto :goto_1

    .line 32
    :cond_4
    iget-object v2, v0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-static {v2}, Lg0/n;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu4/j;

    .line 33
    iput-boolean v7, v2, Lu4/j;->J:Z

    .line 34
    :cond_5
    :goto_1
    sget-object v2, Ll5/d0;->e:Ll5/d0$b;

    goto :goto_2

    .line 35
    :cond_6
    iget-object v2, v0, Lu4/n;->p:Ll5/c0;

    invoke-interface {v2, v6}, Ll5/c0;->b(Ll5/c0$c;)J

    move-result-wide v2

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v9

    if-eqz v4, :cond_7

    .line 36
    new-instance v4, Ll5/d0$b;

    .line 37
    invoke-direct {v4, v8, v2, v3}, Ll5/d0$b;-><init>(IJ)V

    move-object v15, v4

    goto :goto_3

    .line 38
    :cond_7
    sget-object v2, Ll5/d0;->f:Ll5/d0$b;

    :goto_2
    move-object v15, v2

    .line 39
    :goto_3
    invoke-virtual {v15}, Ll5/d0$b;->a()Z

    move-result v2

    xor-int/lit8 v16, v2, 0x1

    .line 40
    iget-object v2, v0, Lu4/n;->r:Lp4/e0$a;

    iget v3, v1, Lr4/e;->c:I

    iget v4, v0, Lu4/n;->i:I

    iget-object v6, v1, Lr4/e;->d:Ln3/s0;

    iget v7, v1, Lr4/e;->e:I

    iget-object v8, v1, Lr4/e;->f:Ljava/lang/Object;

    iget-wide v9, v1, Lr4/e;->g:J

    iget-wide v11, v1, Lr4/e;->h:J

    move-object v1, v2

    move-object v2, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-wide v8, v9

    move-wide v10, v11

    move-object/from16 v12, p6

    move/from16 v13, v16

    invoke-virtual/range {v1 .. v13}, Lp4/e0$a;->j(Lp4/r;IILn3/s0;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v16, :cond_8

    const/4 v1, 0x0

    .line 41
    iput-object v1, v0, Lu4/n;->B:Lr4/e;

    .line 42
    iget-object v1, v0, Lu4/n;->p:Ll5/c0;

    invoke-interface {v1}, Ll5/c0;->d()V

    :cond_8
    if-eqz v14, :cond_a

    .line 43
    iget-boolean v1, v0, Lu4/n;->K:Z

    if-nez v1, :cond_9

    .line 44
    iget-wide v1, v0, Lu4/n;->W:J

    invoke-virtual {v0, v1, v2}, Lu4/n;->f(J)Z

    goto :goto_4

    .line 45
    :cond_9
    iget-object v1, v0, Lu4/n;->j:Lu4/n$b;

    check-cast v1, Lu4/l;

    invoke-virtual {v1, v0}, Lu4/l;->j(Lp4/n0;)V

    :cond_a
    :goto_4
    move-object v1, v15

    :goto_5
    return-object v1
.end method

.method public final p(II)Ls3/w;
    .locals 10

    .line 1
    sget-object v0, Lu4/n;->f0:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    iget-object v0, p0, Lu4/n;->F:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lu4/n;->E:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lu4/n;->D:[I

    aput p1, v1, v0

    .line 6
    :cond_1
    iget-object v1, p0, Lu4/n;->D:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 7
    iget-object v1, p0, Lu4/n;->C:[Lu4/n$d;

    aget-object v0, v1, v0

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {p1, p2}, Lu4/n;->w(II)Ls3/g;

    move-result-object v0

    goto :goto_2

    :cond_3
    move v0, v2

    .line 9
    :goto_0
    iget-object v1, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v3, v1

    if-ge v0, v3, :cond_5

    .line 10
    iget-object v3, p0, Lu4/n;->D:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_4

    .line 11
    aget-object v0, v1, v0

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_c

    .line 12
    iget-boolean v0, p0, Lu4/n;->b0:Z

    if-eqz v0, :cond_6

    .line 13
    invoke-static {p1, p2}, Lu4/n;->w(II)Ls3/g;

    move-result-object p1

    return-object p1

    .line 14
    :cond_6
    iget-object v0, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_7

    const/4 v3, 0x2

    if-ne p2, v3, :cond_8

    :cond_7
    move v2, v1

    .line 15
    :cond_8
    new-instance v9, Lu4/n$d;

    iget-object v4, p0, Lu4/n;->l:Ll5/b;

    iget-object v5, p0, Lu4/n;->n:Lr3/l;

    iget-object v6, p0, Lu4/n;->o:Lr3/k$a;

    iget-object v7, p0, Lu4/n;->A:Ljava/util/Map;

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lu4/n$d;-><init>(Ll5/b;Lr3/l;Lr3/k$a;Ljava/util/Map;Lu4/n$a;)V

    .line 16
    iget-wide v3, p0, Lu4/n;->W:J

    .line 17
    iput-wide v3, v9, Lp4/l0;->t:J

    if-eqz v2, :cond_9

    .line 18
    iget-object v3, p0, Lu4/n;->d0:Lr3/d;

    .line 19
    iput-object v3, v9, Lu4/n$d;->I:Lr3/d;

    .line 20
    iput-boolean v1, v9, Lp4/l0;->z:Z

    .line 21
    :cond_9
    iget-wide v3, p0, Lu4/n;->c0:J

    invoke-virtual {v9, v3, v4}, Lp4/l0;->E(J)V

    .line 22
    iget-object v3, p0, Lu4/n;->e0:Lu4/j;

    if-eqz v3, :cond_a

    .line 23
    iget v3, v3, Lu4/j;->k:I

    .line 24
    iput v3, v9, Lp4/l0;->C:I

    .line 25
    :cond_a
    iput-object p0, v9, Lp4/l0;->f:Lp4/l0$c;

    .line 26
    iget-object v3, p0, Lu4/n;->D:[I

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, p0, Lu4/n;->D:[I

    .line 27
    aput p1, v3, v0

    .line 28
    iget-object p1, p0, Lu4/n;->C:[Lu4/n$d;

    sget v3, Lm5/g0;->a:I

    .line 29
    array-length v3, p1

    add-int/2addr v3, v1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 30
    array-length p1, p1

    aput-object v9, v1, p1

    .line 31
    check-cast v1, [Lu4/n$d;

    iput-object v1, p0, Lu4/n;->C:[Lu4/n$d;

    .line 32
    iget-object p1, p0, Lu4/n;->V:[Z

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lu4/n;->V:[Z

    .line 33
    aput-boolean v2, p1, v0

    .line 34
    iget-boolean v1, p0, Lu4/n;->T:Z

    aget-boolean p1, p1, v0

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lu4/n;->T:Z

    .line 35
    iget-object p1, p0, Lu4/n;->E:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lu4/n;->F:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 37
    invoke-static {p2}, Lu4/n;->B(I)I

    move-result p1

    iget v1, p0, Lu4/n;->H:I

    invoke-static {v1}, Lu4/n;->B(I)I

    move-result v1

    if-le p1, v1, :cond_b

    .line 38
    iput v0, p0, Lu4/n;->I:I

    .line 39
    iput p2, p0, Lu4/n;->H:I

    .line 40
    :cond_b
    iget-object p1, p0, Lu4/n;->U:[Z

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lu4/n;->U:[Z

    move-object v0, v9

    :cond_c
    const/4 p1, 0x5

    if-ne p2, p1, :cond_e

    .line 41
    iget-object p1, p0, Lu4/n;->G:Lu4/n$c;

    if-nez p1, :cond_d

    .line 42
    new-instance p1, Lu4/n$c;

    iget p2, p0, Lu4/n;->s:I

    invoke-direct {p1, v0, p2}, Lu4/n$c;-><init>(Ls3/w;I)V

    iput-object p1, p0, Lu4/n;->G:Lu4/n$c;

    .line 43
    :cond_d
    iget-object p1, p0, Lu4/n;->G:Lu4/n$c;

    return-object p1

    :cond_e
    return-object v0
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lu4/n;->y:Landroid/os/Handler;

    iget-object v1, p0, Lu4/n;->w:Ly0/s;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final v()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lu4/n;->K:Z

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Lu4/n;->P:Lp4/u0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lu4/n;->Q:Ljava/util/Set;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final x([Lp4/t0;)Lp4/u0;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, p1, v1

    .line 3
    iget v3, v2, Lp4/t0;->h:I

    new-array v3, v3, [Ln3/s0;

    move v4, v0

    .line 4
    :goto_1
    iget v5, v2, Lp4/t0;->h:I

    if-ge v4, v5, :cond_0

    .line 5
    iget-object v5, v2, Lp4/t0;->k:[Ln3/s0;

    aget-object v5, v5, v4

    .line 6
    iget-object v6, p0, Lu4/n;->n:Lr3/l;

    invoke-interface {v6, v5}, Lr3/l;->e(Ln3/s0;)I

    move-result v6

    invoke-virtual {v5, v6}, Ln3/s0;->c(I)Ln3/s0;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 7
    :cond_0
    new-instance v4, Lp4/t0;

    iget-object v2, v2, Lp4/t0;->i:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lp4/u0;

    invoke-direct {v0, p1}, Lp4/u0;-><init>([Lp4/t0;)V

    return-object v0
.end method

.method public final z(I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lu4/n;->q:Ll5/d0;

    invoke-virtual {v0}, Ll5/d0;->d()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    :goto_0
    iget-object v0, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ge p1, v0, :cond_5

    move v0, p1

    .line 3
    :goto_1
    iget-object v4, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 4
    iget-object v4, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu4/j;

    iget-boolean v4, v4, Lu4/j;->n:Z

    if-eqz v4, :cond_0

    :goto_2
    move v0, v3

    goto :goto_4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu4/j;

    move v4, v3

    .line 6
    :goto_3
    iget-object v5, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 7
    invoke-virtual {v0, v4}, Lu4/j;->g(I)I

    move-result v5

    .line 8
    iget-object v6, p0, Lu4/n;->C:[Lu4/n$d;

    aget-object v6, v6, v4

    .line 9
    iget v7, v6, Lp4/l0;->q:I

    iget v6, v6, Lp4/l0;->s:I

    add-int/2addr v7, v6

    if-le v7, v5, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_4
    if-eqz v0, :cond_4

    goto :goto_5

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move p1, v2

    :goto_5
    if-ne p1, v2, :cond_6

    return-void

    .line 10
    :cond_6
    invoke-virtual {p0}, Lu4/n;->A()Lu4/j;

    move-result-object v0

    iget-wide v8, v0, Lr4/e;->h:J

    .line 11
    iget-object v0, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu4/j;

    .line 12
    iget-object v2, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, p1, v4}, Lm5/g0;->Q(Ljava/util/List;II)V

    move p1, v3

    .line 13
    :goto_6
    iget-object v2, p0, Lu4/n;->C:[Lu4/n$d;

    array-length v2, v2

    if-ge p1, v2, :cond_7

    .line 14
    invoke-virtual {v0, p1}, Lu4/j;->g(I)I

    move-result v2

    .line 15
    iget-object v4, p0, Lu4/n;->C:[Lu4/n$d;

    aget-object v4, v4, p1

    invoke-virtual {v4, v2}, Lp4/l0;->l(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 16
    :cond_7
    iget-object p1, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 17
    iget-wide v1, p0, Lu4/n;->W:J

    iput-wide v1, p0, Lu4/n;->X:J

    goto :goto_7

    .line 18
    :cond_8
    iget-object p1, p0, Lu4/n;->u:Ljava/util/ArrayList;

    invoke-static {p1}, Lg0/n;->b(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu4/j;

    .line 19
    iput-boolean v1, p1, Lu4/j;->J:Z

    .line 20
    :goto_7
    iput-boolean v3, p0, Lu4/n;->a0:Z

    .line 21
    iget-object v4, p0, Lu4/n;->r:Lp4/e0$a;

    iget v5, p0, Lu4/n;->H:I

    iget-wide v6, v0, Lr4/e;->g:J

    invoke-virtual/range {v4 .. v9}, Lp4/e0$a;->p(IJJ)V

    return-void
.end method
