.class public final Lokhttp3/internal/cache/DiskLruCache$fileSystem$1;
.super Lde/l;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/cache/DiskLruCache;-><init>(Lde/k;Lde/a0;IIJLokhttp3/internal/concurrent/TaskRunner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lde/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/l;-><init>(Lde/k;)V

    return-void
.end method


# virtual methods
.method public sink(Lde/a0;Z)Lde/h0;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lde/a0;->i()Lde/a0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lde/k;->createDirectories(Lde/a0;)V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lde/l;->sink(Lde/a0;Z)Lde/h0;

    move-result-object p1

    return-object p1
.end method
