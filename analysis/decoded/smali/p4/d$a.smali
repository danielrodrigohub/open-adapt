.class public final Lp4/d$a;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Lp4/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final h:Lp4/m0;

.field public i:Z

.field public final synthetic j:Lp4/d;


# direct methods
.method public constructor <init>(Lp4/d;Lp4/m0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4/d$a;->j:Lp4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lp4/d$a;->h:Lp4/m0;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lp4/d$a;->h:Lp4/m0;

    invoke-interface {v0}, Lp4/m0;->b()V

    return-void
.end method

.method public final isReady()Z
    .locals 1

    iget-object v0, p0, Lp4/d$a;->j:Lp4/d;

    invoke-virtual {v0}, Lp4/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lp4/d$a;->h:Lp4/m0;

    invoke-interface {v0}, Lp4/m0;->isReady()Z

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
    .locals 10

    .line 1
    iget-object v0, p0, Lp4/d$a;->j:Lp4/d;

    invoke-virtual {v0}, Lp4/d;->b()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lp4/d$a;->i:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 3
    iput v2, p2, Lq3/a;->h:I

    return v3

    .line 4
    :cond_1
    iget-object v0, p0, Lp4/d$a;->h:Lp4/m0;

    invoke-interface {v0, p1, p2, p3}, Lp4/m0;->j(Ly0/r;Lq3/g;I)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    .line 5
    iget-object p2, p1, Ly0/r;->c:Ljava/lang/Object;

    check-cast p2, Ln3/s0;

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget p3, p2, Ln3/s0;->I:I

    if-nez p3, :cond_2

    iget v1, p2, Ln3/s0;->J:I

    if-eqz v1, :cond_5

    .line 8
    :cond_2
    iget-object v1, p0, Lp4/d$a;->j:Lp4/d;

    iget-wide v2, v1, Lp4/d;->l:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    move p3, v3

    .line 9
    :cond_3
    iget-wide v1, v1, Lp4/d;->m:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget v3, p2, Ln3/s0;->J:I

    .line 10
    :goto_0
    invoke-virtual {p2}, Ln3/s0;->b()Ln3/s0$a;

    move-result-object p2

    .line 11
    iput p3, p2, Ln3/s0$a;->A:I

    .line 12
    iput v3, p2, Ln3/s0$a;->B:I

    .line 13
    invoke-virtual {p2}, Ln3/s0$a;->a()Ln3/s0;

    move-result-object p2

    iput-object p2, p1, Ly0/r;->c:Ljava/lang/Object;

    :cond_5
    return v0

    .line 14
    :cond_6
    iget-object p1, p0, Lp4/d$a;->j:Lp4/d;

    iget-wide v6, p1, Lp4/d;->m:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v8, p2, Lq3/g;->l:J

    cmp-long v0, v8, v6

    if-gez v0, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    .line 15
    invoke-virtual {p1}, Lp4/d;->e()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9

    iget-boolean p1, p2, Lq3/g;->k:Z

    if-nez p1, :cond_9

    .line 16
    :cond_8
    invoke-virtual {p2}, Lq3/g;->o()V

    .line 17
    iput v2, p2, Lq3/a;->h:I

    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lp4/d$a;->i:Z

    return v3

    :cond_9
    return p3
.end method

.method public final p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lp4/d$a;->j:Lp4/d;

    invoke-virtual {v0}, Lp4/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lp4/d$a;->h:Lp4/m0;

    invoke-interface {v0, p1, p2}, Lp4/m0;->p(J)I

    move-result p1

    return p1
.end method
