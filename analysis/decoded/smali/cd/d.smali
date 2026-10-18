.class public final Lcd/d;
.super Ljava/lang/Object;
.source "EncryptedAndroidFileSystem.kt"

# interfaces
.implements Lcd/e;


# instance fields
.field public final a:Lcd/g;

.field public final b:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final c:Lkotlinx/coroutines/sync/Mutex;

.field public final d:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcd/a;)V
    .locals 3

    .line 1
    new-instance v0, Lcd/c;

    invoke-direct {v0, p1}, Lcd/c;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    const-string v2, "context"

    .line 3
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nonEncryptedFileSystem"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioDispatcher"

    invoke-static {v1, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcd/d;->a:Lcd/g;

    .line 6
    iput-object v1, p0, Lcd/d;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lcd/d;->c:Lkotlinx/coroutines/sync/Mutex;

    .line 8
    iget-object p1, p2, Lcd/a;->a:Ljava/io/File;

    .line 9
    iput-object p1, p0, Lcd/d;->d:Ljava/io/File;

    return-void
.end method

.method public static final f(Lcd/d;Ljava/lang/String;)Lcd/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcd/d;->a:Lcd/g;

    iget-object p0, p0, Lcd/d;->d:Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcd/g;->a(Ljava/io/File;Ljava/lang/String;Z)Lcd/f;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/io/File;

    invoke-interface {p0}, Lcd/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "File with path="

    .line 5
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcd/d;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcd/d$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcd/d$c;-><init>(Lcd/d;Ljava/lang/String;Ljava/lang/String;Ljd/d;)V

    invoke-static {v0, v1, p3}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkd/a;->h:Lkd/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-[B>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcd/d;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcd/d$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcd/d$a;-><init>(Lcd/d;Ljava/lang/String;Ljd/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcd/d;->b:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v1, Lcd/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcd/d$b;-><init>(Lcd/d;Ljava/lang/String;Ljd/d;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
