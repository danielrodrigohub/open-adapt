.class public final synthetic Lw4/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lcom/google/android/exoplayer2/source/rtsp/g$f;

.field public final synthetic i:[B

.field public final synthetic j:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/g$f;[BLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw4/i;->h:Lcom/google/android/exoplayer2/source/rtsp/g$f;

    iput-object p2, p0, Lw4/i;->i:[B

    iput-object p3, p0, Lw4/i;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lw4/i;->h:Lcom/google/android/exoplayer2/source/rtsp/g$f;

    iget-object v1, p0, Lw4/i;->i:[B

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    :try_start_0
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/rtsp/g$f;->h:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/rtsp/g$f;->k:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 3
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/rtsp/g;->m:Z

    if-nez v1, :cond_0

    .line 4
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/g$f;->k:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 5
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/rtsp/g;->h:Lcom/google/android/exoplayer2/source/rtsp/g$c;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method
