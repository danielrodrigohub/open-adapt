.class public final Lcd/d$c;
.super Lld/i;
.source "EncryptedAndroidFileSystem.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcd/d;->a(Ljava/lang/String;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
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
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.persistence.implementation.repositories.EncryptedAndroidFileSystem$writeText$2"
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

.field public k:Ljava/lang/String;

.field public l:I

.field public final synthetic m:Lcd/d;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcd/d;Ljava/lang/String;Ljava/lang/String;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcd/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lcd/d$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcd/d$c;->m:Lcd/d;

    iput-object p2, p0, Lcd/d$c;->n:Ljava/lang/String;

    iput-object p3, p0, Lcd/d$c;->o:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 3
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

    new-instance p1, Lcd/d$c;

    iget-object v0, p0, Lcd/d$c;->m:Lcd/d;

    iget-object v1, p0, Lcd/d$c;->n:Ljava/lang/String;

    iget-object v2, p0, Lcd/d$c;->o:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcd/d$c;-><init>(Lcd/d;Ljava/lang/String;Ljava/lang/String;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcd/d$c;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcd/d$c;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcd/d$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcd/d$c;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcd/d$c;->k:Ljava/lang/String;

    iget-object v1, p0, Lcd/d$c;->j:Ljava/lang/String;

    iget-object v4, p0, Lcd/d$c;->i:Lcd/d;

    iget-object v5, p0, Lcd/d$c;->h:Lkotlinx/coroutines/sync/Mutex;

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
    iget-object v4, p0, Lcd/d$c;->m:Lcd/d;

    .line 5
    iget-object v5, v4, Lcd/d;->c:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    iget-object v1, p0, Lcd/d$c;->n:Ljava/lang/String;

    iget-object p1, p0, Lcd/d$c;->o:Ljava/lang/String;

    .line 7
    iput-object v5, p0, Lcd/d$c;->h:Lkotlinx/coroutines/sync/Mutex;

    iput-object v4, p0, Lcd/d$c;->i:Lcd/d;

    iput-object v1, p0, Lcd/d$c;->j:Ljava/lang/String;

    iput-object p1, p0, Lcd/d$c;->k:Ljava/lang/String;

    iput v3, p0, Lcd/d$c;->l:I

    invoke-interface {v5, v2, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 8
    :goto_0
    :try_start_0
    iget-object p1, v4, Lcd/d;->a:Lcd/g;

    iget-object v4, v4, Lcd/d;->d:Ljava/io/File;

    invoke-interface {p1, v4, v1, v3}, Lcd/g;->a(Ljava/io/File;Ljava/lang/String;Z)Lcd/f;

    move-result-object p1

    .line 9
    invoke-interface {p1}, Lcd/f;->b()Ljava/io/FileOutputStream;

    move-result-object p1

    const/16 v1, 0x2000

    instance-of v3, p1, Ljava/io/BufferedOutputStream;

    if-eqz v3, :cond_3

    check-cast p1, Ljava/io/BufferedOutputStream;

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object p1, v3

    .line 10
    :goto_1
    :try_start_1
    sget-object v1, Lyd/a;->b:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 11
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 12
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 13
    sget-object v0, Lfd/o;->a:Lfd/o;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-static {p1, v2}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 15
    invoke-interface {v5, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v0

    .line 16
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 17
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {p1, v0}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 18
    invoke-interface {v5, v2}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
