.class public final Lr4/d;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Ls3/j;
.implements Lr4/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr4/d$a;
    }
.end annotation


# static fields
.field public static final q:Ln3/t0;

.field public static final r:Ls3/t;


# instance fields
.field public final h:Ls3/h;

.field public final i:I

.field public final j:Ln3/s0;

.field public final k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lr4/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Lr4/f$b;

.field public n:J

.field public o:Ls3/u;

.field public p:[Ln3/s0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ln3/t0;->g:Ln3/t0;

    sput-object v0, Lr4/d;->q:Ln3/t0;

    .line 2
    new-instance v0, Ls3/t;

    invoke-direct {v0}, Ls3/t;-><init>()V

    sput-object v0, Lr4/d;->r:Ls3/t;

    return-void
.end method

.method public constructor <init>(Ls3/h;ILn3/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr4/d;->h:Ls3/h;

    .line 3
    iput p2, p0, Lr4/d;->i:I

    .line 4
    iput-object p3, p0, Lr4/d;->j:Ln3/s0;

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lr4/d;->k:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(Lr4/f$b;JJ)V
    .locals 5

    .line 1
    iput-object p1, p0, Lr4/d;->m:Lr4/f$b;

    .line 2
    iput-wide p4, p0, Lr4/d;->n:J

    .line 3
    iget-boolean v0, p0, Lr4/d;->l:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lr4/d;->h:Ls3/h;

    invoke-interface {p1, p0}, Ls3/h;->g(Ls3/j;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lr4/d;->h:Ls3/h;

    invoke-interface {p1, v3, v4, p2, p3}, Ls3/h;->b(JJ)V

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lr4/d;->l:Z

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lr4/d;->h:Ls3/h;

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    move-wide p2, v3

    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Ls3/h;->b(JJ)V

    const/4 p2, 0x0

    .line 8
    :goto_0
    iget-object p3, p0, Lr4/d;->k:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    .line 9
    iget-object p3, p0, Lr4/d;->k:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lr4/d$a;

    invoke-virtual {p3, p1, p4, p5}, Lr4/d$a;->g(Lr4/f$b;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/d;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Ln3/s0;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lr4/d;->k:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lr4/d;->k:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr4/d$a;

    iget-object v2, v2, Lr4/d$a;->e:Ln3/s0;

    invoke-static {v2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput-object v0, p0, Lr4/d;->p:[Ln3/s0;

    return-void
.end method

.method public final c(Ls3/i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lr4/d;->h:Ls3/h;

    sget-object v1, Lr4/d;->r:Ls3/t;

    invoke-interface {v0, p1, v1}, Ls3/h;->e(Ls3/i;Ls3/t;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    invoke-static {v2}, Lm5/a;->e(Z)V

    if-nez p1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public final j(Ls3/u;)V
    .locals 0

    iput-object p1, p0, Lr4/d;->o:Ls3/u;

    return-void
.end method

.method public final p(II)Ls3/w;
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/d;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/d$a;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lr4/d;->p:[Ln3/s0;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 3
    new-instance v0, Lr4/d$a;

    .line 4
    iget v1, p0, Lr4/d;->i:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lr4/d;->j:Ln3/s0;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-direct {v0, p1, p2, v1}, Lr4/d$a;-><init>(IILn3/s0;)V

    .line 5
    iget-object p2, p0, Lr4/d;->m:Lr4/f$b;

    iget-wide v1, p0, Lr4/d;->n:J

    invoke-virtual {v0, p2, v1, v2}, Lr4/d$a;->g(Lr4/f$b;J)V

    .line 6
    iget-object p2, p0, Lr4/d;->k:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method
