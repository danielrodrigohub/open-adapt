.class public final Lb7/r;
.super Lb7/q;
.source "ExtensionSchemaLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb7/q<",
        "Lb7/x$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb7/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb7/x$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lb7/p;Lb7/q0;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p1, Lb7/p;->a:Ljava/util/Map;

    new-instance v0, Lb7/p$a;

    invoke-direct {v0, p2, p3}, Lb7/p$a;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb7/x$e;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Lb7/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lb7/t<",
            "Lb7/x$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lb7/x$c;

    iget-object p1, p1, Lb7/x$c;->extensions:Lb7/t;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Lb7/t;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lb7/t<",
            "Lb7/x$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lb7/x$c;

    invoke-virtual {p1}, Lb7/x$c;->x()Lb7/t;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lb7/q0;)Z
    .locals 0

    instance-of p1, p1, Lb7/x$c;

    return p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb7/x$c;

    iget-object p1, p1, Lb7/x$c;->extensions:Lb7/t;

    .line 2
    invoke-virtual {p1}, Lb7/t;->l()V

    return-void
.end method

.method public final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lb7/d1;",
            "Ljava/lang/Object;",
            "Lb7/p;",
            "Lb7/t<",
            "Lb7/x$d;",
            ">;TUB;",
            "Lb7/l1<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lb7/x$e;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb7/d1;",
            "Ljava/lang/Object;",
            "Lb7/p;",
            "Lb7/t<",
            "Lb7/x$d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lb7/x$e;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final i(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb7/i;",
            "Ljava/lang/Object;",
            "Lb7/p;",
            "Lb7/t<",
            "Lb7/x$d;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lb7/x$e;

    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public final j(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb7/t1;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb7/x$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method
