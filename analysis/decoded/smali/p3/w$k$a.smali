.class public final Lp3/w$k$a;
.super Landroid/media/AudioTrack$StreamEventCallback;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/w$k;-><init>(Lp3/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/w$k;


# direct methods
.method public constructor <init>(Lp3/w$k;)V
    .locals 0

    iput-object p1, p0, Lp3/w$k$a;->a:Lp3/w$k;

    invoke-direct {p0}, Landroid/media/AudioTrack$StreamEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataRequest(Landroid/media/AudioTrack;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lp3/w$k$a;->a:Lp3/w$k;

    iget-object p2, p2, Lp3/w$k;->c:Lp3/w;

    .line 2
    iget-object p2, p2, Lp3/w;->u:Landroid/media/AudioTrack;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lm5/a;->e(Z)V

    .line 4
    iget-object p1, p0, Lp3/w$k$a;->a:Lp3/w$k;

    iget-object p1, p1, Lp3/w$k;->c:Lp3/w;

    .line 5
    iget-object p2, p1, Lp3/w;->r:Lp3/q$c;

    if-eqz p2, :cond_1

    .line 6
    iget-boolean p1, p1, Lp3/w;->U:Z

    if-eqz p1, :cond_1

    .line 7
    check-cast p2, Lp3/a0$a;

    .line 8
    iget-object p1, p2, Lp3/a0$a;->a:Lp3/a0;

    .line 9
    iget-object p1, p1, Lp3/a0;->W0:Ln3/s1$a;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Ln3/s1$a;->b()V

    :cond_1
    return-void
.end method

.method public final onTearDown(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/w$k$a;->a:Lp3/w$k;

    iget-object v0, v0, Lp3/w$k;->c:Lp3/w;

    .line 2
    iget-object v0, v0, Lp3/w;->u:Landroid/media/AudioTrack;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-static {p1}, Lm5/a;->e(Z)V

    .line 4
    iget-object p1, p0, Lp3/w$k$a;->a:Lp3/w$k;

    iget-object p1, p1, Lp3/w$k;->c:Lp3/w;

    .line 5
    iget-object v0, p1, Lp3/w;->r:Lp3/q$c;

    if-eqz v0, :cond_1

    .line 6
    iget-boolean p1, p1, Lp3/w;->U:Z

    if-eqz p1, :cond_1

    .line 7
    check-cast v0, Lp3/a0$a;

    .line 8
    iget-object p1, v0, Lp3/a0$a;->a:Lp3/a0;

    .line 9
    iget-object p1, p1, Lp3/a0;->W0:Ln3/s1$a;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1}, Ln3/s1$a;->b()V

    :cond_1
    return-void
.end method
