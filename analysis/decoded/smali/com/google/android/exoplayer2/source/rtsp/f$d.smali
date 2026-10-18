.class public final Lcom/google/android/exoplayer2/source/rtsp/f$d;
.super Ljava/lang/Object;
.source "RtspMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/rtsp/f$c;

.field public final b:Ll5/d0;

.field public final c:Lp4/l0;

.field public d:Z

.field public e:Z

.field public final synthetic f:Lcom/google/android/exoplayer2/source/rtsp/f;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lw4/g;ILcom/google/android/exoplayer2/source/rtsp/a$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->f:Lcom/google/android/exoplayer2/source/rtsp/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/rtsp/f$c;-><init>(Lcom/google/android/exoplayer2/source/rtsp/f;Lw4/g;ILcom/google/android/exoplayer2/source/rtsp/a$a;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a:Lcom/google/android/exoplayer2/source/rtsp/f$c;

    .line 3
    new-instance p2, Ll5/d0;

    const-string p4, "ExoPlayer:RtspMediaPeriod:RtspLoaderWrapper "

    .line 4
    invoke-static {p4, p3}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-direct {p2, p3}, Ll5/d0;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->b:Ll5/d0;

    .line 6
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->h:Ll5/b;

    .line 7
    invoke-static {p2}, Lp4/l0;->g(Ll5/b;)Lp4/l0;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->c:Lp4/l0;

    .line 8
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/f;->j:Lcom/google/android/exoplayer2/source/rtsp/f$a;

    .line 9
    iput-object p1, p2, Lp4/l0;->f:Lp4/l0$c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->d:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->a:Lcom/google/android/exoplayer2/source/rtsp/f$c;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/f$c;->b:Lcom/google/android/exoplayer2/source/rtsp/b;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/rtsp/b;->h:Z

    .line 5
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->d:Z

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/f$d;->f:Lcom/google/android/exoplayer2/source/rtsp/f;

    .line 7
    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Z

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Z

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/rtsp/f$d;

    .line 10
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/rtsp/f$d;->d:Z

    and-int/2addr v2, v3

    .line 11
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/source/rtsp/f;->w:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
