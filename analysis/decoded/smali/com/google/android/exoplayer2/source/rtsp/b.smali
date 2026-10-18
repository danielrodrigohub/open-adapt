.class public final Lcom/google/android/exoplayer2/source/rtsp/b;
.super Ljava/lang/Object;
.source "RtpDataLoadable.java"

# interfaces
.implements Ll5/d0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/b$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lw4/g;

.field public final c:Lcom/google/android/exoplayer2/source/rtsp/b$a;

.field public final d:Ls3/j;

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/google/android/exoplayer2/source/rtsp/a$a;

.field public g:Lw4/b;

.field public volatile h:Z

.field public volatile i:J

.field public volatile j:J


# direct methods
.method public constructor <init>(ILw4/g;Lcom/google/android/exoplayer2/source/rtsp/b$a;Ls3/j;Lcom/google/android/exoplayer2/source/rtsp/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->b:Lw4/g;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->c:Lcom/google/android/exoplayer2/source/rtsp/b$a;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->d:Ls3/j;

    const/4 p1, 0x0

    .line 6
    invoke-static {p1}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->e:Landroid/os/Handler;

    .line 8
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->f:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->f:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->a:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/a$a;->a(I)Lcom/google/android/exoplayer2/source/rtsp/a;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/rtsp/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->e:Landroid/os/Handler;

    new-instance v3, Lp4/y;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v1, v0, v4}, Lp4/y;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    new-instance v1, Ls3/e;

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v3, v1

    move-object v4, v0

    .line 5
    invoke-direct/range {v3 .. v8}, Ls3/e;-><init>(Ll5/h;JJ)V

    .line 6
    new-instance v2, Lw4/b;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->b:Lw4/g;

    iget-object v3, v3, Lw4/g;->a:Lw4/f;

    iget v4, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->a:I

    invoke-direct {v2, v3, v4}, Lw4/b;-><init>(Lw4/f;I)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lw4/b;

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->d:Ls3/j;

    invoke-virtual {v2, v3}, Lw4/b;->g(Ls3/j;)V

    .line 8
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->h:Z

    if-nez v2, :cond_2

    .line 9
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lw4/b;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->j:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    invoke-virtual {v2, v6, v7, v8, v9}, Lw4/b;->b(JJ)V

    .line 11
    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lw4/b;

    new-instance v3, Ls3/t;

    invoke-direct {v3}, Ls3/t;-><init>()V

    invoke-virtual {v2, v1, v3}, Lw4/b;->e(Ls3/i;Ls3/t;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 13
    :cond_2
    invoke-static {v0}, Lc3/d;->i(Ll5/j;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lc3/d;->i(Ll5/j;)V

    .line 14
    throw v1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->h:Z

    return-void
.end method
