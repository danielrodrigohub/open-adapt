.class public abstract Ljd/a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ljd/f$a;


# instance fields
.field private final key:Ljd/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/f$b<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljd/f$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f$b<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljd/a;->key:Ljd/f$b;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lqd/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lqd/p<",
            "-TR;-",
            "Ljd/f$a;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    .line 1
    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2, p1, p0}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljd/f$b;)Ljd/f$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljd/f$a;",
            ">(",
            "Ljd/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljd/f$a$a;->a(Ljd/f$a;Ljd/f$b;)Ljd/f$a;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Ljd/f$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljd/f$b<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ljd/a;->key:Ljd/f$b;

    return-object v0
.end method

.method public minusKey(Ljd/f$b;)Ljd/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f$b<",
            "*>;)",
            "Ljd/f;"
        }
    .end annotation

    invoke-static {p0, p1}, Ljd/f$a$a;->b(Ljd/f$a;Ljd/f$b;)Ljd/f;

    move-result-object p1

    return-object p1
.end method

.method public plus(Ljd/f;)Ljd/f;
    .locals 0

    invoke-static {p0, p1}, Ljd/f$a$a;->c(Ljd/f$a;Ljd/f;)Ljd/f;

    move-result-object p1

    return-object p1
.end method
