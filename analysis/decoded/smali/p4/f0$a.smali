.class public final Lp4/f0$a;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lj5/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lj5/l;

.field public final b:Lp4/t0;


# direct methods
.method public constructor <init>(Lj5/l;Lp4/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/f0$a;->a:Lj5/l;

    .line 3
    iput-object p2, p0, Lp4/f0$a;->b:Lp4/t0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/s0;)I
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1}, Lj5/o;->a(Ln3/s0;)I

    move-result p1

    return p1
.end method

.method public final b(IJ)Z
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1, p2, p3}, Lj5/l;->b(IJ)Z

    move-result p1

    return p1
.end method

.method public final c(IJ)Z
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1, p2, p3}, Lj5/l;->c(IJ)Z

    move-result p1

    return p1
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1}, Lj5/l;->d(Z)V

    return-void
.end method

.method public final disable()V
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/l;->disable()V

    return-void
.end method

.method public final e(I)Ln3/s0;
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1}, Lj5/o;->e(I)Ln3/s0;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lp4/f0$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lp4/f0$a;

    .line 3
    iget-object v1, p0, Lp4/f0$a;->a:Lj5/l;

    iget-object v3, p1, Lp4/f0$a;->a:Lj5/l;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp4/f0$a;->b:Lp4/t0;

    iget-object p1, p1, Lp4/f0$a;->b:Lp4/t0;

    invoke-virtual {v1, p1}, Lp4/t0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/l;->f()V

    return-void
.end method

.method public final g(JJJLjava/util/List;[Lr4/n;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lr4/m;",
            ">;[",
            "Lr4/n;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lp4/f0$a;->a:Lj5/l;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lj5/l;->g(JJJLjava/util/List;[Lr4/n;)V

    return-void
.end method

.method public final h(JLr4/e;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lr4/e;",
            "Ljava/util/List<",
            "+",
            "Lr4/m;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1, p2, p3, p4}, Lj5/l;->h(JLr4/e;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lp4/f0$a;->b:Lp4/t0;

    invoke-virtual {v0}, Lp4/t0;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i(I)I
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1}, Lj5/o;->i(I)I

    move-result p1

    return p1
.end method

.method public final j(JLjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lr4/m;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1, p2, p3}, Lj5/l;->j(JLjava/util/List;)I

    move-result p1

    return p1
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/l;->k()I

    move-result v0

    return v0
.end method

.method public final l()Lp4/t0;
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->b:Lp4/t0;

    return-object v0
.end method

.method public final length()I
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/o;->length()I

    move-result v0

    return v0
.end method

.method public final m()Ln3/s0;
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/l;->m()Ln3/s0;

    move-result-object v0

    return-object v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/l;->n()I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/l;->o()I

    move-result v0

    return v0
.end method

.method public final p(F)V
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1}, Lj5/l;->p(F)V

    return-void
.end method

.method public final q()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/l;->q()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/l;->r()V

    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0}, Lj5/l;->s()V

    return-void
.end method

.method public final t(I)I
    .locals 1

    iget-object v0, p0, Lp4/f0$a;->a:Lj5/l;

    invoke-interface {v0, p1}, Lj5/o;->t(I)I

    move-result p1

    return p1
.end method
