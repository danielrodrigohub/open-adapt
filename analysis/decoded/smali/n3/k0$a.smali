.class public final Ln3/k0$a;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ln3/k0;Z)Lo3/v0;
    .locals 2

    const-string v0, "media_metrics"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/MediaMetricsManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lo3/t0;

    invoke-virtual {v0}, Landroid/media/metrics/MediaMetricsManager;->createPlaybackSession()Landroid/media/metrics/PlaybackSession;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lo3/t0;-><init>(Landroid/content/Context;Landroid/media/metrics/PlaybackSession;)V

    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    .line 3
    invoke-static {p0, p1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lo3/v0;

    sget-object p1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    .line 5
    new-instance p2, Lo3/v0$a;

    invoke-direct {p2, p1}, Lo3/v0$a;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0, p2}, Lo3/v0;-><init>(Lo3/v0$a;)V

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p1, Ln3/k0;->r:Lo3/a;

    invoke-interface {p1, p0}, Lo3/a;->c0(Lo3/b;)V

    .line 8
    :cond_2
    new-instance p1, Lo3/v0;

    .line 9
    iget-object p0, p0, Lo3/t0;->c:Landroid/media/metrics/PlaybackSession;

    invoke-virtual {p0}, Landroid/media/metrics/PlaybackSession;->getSessionId()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    .line 10
    new-instance p2, Lo3/v0$a;

    invoke-direct {p2, p0}, Lo3/v0$a;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p1, p2}, Lo3/v0;-><init>(Lo3/v0$a;)V

    return-object p1
.end method
