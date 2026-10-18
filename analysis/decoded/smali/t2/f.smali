.class public final Lt2/f;
.super Lt2/d;
.source "InternalCacheDiskCacheFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lt2/f$a;

    const-string v1, "image_manager_disk_cache"

    invoke-direct {v0, p1, v1}, Lt2/f$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/32 v1, 0xfa00000

    invoke-direct {p0, v0, v1, v2}, Lt2/d;-><init>(Lt2/d$a;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 2
    new-instance p2, Lt2/f$a;

    const-string p3, "adapt_image_cache"

    invoke-direct {p2, p1, p3}, Lt2/f$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/32 p3, 0x6400000

    invoke-direct {p0, p2, p3, p4}, Lt2/d;-><init>(Lt2/d$a;J)V

    return-void
.end method
