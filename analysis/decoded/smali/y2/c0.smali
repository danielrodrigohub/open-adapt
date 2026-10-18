.class public final Ly2/c0;
.super Ljava/lang/Object;
.source "VideoDecoder.java"

# interfaces
.implements Lp2/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly2/c0$h;,
        Ly2/c0$d;,
        Ly2/c0$g;,
        Ly2/c0$c;,
        Ly2/c0$f;,
        Ly2/c0$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp2/j<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lp2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/g<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Ly2/c0$e;


# instance fields
.field public final a:Ly2/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly2/c0$f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ls2/d;

.field public final c:Ly2/c0$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, -0x1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ly2/c0$a;

    invoke-direct {v1}, Ly2/c0$a;-><init>()V

    .line 2
    new-instance v2, Lp2/g;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    invoke-direct {v2, v3, v0, v1}, Lp2/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lp2/g$b;)V

    .line 3
    sput-object v2, Ly2/c0;->d:Lp2/g;

    const/4 v0, 0x2

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ly2/c0$b;

    invoke-direct {v1}, Ly2/c0$b;-><init>()V

    .line 5
    new-instance v2, Lp2/g;

    const-string v3, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    invoke-direct {v2, v3, v0, v1}, Lp2/g;-><init>(Ljava/lang/String;Ljava/lang/Object;Lp2/g$b;)V

    .line 6
    sput-object v2, Ly2/c0;->e:Lp2/g;

    .line 7
    new-instance v0, Ly2/c0$e;

    invoke-direct {v0}, Ly2/c0$e;-><init>()V

    sput-object v0, Ly2/c0;->f:Ly2/c0$e;

    return-void
.end method

.method public constructor <init>(Ls2/d;Ly2/c0$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls2/d;",
            "Ly2/c0$f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/c0;->f:Ly2/c0$e;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Ly2/c0;->b:Ls2/d;

    .line 4
    iput-object p2, p0, Ly2/c0;->a:Ly2/c0$f;

    .line 5
    iput-object v0, p0, Ly2/c0;->c:Ly2/c0$e;

    return-void
.end method

.method public static c(Landroid/media/MediaMetadataRetriever;JIIILy2/m;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_2

    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_2

    if-eq p5, v0, :cond_2

    sget-object v0, Ly2/m;->d:Ly2/m$d;

    if-eq p6, v0, :cond_2

    const/16 v0, 0x12

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    .line 4
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    .line 6
    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_0

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    :cond_0
    move v8, v1

    move v1, v0

    move v0, v8

    .line 8
    :cond_1
    invoke-virtual {p6, v0, v1, p4, p5}, Ly2/m;->b(IIII)F

    move-result p4

    int-to-float p5, v0

    mul-float/2addr p5, p4

    .line 9
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float p5, v1

    mul-float/2addr p4, p5

    .line 10
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    .line 11
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p4

    const/4 p5, 0x3

    const-string p6, "VideoDecoder"

    .line 12
    invoke-static {p6, p5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p5

    if-eqz p5, :cond_2

    const-string p5, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame"

    .line 13
    invoke-static {p6, p5, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-nez p4, :cond_3

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_3
    if-eqz p4, :cond_4

    return-object p4

    .line 15
    :cond_4
    new-instance p0, Ly2/c0$h;

    invoke-direct {p0}, Ly2/c0$h;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lp2/h;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lp2/h;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public final b(Ljava/lang/Object;IILp2/h;)Lr2/w;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lp2/h;",
            ")",
            "Lr2/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Ly2/c0;->d:Lp2/g;

    invoke-virtual {p4, v0}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    .line 3
    invoke-static {p2, v2, v3}, Landroidx/fragment/app/r0;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    sget-object v0, Ly2/c0;->e:Lp2/g;

    invoke-virtual {p4, v0}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 7
    :cond_2
    sget-object v1, Ly2/m;->f:Lp2/g;

    invoke-virtual {p4, v1}, Lp2/h;->c(Lp2/g;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ly2/m;

    if-nez p4, :cond_3

    .line 8
    sget-object p4, Ly2/m;->e:Ly2/m$b;

    :cond_3
    move-object v7, p4

    .line 9
    iget-object p4, p0, Ly2/c0;->c:Ly2/c0$e;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance p4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/16 v8, 0x1d

    .line 11
    :try_start_0
    iget-object v1, p0, Ly2/c0;->a:Ly2/c0$f;

    invoke-interface {v1, p4, p1}, Ly2/c0$f;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object v1, p4

    move v5, p2

    move v6, p3

    .line 13
    invoke-static/range {v1 .. v7}, Ly2/c0;->c(Landroid/media/MediaMetadataRetriever;JIIILy2/m;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v8, :cond_4

    .line 15
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->close()V

    goto :goto_1

    .line 16
    :cond_4
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 17
    :goto_1
    iget-object p2, p0, Ly2/c0;->b:Ls2/d;

    invoke-static {p1, p2}, Ly2/e;->d(Landroid/graphics/Bitmap;Ls2/d;)Ly2/e;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 18
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v8, :cond_5

    .line 19
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->close()V

    goto :goto_2

    .line 20
    :cond_5
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    :goto_2
    throw p1
.end method
