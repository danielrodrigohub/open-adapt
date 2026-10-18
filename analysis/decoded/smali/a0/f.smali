.class public final La0/f;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La0/f$a;
    }
.end annotation


# static fields
.field public static final a:La0/l;

.field public static final b:Lp/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/e<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, La0/k;

    invoke-direct {v0}, La0/k;-><init>()V

    sput-object v0, La0/f;->a:La0/l;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, La0/j;

    invoke-direct {v0}, La0/j;-><init>()V

    sput-object v0, La0/f;->a:La0/l;

    goto :goto_1

    :cond_1
    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 4
    new-instance v0, La0/i;

    invoke-direct {v0}, La0/i;-><init>()V

    sput-object v0, La0/f;->a:La0/l;

    goto :goto_1

    .line 5
    :cond_2
    sget-object v0, La0/h;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_3

    const-string v1, "TypefaceCompatApi24Impl"

    const-string v2, "Unable to collect necessary private methods.Fallback to legacy implementation."

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 7
    new-instance v0, La0/h;

    invoke-direct {v0}, La0/h;-><init>()V

    sput-object v0, La0/f;->a:La0/l;

    goto :goto_1

    .line 8
    :cond_5
    new-instance v0, La0/g;

    invoke-direct {v0}, La0/g;-><init>()V

    sput-object v0, La0/f;->a:La0/l;

    .line 9
    :goto_1
    new-instance v0, Lp/e;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lp/e;-><init>(I)V

    sput-object v0, La0/f;->b:Lp/e;

    return-void
.end method

