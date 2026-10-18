.class public final Ln5/g$b;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"

# interfaces
.implements Le4/l$c;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final h:Landroid/os/Handler;

.field public final synthetic i:Ln5/g;


# direct methods
.method public constructor <init>(Ln5/g;Le4/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln5/g$b;->i:Ln5/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lm5/g0;->l(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Ln5/g$b;->h:Landroid/os/Handler;

    .line 3
    invoke-interface {p2, p0, p1}, Le4/l;->m(Le4/l$c;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln5/g$b;->i:Ln5/g;

    iget-object v1, v0, Ln5/g;->t1:Ln5/g$b;

    if-eq p0, v1, :cond_0

    return-void

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, v0, Le4/o;->F0:Z

    goto :goto_0

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ln5/g;->M0(J)V
    :try_end_0
    .catch Ln3/q; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    iget-object p2, p0, Ln5/g$b;->i:Ln5/g;

    .line 5
    iput-object p1, p2, Le4/o;->G0:Ln3/q;

    :goto_0
    return-void
.end method

.method public final b(J)V
    .locals 4

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Ln5/g$b;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x20

    shr-long v2, p1, v2

    long-to-int v2, v2

    long-to-int p1, p1

    .line 3
    invoke-static {v0, v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p2, p0, Ln5/g$b;->h:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Ln5/g$b;->a(J)V

    :goto_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 3
    invoke-static {v0}, Lm5/g0;->W(I)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p1}, Lm5/g0;->W(I)J

    move-result-wide v2

    or-long/2addr v0, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Ln5/g$b;->a(J)V

    const/4 p1, 0x1

    return p1
.end method
