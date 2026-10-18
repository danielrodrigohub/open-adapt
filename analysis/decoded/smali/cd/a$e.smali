.class public final Lcd/a$e;
.super Lld/i;
.source "AndroidFileSystem.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcd/a;->a(Ljava/lang/String;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
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
    c = "com.nike.persistence.implementation.repositories.AndroidFileSystem$writeText$2"
    f = "AndroidFileSystem.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lcd/a;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcd/a;Ljava/lang/String;Ljava/lang/String;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcd/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lcd/a$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcd/a$e;->i:Lcd/a;

    iput-object p2, p0, Lcd/a$e;->j:Ljava/lang/String;

    iput-object p3, p0, Lcd/a$e;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 4
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

    new-instance v0, Lcd/a$e;

    iget-object v1, p0, Lcd/a$e;->i:Lcd/a;

    iget-object v2, p0, Lcd/a$e;->j:Ljava/lang/String;

    iget-object v3, p0, Lcd/a$e;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcd/a$e;-><init>(Lcd/a;Ljava/lang/String;Ljava/lang/String;Ljd/d;)V

    iput-object p1, v0, Lcd/a$e;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcd/a$e;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcd/a$e;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcd/a$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    iget-object p1, p0, Lcd/a$e;->h:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    iget-object p1, p0, Lcd/a$e;->i:Lcd/a;

    iget-object v0, p0, Lcd/a$e;->j:Ljava/lang/String;

    iget-object v1, p0, Lcd/a$e;->k:Ljava/lang/String;

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 4
    iget-object p1, p1, Lcd/a;->a:Ljava/io/File;

    .line 5
    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    sget-object p1, Lyd/a;->b:Ljava/nio/charset/Charset;

    const-string v0, "text"

    .line 7
    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lc3/d;->s(Ljava/io/File;[B)V

    .line 9
    sget-object p1, Lfd/o;->a:Lfd/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    :goto_0
    invoke-static {p1}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 12
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 13
    :cond_0
    throw p1
.end method
