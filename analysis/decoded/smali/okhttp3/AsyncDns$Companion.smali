.class public final Lokhttp3/AsyncDns$Companion;
.super Ljava/lang/Object;
.source "AsyncDns.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/AsyncDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lokhttp3/AsyncDns$Companion;

.field public static final TYPE_A:I = 0x1

.field public static final TYPE_AAAA:I = 0x1c


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/AsyncDns$Companion;

    invoke-direct {v0}, Lokhttp3/AsyncDns$Companion;-><init>()V

    sput-object v0, Lokhttp3/AsyncDns$Companion;->$$INSTANCE:Lokhttp3/AsyncDns$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a([Lokhttp3/AsyncDns;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lokhttp3/AsyncDns$Companion;->toDns$lambda-2([Lokhttp3/AsyncDns;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final toDns$lambda-2([Lokhttp3/AsyncDns;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const-string v0, "$asyncDns"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, p0, v4

    .line 5
    new-instance v6, Lokhttp3/AsyncDns$Companion$toDns$1$1$1;

    invoke-direct {v6, v0, v2, v1}, Lokhttp3/AsyncDns$Companion$toDns$1$1$1;-><init>(Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V

    invoke-interface {v5, p1, v6}, Lokhttp3/AsyncDns;->query(Ljava/lang/String;Lokhttp3/AsyncDns$Callback;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 8
    invoke-static {v1}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    if-nez p0, :cond_1

    new-instance p0, Ljava/net/UnknownHostException;

    const-string v0, "No results for "

    .line 9
    invoke-static {v0, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-gtz p1, :cond_2

    .line 12
    sget-object p1, Lgd/p;->h:Lgd/p;

    goto :goto_2

    :cond_2
    if-ne p1, v0, :cond_3

    .line 13
    invoke-static {v1}, Lgd/n;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroidx/lifecycle/o;->y(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    .line 15
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p1

    :goto_1
    if-ge v0, p1, :cond_4

    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object p1, v2

    .line 18
    :goto_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 19
    invoke-static {p0, v0}, Lp4/h;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 20
    :cond_5
    throw p0

    :cond_6
    return-object v0
.end method


# virtual methods
.method public final varargs toDns([Lokhttp3/AsyncDns;)Lokhttp3/Dns;
    .locals 1

    const-string v0, "asyncDns"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/a;

    invoke-direct {v0, p1}, Lokhttp3/a;-><init>([Lokhttp3/AsyncDns;)V

    return-object v0
.end method
