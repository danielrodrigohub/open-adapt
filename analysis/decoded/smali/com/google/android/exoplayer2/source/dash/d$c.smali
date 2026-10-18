.class public final Lcom/google/android/exoplayer2/source/dash/d$c;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Ls3/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lp4/l0;

.field public final b:Ly0/r;

.field public final c:Lf4/d;

.field public d:J

.field public final synthetic e:Lcom/google/android/exoplayer2/source/dash/d;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/d;Ll5/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->e:Lcom/google/android/exoplayer2/source/dash/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lp4/l0;->g(Ll5/b;)Lp4/l0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lp4/l0;

    .line 3
    new-instance p1, Ly0/r;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ly0/r;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->b:Ly0/r;

    .line 4
    new-instance p1, Lf4/d;

    invoke-direct {p1}, Lf4/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lf4/d;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lp4/l0;

    invoke-interface {v0, p1, p2}, Ls3/w;->f(Lm5/w;I)V

    return-void
.end method

.method public final b(Ln3/s0;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lp4/l0;

    invoke-virtual {v0, p1}, Lp4/l0;->b(Ln3/s0;)V

    return-void
.end method

.method public final c(JIIILs3/w$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lp4/l0;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lp4/l0;->c(JIIILs3/w$a;)V

    .line 2
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lp4/l0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lp4/l0;->u(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lf4/d;

    invoke-virtual {p1}, Lq3/g;->o()V

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lp4/l0;

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->b:Ly0/r;

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lf4/d;

    .line 5
    invoke-virtual {p1, p3, p4, p2, p2}, Lp4/l0;->A(Ly0/r;Lq3/g;IZ)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lf4/d;

    invoke-virtual {p1}, Lq3/g;->s()V

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->c:Lf4/d;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-wide p3, p1, Lq3/g;->l:J

    .line 9
    iget-object p5, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->e:Lcom/google/android/exoplayer2/source/dash/d;

    .line 10
    iget-object p5, p5, Lcom/google/android/exoplayer2/source/dash/d;->j:Lh4/b;

    .line 11
    invoke-virtual {p5, p1}, Landroidx/fragment/app/r;->c(Lf4/d;)Lf4/a;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p1, Lf4/a;->h:[Lf4/a$b;

    aget-object p1, p1, p2

    .line 13
    check-cast p1, Lh4/a;

    .line 14
    iget-object p5, p1, Lh4/a;->h:Ljava/lang/String;

    iget-object p6, p1, Lh4/a;->i:Ljava/lang/String;

    const-string v0, "urn:mpeg:dash:event:2012"

    .line 15
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_5

    const-string p5, "1"

    .line 16
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4

    const-string p5, "2"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_4

    const-string p5, "3"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_5

    :cond_4
    move p2, v0

    :cond_5
    if-eqz p2, :cond_0

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    :try_start_0
    iget-object p1, p1, Lh4/a;->l:[B

    invoke-static {p1}, Lm5/g0;->n([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lm5/g0;->O(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ln3/i1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-wide p1, p5

    :goto_2
    cmp-long p5, p1, p5

    if-nez p5, :cond_6

    goto :goto_0

    .line 18
    :cond_6
    new-instance p5, Lcom/google/android/exoplayer2/source/dash/d$a;

    invoke-direct {p5, p3, p4, p1, p2}, Lcom/google/android/exoplayer2/source/dash/d$a;-><init>(JJ)V

    .line 19
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->e:Lcom/google/android/exoplayer2/source/dash/d;

    .line 20
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/d;->k:Landroid/os/Handler;

    .line 21
    invoke-virtual {p1, v0, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lp4/l0;

    .line 23
    iget-object p2, p1, Lp4/l0;->a:Lp4/k0;

    .line 24
    monitor-enter p1

    .line 25
    :try_start_1
    iget p3, p1, Lp4/l0;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p3, :cond_8

    const-wide/16 p3, -0x1

    .line 26
    monitor-exit p1

    goto :goto_3

    .line 27
    :cond_8
    :try_start_2
    invoke-virtual {p1, p3}, Lp4/l0;->h(I)J

    move-result-wide p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    .line 28
    :goto_3
    invoke-virtual {p2, p3, p4}, Lp4/k0;->b(J)V

    return-void

    :catchall_0
    move-exception p2

    .line 29
    monitor-exit p1

    throw p2
.end method

.method public final e(Ll5/h;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/d$c;->a:Lp4/l0;

    invoke-interface {v0, p1, p2, p3}, Ls3/w;->d(Ll5/h;IZ)I

    move-result p1

    return p1
.end method
