.class public Lt2/d;
.super Ljava/lang/Object;
.source "DiskLruCacheFactory.java"

# interfaces
.implements Lt2/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt2/d$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lt2/d$a;


# direct methods
.method public constructor <init>(Lt2/d$a;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lt2/d;->a:J

    .line 3
    iput-object p1, p0, Lt2/d;->b:Lt2/d$a;

    return-void
.end method


# virtual methods
.method public final a()Lt2/a;
    .locals 4

    .line 1
    iget-object v0, p0, Lt2/d;->b:Lt2/d$a;

    check-cast v0, Lt2/f$a;

    .line 2
    iget-object v1, v0, Lt2/f$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, v0, Lt2/f$a;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 4
    new-instance v3, Ljava/io/File;

    iget-object v0, v0, Lt2/f$a;->b:Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    return-object v2

    .line 5
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return-object v2

    .line 6
    :cond_4
    :goto_1
    iget-wide v2, p0, Lt2/d;->a:J

    .line 7
    new-instance v0, Lt2/e;

    invoke-direct {v0, v1, v2, v3}, Lt2/e;-><init>(Ljava/io/File;J)V

    return-object v0
.end method
