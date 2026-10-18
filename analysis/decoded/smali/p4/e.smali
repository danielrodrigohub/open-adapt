.class public final Lp4/e;
.super Lp4/g;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp4/e$a;,
        Lp4/e$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp4/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public A:Lp4/e$b;

.field public B:J

.field public C:J

.field public final r:Lp4/x;

.field public final s:J

.field public final t:J

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lp4/d;",
            ">;"
        }
    .end annotation
.end field

.field public final y:Ln3/b2$d;

.field public z:Lp4/e$a;


# direct methods
.method public constructor <init>(Lp4/x;JJZZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lp4/g;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lp4/e;->r:Lp4/x;

    .line 5
    iput-wide p2, p0, Lp4/e;->s:J

    .line 6
    iput-wide p4, p0, Lp4/e;->t:J

    .line 7
    iput-boolean p6, p0, Lp4/e;->u:Z

    .line 8
    iput-boolean p7, p0, Lp4/e;->v:Z

    .line 9
    iput-boolean p8, p0, Lp4/e;->w:Z

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp4/e;->x:Ljava/util/ArrayList;

    .line 11
    new-instance p1, Ln3/b2$d;

    invoke-direct {p1}, Ln3/b2$d;-><init>()V

    iput-object p1, p0, Lp4/e;->y:Ln3/b2$d;

    return-void
.end method


# virtual methods
.method public final B(Ln3/b2;)V
    .locals 15

    move-object v1, p0

    .line 1
    iget-object v0, v1, Lp4/e;->y:Ln3/b2$d;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v2, v0}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 2
    iget-object v0, v1, Lp4/e;->y:Ln3/b2$d;

    .line 3
    iget-wide v5, v0, Ln3/b2$d;->x:J

    .line 4
    iget-object v0, v1, Lp4/e;->z:Lp4/e$a;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Lp4/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Lp4/e;->v:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-wide v9, v1, Lp4/e;->B:J

    sub-long/2addr v9, v5

    .line 6
    iget-wide v11, v1, Lp4/e;->t:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-wide v7, v1, Lp4/e;->C:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v9

    goto :goto_5

    .line 8
    :cond_2
    :goto_1
    iget-wide v9, v1, Lp4/e;->s:J

    .line 9
    iget-wide v11, v1, Lp4/e;->t:J

    .line 10
    iget-boolean v0, v1, Lp4/e;->w:Z

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, v1, Lp4/e;->y:Ln3/b2$d;

    .line 12
    iget-wide v13, v0, Ln3/b2$d;->t:J

    add-long/2addr v9, v13

    add-long/2addr v13, v11

    goto :goto_2

    :cond_3
    move-wide v13, v11

    :goto_2
    add-long v2, v5, v9

    .line 13
    iput-wide v2, v1, Lp4/e;->B:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    add-long v7, v5, v13

    .line 14
    :goto_3
    iput-wide v7, v1, Lp4/e;->C:J

    .line 15
    iget-object v0, v1, Lp4/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 16
    iget-object v3, v1, Lp4/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp4/d;

    iget-wide v5, v1, Lp4/e;->B:J

    iget-wide v7, v1, Lp4/e;->C:J

    .line 17
    iput-wide v5, v3, Lp4/d;->l:J

    .line 18
    iput-wide v7, v3, Lp4/d;->m:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move-wide v5, v9

    move-wide v7, v13

    .line 19
    :goto_5
    :try_start_0
    new-instance v0, Lp4/e$a;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lp4/e$a;-><init>(Ln3/b2;JJ)V

    iput-object v0, v1, Lp4/e;->z:Lp4/e$a;
    :try_end_0
    .catch Lp4/e$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-virtual {p0, v0}, Lp4/a;->w(Ln3/b2;)V

    return-void

    :catch_0
    move-exception v0

    .line 21
    iput-object v0, v1, Lp4/e;->A:Lp4/e$b;

    const/4 v2, 0x0

    .line 22
    :goto_6
    iget-object v0, v1, Lp4/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 23
    iget-object v0, v1, Lp4/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp4/d;

    iget-object v3, v1, Lp4/e;->A:Lp4/e$b;

    .line 24
    iput-object v3, v0, Lp4/d;->n:Lp4/e$b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method public final a()Ln3/y0;
    .locals 1

    iget-object v0, p0, Lp4/e;->r:Lp4/x;

    invoke-interface {v0}, Lp4/x;->a()Ln3/y0;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/e;->A:Lp4/e$b;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lp4/g;->b()V

    return-void

    .line 3
    :cond_0
    throw v0
.end method

.method public final d(Lp4/v;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/e;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Lp4/e;->r:Lp4/x;

    check-cast p1, Lp4/d;

    iget-object p1, p1, Lp4/d;->h:Lp4/v;

    invoke-interface {v0, p1}, Lp4/x;->d(Lp4/v;)V

    .line 3
    iget-object p1, p0, Lp4/e;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lp4/e;->v:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lp4/e;->z:Lp4/e$a;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p1, Lp4/p;->i:Ln3/b2;

    invoke-virtual {p0, p1}, Lp4/e;->B(Ln3/b2;)V

    :cond_0
    return-void
.end method

.method public final q(Lp4/x$b;Ll5/b;J)Lp4/v;
    .locals 8

    .line 1
    new-instance v7, Lp4/d;

    iget-object v0, p0, Lp4/e;->r:Lp4/x;

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lp4/x;->q(Lp4/x$b;Ll5/b;J)Lp4/v;

    move-result-object v1

    iget-boolean v2, p0, Lp4/e;->u:Z

    iget-wide v3, p0, Lp4/e;->B:J

    iget-wide v5, p0, Lp4/e;->C:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lp4/d;-><init>(Lp4/v;ZJJ)V

    .line 3
    iget-object p1, p0, Lp4/e;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public final v(Ll5/j0;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lp4/g;->v(Ll5/j0;)V

    .line 2
    iget-object p1, p0, Lp4/e;->r:Lp4/x;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lp4/g;->A(Ljava/lang/Object;Lp4/x;)V

    return-void
.end method

.method public final x()V
    .locals 1

    .line 1
    invoke-super {p0}, Lp4/g;->x()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lp4/e;->A:Lp4/e$b;

    .line 3
    iput-object v0, p0, Lp4/e;->z:Lp4/e$a;

    return-void
.end method

.method public final z(Ljava/lang/Object;Lp4/x;Ln3/b2;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lp4/e;->A:Lp4/e$b;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lp4/e;->B(Ln3/b2;)V

    :goto_0
    return-void
.end method
