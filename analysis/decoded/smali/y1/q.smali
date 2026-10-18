.class public final Ly1/q;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ly1/k0<",
            "Ly1/i;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ly1/q;->a:Ljava/util/HashMap;

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Ly1/q;->b:[B

    return-void

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x3t
        0x4t
    .end array-data
.end method

.method public static a(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ly1/k0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ly1/j0<",
            "Ly1/i;",
            ">;>;)",
            "Ly1/k0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Ld2/g;->b:Ld2/g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Ld2/g;->a:Lp/e;

    invoke-virtual {v0, p0}, Lp/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/i;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ly1/k0;

    new-instance p1, Ly1/n;

    invoke-direct {p1, v0}, Ly1/n;-><init>(Ly1/i;)V

    .line 5
    invoke-direct {p0, p1, v1}, Ly1/k0;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    .line 6
    sget-object v0, Ly1/q;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly1/k0;

    return-object p0

    .line 8
    :cond_2
    new-instance v0, Ly1/k0;

    .line 9
    invoke-direct {v0, p1, v1}, Ly1/k0;-><init>(Ljava/util/concurrent/Callable;Z)V

    if-eqz p0, :cond_3

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 11
    new-instance v1, Ly1/o;

    invoke-direct {v1, p0, p1}, Ly1/o;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v1}, Ly1/k0;->b(Ly1/g0;)Ly1/k0;

    .line 12
    new-instance v1, Ly1/p;

    invoke-direct {v1, p0, p1}, Ly1/p;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v0, v1}, Ly1/k0;->a(Ly1/g0;)Ly1/k0;

    .line 13
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    .line 14
    sget-object p1, Ly1/q;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ly1/j0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ly1/j0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, ".zip"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".lottie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, p2}, Ly1/q;->c(Ljava/io/InputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p2}, Ly1/q;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    new-instance p1, Ly1/j0;

    invoke-direct {p1, p0}, Ly1/j0;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static c(Ljava/io/InputStream;Ljava/lang/String;)Ly1/j0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ly1/j0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lde/w;->f(Ljava/io/InputStream;)Lde/j0;

    move-result-object v0

    invoke-static {v0}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object v0

    sget-object v1, Lj2/c;->l:[Ljava/lang/String;

    .line 2
    new-instance v1, Lj2/d;

    invoke-direct {v1, v0}, Lj2/d;-><init>(Lde/f;)V

    const/4 v0, 0x1

    .line 3
    invoke-static {v1, p1, v0}, Ly1/q;->d(Lj2/c;Ljava/lang/String;Z)Ly1/j0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {p0}, Lk2/g;->b(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lk2/g;->b(Ljava/io/Closeable;)V

    .line 5
    throw p1
.end method

.method public static d(Lj2/c;Ljava/lang/String;Z)Ly1/j0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj2/c;",
            "Ljava/lang/String;",
            "Z)",
            "Ly1/j0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Li2/w;->a(Lj2/c;)Ly1/i;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    sget-object v1, Ld2/g;->b:Ld2/g;

    .line 3
    invoke-virtual {v1, p1, v0}, Ld2/g;->a(Ljava/lang/String;Ly1/i;)V

    .line 4
    :cond_0
    new-instance p1, Ly1/j0;

    invoke-direct {p1, v0}, Ly1/j0;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 5
    invoke-static {p0}, Lk2/g;->b(Ljava/io/Closeable;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    new-instance v0, Ly1/j0;

    invoke-direct {v0, p1}, Ly1/j0;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 7
    invoke-static {p0}, Lk2/g;->b(Ljava/io/Closeable;)V

    :cond_2
    return-object v0

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p0}, Lk2/g;->b(Ljava/io/Closeable;)V

    .line 8
    :cond_3
    throw p1
.end method

.method public static e(Landroid/content/Context;ILjava/lang/String;)Ly1/j0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ly1/j0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Lde/w;->f(Ljava/io/InputStream;)Lde/j0;

    move-result-object p0

    invoke-static {p0}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2
    :try_start_1
    move-object p1, p0

    check-cast p1, Lde/d0;

    invoke-virtual {p1}, Lde/d0;->Q()Lde/f;

    move-result-object p1

    .line 3
    sget-object v0, Ly1/q;->b:[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, v0, v2

    .line 4
    move-object v4, p1

    check-cast v4, Lde/d0;

    invoke-virtual {v4}, Lde/d0;->readByte()B

    move-result v4

    if-eq v4, v3, :cond_0

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    check-cast p1, Lde/d0;

    invoke-virtual {p1}, Lde/d0;->close()V

    .line 7
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    :try_start_2
    sget-object p1, Lk2/c;->a:Lk2/b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 10
    :catch_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    new-instance p1, Ljava/util/zip/ZipInputStream;

    check-cast p0, Lde/d0;

    .line 13
    new-instance v0, Lde/d0$a;

    invoke-direct {v0, p0}, Lde/d0$a;-><init>(Lde/d0;)V

    .line 14
    invoke-direct {p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, p2}, Ly1/q;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    check-cast p0, Lde/d0;

    .line 16
    new-instance p1, Lde/d0$a;

    invoke-direct {p1, p0}, Lde/d0$a;-><init>(Lde/d0;)V

    .line 17
    invoke-static {p1, p2}, Ly1/q;->c(Ljava/io/InputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    .line 18
    new-instance p1, Ly1/j0;

    invoke-direct {p1, p0}, Ly1/j0;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ly1/j0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Ly1/j0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ly1/q;->g(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-static {p0}, Lk2/g;->b(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {p0}, Lk2/g;->b(Ljava/io/Closeable;)V

    .line 3
    throw p1
.end method

.method public static g(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ly1/j0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/zip/ZipInputStream;",
            "Ljava/lang/String;",
            ")",
            "Ly1/j0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "__MACOSX"

    .line 4
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "manifest.json"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, ".json"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-static {p0}, Lde/w;->f(Ljava/io/InputStream;)Lde/j0;

    move-result-object v1

    invoke-static {v1}, Lde/w;->b(Lde/j0;)Lde/f;

    move-result-object v1

    sget-object v3, Lj2/c;->l:[Ljava/lang/String;

    .line 10
    new-instance v3, Lj2/d;

    invoke-direct {v3, v1}, Lj2/d;-><init>(Lde/f;)V

    const/4 v1, 0x0

    .line 11
    invoke-static {v3, v2, v1}, Ly1/q;->d(Lj2/c;Ljava/lang/String;Z)Ly1/j0;

    move-result-object v1

    .line 12
    iget-object v1, v1, Ly1/j0;->a:Ljava/lang/Object;

    .line 13
    move-object v3, v1

    check-cast v3, Ly1/i;

    goto :goto_2

    :cond_2
    const-string v1, ".png"

    .line 14
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".webp"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".jpg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ".jpeg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "/"

    .line 16
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 17
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v1, v4

    .line 18
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :goto_2
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_5
    if-nez v3, :cond_6

    .line 20
    new-instance p0, Ly1/j0;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse composition"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ly1/j0;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    .line 21
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 22
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23
    iget-object v4, v3, Ly1/i;->d:Ljava/util/Map;

    .line 24
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/f0;

    .line 25
    iget-object v6, v5, Ly1/f0;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_4

    :cond_9
    move-object v5, v2

    :goto_4
    if-eqz v5, :cond_7

    .line 27
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 28
    iget v1, v5, Ly1/f0;->a:I

    .line 29
    iget v4, v5, Ly1/f0;->b:I

    .line 30
    invoke-static {v0, v1, v4}, Lk2/g;->e(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    iput-object v0, v5, Ly1/f0;->d:Landroid/graphics/Bitmap;

    goto :goto_3

    .line 32
    :cond_a
    iget-object p0, v3, Ly1/i;->d:Ljava/util/Map;

    .line 33
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/f0;

    .line 35
    iget-object v1, v1, Ly1/f0;->d:Landroid/graphics/Bitmap;

    if-nez v1, :cond_b

    .line 36
    new-instance p0, Ly1/j0;

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "There is no image for "

    .line 37
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/f0;

    .line 39
    iget-object v0, v0, Ly1/f0;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ly1/j0;-><init>(Ljava/lang/Throwable;)V

    return-object p0

    :cond_c
    if-eqz p1, :cond_d

    .line 41
    sget-object p0, Ld2/g;->b:Ld2/g;

    .line 42
    invoke-virtual {p0, p1, v3}, Ld2/g;->a(Ljava/lang/String;Ly1/i;)V

    .line 43
    :cond_d
    new-instance p0, Ly1/j0;

    invoke-direct {p0, v3}, Ly1/j0;-><init>(Ljava/lang/Object;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 44
    new-instance p1, Ly1/j0;

    invoke-direct {p1, p0}, Ly1/j0;-><init>(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static h(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const-string v0, "rawRes"

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v1, 0x20

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "_night_"

    goto :goto_1

    :cond_1
    const-string p0, "_day_"

    .line 3
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
