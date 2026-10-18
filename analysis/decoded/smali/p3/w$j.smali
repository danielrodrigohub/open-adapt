.class public final Lp3/w$j;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lp3/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Lp3/w;


# direct methods
.method public constructor <init>(Lp3/w;)V
    .locals 0

    iput-object p1, p0, Lp3/w$j;->a:Lp3/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/w$j;->a:Lp3/w;

    .line 2
    iget-object v0, v0, Lp3/w;->r:Lp3/q$c;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lp3/a0$a;

    .line 4
    iget-object v0, v0, Lp3/a0$a;->a:Lp3/a0;

    .line 5
    iget-object v0, v0, Lp3/a0;->N0:Lp3/p$a;

    .line 6
    iget-object v1, v0, Lp3/p$a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 7
    new-instance v2, Lp3/l;

    invoke-direct {v2, v0, p1, p2}, Lp3/l;-><init>(Lp3/p$a;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(IJ)V
    .locals 12

    .line 1
    iget-object v0, p0, Lp3/w$j;->a:Lp3/w;

    .line 2
    iget-object v0, v0, Lp3/w;->r:Lp3/q$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lp3/w$j;->a:Lp3/w;

    .line 4
    iget-wide v3, v2, Lp3/w;->Z:J

    sub-long v10, v0, v3

    .line 5
    iget-object v0, v2, Lp3/w;->r:Lp3/q$c;

    .line 6
    check-cast v0, Lp3/a0$a;

    .line 7
    iget-object v0, v0, Lp3/a0$a;->a:Lp3/a0;

    .line 8
    iget-object v6, v0, Lp3/a0;->N0:Lp3/p$a;

    .line 9
    iget-object v0, v6, Lp3/p$a;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lp3/k;

    move-object v5, v1

    move v7, p1

    move-wide v8, p2

    invoke-direct/range {v5 .. v11}, Lp3/k;-><init>(Lp3/p$a;IJJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final c(JJJJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lp3/w$j;->a:Lp3/w;

    .line 2
    iget-object p3, p2, Lp3/w;->t:Lp3/w$f;

    iget p4, p3, Lp3/w$f;->c:I

    if-nez p4, :cond_0

    .line 3
    iget-wide p4, p2, Lp3/w;->B:J

    iget p2, p3, Lp3/w$f;->b:I

    int-to-long p2, p2

    div-long/2addr p4, p2

    goto :goto_0

    .line 4
    :cond_0
    iget-wide p4, p2, Lp3/w;->C:J

    .line 5
    :goto_0
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lp3/w$j;->a:Lp3/w;

    .line 6
    invoke-virtual {p1}, Lp3/w;->E()J

    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    .line 8
    invoke-static {p2, p1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(JJJJ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lp3/w$j;->a:Lp3/w;

    .line 2
    iget-object p3, p2, Lp3/w;->t:Lp3/w$f;

    iget p4, p3, Lp3/w$f;->c:I

    if-nez p4, :cond_0

    .line 3
    iget-wide p4, p2, Lp3/w;->B:J

    iget p2, p3, Lp3/w$f;->b:I

    int-to-long p2, p2

    div-long/2addr p4, p2

    goto :goto_0

    .line 4
    :cond_0
    iget-wide p4, p2, Lp3/w;->C:J

    .line 5
    :goto_0
    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lp3/w$j;->a:Lp3/w;

    .line 6
    invoke-virtual {p1}, Lp3/w;->E()J

    move-result-wide p1

    .line 7
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    .line 8
    invoke-static {p2, p1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring impossibly large audio latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DefaultAudioSink"

    invoke-static {p2, p1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
