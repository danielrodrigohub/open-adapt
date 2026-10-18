.class public final Lo3/r0$a;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/b2$b;

.field public b:Lu6/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Lp4/x$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lu6/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/x<",
            "Lp4/x$b;",
            "Ln3/b2;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lp4/x$b;

.field public e:Lp4/x$b;

.field public f:Lp4/x$b;


# direct methods
.method public constructor <init>(Ln3/b2$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo3/r0$a;->a:Ln3/b2$b;

    .line 3
    sget-object p1, Lu6/v;->i:Lu6/v$b;

    .line 4
    sget-object p1, Lu6/p0;->l:Lu6/p0;

    .line 5
    iput-object p1, p0, Lo3/r0$a;->b:Lu6/v;

    .line 6
    sget-object p1, Lu6/q0;->n:Lu6/q0;

    iput-object p1, p0, Lo3/r0$a;->c:Lu6/q0;

    return-void
.end method

.method public static b(Ln3/o1;Lu6/v;Lp4/x$b;Ln3/b2$b;)Lp4/x$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/o1;",
            "Lu6/v<",
            "Lp4/x$b;",
            ">;",
            "Lp4/x$b;",
            "Ln3/b2$b;",
            ")",
            "Lp4/x$b;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ln3/o1;->O()Ln3/b2;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Ln3/o1;->x()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ln3/b2;->o(I)Ljava/lang/Object;

    move-result-object v2

    .line 4
    :goto_0
    invoke-interface {p0}, Ln3/o1;->j()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ln3/b2;->s()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v1, p3, v5}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Ln3/o1;->b0()J

    move-result-wide v6

    invoke-static {v6, v7}, Lm5/g0;->L(J)J

    move-result-wide v6

    .line 7
    iget-wide v8, p3, Ln3/b2$b;->l:J

    sub-long/2addr v6, v8

    .line 8
    invoke-virtual {v0, v6, v7}, Ln3/b2$b;->c(J)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, -0x1

    :goto_2
    move v0, v5

    .line 9
    :goto_3
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp4/x$b;

    .line 11
    invoke-interface {p0}, Ln3/o1;->j()Z

    move-result v6

    .line 12
    invoke-interface {p0}, Ln3/o1;->B()I

    move-result v7

    .line 13
    invoke-interface {p0}, Ln3/o1;->G()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    .line 14
    invoke-static/range {v4 .. v9}, Lo3/r0$a;->c(Lp4/x$b;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 16
    invoke-interface {p0}, Ln3/o1;->j()Z

    move-result v6

    .line 17
    invoke-interface {p0}, Ln3/o1;->B()I

    move-result v7

    .line 18
    invoke-interface {p0}, Ln3/o1;->G()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    .line 19
    invoke-static/range {v4 .. v9}, Lo3/r0$a;->c(Lp4/x$b;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method public static c(Lp4/x$b;Ljava/lang/Object;ZIII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget p1, p0, Lp4/w;->b:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lp4/w;->c:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget p1, p0, Lp4/w;->b:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget p0, p0, Lp4/w;->e:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method


# virtual methods
.method public final a(Lu6/x$a;Lp4/x$b;Ln3/b2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/x$a<",
            "Lp4/x$b;",
            "Ln3/b2;",
            ">;",
            "Lp4/x$b;",
            "Ln3/b2;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p2, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, p2, p3}, Lu6/x$a;->c(Ljava/lang/Object;Ljava/lang/Object;)Lu6/x$a;

    goto :goto_0

    .line 3
    :cond_1
    iget-object p3, p0, Lo3/r0$a;->c:Lu6/q0;

    invoke-virtual {p3, p2}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ln3/b2;

    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p1, p2, p3}, Lu6/x$a;->c(Ljava/lang/Object;Ljava/lang/Object;)Lu6/x$a;

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Ln3/b2;)V
    .locals 3

    .line 1
    new-instance v0, Lu6/x$a;

    const/4 v1, 0x4

    .line 2
    invoke-direct {v0, v1}, Lu6/x$a;-><init>(I)V

    .line 3
    iget-object v1, p0, Lo3/r0$a;->b:Lu6/v;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lo3/r0$a;->e:Lp4/x$b;

    invoke-virtual {p0, v0, v1, p1}, Lo3/r0$a;->a(Lu6/x$a;Lp4/x$b;Ln3/b2;)V

    .line 5
    iget-object v1, p0, Lo3/r0$a;->f:Lp4/x$b;

    iget-object v2, p0, Lo3/r0$a;->e:Lp4/x$b;

    invoke-static {v1, v2}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Lo3/r0$a;->f:Lp4/x$b;

    invoke-virtual {p0, v0, v1, p1}, Lo3/r0$a;->a(Lu6/x$a;Lp4/x$b;Ln3/b2;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lo3/r0$a;->d:Lp4/x$b;

    iget-object v2, p0, Lo3/r0$a;->e:Lp4/x$b;

    invoke-static {v1, v2}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lo3/r0$a;->d:Lp4/x$b;

    iget-object v2, p0, Lo3/r0$a;->f:Lp4/x$b;

    .line 8
    invoke-static {v1, v2}, Lt6/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 9
    iget-object v1, p0, Lo3/r0$a;->d:Lp4/x$b;

    invoke-virtual {p0, v0, v1, p1}, Lo3/r0$a;->a(Lu6/x$a;Lp4/x$b;Ln3/b2;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lo3/r0$a;->b:Lu6/v;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 11
    iget-object v2, p0, Lo3/r0$a;->b:Lu6/v;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp4/x$b;

    invoke-virtual {p0, v0, v2, p1}, Lo3/r0$a;->a(Lu6/x$a;Lp4/x$b;Ln3/b2;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lo3/r0$a;->b:Lu6/v;

    iget-object v2, p0, Lo3/r0$a;->d:Lp4/x$b;

    invoke-virtual {v1, v2}, Lu6/v;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 13
    iget-object v1, p0, Lo3/r0$a;->d:Lp4/x$b;

    invoke-virtual {p0, v0, v1, p1}, Lo3/r0$a;->a(Lu6/x$a;Lp4/x$b;Ln3/b2;)V

    .line 14
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lu6/x$a;->a()Lu6/x;

    move-result-object p1

    check-cast p1, Lu6/q0;

    iput-object p1, p0, Lo3/r0$a;->c:Lu6/q0;

    return-void
.end method
