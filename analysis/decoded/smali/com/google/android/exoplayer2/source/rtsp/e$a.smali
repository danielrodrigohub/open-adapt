.class public final Lcom/google/android/exoplayer2/source/rtsp/e$a;
.super Ljava/lang/Object;
.source "RtspHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/rtsp/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lu6/w$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/w$a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lu6/w$a;

    invoke-direct {v0}, Lu6/w$a;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e$a;->a:Lu6/w$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/rtsp/e$a;-><init>()V

    const-string v0, "User-Agent"

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/source/rtsp/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$a;

    .line 5
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "CSeq"

    invoke-virtual {p0, p3, p1}, Lcom/google/android/exoplayer2/source/rtsp/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$a;

    if-eqz p2, :cond_0

    const-string p1, "Session"

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/rtsp/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/rtsp/e$a;->a:Lu6/w$a;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/rtsp/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1, p2}, Lu6/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, v0, Lu6/z$a;->a:Lu6/m;

    invoke-virtual {v1, p1}, Lu6/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 6
    iget-object v0, v0, Lu6/z$a;->a:Lu6/m;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v0, p1, v1}, Lu6/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/google/android/exoplayer2/source/rtsp/e$a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/source/rtsp/e$a;"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget v3, Lm5/g0;->a:I

    const-string v3, ":\\s?"

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 4
    array-length v3, v2

    if-ne v3, v4, :cond_0

    .line 5
    aget-object v3, v2, v0

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {p0, v3, v2}, Lcom/google/android/exoplayer2/source/rtsp/e$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/rtsp/e$a;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final c()Lcom/google/android/exoplayer2/source/rtsp/e;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/source/rtsp/e;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/rtsp/e;-><init>(Lcom/google/android/exoplayer2/source/rtsp/e$a;)V

    return-object v0
.end method
