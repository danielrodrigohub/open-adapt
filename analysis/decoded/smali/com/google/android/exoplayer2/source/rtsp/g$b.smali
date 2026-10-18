.class public final Lcom/google/android/exoplayer2/source/rtsp/g$b;
.super Ljava/lang/Object;
.source "RtspMessageChannel.java"

# interfaces
.implements Ll5/d0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll5/d0$a<",
        "Lcom/google/android/exoplayer2/source/rtsp/g$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/google/android/exoplayer2/source/rtsp/g;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/rtsp/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->h:Lcom/google/android/exoplayer2/source/rtsp/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic h(Ll5/d0$d;JJ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/g$e;

    return-void
.end method

.method public final bridge synthetic k(Ll5/d0$d;JJZ)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/g$e;

    return-void
.end method

.method public final m(Ll5/d0$d;JJLjava/io/IOException;I)Ll5/d0$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/rtsp/g$e;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->h:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 3
    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->m:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/g$b;->h:Lcom/google/android/exoplayer2/source/rtsp/g;

    .line 5
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/rtsp/g;->h:Lcom/google/android/exoplayer2/source/rtsp/g$c;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    sget-object p1, Ll5/d0;->e:Ll5/d0$b;

    return-object p1
.end method
