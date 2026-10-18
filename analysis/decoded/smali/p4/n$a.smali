.class public final Lp4/n$a;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ls3/l;

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lt6/o<",
            "Lp4/x$a;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lp4/x$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ll5/j$a;

.field public f:Lr3/m;

.field public g:Ll5/c0;


# direct methods
.method public constructor <init>(Ls3/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp4/n$a;->a:Ls3/l;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lp4/n$a;->b:Ljava/util/HashMap;

    .line 4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lp4/n$a;->c:Ljava/util/HashSet;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lp4/n$a;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(I)Lt6/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lt6/o<",
            "Lp4/x$a;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lp4/x$a;

    iget-object v1, p0, Lp4/n$a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, p0, Lp4/n$a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt6/o;

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 3
    iget-object v2, p0, Lp4/n$a;->e:Ll5/j$a;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    :try_start_0
    new-instance v0, Lp4/m;

    invoke-direct {v0, p0, v2}, Lp4/m;-><init>(Lp4/n$a;Ll5/j$a;)V

    move-object v1, v0

    goto :goto_1

    .line 6
    :cond_2
    const-class v2, Lcom/google/android/exoplayer2/source/rtsp/RtspMediaSource$Factory;

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 8
    new-instance v2, Lp4/i;

    invoke-direct {v2, v0}, Lp4/i;-><init>(Ljava/lang/Class;)V

    move-object v1, v2

    goto :goto_1

    .line 9
    :cond_3
    const-class v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;

    .line 10
    invoke-virtual {v3, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 11
    new-instance v3, Lp4/l;

    invoke-direct {v3, v0, v2}, Lp4/l;-><init>(Ljava/lang/Class;Ll5/j$a;)V

    goto :goto_0

    .line 12
    :cond_4
    const-class v3, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    new-instance v3, Lp4/k;

    invoke-direct {v3, v0, v2}, Lp4/k;-><init>(Ljava/lang/Class;Ll5/j$a;)V

    goto :goto_0

    .line 15
    :cond_5
    const-class v3, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 17
    new-instance v3, Lp4/j;

    invoke-direct {v3, v0, v2}, Lp4/j;-><init>(Ljava/lang/Class;Ll5/j$a;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, v3

    .line 18
    :catch_0
    :goto_1
    iget-object v0, p0, Lp4/n$a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    .line 19
    iget-object v0, p0, Lp4/n$a;->c:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v1
.end method
