.class public final Ld8/b;
.super Ljava/lang/Object;
.source "DeleteAccountApi.kt"

# interfaces
.implements Ld8/a;


# static fields
.field public static final b:Ld8/b;

.field public static final c:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld8/b;

    invoke-direct {v0}, Ld8/b;-><init>()V

    sput-object v0, Ld8/b;->b:Ld8/b;

    sget-object v0, Ld8/b$a;->h:Ld8/b$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Ld8/b;->c:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final deleteAccount(Ljd/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Ld8/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Ld8/b$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ld8/b$b;

    iget v1, v0, Ld8/b$b;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Ld8/b$b;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Ld8/b$b;

    invoke-direct {v0, p0, p1}, Ld8/b$b;-><init>(Ld8/b;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Ld8/b$b;->h:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Ld8/b$b;->j:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    sget-object p1, Ld8/b;->c:Lfd/h;

    invoke-virtual {p1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/network/deleteAccount/DeleteAccountServiceApi;

    .line 5
    iput v3, v0, Ld8/b$b;->j:I

    invoke-interface {p1, v0}, Lcom/nike/adapt/network/deleteAccount/DeleteAccountServiceApi;->deleteAccount(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    sget-object p1, Ld8/c$b;->a:Ld8/c$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 7
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAccount api : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 8
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    instance-of v3, p1, Ljava/net/SocketTimeoutException;

    :goto_2
    if-eqz v3, :cond_5

    sget-object p1, Ld8/c$c;->a:Ld8/c$c;

    goto :goto_3

    .line 10
    :cond_5
    sget-object p1, Ld8/c$a;->a:Ld8/c$a;

    :goto_3
    return-object p1
.end method
