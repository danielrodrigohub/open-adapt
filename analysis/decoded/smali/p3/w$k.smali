.class public final Lp3/w$k;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lp3/w$k$a;

.field public final synthetic c:Lp3/w;


# direct methods
.method public constructor <init>(Lp3/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/w$k;->c:Lp3/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lp3/w$k;->a:Landroid/os/Handler;

    .line 3
    new-instance p1, Lp3/w$k$a;

    invoke-direct {p1, p0}, Lp3/w$k$a;-><init>(Lp3/w$k;)V

    iput-object p1, p0, Lp3/w$k;->b:Lp3/w$k$a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object v0, p0, Lp3/w$k;->a:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lj5/j;

    invoke-direct {v1, v0}, Lj5/j;-><init>(Landroid/os/Handler;)V

    iget-object v0, p0, Lp3/w$k;->b:Lp3/w$k$a;

    invoke-virtual {p1, v1, v0}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public final b(Landroid/media/AudioTrack;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/w$k;->b:Lp3/w$k$a;

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    .line 2
    iget-object p1, p0, Lp3/w$k;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
