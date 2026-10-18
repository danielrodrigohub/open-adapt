.class public final Lr4/h$a;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lp4/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr4/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final h:Lr4/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/h<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final i:Lp4/l0;

.field public final j:I

.field public k:Z

.field public final synthetic l:Lr4/h;


# direct methods
.method public constructor <init>(Lr4/h;Lr4/h;Lp4/l0;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/h<",
            "TT;>;",
            "Lp4/l0;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lr4/h$a;->l:Lr4/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lr4/h$a;->h:Lr4/h;

    .line 3
    iput-object p3, p0, Lr4/h$a;->i:Lp4/l0;

    .line 4
    iput p4, p0, Lr4/h$a;->j:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lr4/h$a;->k:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lr4/h$a;->l:Lr4/h;

    .line 3
    iget-object v1, v0, Lr4/h;->n:Lp4/e0$a;

    .line 4
    iget-object v2, v0, Lr4/h;->i:[I

    .line 5
    iget v3, p0, Lr4/h$a;->j:I

    aget v2, v2, v3

    .line 6
    iget-object v4, v0, Lr4/h;->j:[Ln3/s0;

    .line 7
    aget-object v3, v4, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    iget-wide v6, v0, Lr4/h;->A:J

    .line 9
    invoke-virtual/range {v1 .. v7}, Lp4/e0$a;->b(ILn3/s0;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lr4/h$a;->k:Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lr4/h$a;->l:Lr4/h;

    .line 2
    iget-object v0, v0, Lr4/h;->k:[Z

    .line 3
    iget v1, p0, Lr4/h$a;->j:I

    aget-boolean v0, v0, v1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 4
    iget-object v0, p0, Lr4/h$a;->l:Lr4/h;

    .line 5
    iget-object v0, v0, Lr4/h;->k:[Z

    .line 6
    iget v1, p0, Lr4/h$a;->j:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

.method public final isReady()Z
    .locals 2

    iget-object v0, p0, Lr4/h$a;->l:Lr4/h;

    invoke-virtual {v0}, Lr4/h;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lr4/h$a;->i:Lp4/l0;

    iget-object v1, p0, Lr4/h$a;->l:Lr4/h;

    iget-boolean v1, v1, Lr4/h;->D:Z

    invoke-virtual {v0, v1}, Lp4/l0;->u(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j(Ly0/r;Lq3/g;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lr4/h$a;->l:Lr4/h;

    invoke-virtual {v0}, Lr4/h;->x()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lr4/h$a;->l:Lr4/h;

    .line 3
    iget-object v0, v0, Lr4/h;->C:Lr4/a;

    if-eqz v0, :cond_1

    .line 4
    iget v2, p0, Lr4/h$a;->j:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lr4/a;->e(I)I

    move-result v0

    iget-object v2, p0, Lr4/h$a;->i:Lp4/l0;

    .line 5
    iget v3, v2, Lp4/l0;->q:I

    iget v2, v2, Lp4/l0;->s:I

    add-int/2addr v3, v2

    if-gt v0, v3, :cond_1

    return v1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lr4/h$a;->a()V

    .line 7
    iget-object v0, p0, Lr4/h$a;->i:Lp4/l0;

    iget-object v1, p0, Lr4/h$a;->l:Lr4/h;

    iget-boolean v1, v1, Lr4/h;->D:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lp4/l0;->A(Ly0/r;Lq3/g;IZ)I

    move-result p1

    return p1
.end method

.method public final p(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/h$a;->l:Lr4/h;

    invoke-virtual {v0}, Lr4/h;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lr4/h$a;->i:Lp4/l0;

    iget-object v1, p0, Lr4/h$a;->l:Lr4/h;

    iget-boolean v1, v1, Lr4/h;->D:Z

    invoke-virtual {v0, p1, p2, v1}, Lp4/l0;->r(JZ)I

    move-result p1

    .line 3
    iget-object p2, p0, Lr4/h$a;->l:Lr4/h;

    .line 4
    iget-object p2, p2, Lr4/h;->C:Lr4/a;

    if-eqz p2, :cond_1

    .line 5
    iget v0, p0, Lr4/h$a;->j:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lr4/a;->e(I)I

    move-result p2

    iget-object v0, p0, Lr4/h$a;->i:Lp4/l0;

    .line 6
    iget v1, v0, Lp4/l0;->q:I

    iget v0, v0, Lp4/l0;->s:I

    add-int/2addr v1, v0

    sub-int/2addr p2, v1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 8
    :cond_1
    iget-object p2, p0, Lr4/h$a;->i:Lp4/l0;

    invoke-virtual {p2, p1}, Lp4/l0;->F(I)V

    if-lez p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lr4/h$a;->a()V

    :cond_2
    return p1
.end method
