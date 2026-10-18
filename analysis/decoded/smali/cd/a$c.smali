.class public final Lcd/a$c;
.super Lld/i;
.source "AndroidFileSystem.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcd/a;->b(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
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
        "-[B>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.persistence.implementation.repositories.AndroidFileSystem$readBytes$2"
    f = "AndroidFileSystem.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcd/a;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcd/a;Ljava/lang/String;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcd/a;",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lcd/a$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcd/a$c;->i:Lcd/a;

    iput-object p2, p0, Lcd/a$c;->j:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

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

    new-instance v0, Lcd/a$c;

    iget-object v1, p0, Lcd/a$c;->i:Lcd/a;

    iget-object v2, p0, Lcd/a$c;->j:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcd/a$c;-><init>(Lcd/a;Ljava/lang/String;Ljd/d;)V

    iput-object p1, v0, Lcd/a$c;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcd/a$c;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcd/a$c;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcd/a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcd/a$c;->h:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lcd/a$c;->i:Lcd/a;

    iget-object v0, p0, Lcd/a$c;->j:Ljava/lang/String;

    const/4 v1, 0x1

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 4
    iget-object p1, p1, Lcd/a;->a:Ljava/io/File;

    .line 5
    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 9
    :goto_2
    instance-of p1, v2, Lfd/f$a;

    xor-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 10
    :try_start_1
    check-cast v2, Ljava/io/File;

    .line 11
    invoke-static {v2}, Lc3/d;->n(Ljava/io/File;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 12
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    move-object v2, p1

    .line 13
    :cond_3
    invoke-static {v2}, Ld3/e;->p(Ljava/lang/Object;)V

    return-object v2
.end method
