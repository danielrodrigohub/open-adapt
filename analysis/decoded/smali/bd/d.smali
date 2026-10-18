.class public final Lbd/d;
.super Ljava/lang/Object;
.source "FileDataStoreImpl.kt"

# interfaces
.implements Lzc/a;


# instance fields
.field public final a:Lbd/a;

.field public final b:Lcd/e;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lyc/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ldd/e;


# direct methods
.method public constructor <init>(Lbd/a;Lcd/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbd/a;",
            "Lcd/e;",
            "Ljava/util/List<",
            "+",
            "Lyc/a$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "host"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lbd/d;->a:Lbd/a;

    .line 3
    iput-object p2, p0, Lbd/d;->b:Lcd/e;

    .line 4
    iput-object p3, p0, Lbd/d;->c:Ljava/util/List;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    instance-of v0, p3, Ldd/e$c;

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p1}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 8
    sget-object p1, Ldd/e;->Companion:Ldd/e$b;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object p1, Ldd/e;->i:Ldd/e$c;

    .line 10
    :cond_3
    check-cast p1, Ldd/e;

    iput-object p1, p0, Lbd/d;->d:Ldd/e;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;Ljd/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbd/d;->a:Lbd/a;

    .line 2
    iget-object v1, p0, Lbd/d;->c:Ljava/util/List;

    .line 3
    new-instance v8, Lbd/c;

    const-string v4, "KEY_1"

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lbd/c;-><init>(Lbd/d;Ljava/lang/String;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;Ljd/d;)V

    invoke-interface {v0, v1, v8, p3}, Lbd/a;->d(Ljava/util/List;Lqd/l;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lkd/a;->h:Lkd/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final e(Lkotlinx/serialization/DeserializationStrategy;Ljd/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;",
            "Ljd/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lbd/d;->a:Lbd/a;

    .line 2
    iget-object v1, p0, Lbd/d;->c:Ljava/util/List;

    .line 3
    new-instance v2, Lbd/b;

    const-string v3, "KEY_1"

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, Lbd/b;-><init>(Lbd/d;Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;Ljd/d;)V

    invoke-interface {v0, v1, v2, p2}, Lbd/a;->d(Ljava/util/List;Lqd/l;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