.method public static a(Landroid/content/Context;Lz/c$b;Landroid/content/res/Resources;ILjava/lang/String;IILz/d$e;Z)Landroid/graphics/Typeface;
    .locals 7

    .line 1
    instance-of v0, p1, Lz/c$e;

    const/4 v1, -0x3

    if-eqz v0, :cond_d

    .line 2
    check-cast p1, Lz/c$e;

    .line 3
    iget-object v0, p1, Lz/c$e;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 6
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v4, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p7, :cond_2

    .line 8
    invoke-virtual {p7, v0}, Lz/d$e;->b(Landroid/graphics/Typeface;)V

    :cond_2
    return-object v0

    :cond_3
    const/4 v0, 0x1

    if-eqz p8, :cond_4

    .line 9
    iget v4, p1, Lz/c$e;->c:I

    if-nez v4, :cond_5

    goto :goto_2

    :cond_4
    if-nez p7, :cond_5

    :goto_2
    move v3, v0

    :cond_5
    const/4 v0, -0x1

    if-eqz p8, :cond_6

    .line 10
    iget p8, p1, Lz/c$e;->b:I

    goto :goto_3

    :cond_6
    move p8, v0

    .line 11
    :goto_3
    invoke-static {}, Lz/d$e;->c()Landroid/os/Handler;

    move-result-object v4

    .line 12
    new-instance v5, La0/f$a;

    invoke-direct {v5, p7}, La0/f$a;-><init>(Lz/d$e;)V

    .line 13
    iget-object p1, p1, Lz/c$e;->a:Lg0/f;

    .line 14
    new-instance p7, Lg0/c;

    invoke-direct {p7, v5, v4}, Lg0/c;-><init>(Lg0/n;Landroid/os/Handler;)V

    if-eqz v3, :cond_9

    .line 15
    invoke-static {p1, p6}, Lg0/k;->a(Lg0/f;I)Ljava/lang/String;

    move-result-object v3

    .line 16
    sget-object v6, Lg0/k;->a:Lp/e;

    invoke-virtual {v6, v3}, Lp/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    if-eqz v6, :cond_7

    .line 17
    new-instance p0, Lg0/a;

    invoke-direct {p0, v5, v6}, Lg0/a;-><init>(Lg0/n;Landroid/graphics/Typeface;)V

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v2, v6

    goto/16 :goto_5

    :cond_7
    if-ne p8, v0, :cond_8

    .line 18
    invoke-static {v3, p0, p1, p6}, Lg0/k;->b(Ljava/lang/String;Landroid/content/Context;Lg0/f;I)Lg0/k$a;

    move-result-object p0

    .line 19
    invoke-virtual {p7, p0}, Lg0/c;->a(Lg0/k$a;)V

    .line 20
    iget-object v2, p0, Lg0/k$a;->a:Landroid/graphics/Typeface;

    goto/16 :goto_5

    .line 21
    :cond_8
    new-instance v0, Lg0/g;

    invoke-direct {v0, v3, p0, p1, p6}, Lg0/g;-><init>(Ljava/lang/String;Landroid/content/Context;Lg0/f;I)V

    .line 22
    :try_start_0
    sget-object p0, Lg0/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    int-to-long v3, p8

    .line 24
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v3, v4, p1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    .line 25
    :try_start_2
    check-cast p0, Lg0/k$a;

    .line 26
    invoke-virtual {p7, p0}, Lg0/c;->a(Lg0/k$a;)V

    .line 27
    iget-object v2, p0, Lg0/k$a;->a:Landroid/graphics/Typeface;

    goto/16 :goto_5

    .line 28
    :catch_0
    new-instance p0, Ljava/lang/InterruptedException;

    const-string p1, "timeout"

    invoke-direct {p0, p1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 29
    throw p0

    :catch_2
    move-exception p0

    .line 30
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 31
    :catch_3
    iget-object p0, p7, Lg0/c;->a:Lg0/n;

    .line 32
    iget-object p1, p7, Lg0/c;->b:Landroid/os/Handler;

    new-instance p7, Lg0/b;

    invoke-direct {p7, p0, v1}, Lg0/b;-><init>(Lg0/n;I)V

    invoke-virtual {p1, p7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 33
    :cond_9
    invoke-static {p1, p6}, Lg0/k;->a(Lg0/f;I)Ljava/lang/String;

    move-result-object p8

    .line 34
    sget-object v0, Lg0/k;->a:Lp/e;

    invoke-virtual {v0, p8}, Lp/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_a

    .line 35
    new-instance p0, Lg0/a;

    invoke-direct {p0, v5, v0}, Lg0/a;-><init>(Lg0/n;Landroid/graphics/Typeface;)V

    invoke-virtual {v4, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-object v2, v0

    goto :goto_5

    .line 36
    :cond_a
    new-instance v0, Lg0/h;

    invoke-direct {v0, p7}, Lg0/h;-><init>(Lg0/c;)V

    .line 37
    sget-object v3, Lg0/k;->c:Ljava/lang/Object;

    monitor-enter v3

    .line 38
    :try_start_3
    sget-object p7, Lg0/k;->d:Lp/g;

    .line 39
    invoke-virtual {p7, p8, v2}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 40
    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    monitor-exit v3

    goto :goto_5

    .line 43
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {p7, p8, v1}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    new-instance p7, Lg0/i;

    invoke-direct {p7, p8, p0, p1, p6}, Lg0/i;-><init>(Ljava/lang/String;Landroid/content/Context;Lg0/f;I)V

    .line 48
    sget-object p0, Lg0/k;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 49
    new-instance p1, Lg0/j;

    invoke-direct {p1, p8}, Lg0/j;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p8

    if-nez p8, :cond_c

    .line 51
    new-instance p8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_4

    .line 52
    :cond_c
    new-instance p8, Landroid/os/Handler;

    invoke-direct {p8}, Landroid/os/Handler;-><init>()V

    .line 53
    :goto_4
    new-instance v0, Lg0/p;

    invoke-direct {v0, p8, p7, p1}, Lg0/p;-><init>(Landroid/os/Handler;Ljava/util/concurrent/Callable;Li0/a;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :catchall_0
    move-exception p0

    .line 54
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 55
    :cond_d
    sget-object p8, La0/f;->a:La0/l;

    check-cast p1, Lz/c$c;

    invoke-virtual {p8, p0, p1, p2, p6}, La0/l;->a(Landroid/content/Context;Lz/c$c;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz p7, :cond_f

    if-eqz v2, :cond_e

    .line 56
    invoke-virtual {p7, v2}, Lz/d$e;->b(Landroid/graphics/Typeface;)V

    goto :goto_5

    .line 57
    :cond_e
    invoke-virtual {p7, v1}, Lz/d$e;->a(I)V

    :cond_f
    :goto_5
    if-eqz v2, :cond_10

    .line 58
    sget-object p0, La0/f;->b:Lp/e;

    invoke-static {p2, p3, p4, p5, p6}, La0/f;->c(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lp/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v2
.end method

.method public static b(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;II)Landroid/graphics/Typeface;
    .locals 6

    .line 1
    sget-object v0, La0/f;->a:La0/l;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, La0/l;->d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p2, p3, p4, p5}, La0/f;->c(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, La0/f;->b:Lp/e;

    invoke-virtual {p2, p1, p0}, Lp/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/res/Resources;ILjava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2d

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
