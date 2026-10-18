.class public final Lcd/d$b;
.super Lld/i;
.source "EncryptedAndroidFileSystem.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcd/d;->d(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.persistence.implementation.repositories.EncryptedAndroidFileSystem$readText$2"
    f = "EncryptedAndroidFileSystem.kt"
    l = {
        0x5b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lkotlinx/coroutines/sync/Mutex;

.field public i:Lcd/d;

.field public j:Ljava/lang/String;

.field public k:I

.field public final synthetic l:Lcd/d;

.field public final synthetic m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcd/d;Ljava/lang/String;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcd/d;",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lcd/d$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcd/d$b;->l:Lcd/d;

    iput-object p2, p0, Lcd/d$b;->m:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcd/d$b;

    iget-object v0, p0, Lcd/d$b;->l:Lcd/d;

    iget-object v1, p0, Lcd/d$b;->m:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcd/d$b;-><init>(Lcd/d;Ljava/lang/String;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcd/d$b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcd/d$b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcd/d$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcd/d$b;->k:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcd/d$b;->j:Ljava/lang/String;

    iget-object v1, p0, Lcd/d$b;->i:Lcd/d;

    iget-object v2, p0, Lcd/d$b;->h:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcd/d$b;->l:Lcd/d;

    .line 5
    iget-object p1, v1, Lcd/d;->c:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    iget-object v4, p0, Lcd/d$b;->m:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcd/d$b;->h:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, p0, Lcd/d$b;->i:Lcd/d;

    iput-object v4, p0, Lcd/d$b;->j:Ljava/lang/String;

    iput v2, p0, Lcd/d$b;->k:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    move-object v2, p1

    move-object v0, v4

    .line 8
    :goto_0
    :try_start_0
    invoke-static {v1, v0}, Lcd/d;->f(Lcd/d;Ljava/lang/String;)Lcd/f;

    move-result-object p1

    invoke-interface {p1}, Lcd/f;->c()Ljava/io/FileInputStream;

    move-result-object p1

    sget-object v0, Lyd/a;->b:Ljava/nio/charset/Charset;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 p1, 0x2000

    instance-of v0, v1, Ljava/io/BufferedReader;

    if-eqz v0, :cond_3

    check-cast v1, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v1, v0

    .line 9
    :goto_1
    :try_start_1
    invoke-static {v1}, Landroidx/lifecycle/o;->E(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-static {v1, v3}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 11
    invoke-interface {v2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v1, p1}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 13
    invoke-interface {v2, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
