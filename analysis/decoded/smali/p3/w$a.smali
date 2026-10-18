.class public final Lp3/w$a;
.super Ljava/lang/Thread;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/w;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Landroid/media/AudioTrack;

.field public final synthetic i:Lp3/w;


# direct methods
.method public constructor <init>(Lp3/w;Landroid/media/AudioTrack;)V
    .locals 0

    iput-object p1, p0, Lp3/w$a;->i:Lp3/w;

    iput-object p2, p0, Lp3/w$a;->h:Landroid/media/AudioTrack;

    const-string p1, "ExoPlayer:AudioTrackReleaseThread"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/w$a;->h:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 2
    iget-object v0, p0, Lp3/w$a;->h:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lp3/w$a;->i:Lp3/w;

    .line 4
    iget-object v0, v0, Lp3/w;->h:Lm5/e;

    .line 5
    invoke-virtual {v0}, Lm5/e;->c()Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lp3/w$a;->i:Lp3/w;

    .line 6
    iget-object v1, v1, Lp3/w;->h:Lm5/e;

    .line 7
    invoke-virtual {v1}, Lm5/e;->c()Z

    .line 8
    throw v0
.end method
