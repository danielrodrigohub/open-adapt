.class public final synthetic Ly1/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/k;->a:Landroid/content/Context;

    iput-object p2, p0, Ly1/k;->b:Ljava/lang/String;

    iput-object p3, p0, Ly1/k;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Ly1/k;->a:Landroid/content/Context;

    iget-object v1, p0, Ly1/k;->b:Ljava/lang/String;

    iget-object v2, p0, Ly1/k;->c:Ljava/lang/String;

    .line 1
    sget-object v3, Lp4/h;->k:Lh2/f;

    if-nez v3, :cond_3

    .line 2
    const-class v4, Lh2/f;

    monitor-enter v4

    .line 3
    :try_start_0
    sget-object v3, Lp4/h;->k:Lh2/f;

    if-nez v3, :cond_2

    .line 4
    new-instance v3, Lh2/f;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    sget-object v5, Lp4/h;->l:Lh2/e;

    if-nez v5, :cond_1

    .line 7
    const-class v5, Lh2/e;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    sget-object v6, Lp4/h;->l:Lh2/e;

    if-nez v6, :cond_0

    .line 9
    new-instance v6, Lh2/e;

    new-instance v7, Ly1/c;

    invoke-direct {v7, v0}, Ly1/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v6, v7}, Lh2/e;-><init>(Lh2/d;)V

    sput-object v6, Lp4/h;->l:Lh2/e;

    .line 10
    :cond_0
    monitor-exit v5

    move-object v5, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 11
    :cond_1
    :goto_0
    new-instance v0, Lh2/b;

    invoke-direct {v0}, Lh2/b;-><init>()V

    invoke-direct {v3, v5, v0}, Lh2/f;-><init>(Lh2/e;Lh2/b;)V

    sput-object v3, Lp4/h;->k:Lh2/f;

    .line 12
    :cond_2
    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 13
    :cond_3
    :goto_1
    sget-object v0, Lh2/c;->j:Lh2/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_4

    goto/16 :goto_6

    .line 14
    :cond_4
    iget-object v6, v3, Lh2/f;->a:Lh2/e;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :try_start_3
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lh2/e;->b()Ljava/io/File;

    move-result-object v8

    sget-object v9, Lh2/c;->i:Lh2/c;

    invoke-static {v1, v9, v4}, Lh2/e;->a(Ljava/lang/String;Lh2/c;Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_2

    .line 17
    :cond_5
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lh2/e;->b()Ljava/io/File;

    move-result-object v6

    invoke-static {v1, v0, v4}, Lh2/e;->a(Ljava/lang/String;Lh2/c;Z)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v7, v5

    :goto_2
    if-nez v7, :cond_7

    goto :goto_3

    .line 19
    :cond_7
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 20
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const-string v10, ".zip"

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v9, v0

    .line 21
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lk2/c;->a()V

    .line 22
    new-instance v7, Landroid/util/Pair;

    invoke-direct {v7, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :catch_0
    :goto_3
    move-object v7, v5

    :goto_4
    if-nez v7, :cond_9

    goto :goto_6

    .line 23
    :cond_9
    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lh2/c;

    .line 24
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/io/InputStream;

    if-ne v6, v0, :cond_a

    .line 25
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Ly1/q;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object v0

    goto :goto_5

    .line 26
    :cond_a
    invoke-static {v7, v1}, Ly1/q;->c(Ljava/io/InputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object v0

    .line 27
    :goto_5
    iget-object v0, v0, Ly1/j0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 28
    check-cast v0, Ly1/i;

    goto :goto_7

    :cond_b
    :goto_6
    move-object v0, v5

    :goto_7
    if-eqz v0, :cond_c

    .line 29
    new-instance v1, Ly1/j0;

    invoke-direct {v1, v0}, Ly1/j0;-><init>(Ljava/lang/Object;)V

    goto :goto_a

    .line 30
    :cond_c
    invoke-static {}, Lk2/c;->a()V

    const-string v0, "LottieFetchResult close failed "

    .line 31
    invoke-static {}, Lk2/c;->a()V

    .line 32
    :try_start_4
    iget-object v6, v3, Lh2/f;->b:Lh2/b;

    invoke-virtual {v6, v1}, Lh2/b;->a(Ljava/lang/String;)Lh2/a;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v6, 0x1

    .line 33
    :try_start_5
    iget-object v7, v5, Lh2/a;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    div-int/lit8 v7, v7, 0x64
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    move v4, v6

    :catch_1
    :cond_d
    if-eqz v4, :cond_e

    .line 34
    :try_start_6
    iget-object v4, v5, Lh2/a;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 35
    iget-object v6, v5, Lh2/a;->h:Ljava/net/HttpURLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-virtual {v3, v1, v4, v6, v2}, Lh2/f;->a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ly1/j0;

    move-result-object v1

    .line 37
    invoke-static {}, Lk2/c;->a()V

    goto :goto_8

    .line 38
    :cond_e
    new-instance v1, Ly1/j0;

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Lh2/a;->x()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ly1/j0;-><init>(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 39
    :goto_8
    :try_start_7
    invoke-virtual {v5}, Lh2/a;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_a

    :catch_2
    move-exception v3

    .line 40
    invoke-static {v0, v3}, Lk2/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catchall_2
    move-exception v1

    goto :goto_b

    :catch_3
    move-exception v1

    .line 41
    :try_start_8
    new-instance v3, Ly1/j0;

    invoke-direct {v3, v1}, Ly1/j0;-><init>(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v5, :cond_f

    .line 42
    :try_start_9
    invoke-virtual {v5}, Lh2/a;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    :catch_4
    move-exception v1

    .line 43
    invoke-static {v0, v1}, Lk2/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    move-object v1, v3

    :goto_a
    if-eqz v2, :cond_10

    .line 44
    iget-object v0, v1, Ly1/j0;->a:Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 45
    sget-object v3, Ld2/g;->b:Ld2/g;

    .line 46
    check-cast v0, Ly1/i;

    invoke-virtual {v3, v2, v0}, Ld2/g;->a(Ljava/lang/String;Ly1/i;)V

    :cond_10
    return-object v1

    :goto_b
    if-eqz v5, :cond_11

    .line 47
    :try_start_a
    invoke-virtual {v5}, Lh2/a;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_c

    :catch_5
    move-exception v2

    .line 48
    invoke-static {v0, v2}, Lk2/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :cond_11
    :goto_c
    throw v1
.end method
