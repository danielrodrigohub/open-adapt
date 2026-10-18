.class public final Ljd/f$a$a;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljd/f$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ljd/f$a;Ljd/f$b;)Ljd/f$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljd/f$a;",
            ">(",
            "Ljd/f$a;",
            "Ljd/f$b<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljd/f$a;->getKey()Ljd/f$b;

    move-result-object v0

    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static b(Ljd/f$a;Ljd/f$b;)Ljd/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/f$a;",
            "Ljd/f$b<",
            "*>;)",
            "Ljd/f;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljd/f$a;->getKey()Ljd/f$b;

    move-result-object v0

    invoke-static {v0, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Ljd/h;->h:Ljd/h;

    :cond_0
    return-object p0
.end method

.method public static c(Ljd/f$a;Ljd/f;)Ljd/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ljd/h;->h:Ljd/h;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ljd/g;->h:Ljd/g;

    invoke-interface {p1, p0, v0}, Ljd/f;->fold(Ljava/lang/Object;Lqd/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljd/f;

    :goto_0
    return-object p0
.end method
