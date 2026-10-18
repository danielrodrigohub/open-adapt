.class public final Lx4/j;
.super Ljava/lang/Object;
.source "RtpPcmReader.java"

# interfaces
.implements Lx4/i;


# instance fields
.field public final a:Lw4/f;

.field public b:Ls3/w;

.field public c:J

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>(Lw4/f;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx4/j;->a:Lw4/f;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v0, p0, Lx4/j;->c:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lx4/j;->d:J

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lx4/j;->e:I

    return-void
.end method


# virtual methods
.method public final a(Lm5/w;JIZ)V
    .locals 10

    .line 1
    iget-object p5, p0, Lx4/j;->b:Ls3/w;

    .line 2
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget p5, p0, Lx4/j;->e:I

    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    .line 4
    invoke-static {p5}, Lw4/c;->a(I)I

    move-result p5

    if-eq p4, p5, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 5
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, v0, v1

    const/4 p5, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p5

    const-string p5, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d."

    .line 6
    invoke-static {p5, v0}, Lm5/g0;->m(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "RtpPcmReader"

    .line 7
    invoke-static {v0, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-wide v0, p0, Lx4/j;->d:J

    iget-wide v2, p0, Lx4/j;->c:J

    iget-object p5, p0, Lx4/j;->a:Lw4/f;

    iget p5, p5, Lw4/f;->b:I

    sub-long v4, p2, v2

    int-to-long v8, p5

    const-wide/32 v6, 0xf4240

    .line 9
    invoke-static/range {v4 .. v9}, Lm5/g0;->R(JJJ)J

    move-result-wide p2

    add-long v3, v0, p2

    .line 10
    iget p2, p1, Lm5/w;->c:I

    iget p3, p1, Lm5/w;->b:I

    sub-int v6, p2, p3

    .line 11
    iget-object p2, p0, Lx4/j;->b:Ls3/w;

    invoke-interface {p2, p1, v6}, Ls3/w;->f(Lm5/w;I)V

    .line 12
    iget-object v2, p0, Lx4/j;->b:Ls3/w;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 13
    iput p4, p0, Lx4/j;->e:I

    return-void
.end method

.method public final b(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lx4/j;->c:J

    .line 2
    iput-wide p3, p0, Lx4/j;->d:J

    return-void
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lx4/j;->c:J

    return-void
.end method

.method public final d(Ls3/j;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, p2, v0}, Ls3/j;->p(II)Ls3/w;

    move-result-object p1

    iput-object p1, p0, Lx4/j;->b:Ls3/w;

    .line 2
    iget-object p2, p0, Lx4/j;->a:Lw4/f;

    iget-object p2, p2, Lw4/f;->c:Ln3/s0;

    invoke-interface {p1, p2}, Ls3/w;->b(Ln3/s0;)V

    return-void
.end method
