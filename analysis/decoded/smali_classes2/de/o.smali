.class public final Lde/o;
.super Lde/k0;
.source "ForwardingTimeout.kt"


# instance fields
.field public a:Lde/k0;


# direct methods
.method public constructor <init>(Lde/k0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lde/k0;-><init>()V

    .line 2
    iput-object p1, p0, Lde/o;->a:Lde/k0;

    return-void
.end method


# virtual methods
.method public final clearDeadline()Lde/k0;
    .locals 1

    iget-object v0, p0, Lde/o;->a:Lde/k0;

    invoke-virtual {v0}, Lde/k0;->clearDeadline()Lde/k0;

    move-result-object v0

    return-object v0
.end method

.method public final clearTimeout()Lde/k0;
    .locals 1

    iget-object v0, p0, Lde/o;->a:Lde/k0;

    invoke-virtual {v0}, Lde/k0;->clearTimeout()Lde/k0;

    move-result-object v0

    return-object v0
.end method

.method public final deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lde/o;->a:Lde/k0;

    invoke-virtual {v0}, Lde/k0;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final deadlineNanoTime(J)Lde/k0;
    .locals 1

    .line 2
    iget-object v0, p0, Lde/o;->a:Lde/k0;

    invoke-virtual {v0, p1, p2}, Lde/k0;->deadlineNanoTime(J)Lde/k0;

    move-result-object p1

    return-object p1
.end method

.method public final hasDeadline()Z
    .locals 1

    iget-object v0, p0, Lde/o;->a:Lde/k0;

    invoke-virtual {v0}, Lde/k0;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lde/o;->a:Lde/k0;

    invoke-virtual {v0}, Lde/k0;->throwIfReached()V

    return-void
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lde/k0;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lde/o;->a:Lde/k0;

    invoke-virtual {v0, p1, p2, p3}, Lde/k0;->timeout(JLjava/util/concurrent/TimeUnit;)Lde/k0;

    move-result-object p1

    return-object p1
.end method

.method public final timeoutNanos()J
    .locals 2

    iget-object v0, p0, Lde/o;->a:Lde/k0;

    invoke-virtual {v0}, Lde/k0;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
