.class public final Lokhttp3/CacheControl$Builder;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private immutable:Z

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private noStore:Z

.field private noTransform:Z

.field private onlyIfCached:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    .line 3
    iput v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    .line 4
    iput v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method


# virtual methods
.method public final build()Lokhttp3/CacheControl;
    .locals 1

    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonBuild(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl;

    move-result-object v0

    return-object v0
.end method

.method public final getImmutable$okhttp()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl$Builder;->immutable:Z

    return v0
.end method

.method public final getMaxAgeSeconds$okhttp()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    return v0
.end method

.method public final getMaxStaleSeconds$okhttp()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    return v0
.end method

.method public final getMinFreshSeconds$okhttp()I
    .locals 1

    iget v0, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return v0
.end method

.method public final getNoCache$okhttp()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noCache:Z

    return v0
.end method

.method public final getNoStore$okhttp()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noStore:Z

    return v0
.end method

.method public final getNoTransform$okhttp()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl$Builder;->noTransform:Z

    return v0
.end method

.method public final getOnlyIfCached$okhttp()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    return v0
.end method

.method public final immutable()Lokhttp3/CacheControl$Builder;
    .locals 1

    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonImmutable(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 2

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    int-to-long v0, p1

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    .line 3
    invoke-static {p1, p2}, Lokhttp3/internal/_CacheControlCommonKt;->commonClampToInt(J)I

    move-result p1

    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    return-object p0

    :cond_1
    const-string p2, "maxAge < 0: "

    .line 4
    invoke-static {p2, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final maxAge(ILzd/c;)Lokhttp3/CacheControl$Builder;
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lokhttp3/CacheControl$Builder;->toJavaTimeUnit$okhttp(Lzd/c;)Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxAge(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 2

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    int-to-long v0, p1

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    .line 3
    invoke-static {p1, p2}, Lokhttp3/internal/_CacheControlCommonKt;->commonClampToInt(J)I

    move-result p1

    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    return-object p0

    :cond_1
    const-string p2, "maxStale < 0: "

    .line 4
    invoke-static {p2, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final maxStale(ILzd/c;)Lokhttp3/CacheControl$Builder;
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lokhttp3/CacheControl$Builder;->toJavaTimeUnit$okhttp(Lzd/c;)Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final minFresh(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;
    .locals 2

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    int-to-long v0, p1

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    .line 3
    invoke-static {p1, p2}, Lokhttp3/internal/_CacheControlCommonKt;->commonClampToInt(J)I

    move-result p1

    iput p1, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-object p0

    :cond_1
    const-string p2, "minFresh < 0: "

    .line 4
    invoke-static {p2, p1}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final minFresh(ILzd/c;)Lokhttp3/CacheControl$Builder;
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lokhttp3/CacheControl$Builder;->toJavaTimeUnit$okhttp(Lzd/c;)Ljava/util/concurrent/TimeUnit;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lokhttp3/CacheControl$Builder;->minFresh(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final noCache()Lokhttp3/CacheControl$Builder;
    .locals 1

    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonNoCache(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final noStore()Lokhttp3/CacheControl$Builder;
    .locals 1

    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonNoStore(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final noTransform()Lokhttp3/CacheControl$Builder;
    .locals 1

    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonNoTransform(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final onlyIfCached()Lokhttp3/CacheControl$Builder;
    .locals 1

    invoke-static {p0}, Lokhttp3/internal/_CacheControlCommonKt;->commonOnlyIfCached(Lokhttp3/CacheControl$Builder;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final setImmutable$okhttp(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/CacheControl$Builder;->immutable:Z

    return-void
.end method

.method public final setMaxAgeSeconds$okhttp(I)V
    .locals 0

    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    return-void
.end method

.method public final setMaxStaleSeconds$okhttp(I)V
    .locals 0

    iput p1, p0, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    return-void
.end method

.method public final setMinFreshSeconds$okhttp(I)V
    .locals 0

    iput p1, p0, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    return-void
.end method

.method public final setNoCache$okhttp(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/CacheControl$Builder;->noCache:Z

    return-void
.end method

.method public final setNoStore$okhttp(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/CacheControl$Builder;->noStore:Z

    return-void
.end method

.method public final setNoTransform$okhttp(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/CacheControl$Builder;->noTransform:Z

    return-void
.end method

.method public final setOnlyIfCached$okhttp(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    return-void
.end method

.method public final toJavaTimeUnit$okhttp(Lzd/c;)Ljava/util/concurrent/TimeUnit;
    .locals 1

    const-string v0, "durationUnit"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/concurrent/TimeUnit;->valueOf(Ljava/lang/String;)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    return-object p1
.end method
