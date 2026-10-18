.class public final Li2/d;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method public static a(Lj2/c;Ly1/i;Li2/l0;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj2/c;",
            "Ly1/i;",
            "Li2/l0<",
            "TT;>;)",
            "Ljava/util/List<",
            "Ll2/a<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Li2/u;->a(Lj2/c;Ly1/i;FLi2/l0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lj2/c;Ly1/i;)Le2/a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Le2/a;

    sget-object v1, Li2/g;->a:Li2/g;

    invoke-static {p0, p1, v1}, Li2/d;->a(Lj2/c;Ly1/i;Li2/l0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Le2/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Lj2/c;Ly1/i;Z)Le2/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le2/b;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lk2/g;->c()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Li2/l;->a:Li2/l;

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, p1, p2, v1, v2}, Li2/u;->a(Lj2/c;Ly1/i;FLi2/l0;Z)Ljava/util/List;

    move-result-object p0

    .line 4
    invoke-direct {v0, p0}, Le2/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static d(Lj2/c;Ly1/i;)Le2/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Le2/d;

    sget-object v1, Li2/r;->a:Li2/r;

    invoke-static {p0, p1, v1}, Li2/d;->a(Lj2/c;Ly1/i;Li2/l0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Le2/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lj2/c;Ly1/i;)Le2/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Le2/f;

    invoke-static {}, Lk2/g;->c()F

    move-result v1

    sget-object v2, Li2/z;->a:Li2/z;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Li2/u;->a(Lj2/c;Ly1/i;FLi2/l0;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Le2/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method
