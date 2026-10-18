.class public final Lm7/q;
.super Lm7/p;
.source "ExtensionSchemaLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lm7/p<",
        "Lm7/w$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lm7/p;-><init>()V

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

    check-cast p1, Lm7/w$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lm7/o;Lm7/p0;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p1, Lm7/o;->a:Ljava/util/Map;

    new-instance v0, Lm7/o$a;

    invoke-direct {v0, p2, p3}, Lm7/o$a;-><init>(Ljava/lang/Object;I)V

    .line 2
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm7/w$e;

    return-object p1
.end method

.method public final c(Ljava/lang/Object;)Lm7/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lm7/s<",
            "Lm7/w$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lm7/w$c;

    iget-object p1, p1, Lm7/w$c;->extensions:Lm7/s;

    return-object p1
.end method

.method public final d(Ljava/lang/Object;)Lm7/s;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lm7/s<",
            "Lm7/w$d;",
            ">;"
        }
    .end annotation

    check-cast p1, Lm7/w$c;

    invoke-virtual {p1}, Lm7/w$c;->x()Lm7/s;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lm7/p0;)Z
    .locals 0

    instance-of p1, p1, Lm7/w$c;

    return p1
.end method

.method public final f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lm7/w$c;

    iget-object p1, p1, Lm7/w$c;->extensions:Lm7/s;

    .line 2
    invoke-virtual {p1}, Lm7/s;->m()V

    return-void
.end method

.method public final g(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/q1;",
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

    check-cast p1, Lm7/w$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 3
    throw p1
.end method
