.class public abstract La5/d;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lz4/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La5/d$c;,
        La5/d$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "La5/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lz4/m;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "La5/d$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:La5/d$b;

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, La5/d;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, La5/d;->a:Ljava/util/ArrayDeque;

    new-instance v3, La5/d$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, La5/d$b;-><init>(La5/d$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, La5/d;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, La5/d;->b:Ljava/util/ArrayDeque;

    new-instance v2, La5/d$c;

    new-instance v3, Ln3/x;

    const/4 v4, 0x3

    invoke-direct {v3, p0, v4}, Ln3/x;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v2, v3}, La5/d$c;-><init>(Lq3/h$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, La5/d;->c:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final b(J)V
    .locals 0

    iput-wide p1, p0, La5/d;->e:J

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    .line 1
    check-cast p1, Lz4/l;

    .line 2
    iget-object v0, p0, La5/d;->d:La5/d$b;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    check-cast p1, La5/d$b;

    .line 4
    invoke-virtual {p1}, Lq3/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lq3/g;->o()V

    .line 6
    iget-object v0, p0, La5/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    iget-wide v0, p0, La5/d;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, La5/d;->f:J

    .line 8
    iput-wide v0, p1, La5/d$b;->q:J

    .line 9
    iget-object v0, p0, La5/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, La5/d;->d:La5/d$b;

    return-void
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    invoke-virtual {p0}, La5/d;->h()Lz4/m;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    .line 1
    iget-object v0, p0, La5/d;->d:La5/d$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, La5/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, La5/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/d$b;

    iput-object v0, p0, La5/d;->d:La5/d$b;

    :goto_1
    return-object v0
.end method

.method public abstract f()Lz4/g;
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, La5/d;->f:J

    .line 2
    iput-wide v0, p0, La5/d;->e:J

    .line 3
    :goto_0
    iget-object v0, p0, La5/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, La5/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/d$b;

    sget v1, Lm5/g0;->a:I

    invoke-virtual {p0, v0}, La5/d;->j(La5/d$b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, La5/d;->d:La5/d$b;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lq3/g;->o()V

    .line 7
    iget-object v1, p0, La5/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, La5/d;->d:La5/d$b;

    :cond_1
    return-void
.end method

.method public abstract g(Lz4/l;)V
.end method

.method public h()Lz4/m;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lz4/i;
        }
    .end annotation

    .line 1
    iget-object v0, p0, La5/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, La5/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, La5/d;->c:Ljava/util/PriorityQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/d$b;

    sget v2, Lm5/g0;->a:I

    iget-wide v2, v0, Lq3/g;->l:J

    iget-wide v4, p0, La5/d;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 4
    iget-object v0, p0, La5/d;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La5/d$b;

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v0, v2}, Lq3/a;->l(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v1, p0, La5/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/m;

    .line 7
    invoke-virtual {v1, v2}, Lq3/a;->k(I)V

    .line 8
    invoke-virtual {v0}, Lq3/g;->o()V

    .line 9
    iget-object v2, p0, La5/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, La5/d;->g(Lz4/l;)V

    .line 11
    invoke-virtual {p0}, La5/d;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {p0}, La5/d;->f()Lz4/g;

    move-result-object v6

    .line 13
    iget-object v1, p0, La5/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz4/m;

    .line 14
    iget-wide v4, v0, Lq3/g;->l:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lz4/m;->q(JLz4/g;J)V

    .line 15
    invoke-virtual {v0}, Lq3/g;->o()V

    .line 16
    iget-object v2, p0, La5/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 17
    :cond_2
    invoke-virtual {v0}, Lq3/g;->o()V

    .line 18
    iget-object v2, p0, La5/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public abstract i()Z
.end method

.method public final j(La5/d$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lq3/g;->o()V

    .line 2
    iget-object v0, p0, La5/d;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
