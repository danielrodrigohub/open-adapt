.class public final La4/e;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"

# interfaces
.implements Ls3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/e$b;,
        La4/e$a;
    }
.end annotation


# static fields
.field public static final I:[B

.field public static final J:Ln3/s0;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Ls3/j;

.field public F:[Ls3/w;

.field public G:[Ls3/w;

.field public H:Z

.field public final a:I

.field public final b:La4/l;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/s0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "La4/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lm5/w;

.field public final f:Lm5/w;

.field public final g:Lm5/w;

.field public final h:[B

.field public final i:Lm5/w;

.field public final j:Lm5/d0;

.field public final k:Lh4/c;

.field public final l:Lm5/w;

.field public final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "La4/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "La4/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Ls3/w;

.field public p:I

.field public q:I

.field public r:J

.field public s:I

.field public t:Lm5/w;

.field public u:J

.field public v:I

.field public w:J

.field public x:J

.field public y:J

.field public z:La4/e$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ly0/m;->e:Ly0/m;

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, La4/e;->I:[B

    .line 3
    new-instance v0, Ln3/s0$a;

    invoke-direct {v0}, Ln3/s0$a;-><init>()V

    const-string v1, "application/x-emsg"

    .line 4
    iput-object v1, v0, Ln3/s0$a;->k:Ljava/lang/String;

    .line 5
    invoke-virtual {v0}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object v0

    sput-object v0, La4/e;->J:Ln3/s0;

    return-void

    nop

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>(ILm5/d0;La4/l;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lm5/d0;",
            "La4/l;",
            "Ljava/util/List<",
            "Ln3/s0;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, La4/e;-><init>(ILm5/d0;La4/l;Ljava/util/List;Ls3/w;)V

    return-void
.end method

.method public constructor <init>(ILm5/d0;La4/l;Ljava/util/List;Ls3/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lm5/d0;",
            "La4/l;",
            "Ljava/util/List<",
            "Ln3/s0;",
            ">;",
            "Ls3/w;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, La4/e;->a:I

    .line 4
    iput-object p2, p0, La4/e;->j:Lm5/d0;

    .line 5
    iput-object p3, p0, La4/e;->b:La4/l;

    .line 6
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, La4/e;->c:Ljava/util/List;

    .line 7
    iput-object p5, p0, La4/e;->o:Ls3/w;

    .line 8
    new-instance p1, Lh4/c;

    invoke-direct {p1}, Lh4/c;-><init>()V

    iput-object p1, p0, La4/e;->k:Lh4/c;

    .line 9
    new-instance p1, Lm5/w;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lm5/w;-><init>(I)V

    iput-object p1, p0, La4/e;->l:Lm5/w;

    .line 10
    new-instance p1, Lm5/w;

    sget-object p3, Lm5/t;->a:[B

    invoke-direct {p1, p3}, Lm5/w;-><init>([B)V

    iput-object p1, p0, La4/e;->e:Lm5/w;

    .line 11
    new-instance p1, Lm5/w;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lm5/w;-><init>(I)V

    iput-object p1, p0, La4/e;->f:Lm5/w;

    .line 12
    new-instance p1, Lm5/w;

    invoke-direct {p1}, Lm5/w;-><init>()V

    iput-object p1, p0, La4/e;->g:Lm5/w;

    new-array p1, p2, [B

    .line 13
    iput-object p1, p0, La4/e;->h:[B

    .line 14
    new-instance p2, Lm5/w;

    invoke-direct {p2, p1}, Lm5/w;-><init>([B)V

    iput-object p2, p0, La4/e;->i:Lm5/w;

    .line 15
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, La4/e;->m:Ljava/util/ArrayDeque;

    .line 16
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, La4/e;->n:Ljava/util/ArrayDeque;

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, La4/e;->d:Landroid/util/SparseArray;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    iput-wide p1, p0, La4/e;->x:J

    .line 19
    iput-wide p1, p0, La4/e;->w:J

    .line 20
    iput-wide p1, p0, La4/e;->y:J

    .line 21
    sget-object p1, Ls3/j;->g:Ls3/j$a;

    iput-object p1, p0, La4/e;->E:Ls3/j;

    const/4 p1, 0x0

    new-array p2, p1, [Ls3/w;

    .line 22
    iput-object p2, p0, La4/e;->F:[Ls3/w;

    new-array p1, p1, [Ls3/w;

    .line 23
    iput-object p1, p0, La4/e;->G:[Ls3/w;

    return-void
.end method

.method public static c(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    if-ltz p0, :cond_0

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected negative value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0
.end method

.method public static h(Ljava/util/List;)Lr3/d;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "La4/a$b;",
            ">;)",
            "Lr3/d;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 2
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La4/a$b;

    .line 3
    iget v6, v5, La4/a;->a:I

    const v7, 0x70737368

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_0

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :cond_0
    iget-object v5, v5, La4/a$b;->b:Lm5/w;

    .line 6
    iget-object v5, v5, Lm5/w;->a:[B

    .line 7
    invoke-static {v5}, La4/i;->b([B)La4/i$a;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v2

    goto :goto_1

    .line 8
    :cond_1
    iget-object v6, v6, La4/i$a;->a:Ljava/util/UUID;

    :goto_1
    if-nez v6, :cond_2

    const-string v5, "FragmentedMp4Extractor"

    const-string v6, "Skipped pssh atom (failed to extract uuid)"

    .line 9
    invoke-static {v5, v6}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_2
    new-instance v7, Lr3/d$b;

    const-string v8, "video/mp4"

    .line 11
    invoke-direct {v7, v6, v2, v8, v5}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 12
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    new-instance p0, Lr3/d;

    new-array v0, v1, [Lr3/d$b;

    .line 14
    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr3/d$b;

    invoke-direct {p0, v2, v1, v0}, Lr3/d;-><init>(Ljava/lang/String;Z[Lr3/d$b;)V

    move-object v2, p0

    :goto_3
    return-object v2
.end method

.method public static i(Lm5/w;ILa4/n;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lm5/w;->D(I)V

    .line 2
    invoke-virtual {p0}, Lm5/w;->e()I

    move-result p1

    const v0, 0xffffff

    and-int/2addr p1, v0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lm5/w;->w()I

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object p0, p2, La4/n;->l:[Z

    iget p1, p2, La4/n;->e:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    .line 5
    :cond_1
    iget v3, p2, La4/n;->e:I

    if-ne v2, v3, :cond_2

    .line 6
    iget-object v3, p2, La4/n;->l:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 7
    iget p1, p0, Lm5/w;->c:I

    iget v2, p0, Lm5/w;->b:I

    sub-int/2addr p1, v2

    .line 8
    iget-object v2, p2, La4/n;->n:Lm5/w;

    invoke-virtual {v2, p1}, Lm5/w;->A(I)V

    .line 9
    iput-boolean v1, p2, La4/n;->k:Z

    .line 10
    iput-boolean v1, p2, La4/n;->o:Z

    .line 11
    iget-object p1, p2, La4/n;->n:Lm5/w;

    .line 12
    iget-object v1, p1, Lm5/w;->a:[B

    .line 13
    iget p1, p1, Lm5/w;->c:I

    .line 14
    invoke-virtual {p0, v1, v0, p1}, Lm5/w;->d([BII)V

    .line 15
    iget-object p0, p2, La4/n;->n:Lm5/w;

    invoke-virtual {p0, v0}, Lm5/w;->D(I)V

    .line 16
    iput-boolean v0, p2, La4/n;->o:Z

    return-void

    :cond_2
    const-string p0, "Senc sample count "

    const-string p1, " is different from fragment sample count"

    .line 17
    invoke-static {p0, v2, p1}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 18
    iget p1, p2, La4/n;->e:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    .line 19
    invoke-static {p0}, Ln3/i1;->c(Ljava/lang/String;)Ln3/i1;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 2

    .line 1
    iget-object p1, p0, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2
    iget-object v1, p0, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La4/e$b;

    invoke-virtual {v1}, La4/e$b;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, La4/e;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 4
    iput p2, p0, La4/e;->v:I

    .line 5
    iput-wide p3, p0, La4/e;->w:J

    .line 6
    iget-object p1, p0, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    .line 7
    invoke-virtual {p0}, La4/e;->d()V

    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, La4/e;->p:I

    .line 2
    iput v0, p0, La4/e;->s:I

    return-void
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :cond_0
    :goto_0
    iget v2, v0, La4/e;->p:I

    const v3, 0x656d7367

    const v4, 0x73696478

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_3c

    const-string v8, "FragmentedMp4Extractor"

    if-eq v2, v7, :cond_2c

    const-wide v3, 0x7fffffffffffffffL

    const/4 v9, 0x3

    if-eq v2, v6, :cond_27

    .line 2
    iget-object v2, v0, La4/e;->z:La4/e$b;

    if-nez v2, :cond_8

    .line 3
    iget-object v2, v0, La4/e;->d:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v10, 0x0

    move-wide/from16 v26, v3

    move-object v3, v5

    move v4, v10

    move-wide/from16 v10, v26

    :goto_1
    if-ge v4, v6, :cond_4

    .line 5
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, La4/e$b;

    .line 6
    iget-boolean v13, v12, La4/e$b;->l:Z

    if-nez v13, :cond_1

    .line 7
    iget v14, v12, La4/e$b;->f:I

    iget-object v15, v12, La4/e$b;->d:La4/o;

    iget v15, v15, La4/o;->b:I

    if-eq v14, v15, :cond_3

    :cond_1
    if-eqz v13, :cond_2

    .line 8
    iget v13, v12, La4/e$b;->h:I

    iget-object v14, v12, La4/e$b;->b:La4/n;

    iget v14, v14, La4/n;->d:I

    if-ne v13, v14, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {v12}, La4/e$b;->a()J

    move-result-wide v13

    cmp-long v15, v13, v10

    if-gez v15, :cond_3

    move-object v3, v12

    move-wide v10, v13

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v3, :cond_6

    .line 10
    iget-wide v2, v0, La4/e;->u:J

    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v6

    sub-long/2addr v2, v6

    long-to-int v2, v2

    if-ltz v2, :cond_5

    .line 11
    invoke-interface {v1, v2}, Ls3/i;->k(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, La4/e;->d()V

    const/4 v7, 0x0

    goto/16 :goto_11

    :cond_5
    const-string v1, "Offset to end of mdat was negative."

    .line 13
    invoke-static {v1, v5}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 14
    :cond_6
    invoke-virtual {v3}, La4/e$b;->a()J

    move-result-wide v10

    .line 15
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v2, v10

    if-gez v2, :cond_7

    const-string v2, "Ignoring negative offset to sample data."

    .line 16
    invoke-static {v8, v2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 17
    :cond_7
    invoke-interface {v1, v2}, Ls3/i;->k(I)V

    .line 18
    iput-object v3, v0, La4/e;->z:La4/e$b;

    move-object v2, v3

    .line 19
    :cond_8
    iget v3, v0, La4/e;->p:I

    const/4 v4, 0x6

    if-ne v3, v9, :cond_12

    .line 20
    iget-boolean v3, v2, La4/e$b;->l:Z

    if-nez v3, :cond_9

    .line 21
    iget-object v3, v2, La4/e$b;->d:La4/o;

    iget-object v3, v3, La4/o;->d:[I

    iget v6, v2, La4/e$b;->f:I

    aget v3, v3, v6

    goto :goto_3

    .line 22
    :cond_9
    iget-object v3, v2, La4/e$b;->b:La4/n;

    iget-object v3, v3, La4/n;->h:[I

    iget v6, v2, La4/e$b;->f:I

    aget v3, v3, v6

    .line 23
    :goto_3
    iput v3, v0, La4/e;->A:I

    .line 24
    iget v6, v2, La4/e$b;->f:I

    iget v8, v2, La4/e$b;->i:I

    if-ge v6, v8, :cond_f

    .line 25
    invoke-interface {v1, v3}, Ls3/i;->k(I)V

    .line 26
    invoke-virtual {v2}, La4/e$b;->b()La4/m;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_5

    .line 27
    :cond_a
    iget-object v6, v2, La4/e$b;->b:La4/n;

    iget-object v6, v6, La4/n;->n:Lm5/w;

    .line 28
    iget v3, v3, La4/m;->d:I

    if-eqz v3, :cond_b

    .line 29
    invoke-virtual {v6, v3}, Lm5/w;->E(I)V

    .line 30
    :cond_b
    iget-object v3, v2, La4/e$b;->b:La4/n;

    iget v8, v2, La4/e$b;->f:I

    .line 31
    iget-boolean v10, v3, La4/n;->k:Z

    if-eqz v10, :cond_c

    iget-object v3, v3, La4/n;->l:[Z

    aget-boolean v3, v3, v8

    if-eqz v3, :cond_c

    move v3, v7

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_d

    .line 32
    invoke-virtual {v6}, Lm5/w;->y()I

    move-result v3

    mul-int/2addr v3, v4

    invoke-virtual {v6, v3}, Lm5/w;->E(I)V

    .line 33
    :cond_d
    :goto_5
    invoke-virtual {v2}, La4/e$b;->c()Z

    move-result v2

    if-nez v2, :cond_e

    .line 34
    iput-object v5, v0, La4/e;->z:La4/e$b;

    .line 35
    :cond_e
    iput v9, v0, La4/e;->p:I

    goto/16 :goto_11

    .line 36
    :cond_f
    iget-object v6, v2, La4/e$b;->d:La4/o;

    iget-object v6, v6, La4/o;->a:La4/l;

    iget v6, v6, La4/l;->g:I

    if-ne v6, v7, :cond_10

    add-int/lit8 v3, v3, -0x8

    .line 37
    iput v3, v0, La4/e;->A:I

    const/16 v3, 0x8

    .line 38
    invoke-interface {v1, v3}, Ls3/i;->k(I)V

    .line 39
    :cond_10
    iget-object v3, v2, La4/e$b;->d:La4/o;

    iget-object v3, v3, La4/o;->a:La4/l;

    iget-object v3, v3, La4/l;->f:Ln3/s0;

    iget-object v3, v3, Ln3/s0;->s:Ljava/lang/String;

    const-string v6, "audio/ac4"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 40
    iget v3, v0, La4/e;->A:I

    const/4 v6, 0x7

    .line 41
    invoke-virtual {v2, v3, v6}, La4/e$b;->d(II)I

    move-result v3

    iput v3, v0, La4/e;->B:I

    .line 42
    iget v3, v0, La4/e;->A:I

    iget-object v8, v0, La4/e;->i:Lm5/w;

    invoke-static {v3, v8}, Lp3/c;->a(ILm5/w;)V

    .line 43
    iget-object v3, v2, La4/e$b;->a:Ls3/w;

    iget-object v8, v0, La4/e;->i:Lm5/w;

    invoke-interface {v3, v8, v6}, Ls3/w;->f(Lm5/w;I)V

    .line 44
    iget v3, v0, La4/e;->B:I

    add-int/2addr v3, v6

    iput v3, v0, La4/e;->B:I

    const/4 v3, 0x0

    goto :goto_6

    .line 45
    :cond_11
    iget v3, v0, La4/e;->A:I

    const/4 v6, 0x0

    .line 46
    invoke-virtual {v2, v3, v6}, La4/e$b;->d(II)I

    move-result v3

    iput v3, v0, La4/e;->B:I

    move v3, v6

    .line 47
    :goto_6
    iget v6, v0, La4/e;->A:I

    iget v8, v0, La4/e;->B:I

    add-int/2addr v6, v8

    iput v6, v0, La4/e;->A:I

    const/4 v6, 0x4

    .line 48
    iput v6, v0, La4/e;->p:I

    .line 49
    iput v3, v0, La4/e;->C:I

    .line 50
    :cond_12
    iget-object v3, v2, La4/e$b;->d:La4/o;

    iget-object v6, v3, La4/o;->a:La4/l;

    .line 51
    iget-object v8, v2, La4/e$b;->a:Ls3/w;

    .line 52
    iget-boolean v9, v2, La4/e$b;->l:Z

    if-nez v9, :cond_13

    .line 53
    iget-object v3, v3, La4/o;->f:[J

    iget v9, v2, La4/e$b;->f:I

    aget-wide v9, v3, v9

    goto :goto_7

    .line 54
    :cond_13
    iget-object v3, v2, La4/e$b;->b:La4/n;

    iget v9, v2, La4/e$b;->f:I

    .line 55
    iget-object v3, v3, La4/n;->i:[J

    aget-wide v9, v3, v9

    .line 56
    :goto_7
    iget-object v3, v0, La4/e;->j:Lm5/d0;

    if-eqz v3, :cond_14

    .line 57
    invoke-virtual {v3, v9, v10}, Lm5/d0;->a(J)J

    move-result-wide v9

    :cond_14
    move-wide v14, v9

    .line 58
    iget v3, v6, La4/l;->j:I

    if-eqz v3, :cond_1c

    .line 59
    iget-object v9, v0, La4/e;->f:Lm5/w;

    .line 60
    iget-object v9, v9, Lm5/w;->a:[B

    const/4 v10, 0x0

    .line 61
    aput-byte v10, v9, v10

    .line 62
    aput-byte v10, v9, v7

    const/4 v11, 0x2

    .line 63
    aput-byte v10, v9, v11

    add-int/lit8 v10, v3, 0x1

    rsub-int/lit8 v3, v3, 0x4

    .line 64
    :goto_8
    iget v11, v0, La4/e;->B:I

    iget v12, v0, La4/e;->A:I

    if-ge v11, v12, :cond_1d

    .line 65
    iget v11, v0, La4/e;->C:I

    const-string v12, "video/hevc"

    if-nez v11, :cond_1a

    .line 66
    invoke-interface {v1, v9, v3, v10}, Ls3/i;->readFully([BII)V

    .line 67
    iget-object v11, v0, La4/e;->f:Lm5/w;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lm5/w;->D(I)V

    .line 68
    iget-object v11, v0, La4/e;->f:Lm5/w;

    invoke-virtual {v11}, Lm5/w;->e()I

    move-result v11

    if-lt v11, v7, :cond_19

    add-int/lit8 v11, v11, -0x1

    .line 69
    iput v11, v0, La4/e;->C:I

    .line 70
    iget-object v11, v0, La4/e;->e:Lm5/w;

    invoke-virtual {v11, v13}, Lm5/w;->D(I)V

    .line 71
    iget-object v11, v0, La4/e;->e:Lm5/w;

    const/4 v13, 0x4

    invoke-interface {v8, v11, v13}, Ls3/w;->f(Lm5/w;I)V

    .line 72
    iget-object v11, v0, La4/e;->f:Lm5/w;

    invoke-interface {v8, v11, v7}, Ls3/w;->f(Lm5/w;I)V

    .line 73
    iget-object v11, v0, La4/e;->G:[Ls3/w;

    array-length v11, v11

    if-lez v11, :cond_18

    iget-object v11, v6, La4/l;->f:Ln3/s0;

    iget-object v11, v11, Ln3/s0;->s:Ljava/lang/String;

    aget-byte v13, v9, v13

    .line 74
    sget-object v16, Lm5/t;->a:[B

    const-string v5, "video/avc"

    .line 75
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    and-int/lit8 v5, v13, 0x1f

    if-eq v5, v4, :cond_16

    .line 76
    :cond_15
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    and-int/lit8 v4, v13, 0x7e

    shr-int/2addr v4, v7

    const/16 v5, 0x27

    if-ne v4, v5, :cond_17

    :cond_16
    move v4, v7

    goto :goto_9

    :cond_17
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_18

    goto :goto_a

    :cond_18
    const/4 v7, 0x0

    .line 77
    :goto_a
    iput-boolean v7, v0, La4/e;->D:Z

    .line 78
    iget v4, v0, La4/e;->B:I

    add-int/lit8 v4, v4, 0x5

    iput v4, v0, La4/e;->B:I

    .line 79
    iget v4, v0, La4/e;->A:I

    add-int/2addr v4, v3

    iput v4, v0, La4/e;->A:I

    goto :goto_c

    :cond_19
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    .line 80
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 81
    :cond_1a
    iget-boolean v4, v0, La4/e;->D:Z

    if-eqz v4, :cond_1b

    .line 82
    iget-object v4, v0, La4/e;->g:Lm5/w;

    invoke-virtual {v4, v11}, Lm5/w;->A(I)V

    .line 83
    iget-object v4, v0, La4/e;->g:Lm5/w;

    .line 84
    iget-object v4, v4, Lm5/w;->a:[B

    .line 85
    iget v5, v0, La4/e;->C:I

    const/4 v7, 0x0

    invoke-interface {v1, v4, v7, v5}, Ls3/i;->readFully([BII)V

    .line 86
    iget-object v4, v0, La4/e;->g:Lm5/w;

    iget v5, v0, La4/e;->C:I

    invoke-interface {v8, v4, v5}, Ls3/w;->f(Lm5/w;I)V

    .line 87
    iget v4, v0, La4/e;->C:I

    .line 88
    iget-object v5, v0, La4/e;->g:Lm5/w;

    .line 89
    iget-object v7, v5, Lm5/w;->a:[B

    .line 90
    iget v5, v5, Lm5/w;->c:I

    .line 91
    invoke-static {v7, v5}, Lm5/t;->f([BI)I

    move-result v5

    .line 92
    iget-object v7, v0, La4/e;->g:Lm5/w;

    iget-object v11, v6, La4/l;->f:Ln3/s0;

    iget-object v11, v11, Ln3/s0;->s:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v7, v11}, Lm5/w;->D(I)V

    .line 93
    iget-object v7, v0, La4/e;->g:Lm5/w;

    invoke-virtual {v7, v5}, Lm5/w;->C(I)V

    .line 94
    iget-object v5, v0, La4/e;->g:Lm5/w;

    iget-object v7, v0, La4/e;->G:[Ls3/w;

    invoke-static {v14, v15, v5, v7}, Ls3/b;->a(JLm5/w;[Ls3/w;)V

    goto :goto_b

    :cond_1b
    const/4 v4, 0x0

    .line 95
    invoke-interface {v8, v1, v11, v4}, Ls3/w;->d(Ll5/h;IZ)I

    move-result v4

    .line 96
    :goto_b
    iget v5, v0, La4/e;->B:I

    add-int/2addr v5, v4

    iput v5, v0, La4/e;->B:I

    .line 97
    iget v5, v0, La4/e;->C:I

    sub-int/2addr v5, v4

    iput v5, v0, La4/e;->C:I

    :goto_c
    const/4 v4, 0x6

    const/4 v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_8

    .line 98
    :cond_1c
    :goto_d
    iget v3, v0, La4/e;->B:I

    iget v4, v0, La4/e;->A:I

    if-ge v3, v4, :cond_1d

    sub-int/2addr v4, v3

    const/4 v3, 0x0

    .line 99
    invoke-interface {v8, v1, v4, v3}, Ls3/w;->d(Ll5/h;IZ)I

    move-result v3

    .line 100
    iget v4, v0, La4/e;->B:I

    add-int/2addr v4, v3

    iput v4, v0, La4/e;->B:I

    goto :goto_d

    .line 101
    :cond_1d
    iget-boolean v3, v2, La4/e$b;->l:Z

    if-nez v3, :cond_1e

    .line 102
    iget-object v3, v2, La4/e$b;->d:La4/o;

    iget-object v3, v3, La4/o;->g:[I

    iget v4, v2, La4/e$b;->f:I

    aget v3, v3, v4

    goto :goto_e

    .line 103
    :cond_1e
    iget-object v3, v2, La4/e$b;->b:La4/n;

    iget-object v3, v3, La4/n;->j:[Z

    iget v4, v2, La4/e$b;->f:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_e

    :cond_1f
    const/4 v3, 0x0

    .line 104
    :goto_e
    invoke-virtual {v2}, La4/e$b;->b()La4/m;

    move-result-object v4

    if-eqz v4, :cond_20

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    :cond_20
    move v11, v3

    .line 105
    invoke-virtual {v2}, La4/e$b;->b()La4/m;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 106
    iget-object v3, v3, La4/m;->c:Ls3/w$a;

    goto :goto_f

    :cond_21
    const/4 v3, 0x0

    .line 107
    :goto_f
    iget v12, v0, La4/e;->A:I

    const/4 v13, 0x0

    move-wide v9, v14

    move-wide v4, v14

    move-object v14, v3

    invoke-interface/range {v8 .. v14}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 108
    :cond_22
    iget-object v3, v0, La4/e;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_25

    .line 109
    iget-object v3, v0, La4/e;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La4/e$a;

    .line 110
    iget v6, v0, La4/e;->v:I

    iget v7, v3, La4/e$a;->c:I

    sub-int/2addr v6, v7

    iput v6, v0, La4/e;->v:I

    .line 111
    iget-wide v6, v3, La4/e$a;->a:J

    .line 112
    iget-boolean v8, v3, La4/e$a;->b:Z

    if-eqz v8, :cond_23

    add-long/2addr v6, v4

    .line 113
    :cond_23
    iget-object v8, v0, La4/e;->j:Lm5/d0;

    if-eqz v8, :cond_24

    .line 114
    invoke-virtual {v8, v6, v7}, Lm5/d0;->a(J)J

    move-result-wide v6

    .line 115
    :cond_24
    iget-object v15, v0, La4/e;->F:[Ls3/w;

    array-length v14, v15

    const/4 v8, 0x0

    move v13, v8

    :goto_10
    if-ge v13, v14, :cond_22

    aget-object v8, v15, v13

    const/4 v11, 0x1

    .line 116
    iget v12, v3, La4/e$a;->c:I

    iget v9, v0, La4/e;->v:I

    const/16 v16, 0x0

    move/from16 v17, v9

    move-wide v9, v6

    move/from16 v18, v13

    move/from16 v13, v17

    move/from16 v17, v14

    move-object/from16 v14, v16

    invoke-interface/range {v8 .. v14}, Ls3/w;->c(JIIILs3/w$a;)V

    add-int/lit8 v13, v18, 0x1

    move/from16 v14, v17

    goto :goto_10

    .line 117
    :cond_25
    invoke-virtual {v2}, La4/e$b;->c()Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x0

    .line 118
    iput-object v2, v0, La4/e;->z:La4/e$b;

    :cond_26
    const/4 v2, 0x3

    .line 119
    iput v2, v0, La4/e;->p:I

    const/4 v7, 0x1

    :goto_11
    if-eqz v7, :cond_0

    const/4 v1, 0x0

    return v1

    .line 120
    :cond_27
    iget-object v2, v0, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v5, 0x0

    move v6, v5

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_12
    if-ge v6, v2, :cond_29

    .line 121
    iget-object v7, v0, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La4/e$b;

    iget-object v7, v7, La4/e$b;->b:La4/n;

    .line 122
    iget-boolean v8, v7, La4/n;->o:Z

    if-eqz v8, :cond_28

    iget-wide v7, v7, La4/n;->c:J

    cmp-long v9, v7, v4

    if-gez v9, :cond_28

    .line 123
    iget-object v3, v0, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La4/e$b;

    move-wide v4, v7

    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_29
    if-nez v3, :cond_2a

    const/4 v2, 0x3

    .line 124
    iput v2, v0, La4/e;->p:I

    goto/16 :goto_0

    .line 125
    :cond_2a
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v2, v4

    if-ltz v2, :cond_2b

    .line 126
    invoke-interface {v1, v2}, Ls3/i;->k(I)V

    .line 127
    iget-object v2, v3, La4/e$b;->b:La4/n;

    .line 128
    iget-object v3, v2, La4/n;->n:Lm5/w;

    .line 129
    iget-object v4, v3, Lm5/w;->a:[B

    .line 130
    iget v3, v3, Lm5/w;->c:I

    const/4 v5, 0x0

    .line 131
    invoke-interface {v1, v4, v5, v3}, Ls3/i;->readFully([BII)V

    .line 132
    iget-object v3, v2, La4/n;->n:Lm5/w;

    invoke-virtual {v3, v5}, Lm5/w;->D(I)V

    .line 133
    iput-boolean v5, v2, La4/n;->o:Z

    goto/16 :goto_0

    :cond_2b
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    .line 134
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 135
    :cond_2c
    iget-wide v5, v0, La4/e;->r:J

    long-to-int v2, v5

    iget v5, v0, La4/e;->s:I

    sub-int/2addr v2, v5

    .line 136
    iget-object v5, v0, La4/e;->t:Lm5/w;

    if-eqz v5, :cond_3b

    .line 137
    iget-object v6, v5, Lm5/w;->a:[B

    const/16 v7, 0x8

    .line 138
    invoke-interface {v1, v6, v7, v2}, Ls3/i;->readFully([BII)V

    .line 139
    new-instance v2, La4/a$b;

    iget v6, v0, La4/e;->q:I

    invoke-direct {v2, v6, v5}, La4/a$b;-><init>(ILm5/w;)V

    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v9

    .line 140
    iget-object v7, v0, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2d

    .line 141
    iget-object v3, v0, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La4/a$a;

    .line 142
    iget-object v3, v3, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_2d
    if-ne v6, v4, :cond_31

    const/16 v1, 0x8

    .line 143
    invoke-virtual {v5, v1}, Lm5/w;->D(I)V

    .line 144
    invoke-virtual {v5}, Lm5/w;->e()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x4

    .line 145
    invoke-virtual {v5, v2}, Lm5/w;->E(I)V

    .line 146
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v2

    if-nez v1, :cond_2e

    .line 147
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v6

    .line 148
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v11

    goto :goto_13

    .line 149
    :cond_2e
    invoke-virtual {v5}, Lm5/w;->x()J

    move-result-wide v6

    .line 150
    invoke-virtual {v5}, Lm5/w;->x()J

    move-result-wide v11

    :goto_13
    add-long v8, v11, v9

    const-wide/32 v13, 0xf4240

    move-wide v11, v6

    move-wide v15, v2

    .line 151
    invoke-static/range {v11 .. v16}, Lm5/g0;->R(JJJ)J

    move-result-wide v17

    const/4 v1, 0x2

    .line 152
    invoke-virtual {v5, v1}, Lm5/w;->E(I)V

    .line 153
    invoke-virtual {v5}, Lm5/w;->y()I

    move-result v1

    .line 154
    new-array v4, v1, [I

    .line 155
    new-array v10, v1, [J

    .line 156
    new-array v15, v1, [J

    .line 157
    new-array v13, v1, [J

    const/4 v11, 0x0

    move v14, v11

    move-wide/from16 v11, v17

    :goto_14
    if-ge v14, v1, :cond_30

    .line 158
    invoke-virtual {v5}, Lm5/w;->e()I

    move-result v16

    const/high16 v19, -0x80000000

    and-int v19, v16, v19

    if-nez v19, :cond_2f

    .line 159
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v19

    const v21, 0x7fffffff

    and-int v16, v16, v21

    .line 160
    aput v16, v4, v14

    .line 161
    aput-wide v8, v10, v14

    .line 162
    aput-wide v11, v13, v14

    add-long v6, v6, v19

    const-wide/32 v19, 0xf4240

    move-wide v11, v6

    move/from16 p2, v1

    move-object v1, v13

    move/from16 v21, v14

    move-wide/from16 v13, v19

    move-wide/from16 v19, v6

    move-object v6, v15

    move-wide v15, v2

    .line 163
    invoke-static/range {v11 .. v16}, Lm5/g0;->R(JJJ)J

    move-result-wide v11

    .line 164
    aget-wide v13, v1, v21

    sub-long v13, v11, v13

    aput-wide v13, v6, v21

    const/4 v7, 0x4

    .line 165
    invoke-virtual {v5, v7}, Lm5/w;->E(I)V

    .line 166
    aget v7, v4, v21

    int-to-long v13, v7

    add-long/2addr v8, v13

    add-int/lit8 v14, v21, 0x1

    move-object v13, v1

    move-object v15, v6

    move-wide/from16 v6, v19

    move/from16 v1, p2

    goto :goto_14

    :cond_2f
    const-string v1, "Unhandled indirect reference"

    const/4 v2, 0x0

    .line 167
    invoke-static {v1, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_30
    move-object v1, v13

    move-object v6, v15

    .line 168
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ls3/c;

    invoke-direct {v3, v4, v10, v6, v1}, Ls3/c;-><init>([I[J[J[J)V

    .line 169
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 170
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, La4/e;->y:J

    .line 171
    iget-object v2, v0, La4/e;->E:Ls3/j;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ls3/u;

    invoke-interface {v2, v1}, Ls3/j;->j(Ls3/u;)V

    const/4 v1, 0x1

    .line 172
    iput-boolean v1, v0, La4/e;->H:Z

    goto/16 :goto_19

    :cond_31
    if-ne v6, v3, :cond_3a

    .line 173
    iget-object v1, v0, La4/e;->F:[Ls3/w;

    array-length v1, v1

    if-nez v1, :cond_32

    goto/16 :goto_19

    :cond_32
    const/16 v1, 0x8

    .line 174
    invoke-virtual {v5, v1}, Lm5/w;->D(I)V

    .line 175
    invoke-virtual {v5}, Lm5/w;->e()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_34

    const/4 v4, 0x1

    if-eq v1, v4, :cond_33

    const-string v2, "Skipping unsupported emsg version: "

    .line 176
    invoke-static {v2, v1, v8}, Lda/c;->b(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_19

    .line 177
    :cond_33
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v6

    .line 178
    invoke-virtual {v5}, Lm5/w;->x()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    move-wide v13, v6

    invoke-static/range {v9 .. v14}, Lm5/g0;->R(JJJ)J

    move-result-wide v15

    .line 179
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    invoke-static/range {v9 .. v14}, Lm5/g0;->R(JJJ)J

    move-result-wide v6

    .line 180
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v8

    .line 181
    invoke-virtual {v5}, Lm5/w;->n()Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v5}, Lm5/w;->n()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide v6, v15

    move-wide v14, v2

    goto :goto_16

    .line 185
    :cond_34
    invoke-virtual {v5}, Lm5/w;->n()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v5}, Lm5/w;->n()Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v12

    .line 190
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Lm5/g0;->R(JJJ)J

    move-result-wide v14

    .line 191
    iget-wide v6, v0, La4/e;->y:J

    cmp-long v8, v6, v2

    if-eqz v8, :cond_35

    add-long/2addr v6, v14

    move-wide/from16 v16, v6

    goto :goto_15

    :cond_35
    move-wide/from16 v16, v2

    .line 192
    :goto_15
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    move-wide v10, v12

    invoke-static/range {v6 .. v11}, Lm5/g0;->R(JJJ)J

    move-result-wide v6

    .line 193
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v8

    move-object/from16 v19, v1

    move-object/from16 v20, v4

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v6, v16

    .line 194
    :goto_16
    iget v1, v5, Lm5/w;->c:I

    iget v4, v5, Lm5/w;->b:I

    sub-int/2addr v1, v4

    .line 195
    new-array v4, v1, [B

    const/4 v8, 0x0

    .line 196
    invoke-virtual {v5, v4, v8, v1}, Lm5/w;->d([BII)V

    .line 197
    new-instance v1, Lh4/a;

    move-object/from16 v18, v1

    move-object/from16 v25, v4

    invoke-direct/range {v18 .. v25}, Lh4/a;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 198
    new-instance v4, Lm5/w;

    iget-object v5, v0, La4/e;->k:Lh4/c;

    .line 199
    invoke-virtual {v5, v1}, Lh4/c;->a(Lh4/a;)[B

    move-result-object v1

    invoke-direct {v4, v1}, Lm5/w;-><init>([B)V

    .line 200
    iget v1, v4, Lm5/w;->c:I

    iget v5, v4, Lm5/w;->b:I

    sub-int/2addr v1, v5

    .line 201
    iget-object v5, v0, La4/e;->F:[Ls3/w;

    array-length v8, v5

    const/4 v9, 0x0

    :goto_17
    if-ge v9, v8, :cond_36

    aget-object v10, v5, v9

    const/4 v11, 0x0

    .line 202
    invoke-virtual {v4, v11}, Lm5/w;->D(I)V

    .line 203
    invoke-interface {v10, v4, v1}, Ls3/w;->f(Lm5/w;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_36
    cmp-long v2, v6, v2

    if-nez v2, :cond_37

    .line 204
    iget-object v2, v0, La4/e;->n:Ljava/util/ArrayDeque;

    new-instance v3, La4/e$a;

    const/4 v4, 0x1

    invoke-direct {v3, v14, v15, v4, v1}, La4/e$a;-><init>(JZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 205
    iget v2, v0, La4/e;->v:I

    add-int/2addr v2, v1

    iput v2, v0, La4/e;->v:I

    goto :goto_19

    .line 206
    :cond_37
    iget-object v2, v0, La4/e;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 207
    iget-object v2, v0, La4/e;->n:Ljava/util/ArrayDeque;

    new-instance v3, La4/e$a;

    const/4 v4, 0x0

    invoke-direct {v3, v6, v7, v4, v1}, La4/e$a;-><init>(JZI)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 208
    iget v2, v0, La4/e;->v:I

    add-int/2addr v2, v1

    iput v2, v0, La4/e;->v:I

    goto :goto_19

    .line 209
    :cond_38
    iget-object v2, v0, La4/e;->j:Lm5/d0;

    if-eqz v2, :cond_39

    .line 210
    invoke-virtual {v2, v6, v7}, Lm5/d0;->a(J)J

    move-result-wide v6

    .line 211
    :cond_39
    iget-object v2, v0, La4/e;->F:[Ls3/w;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_3a

    aget-object v16, v2, v4

    const/16 v19, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-wide/from16 v17, v6

    move/from16 v20, v1

    .line 212
    invoke-interface/range {v16 .. v22}, Ls3/w;->c(JIIILs3/w$a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_3a
    :goto_19
    move-object/from16 v1, p1

    goto :goto_1a

    .line 213
    :cond_3b
    invoke-interface {v1, v2}, Ls3/i;->k(I)V

    .line 214
    :goto_1a
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, La4/e;->k(J)V

    goto/16 :goto_0

    .line 215
    :cond_3c
    iget v2, v0, La4/e;->s:I

    if-nez v2, :cond_3e

    .line 216
    iget-object v2, v0, La4/e;->l:Lm5/w;

    .line 217
    iget-object v2, v2, Lm5/w;->a:[B

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 218
    invoke-interface {v1, v2, v7, v5, v6}, Ls3/i;->e([BIIZ)Z

    move-result v2

    if-nez v2, :cond_3d

    goto/16 :goto_23

    .line 219
    :cond_3d
    iput v5, v0, La4/e;->s:I

    .line 220
    iget-object v2, v0, La4/e;->l:Lm5/w;

    invoke-virtual {v2, v7}, Lm5/w;->D(I)V

    .line 221
    iget-object v2, v0, La4/e;->l:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->u()J

    move-result-wide v5

    iput-wide v5, v0, La4/e;->r:J

    .line 222
    iget-object v2, v0, La4/e;->l:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v2

    iput v2, v0, La4/e;->q:I

    .line 223
    :cond_3e
    iget-wide v5, v0, La4/e;->r:J

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_3f

    .line 224
    iget-object v2, v0, La4/e;->l:Lm5/w;

    .line 225
    iget-object v2, v2, Lm5/w;->a:[B

    const/16 v5, 0x8

    .line 226
    invoke-interface {v1, v2, v5, v5}, Ls3/i;->readFully([BII)V

    .line 227
    iget v2, v0, La4/e;->s:I

    add-int/2addr v2, v5

    iput v2, v0, La4/e;->s:I

    .line 228
    iget-object v2, v0, La4/e;->l:Lm5/w;

    invoke-virtual {v2}, Lm5/w;->x()J

    move-result-wide v5

    iput-wide v5, v0, La4/e;->r:J

    goto :goto_1b

    :cond_3f
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_41

    .line 229
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-nez v2, :cond_40

    .line 230
    iget-object v2, v0, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_40

    .line 231
    iget-object v2, v0, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La4/a$a;

    iget-wide v5, v2, La4/a$a;->b:J

    :cond_40
    cmp-long v2, v5, v7

    if-eqz v2, :cond_41

    .line 232
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v2, v0, La4/e;->s:I

    int-to-long v7, v2

    add-long/2addr v5, v7

    iput-wide v5, v0, La4/e;->r:J

    .line 233
    :cond_41
    :goto_1b
    iget-wide v5, v0, La4/e;->r:J

    iget v2, v0, La4/e;->s:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_50

    .line 234
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v5

    iget v2, v0, La4/e;->s:I

    int-to-long v7, v2

    sub-long/2addr v5, v7

    .line 235
    iget v2, v0, La4/e;->q:I

    const v7, 0x6d646174

    const v8, 0x6d6f6f66

    if-eq v2, v8, :cond_42

    if-ne v2, v7, :cond_43

    .line 236
    :cond_42
    iget-boolean v2, v0, La4/e;->H:Z

    if-nez v2, :cond_43

    .line 237
    iget-object v2, v0, La4/e;->E:Ls3/j;

    new-instance v9, Ls3/u$b;

    iget-wide v10, v0, La4/e;->x:J

    invoke-direct {v9, v10, v11, v5, v6}, Ls3/u$b;-><init>(JJ)V

    invoke-interface {v2, v9}, Ls3/j;->j(Ls3/u;)V

    const/4 v2, 0x1

    .line 238
    iput-boolean v2, v0, La4/e;->H:Z

    .line 239
    :cond_43
    iget v2, v0, La4/e;->q:I

    if-ne v2, v8, :cond_44

    .line 240
    iget-object v2, v0, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v9, 0x0

    :goto_1c
    if-ge v9, v2, :cond_44

    .line 241
    iget-object v10, v0, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La4/e$b;

    iget-object v10, v10, La4/e$b;->b:La4/n;

    .line 242
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iput-wide v5, v10, La4/n;->c:J

    .line 244
    iput-wide v5, v10, La4/n;->b:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 245
    :cond_44
    iget v2, v0, La4/e;->q:I

    if-ne v2, v7, :cond_45

    const/4 v2, 0x0

    .line 246
    iput-object v2, v0, La4/e;->z:La4/e$b;

    .line 247
    iget-wide v2, v0, La4/e;->r:J

    add-long/2addr v5, v2

    iput-wide v5, v0, La4/e;->u:J

    const/4 v2, 0x2

    .line 248
    iput v2, v0, La4/e;->p:I

    const/4 v7, 0x1

    goto/16 :goto_23

    :cond_45
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_47

    const v5, 0x7472616b

    if-eq v2, v5, :cond_47

    const v5, 0x6d646961

    if-eq v2, v5, :cond_47

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_47

    const v5, 0x7374626c

    if-eq v2, v5, :cond_47

    if-eq v2, v8, :cond_47

    const v5, 0x74726166

    if-eq v2, v5, :cond_47

    const v5, 0x6d766578

    if-eq v2, v5, :cond_47

    const v5, 0x65647473

    if-ne v2, v5, :cond_46

    goto :goto_1d

    :cond_46
    const/4 v5, 0x0

    goto :goto_1e

    :cond_47
    :goto_1d
    const/4 v5, 0x1

    :goto_1e
    if-eqz v5, :cond_49

    .line 249
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v2

    iget-wide v4, v0, La4/e;->r:J

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    sub-long/2addr v2, v4

    .line 250
    iget-object v4, v0, La4/e;->m:Ljava/util/ArrayDeque;

    new-instance v5, La4/a$a;

    iget v6, v0, La4/e;->q:I

    invoke-direct {v5, v6, v2, v3}, La4/a$a;-><init>(IJ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 251
    iget-wide v4, v0, La4/e;->r:J

    iget v6, v0, La4/e;->s:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_48

    .line 252
    invoke-virtual {v0, v2, v3}, La4/e;->k(J)V

    goto :goto_1f

    .line 253
    :cond_48
    invoke-virtual/range {p0 .. p0}, La4/e;->d()V

    :goto_1f
    const/4 v2, 0x1

    :goto_20
    move v7, v2

    goto/16 :goto_23

    :cond_49
    const v5, 0x68646c72

    if-eq v2, v5, :cond_4b

    const v5, 0x6d646864

    if-eq v2, v5, :cond_4b

    const v5, 0x6d766864

    if-eq v2, v5, :cond_4b

    if-eq v2, v4, :cond_4b

    const v4, 0x73747364

    if-eq v2, v4, :cond_4b

    const v4, 0x73747473

    if-eq v2, v4, :cond_4b

    const v4, 0x63747473

    if-eq v2, v4, :cond_4b

    const v4, 0x73747363

    if-eq v2, v4, :cond_4b

    const v4, 0x7374737a

    if-eq v2, v4, :cond_4b

    const v4, 0x73747a32

    if-eq v2, v4, :cond_4b

    const v4, 0x7374636f

    if-eq v2, v4, :cond_4b

    const v4, 0x636f3634

    if-eq v2, v4, :cond_4b

    const v4, 0x73747373

    if-eq v2, v4, :cond_4b

    const v4, 0x74666474

    if-eq v2, v4, :cond_4b

    const v4, 0x74666864

    if-eq v2, v4, :cond_4b

    const v4, 0x746b6864

    if-eq v2, v4, :cond_4b

    const v4, 0x74726578

    if-eq v2, v4, :cond_4b

    const v4, 0x7472756e

    if-eq v2, v4, :cond_4b

    const v4, 0x70737368

    if-eq v2, v4, :cond_4b

    const v4, 0x7361697a

    if-eq v2, v4, :cond_4b

    const v4, 0x7361696f

    if-eq v2, v4, :cond_4b

    const v4, 0x73656e63

    if-eq v2, v4, :cond_4b

    const v4, 0x75756964

    if-eq v2, v4, :cond_4b

    const v4, 0x73626770

    if-eq v2, v4, :cond_4b

    const v4, 0x73677064

    if-eq v2, v4, :cond_4b

    const v4, 0x656c7374

    if-eq v2, v4, :cond_4b

    const v4, 0x6d656864

    if-eq v2, v4, :cond_4b

    if-ne v2, v3, :cond_4a

    goto :goto_21

    :cond_4a
    const/4 v2, 0x0

    goto :goto_22

    :cond_4b
    :goto_21
    const/4 v2, 0x1

    :goto_22
    const-wide/32 v3, 0x7fffffff

    if-eqz v2, :cond_4e

    .line 254
    iget v2, v0, La4/e;->s:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_4d

    .line 255
    iget-wide v6, v0, La4/e;->r:J

    cmp-long v2, v6, v3

    if-gtz v2, :cond_4c

    .line 256
    new-instance v2, Lm5/w;

    long-to-int v3, v6

    invoke-direct {v2, v3}, Lm5/w;-><init>(I)V

    .line 257
    iget-object v3, v0, La4/e;->l:Lm5/w;

    .line 258
    iget-object v3, v3, Lm5/w;->a:[B

    iget-object v4, v2, Lm5/w;->a:[B

    const/4 v6, 0x0

    .line 259
    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    iput-object v2, v0, La4/e;->t:Lm5/w;

    const/4 v2, 0x1

    .line 261
    iput v2, v0, La4/e;->p:I

    goto/16 :goto_20

    :cond_4c
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    .line 262
    invoke-static {v1}, Ln3/i1;->c(Ljava/lang/String;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_4d
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    .line 263
    invoke-static {v1}, Ln3/i1;->c(Ljava/lang/String;)Ln3/i1;

    move-result-object v1

    throw v1

    .line 264
    :cond_4e
    iget-wide v5, v0, La4/e;->r:J

    cmp-long v2, v5, v3

    if-gtz v2, :cond_4f

    const/4 v2, 0x0

    .line 265
    iput-object v2, v0, La4/e;->t:Lm5/w;

    const/4 v2, 0x1

    .line 266
    iput v2, v0, La4/e;->p:I

    goto/16 :goto_20

    :goto_23
    if-nez v7, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_4f
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    .line 267
    invoke-static {v1}, Ln3/i1;->c(Ljava/lang/String;)Ln3/i1;

    move-result-object v1

    throw v1

    :cond_50
    const-string v1, "Atom size less than header length (unsupported)."

    .line 268
    invoke-static {v1}, Ln3/i1;->c(Ljava/lang/String;)Ln3/i1;

    move-result-object v1

    throw v1
.end method

.method public final f(Landroid/util/SparseArray;I)La4/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "La4/c;",
            ">;I)",
            "La4/c;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La4/c;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La4/c;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final g(Ls3/j;)V
    .locals 12

    .line 1
    iput-object p1, p0, La4/e;->E:Ls3/j;

    .line 2
    invoke-virtual {p0}, La4/e;->d()V

    const/4 v0, 0x2

    new-array v0, v0, [Ls3/w;

    .line 3
    iput-object v0, p0, La4/e;->F:[Ls3/w;

    .line 4
    iget-object v1, p0, La4/e;->o:Ls3/w;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 5
    :goto_0
    iget v3, p0, La4/e;->a:I

    and-int/lit8 v3, v3, 0x4

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 6
    iget-object v5, p0, La4/e;->E:Ls3/j;

    const/16 v6, 0x65

    const/4 v7, 0x5

    .line 7
    invoke-interface {v5, v4, v7}, Ls3/j;->p(II)Ls3/w;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v3

    move v4, v6

    .line 8
    :cond_1
    iget-object v0, p0, La4/e;->F:[Ls3/w;

    invoke-static {v0, v1}, Lm5/g0;->N([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls3/w;

    iput-object v0, p0, La4/e;->F:[Ls3/w;

    .line 9
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v5, v0, v3

    .line 10
    sget-object v6, La4/e;->J:Ln3/s0;

    invoke-interface {v5, v6}, Ls3/w;->b(Ln3/s0;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, La4/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ls3/w;

    iput-object v0, p0, La4/e;->G:[Ls3/w;

    move v0, v2

    .line 12
    :goto_2
    iget-object v1, p0, La4/e;->G:[Ls3/w;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 13
    iget-object v1, p0, La4/e;->E:Ls3/j;

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x3

    invoke-interface {v1, v4, v5}, Ls3/j;->p(II)Ls3/w;

    move-result-object v1

    .line 14
    iget-object v4, p0, La4/e;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/s0;

    invoke-interface {v1, v4}, Ls3/w;->b(Ln3/s0;)V

    .line 15
    iget-object v4, p0, La4/e;->G:[Ls3/w;

    aput-object v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_2

    .line 16
    :cond_3
    iget-object v0, p0, La4/e;->b:La4/l;

    if-eqz v0, :cond_4

    .line 17
    new-instance v1, La4/e$b;

    iget v0, v0, La4/l;->b:I

    .line 18
    invoke-interface {p1, v2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    new-instance v0, La4/o;

    iget-object v4, p0, La4/e;->b:La4/l;

    new-array v5, v2, [J

    new-array v6, v2, [I

    const/4 v7, 0x0

    new-array v8, v2, [J

    new-array v9, v2, [I

    const-wide/16 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, La4/o;-><init>(La4/l;[J[II[J[IJ)V

    new-instance v3, La4/c;

    invoke-direct {v3, v2, v2, v2, v2}, La4/c;-><init>(IIII)V

    invoke-direct {v1, p1, v0, v3}, La4/e$b;-><init>(Ls3/w;La4/o;La4/c;)V

    .line 19
    iget-object p1, p0, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object p1, p0, La4/e;->E:Ls3/j;

    invoke-interface {p1}, Ls3/j;->b()V

    :cond_4
    return-void
.end method

.method public final j(Ls3/i;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, La4/k;->a(Ls3/i;ZZ)Z

    move-result p1

    return p1
.end method

.method public final k(J)V
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object v1, v0

    .line 1
    :goto_0
    iget-object v2, v1, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    iget-object v2, v1, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La4/a$a;

    iget-wide v2, v2, La4/a$a;->b:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_58

    .line 2
    iget-object v2, v1, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, La4/a$a;

    .line 3
    iget v2, v3, La4/a;->a:I

    const v4, 0x6d6f6f76

    const/16 v5, 0xc

    if-ne v2, v4, :cond_b

    .line 4
    iget-object v2, v1, La4/e;->b:La4/l;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_a

    .line 5
    iget-object v2, v3, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-static {v2}, La4/e;->h(Ljava/util/List;)Lr3/d;

    move-result-object v7

    const v2, 0x6d766578

    .line 6
    invoke-virtual {v3, v2}, La4/a$a;->b(I)La4/a$a;

    move-result-object v2

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iget-object v4, v2, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_4

    .line 10
    iget-object v10, v2, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, La4/a$b;

    .line 11
    iget v12, v10, La4/a;->a:I

    const v13, 0x74726578

    if-ne v12, v13, :cond_1

    .line 12
    iget-object v10, v10, La4/a$b;->b:Lm5/w;

    .line 13
    invoke-virtual {v10, v5}, Lm5/w;->D(I)V

    .line 14
    invoke-virtual {v10}, Lm5/w;->e()I

    move-result v5

    .line 15
    invoke-virtual {v10}, Lm5/w;->e()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    .line 16
    invoke-virtual {v10}, Lm5/w;->e()I

    move-result v13

    .line 17
    invoke-virtual {v10}, Lm5/w;->e()I

    move-result v14

    .line 18
    invoke-virtual {v10}, Lm5/w;->e()I

    move-result v10

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v15, La4/c;

    invoke-direct {v15, v12, v13, v14, v10}, La4/c;-><init>(IIII)V

    .line 20
    invoke-static {v5, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    .line 21
    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, La4/c;

    invoke-virtual {v11, v10, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    const v5, 0x6d656864

    if-ne v12, v5, :cond_3

    .line 22
    iget-object v5, v10, La4/a$b;->b:Lm5/w;

    const/16 v8, 0x8

    .line 23
    invoke-virtual {v5, v8}, Lm5/w;->D(I)V

    .line 24
    invoke-virtual {v5}, Lm5/w;->e()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_2

    .line 25
    invoke-virtual {v5}, Lm5/w;->u()J

    move-result-wide v8

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Lm5/w;->x()J

    move-result-wide v8

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/16 v5, 0xc

    goto :goto_2

    .line 26
    :cond_4
    new-instance v4, Ls3/q;

    invoke-direct {v4}, Ls3/q;-><init>()V

    iget v2, v1, La4/e;->a:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    const/4 v10, 0x0

    new-instance v12, La4/d;

    invoke-direct {v12, v1}, La4/d;-><init>(La4/e;)V

    move-wide v5, v8

    move v8, v2

    move v9, v10

    move-object v10, v12

    .line 27
    invoke-static/range {v3 .. v10}, La4/b;->f(La4/a$a;Ls3/q;JLr3/d;ZZLt6/d;)Ljava/util/List;

    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 29
    iget-object v4, v1, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_6

    .line 30
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La4/o;

    .line 31
    iget-object v6, v5, La4/o;->a:La4/l;

    .line 32
    new-instance v7, La4/e$b;

    iget-object v8, v1, La4/e;->E:Ls3/j;

    iget v9, v6, La4/l;->b:I

    .line 33
    invoke-interface {v8, v4, v9}, Ls3/j;->p(II)Ls3/w;

    move-result-object v8

    iget v9, v6, La4/l;->a:I

    .line 34
    invoke-virtual {v1, v11, v9}, La4/e;->f(Landroid/util/SparseArray;I)La4/c;

    move-result-object v9

    invoke-direct {v7, v8, v5, v9}, La4/e$b;-><init>(Ls3/w;La4/o;La4/c;)V

    .line 35
    iget-object v5, v1, La4/e;->d:Landroid/util/SparseArray;

    iget v8, v6, La4/l;->a:I

    invoke-virtual {v5, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    iget-wide v7, v1, La4/e;->x:J

    iget-wide v5, v6, La4/l;->e:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v1, La4/e;->x:J

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 37
    :cond_6
    iget-object v2, v1, La4/e;->E:Ls3/j;

    invoke-interface {v2}, Ls3/j;->b()V

    goto :goto_8

    .line 38
    :cond_7
    iget-object v4, v1, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v3, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    invoke-static {v4}, Lm5/a;->e(Z)V

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_9

    .line 39
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La4/o;

    .line 40
    iget-object v6, v5, La4/o;->a:La4/l;

    .line 41
    iget-object v7, v1, La4/e;->d:Landroid/util/SparseArray;

    iget v8, v6, La4/l;->a:I

    .line 42
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, La4/e$b;

    iget v6, v6, La4/l;->a:I

    .line 43
    invoke-virtual {v1, v11, v6}, La4/e;->f(Landroid/util/SparseArray;I)La4/c;

    move-result-object v6

    .line 44
    iput-object v5, v7, La4/e$b;->d:La4/o;

    .line 45
    iput-object v6, v7, La4/e$b;->e:La4/c;

    .line 46
    iget-object v6, v7, La4/e$b;->a:Ls3/w;

    iget-object v5, v5, La4/o;->a:La4/l;

    iget-object v5, v5, La4/l;->f:Ln3/s0;

    invoke-interface {v6, v5}, Ls3/w;->b(Ln3/s0;)V

    .line 47
    invoke-virtual {v7}, La4/e$b;->e()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_9
    :goto_8
    move-object v3, v0

    goto/16 :goto_3a

    .line 48
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected moov box."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const v4, 0x6d6f6f66

    if-ne v2, v4, :cond_56

    .line 49
    iget-object v2, v1, La4/e;->d:Landroid/util/SparseArray;

    iget-object v4, v1, La4/e;->b:La4/l;

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_9
    iget v5, v1, La4/e;->a:I

    iget-object v1, v1, La4/e;->h:[B

    .line 50
    iget-object v6, v3, La4/a$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_4f

    .line 51
    iget-object v8, v3, La4/a$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La4/a$a;

    .line 52
    iget v9, v8, La4/a;->a:I

    const v10, 0x74726166

    if-ne v9, v10, :cond_4e

    const v9, 0x74666864

    .line 53
    invoke-virtual {v8, v9}, La4/a$a;->c(I)La4/a$b;

    move-result-object v9

    .line 54
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v9, v9, La4/a$b;->b:Lm5/w;

    const/16 v10, 0x8

    .line 56
    invoke-virtual {v9, v10}, Lm5/w;->D(I)V

    .line 57
    invoke-virtual {v9}, Lm5/w;->e()I

    move-result v10

    const v11, 0xffffff

    and-int/2addr v10, v11

    .line 58
    invoke-virtual {v9}, Lm5/w;->e()I

    move-result v11

    if-eqz v4, :cond_d

    const/4 v11, 0x0

    .line 59
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    goto :goto_b

    :cond_d
    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    :goto_b
    check-cast v11, La4/e$b;

    if-nez v11, :cond_e

    const/4 v11, 0x0

    goto :goto_10

    :cond_e
    and-int/lit8 v12, v10, 0x1

    if-eqz v12, :cond_f

    .line 60
    invoke-virtual {v9}, Lm5/w;->x()J

    move-result-wide v12

    .line 61
    iget-object v14, v11, La4/e$b;->b:La4/n;

    iput-wide v12, v14, La4/n;->b:J

    .line 62
    iput-wide v12, v14, La4/n;->c:J

    .line 63
    :cond_f
    iget-object v12, v11, La4/e$b;->e:La4/c;

    and-int/lit8 v13, v10, 0x2

    if-eqz v13, :cond_10

    .line 64
    invoke-virtual {v9}, Lm5/w;->e()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_c

    .line 65
    :cond_10
    iget v13, v12, La4/c;->a:I

    :goto_c
    and-int/lit8 v14, v10, 0x8

    if-eqz v14, :cond_11

    .line 66
    invoke-virtual {v9}, Lm5/w;->e()I

    move-result v14

    goto :goto_d

    .line 67
    :cond_11
    iget v14, v12, La4/c;->b:I

    :goto_d
    and-int/lit8 v15, v10, 0x10

    if-eqz v15, :cond_12

    .line 68
    invoke-virtual {v9}, Lm5/w;->e()I

    move-result v15

    goto :goto_e

    .line 69
    :cond_12
    iget v15, v12, La4/c;->c:I

    :goto_e
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_13

    .line 70
    invoke-virtual {v9}, Lm5/w;->e()I

    move-result v9

    goto :goto_f

    .line 71
    :cond_13
    iget v9, v12, La4/c;->d:I

    .line 72
    :goto_f
    iget-object v10, v11, La4/e$b;->b:La4/n;

    new-instance v12, La4/c;

    invoke-direct {v12, v13, v14, v15, v9}, La4/c;-><init>(IIII)V

    iput-object v12, v10, La4/n;->a:La4/c;

    :goto_10
    if-nez v11, :cond_14

    goto/16 :goto_34

    .line 73
    :cond_14
    iget-object v9, v11, La4/e$b;->b:La4/n;

    .line 74
    iget-wide v12, v9, La4/n;->p:J

    .line 75
    iget-boolean v10, v9, La4/n;->q:Z

    .line 76
    invoke-virtual {v11}, La4/e$b;->e()V

    const/4 v14, 0x1

    .line 77
    iput-boolean v14, v11, La4/e$b;->l:Z

    const v14, 0x74666474

    .line 78
    invoke-virtual {v8, v14}, La4/a$a;->c(I)La4/a$b;

    move-result-object v14

    if-eqz v14, :cond_16

    and-int/lit8 v15, v5, 0x2

    if-nez v15, :cond_16

    .line 79
    iget-object v10, v14, La4/a$b;->b:Lm5/w;

    const/16 v12, 0x8

    .line 80
    invoke-virtual {v10, v12}, Lm5/w;->D(I)V

    .line 81
    invoke-virtual {v10}, Lm5/w;->e()I

    move-result v12

    shr-int/lit8 v12, v12, 0x18

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15

    .line 82
    invoke-virtual {v10}, Lm5/w;->x()J

    move-result-wide v14

    goto :goto_11

    :cond_15
    invoke-virtual {v10}, Lm5/w;->u()J

    move-result-wide v14

    .line 83
    :goto_11
    iput-wide v14, v9, La4/n;->p:J

    .line 84
    iput-boolean v13, v9, La4/n;->q:Z

    goto :goto_12

    .line 85
    :cond_16
    iput-wide v12, v9, La4/n;->p:J

    .line 86
    iput-boolean v10, v9, La4/n;->q:Z

    .line 87
    :goto_12
    iget-object v10, v8, La4/a$a;->c:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v2

    :goto_13
    const v2, 0x7472756e

    if-ge v13, v12, :cond_18

    .line 89
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v4

    move-object/from16 v4, v17

    check-cast v4, La4/a$b;

    move/from16 v17, v6

    .line 90
    iget v6, v4, La4/a;->a:I

    if-ne v6, v2, :cond_17

    .line 91
    iget-object v2, v4, La4/a$b;->b:Lm5/w;

    const/16 v4, 0xc

    .line 92
    invoke-virtual {v2, v4}, Lm5/w;->D(I)V

    .line 93
    invoke-virtual {v2}, Lm5/w;->w()I

    move-result v2

    if-lez v2, :cond_17

    add-int/2addr v15, v2

    add-int/lit8 v14, v14, 0x1

    :cond_17
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v17

    move/from16 v4, v18

    goto :goto_13

    :cond_18
    move/from16 v18, v4

    move/from16 v17, v6

    const/4 v4, 0x0

    .line 94
    iput v4, v11, La4/e$b;->h:I

    .line 95
    iput v4, v11, La4/e$b;->g:I

    .line 96
    iput v4, v11, La4/e$b;->f:I

    .line 97
    iget-object v4, v11, La4/e$b;->b:La4/n;

    .line 98
    iput v14, v4, La4/n;->d:I

    .line 99
    iput v15, v4, La4/n;->e:I

    .line 100
    iget-object v6, v4, La4/n;->g:[I

    array-length v6, v6

    if-ge v6, v14, :cond_19

    .line 101
    new-array v6, v14, [J

    iput-object v6, v4, La4/n;->f:[J

    .line 102
    new-array v6, v14, [I

    iput-object v6, v4, La4/n;->g:[I

    .line 103
    :cond_19
    iget-object v6, v4, La4/n;->h:[I

    array-length v6, v6

    if-ge v6, v15, :cond_1a

    mul-int/lit8 v15, v15, 0x7d

    .line 104
    div-int/lit8 v15, v15, 0x64

    .line 105
    new-array v6, v15, [I

    iput-object v6, v4, La4/n;->h:[I

    .line 106
    new-array v6, v15, [J

    iput-object v6, v4, La4/n;->i:[J

    .line 107
    new-array v6, v15, [Z

    iput-object v6, v4, La4/n;->j:[Z

    .line 108
    new-array v6, v15, [Z

    iput-object v6, v4, La4/n;->l:[Z

    :cond_1a
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_14
    if-ge v4, v12, :cond_2f

    .line 109
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v14, v19

    check-cast v14, La4/a$b;

    .line 110
    iget v15, v14, La4/a;->a:I

    if-ne v15, v2, :cond_2e

    add-int/lit8 v2, v6, 0x1

    .line 111
    iget-object v14, v14, La4/a$b;->b:Lm5/w;

    const/16 v15, 0x8

    .line 112
    invoke-virtual {v14, v15}, Lm5/w;->D(I)V

    .line 113
    invoke-virtual {v14}, Lm5/w;->e()I

    move-result v15

    const v19, 0xffffff

    and-int v15, v15, v19

    move/from16 v19, v2

    .line 114
    iget-object v2, v11, La4/e$b;->d:La4/o;

    iget-object v2, v2, La4/o;->a:La4/l;

    move-object/from16 v22, v10

    .line 115
    iget-object v10, v11, La4/e$b;->b:La4/n;

    move/from16 v23, v12

    .line 116
    iget-object v12, v10, La4/n;->a:La4/c;

    sget v24, Lm5/g0;->a:I

    .line 117
    iget-object v0, v10, La4/n;->g:[I

    invoke-virtual {v14}, Lm5/w;->w()I

    move-result v24

    aput v24, v0, v6

    .line 118
    iget-object v0, v10, La4/n;->f:[J

    move/from16 v24, v7

    move-object/from16 v25, v8

    iget-wide v7, v10, La4/n;->b:J

    aput-wide v7, v0, v6

    and-int/lit8 v7, v15, 0x1

    if-eqz v7, :cond_1b

    .line 119
    aget-wide v7, v0, v6

    move-object/from16 v26, v3

    invoke-virtual {v14}, Lm5/w;->e()I

    move-result v3

    move/from16 v27, v4

    int-to-long v3, v3

    add-long/2addr v7, v3

    aput-wide v7, v0, v6

    goto :goto_15

    :cond_1b
    move-object/from16 v26, v3

    move/from16 v27, v4

    :goto_15
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_16

    :cond_1c
    const/4 v0, 0x0

    .line 120
    :goto_16
    iget v3, v12, La4/c;->d:I

    if-eqz v0, :cond_1d

    .line 121
    invoke-virtual {v14}, Lm5/w;->e()I

    move-result v3

    :cond_1d
    and-int/lit16 v4, v15, 0x100

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    goto :goto_17

    :cond_1e
    const/4 v4, 0x0

    :goto_17
    and-int/lit16 v7, v15, 0x200

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    goto :goto_18

    :cond_1f
    const/4 v7, 0x0

    :goto_18
    and-int/lit16 v8, v15, 0x400

    if-eqz v8, :cond_20

    const/4 v8, 0x1

    goto :goto_19

    :cond_20
    const/4 v8, 0x0

    :goto_19
    and-int/lit16 v15, v15, 0x800

    if-eqz v15, :cond_21

    const/4 v15, 0x1

    goto :goto_1a

    :cond_21
    const/4 v15, 0x0

    :goto_1a
    move/from16 v28, v3

    .line 122
    iget-object v3, v2, La4/l;->h:[J

    if-eqz v3, :cond_22

    move-object/from16 v29, v1

    array-length v1, v3

    move-object/from16 v30, v9

    const/4 v9, 0x1

    if-ne v1, v9, :cond_23

    const/4 v1, 0x0

    aget-wide v31, v3, v1

    const-wide/16 v20, 0x0

    cmp-long v3, v31, v20

    if-nez v3, :cond_23

    .line 123
    iget-object v3, v2, La4/l;->i:[J

    aget-wide v20, v3, v1

    goto :goto_1b

    :cond_22
    move-object/from16 v29, v1

    move-object/from16 v30, v9

    :cond_23
    const-wide/16 v20, 0x0

    .line 124
    :goto_1b
    iget-object v1, v10, La4/n;->h:[I

    .line 125
    iget-object v3, v10, La4/n;->i:[J

    .line 126
    iget-object v9, v10, La4/n;->j:[Z

    move-object/from16 v31, v9

    .line 127
    iget v9, v2, La4/l;->b:I

    move-object/from16 v32, v1

    const/4 v1, 0x2

    if-ne v9, v1, :cond_24

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_24

    const/4 v1, 0x1

    goto :goto_1c

    :cond_24
    const/4 v1, 0x0

    .line 128
    :goto_1c
    iget-object v9, v10, La4/n;->g:[I

    aget v6, v9, v6

    add-int/2addr v6, v13

    move v9, v1

    .line 129
    iget-wide v1, v2, La4/l;->c:J

    move-wide/from16 v39, v1

    .line 130
    iget-wide v1, v10, La4/n;->p:J

    :goto_1d
    if-ge v13, v6, :cond_2d

    if-eqz v4, :cond_25

    .line 131
    invoke-virtual {v14}, Lm5/w;->e()I

    move-result v33

    move/from16 v41, v4

    move/from16 v4, v33

    goto :goto_1e

    :cond_25
    move/from16 v41, v4

    iget v4, v12, La4/c;->b:I

    :goto_1e
    invoke-static {v4}, La4/e;->c(I)I

    if-eqz v7, :cond_26

    .line 132
    invoke-virtual {v14}, Lm5/w;->e()I

    move-result v33

    move/from16 v42, v5

    move/from16 v5, v33

    goto :goto_1f

    :cond_26
    move/from16 v42, v5

    iget v5, v12, La4/c;->c:I

    :goto_1f
    invoke-static {v5}, La4/e;->c(I)I

    if-eqz v8, :cond_27

    .line 133
    invoke-virtual {v14}, Lm5/w;->e()I

    move-result v33

    move/from16 v43, v0

    move/from16 v0, v33

    goto :goto_20

    :cond_27
    if-nez v13, :cond_28

    if-eqz v0, :cond_28

    move/from16 v43, v0

    move/from16 v0, v28

    goto :goto_20

    :cond_28
    move/from16 v43, v0

    .line 134
    iget v0, v12, La4/c;->d:I

    :goto_20
    if-eqz v15, :cond_29

    .line 135
    invoke-virtual {v14}, Lm5/w;->e()I

    move-result v33

    goto :goto_21

    :cond_29
    const/16 v33, 0x0

    :goto_21
    move/from16 v44, v6

    move/from16 v45, v7

    move/from16 v6, v33

    int-to-long v6, v6

    add-long/2addr v6, v1

    sub-long v33, v6, v20

    const-wide/32 v35, 0xf4240

    move-wide/from16 v37, v39

    .line 136
    invoke-static/range {v33 .. v38}, Lm5/g0;->R(JJJ)J

    move-result-wide v6

    aput-wide v6, v3, v13

    .line 137
    iget-boolean v6, v10, La4/n;->q:Z

    if-nez v6, :cond_2a

    .line 138
    aget-wide v6, v3, v13

    move/from16 v33, v8

    iget-object v8, v11, La4/e$b;->d:La4/o;

    move-object/from16 v34, v14

    move/from16 v35, v15

    iget-wide v14, v8, La4/o;->h:J

    add-long/2addr v6, v14

    aput-wide v6, v3, v13

    goto :goto_22

    :cond_2a
    move/from16 v33, v8

    move-object/from16 v34, v14

    move/from16 v35, v15

    .line 139
    :goto_22
    aput v5, v32, v13

    shr-int/lit8 v0, v0, 0x10

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2c

    if-eqz v9, :cond_2b

    if-nez v13, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    goto :goto_23

    :cond_2c
    const/4 v0, 0x0

    .line 140
    :goto_23
    aput-boolean v0, v31, v13

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v33

    move-object/from16 v14, v34

    move/from16 v15, v35

    move/from16 v4, v41

    move/from16 v5, v42

    move/from16 v0, v43

    move/from16 v6, v44

    move/from16 v7, v45

    goto/16 :goto_1d

    :cond_2d
    move/from16 v42, v5

    move/from16 v44, v6

    .line 141
    iput-wide v1, v10, La4/n;->p:J

    move/from16 v6, v19

    move/from16 v13, v44

    goto :goto_24

    :cond_2e
    move-object/from16 v29, v1

    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v42, v5

    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v30, v9

    move-object/from16 v22, v10

    move/from16 v23, v12

    :goto_24
    add-int/lit8 v4, v27, 0x1

    const v2, 0x7472756e

    move-object/from16 v0, p0

    move-object/from16 v10, v22

    move/from16 v12, v23

    move/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v3, v26

    move-object/from16 v1, v29

    move-object/from16 v9, v30

    move/from16 v5, v42

    goto/16 :goto_14

    :cond_2f
    move-object/from16 v29, v1

    move-object/from16 v26, v3

    move/from16 v42, v5

    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v30, v9

    .line 142
    iget-object v0, v11, La4/e$b;->d:La4/o;

    iget-object v0, v0, La4/o;->a:La4/l;

    move-object/from16 v1, v30

    iget-object v2, v1, La4/n;->a:La4/c;

    .line 143
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget v2, v2, La4/c;->a:I

    .line 145
    invoke-virtual {v0, v2}, La4/l;->a(I)La4/m;

    move-result-object v0

    const v2, 0x7361697a

    .line 146
    invoke-virtual {v8, v2}, La4/a$a;->c(I)La4/a$b;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 147
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v2, v2, La4/a$b;->b:Lm5/w;

    .line 149
    iget v3, v0, La4/m;->d:I

    const/16 v4, 0x8

    .line 150
    invoke-virtual {v2, v4}, Lm5/w;->D(I)V

    .line 151
    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v5

    const v6, 0xffffff

    and-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_30

    .line 152
    invoke-virtual {v2, v4}, Lm5/w;->E(I)V

    .line 153
    :cond_30
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v4

    .line 154
    invoke-virtual {v2}, Lm5/w;->w()I

    move-result v5

    .line 155
    iget v6, v1, La4/n;->e:I

    if-gt v5, v6, :cond_35

    if-nez v4, :cond_33

    .line 156
    iget-object v4, v1, La4/n;->l:[Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_25
    if-ge v6, v5, :cond_32

    .line 157
    invoke-virtual {v2}, Lm5/w;->t()I

    move-result v9

    add-int/2addr v7, v9

    if-le v9, v3, :cond_31

    const/4 v9, 0x1

    goto :goto_26

    :cond_31
    const/4 v9, 0x0

    .line 158
    :goto_26
    aput-boolean v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_32
    const/4 v2, 0x0

    goto :goto_28

    :cond_33
    if-le v4, v3, :cond_34

    const/4 v2, 0x1

    goto :goto_27

    :cond_34
    const/4 v2, 0x0

    :goto_27
    mul-int/2addr v4, v5

    const/4 v3, 0x0

    add-int/lit8 v7, v4, 0x0

    .line 159
    iget-object v4, v1, La4/n;->l:[Z

    invoke-static {v4, v3, v5, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    move v2, v3

    .line 160
    :goto_28
    iget-object v3, v1, La4/n;->l:[Z

    iget v4, v1, La4/n;->e:I

    invoke-static {v3, v5, v4, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v7, :cond_36

    .line 161
    iget-object v2, v1, La4/n;->n:Lm5/w;

    invoke-virtual {v2, v7}, Lm5/w;->A(I)V

    const/4 v2, 0x1

    .line 162
    iput-boolean v2, v1, La4/n;->k:Z

    .line 163
    iput-boolean v2, v1, La4/n;->o:Z

    goto :goto_29

    :cond_35
    const-string v0, "Saiz sample count "

    const-string v2, " is greater than fragment sample count"

    .line 164
    invoke-static {v0, v5, v2}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    iget v1, v1, La4/n;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_36
    :goto_29
    const v2, 0x7361696f

    .line 166
    invoke-virtual {v8, v2}, La4/a$a;->c(I)La4/a$b;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 167
    iget-object v2, v2, La4/a$b;->b:Lm5/w;

    const/16 v3, 0x8

    .line 168
    invoke-virtual {v2, v3}, Lm5/w;->D(I)V

    .line 169
    invoke-virtual {v2}, Lm5/w;->e()I

    move-result v4

    const v5, 0xffffff

    and-int/2addr v5, v4

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_37

    .line 170
    invoke-virtual {v2, v3}, Lm5/w;->E(I)V

    .line 171
    :cond_37
    invoke-virtual {v2}, Lm5/w;->w()I

    move-result v3

    if-ne v3, v6, :cond_39

    shr-int/lit8 v3, v4, 0x18

    and-int/lit16 v3, v3, 0xff

    .line 172
    iget-wide v4, v1, La4/n;->c:J

    if-nez v3, :cond_38

    .line 173
    invoke-virtual {v2}, Lm5/w;->u()J

    move-result-wide v2

    goto :goto_2a

    :cond_38
    invoke-virtual {v2}, Lm5/w;->x()J

    move-result-wide v2

    :goto_2a
    add-long/2addr v4, v2

    iput-wide v4, v1, La4/n;->c:J

    goto :goto_2b

    .line 174
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected saio entry count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_3a
    :goto_2b
    const/4 v2, 0x0

    const v3, 0x73656e63

    .line 175
    invoke-virtual {v8, v3}, La4/a$a;->c(I)La4/a$b;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 176
    iget-object v3, v3, La4/a$b;->b:Lm5/w;

    const/4 v4, 0x0

    .line 177
    invoke-static {v3, v4, v1}, La4/e;->i(Lm5/w;ILa4/n;)V

    :cond_3b
    if-eqz v0, :cond_3c

    .line 178
    iget-object v0, v0, La4/m;->b:Ljava/lang/String;

    move-object/from16 v32, v0

    goto :goto_2c

    :cond_3c
    move-object/from16 v32, v2

    :goto_2c
    const/4 v0, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 179
    :goto_2d
    iget-object v5, v8, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3f

    .line 180
    iget-object v5, v8, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La4/a$b;

    .line 181
    iget-object v6, v5, La4/a$b;->b:Lm5/w;

    .line 182
    iget v5, v5, La4/a;->a:I

    const v7, 0x73626770

    const v9, 0x73656967

    if-ne v5, v7, :cond_3d

    const/16 v5, 0xc

    .line 183
    invoke-virtual {v6, v5}, Lm5/w;->D(I)V

    .line 184
    invoke-virtual {v6}, Lm5/w;->e()I

    move-result v5

    if-ne v5, v9, :cond_3e

    move-object v3, v6

    goto :goto_2e

    :cond_3d
    const/16 v7, 0xc

    const v10, 0x73677064

    if-ne v5, v10, :cond_3e

    .line 185
    invoke-virtual {v6, v7}, Lm5/w;->D(I)V

    .line 186
    invoke-virtual {v6}, Lm5/w;->e()I

    move-result v5

    if-ne v5, v9, :cond_3e

    move-object v4, v6

    :cond_3e
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3f
    if-eqz v3, :cond_4a

    if-nez v4, :cond_40

    goto/16 :goto_31

    :cond_40
    const/16 v0, 0x8

    .line 187
    invoke-virtual {v3, v0}, Lm5/w;->D(I)V

    .line 188
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v5, 0x4

    .line 189
    invoke-virtual {v3, v5}, Lm5/w;->E(I)V

    const/4 v6, 0x1

    if-ne v0, v6, :cond_41

    .line 190
    invoke-virtual {v3, v5}, Lm5/w;->E(I)V

    .line 191
    :cond_41
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v0

    if-ne v0, v6, :cond_49

    const/16 v0, 0x8

    .line 192
    invoke-virtual {v4, v0}, Lm5/w;->D(I)V

    .line 193
    invoke-virtual {v4}, Lm5/w;->e()I

    move-result v0

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 194
    invoke-virtual {v4, v5}, Lm5/w;->E(I)V

    if-ne v0, v6, :cond_43

    .line 195
    invoke-virtual {v4}, Lm5/w;->u()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_42

    goto :goto_2f

    :cond_42
    const-string v0, "Variable length description in sgpd found (unsupported)"

    .line 196
    invoke-static {v0}, Ln3/i1;->c(Ljava/lang/String;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_43
    const/4 v3, 0x2

    if-lt v0, v3, :cond_44

    .line 197
    invoke-virtual {v4, v5}, Lm5/w;->E(I)V

    .line 198
    :cond_44
    :goto_2f
    invoke-virtual {v4}, Lm5/w;->u()J

    move-result-wide v5

    const-wide/16 v9, 0x1

    cmp-long v0, v5, v9

    if-nez v0, :cond_48

    const/4 v0, 0x1

    .line 199
    invoke-virtual {v4, v0}, Lm5/w;->E(I)V

    .line 200
    invoke-virtual {v4}, Lm5/w;->t()I

    move-result v3

    and-int/lit16 v5, v3, 0xf0

    shr-int/lit8 v35, v5, 0x4

    and-int/lit8 v36, v3, 0xf

    .line 201
    invoke-virtual {v4}, Lm5/w;->t()I

    move-result v3

    if-ne v3, v0, :cond_45

    const/4 v0, 0x1

    goto :goto_30

    :cond_45
    const/4 v0, 0x0

    :goto_30
    move/from16 v31, v0

    if-nez v31, :cond_46

    goto :goto_31

    .line 202
    :cond_46
    invoke-virtual {v4}, Lm5/w;->t()I

    move-result v33

    const/16 v0, 0x10

    new-array v3, v0, [B

    const/4 v5, 0x0

    .line 203
    invoke-virtual {v4, v3, v5, v0}, Lm5/w;->d([BII)V

    if-nez v33, :cond_47

    .line 204
    invoke-virtual {v4}, Lm5/w;->t()I

    move-result v0

    .line 205
    new-array v2, v0, [B

    .line 206
    invoke-virtual {v4, v2, v5, v0}, Lm5/w;->d([BII)V

    :cond_47
    move-object/from16 v37, v2

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, v1, La4/n;->k:Z

    .line 208
    new-instance v0, La4/m;

    move-object/from16 v30, v0

    move-object/from16 v34, v3

    invoke-direct/range {v30 .. v37}, La4/m;-><init>(ZLjava/lang/String;I[BII[B)V

    iput-object v0, v1, La4/n;->m:La4/m;

    goto :goto_31

    :cond_48
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    .line 209
    invoke-static {v0}, Ln3/i1;->c(Ljava/lang/String;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_49
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    .line 210
    invoke-static {v0}, Ln3/i1;->c(Ljava/lang/String;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 211
    :cond_4a
    :goto_31
    iget-object v0, v8, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_32
    if-ge v2, v0, :cond_4d

    .line 212
    iget-object v3, v8, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La4/a$b;

    .line 213
    iget v4, v3, La4/a;->a:I

    const v5, 0x75756964

    if-ne v4, v5, :cond_4c

    .line 214
    iget-object v3, v3, La4/a$b;->b:Lm5/w;

    const/16 v4, 0x8

    .line 215
    invoke-virtual {v3, v4}, Lm5/w;->D(I)V

    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object/from16 v6, v29

    .line 216
    invoke-virtual {v3, v6, v4, v5}, Lm5/w;->d([BII)V

    .line 217
    sget-object v4, La4/e;->I:[B

    invoke-static {v6, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_33

    .line 218
    :cond_4b
    invoke-static {v3, v5, v1}, La4/e;->i(Lm5/w;ILa4/n;)V

    goto :goto_33

    :cond_4c
    move-object/from16 v6, v29

    :goto_33
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v29, v6

    goto :goto_32

    :cond_4d
    move-object/from16 v6, v29

    goto :goto_35

    :cond_4e
    :goto_34
    move-object/from16 v16, v2

    move-object/from16 v26, v3

    move/from16 v18, v4

    move/from16 v42, v5

    move/from16 v17, v6

    move/from16 v24, v7

    move-object v6, v1

    :goto_35
    add-int/lit8 v7, v24, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v16

    move/from16 v6, v17

    move/from16 v4, v18

    move-object/from16 v3, v26

    move/from16 v5, v42

    goto/16 :goto_a

    :cond_4f
    move-object/from16 v26, v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v2, v26

    .line 219
    iget-object v2, v2, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-static {v2}, La4/e;->h(Ljava/util/List;)Lr3/d;

    move-result-object v2

    move-object/from16 v3, p0

    if-eqz v2, :cond_51

    .line 220
    iget-object v4, v3, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v1

    :goto_36
    if-ge v5, v4, :cond_51

    .line 221
    iget-object v6, v3, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La4/e$b;

    .line 222
    iget-object v7, v6, La4/e$b;->d:La4/o;

    iget-object v7, v7, La4/o;->a:La4/l;

    iget-object v8, v6, La4/e$b;->b:La4/n;

    iget-object v8, v8, La4/n;->a:La4/c;

    .line 223
    sget v9, Lm5/g0;->a:I

    iget v8, v8, La4/c;->a:I

    .line 224
    invoke-virtual {v7, v8}, La4/l;->a(I)La4/m;

    move-result-object v7

    if-eqz v7, :cond_50

    .line 225
    iget-object v7, v7, La4/m;->b:Ljava/lang/String;

    goto :goto_37

    :cond_50
    move-object v7, v0

    .line 226
    :goto_37
    invoke-virtual {v2, v7}, Lr3/d;->a(Ljava/lang/String;)Lr3/d;

    move-result-object v7

    .line 227
    iget-object v8, v6, La4/e$b;->d:La4/o;

    iget-object v8, v8, La4/o;->a:La4/l;

    iget-object v8, v8, La4/l;->f:Ln3/s0;

    .line 228
    new-instance v9, Ln3/s0$a;

    invoke-direct {v9, v8}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 229
    iput-object v7, v9, Ln3/s0$a;->n:Lr3/d;

    .line 230
    new-instance v7, Ln3/s0;

    invoke-direct {v7, v9}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 231
    iget-object v6, v6, La4/e$b;->a:Ls3/w;

    invoke-interface {v6, v7}, Ls3/w;->b(Ln3/s0;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 232
    :cond_51
    iget-wide v4, v3, La4/e;->w:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-eqz v0, :cond_55

    .line 233
    iget-object v0, v3, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_38
    if-ge v1, v0, :cond_54

    .line 234
    iget-object v2, v3, La4/e;->d:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La4/e$b;

    iget-wide v4, v3, La4/e;->w:J

    .line 235
    iget v6, v2, La4/e$b;->f:I

    .line 236
    :goto_39
    iget-object v7, v2, La4/e$b;->b:La4/n;

    iget v8, v7, La4/n;->e:I

    if-ge v6, v8, :cond_53

    .line 237
    iget-object v8, v7, La4/n;->i:[J

    aget-wide v9, v8, v6

    cmp-long v8, v9, v4

    if-gez v8, :cond_53

    .line 238
    iget-object v7, v7, La4/n;->j:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_52

    .line 239
    iput v6, v2, La4/e$b;->i:I

    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_53
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_54
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 240
    iput-wide v0, v3, La4/e;->w:J

    :cond_55
    move-object v1, v3

    goto :goto_3a

    :cond_56
    move-object v2, v3

    move-object v3, v0

    .line 241
    iget-object v0, v1, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    .line 242
    iget-object v0, v1, La4/e;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/a$a;

    .line 243
    iget-object v0, v0, La4/a$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_3a
    move-object v0, v3

    goto/16 :goto_0

    :cond_58
    move-object v3, v0

    .line 244
    invoke-virtual/range {p0 .. p0}, La4/e;->d()V

    return-void
.end method
