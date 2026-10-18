.class public abstract Lm7/w;
.super Lm7/a;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/w$b;,
        Lm7/w$e;,
        Lm7/w$d;,
        Lm7/w$c;,
        Lm7/w$a;,
        Lm7/w$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lm7/w<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lm7/w$a<",
        "TMessageType;TBuilderType;>;>",
        "Lm7/a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lm7/w<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public memoizedSerializedSize:I

.field public unknownFields:Lm7/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lm7/w;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm7/a;-><init>()V

    .line 2
    sget-object v0, Lm7/j1;->f:Lm7/j1;

    iput-object v0, p0, Lm7/w;->unknownFields:Lm7/j1;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lm7/w;->memoizedSerializedSize:I

    return-void
.end method

.method public static p(Ljava/lang/Class;)Lm7/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lm7/w<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lm7/w;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/w;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    sget-object v0, Lm7/w;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/w;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 5
    invoke-static {p0}, Lm7/m1;->d(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm7/w;

    invoke-virtual {v0}, Lm7/w;->q()Lm7/w;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lm7/w;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method static varargs r(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 7
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final s(Lm7/w;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lm7/w<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lm7/w$f;->h:Lm7/w$f;

    .line 2
    invoke-virtual {p0, v0}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    sget-object v0, Lm7/z0;->c:Lm7/z0;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm7/z0;->a(Ljava/lang/Class;)Lm7/c1;

    move-result-object v0

    .line 7
    invoke-interface {v0, p0}, Lm7/c1;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_2

    .line 8
    sget-object p1, Lm7/w$f;->i:Lm7/w$f;

    .line 9
    invoke-virtual {p0, p1}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    :cond_2
    return v0
.end method

.method public static t(Lm7/y$d;)Lm7/y$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lm7/y$d<",
            "TE;>;)",
            "Lm7/y$d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 2
    :goto_0
    invoke-interface {p0, v0}, Lm7/y$d;->b(I)Lm7/y$d;

    move-result-object p0

    return-object p0
.end method

.method public static v(Lm7/w;[B)Lm7/w;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lm7/w<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lm7/z;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    invoke-static {}, Lm7/o;->a()Lm7/o;

    move-result-object v1

    .line 3
    sget-object v2, Lm7/w$f;->k:Lm7/w$f;

    .line 4
    invoke-virtual {p0, v2}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    check-cast p0, Lm7/w;

    .line 6
    :try_start_0
    sget-object v2, Lm7/z0;->c:Lm7/z0;

    .line 7
    invoke-virtual {v2, p0}, Lm7/z0;->b(Ljava/lang/Object;)Lm7/c1;

    move-result-object v8

    add-int/lit8 v6, v0, 0x0

    .line 8
    new-instance v7, Lm7/e$a;

    invoke-direct {v7, v1}, Lm7/e$a;-><init>(Lm7/o;)V

    const/4 v5, 0x0

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    invoke-interface/range {v2 .. v7}, Lm7/c1;->h(Ljava/lang/Object;[BIILm7/e$a;)V

    .line 9
    invoke-interface {v8, p0}, Lm7/c1;->b(Ljava/lang/Object;)V

    .line 10
    iget p1, p0, Lm7/a;->memoizedHashCode:I
    :try_end_0
    .catch Lm7/z; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lm7/h1; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 11
    invoke-static {p0, p1}, Lm7/w;->s(Lm7/w;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    .line 12
    :cond_0
    new-instance p0, Lm7/h1;

    invoke-direct {p0}, Lm7/h1;-><init>()V

    .line 13
    invoke-virtual {p0}, Lm7/h1;->a()Lm7/z;

    move-result-object p0

    .line 14
    throw p0

    .line 15
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catch Lm7/z; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lm7/h1; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    :catch_0
    invoke-static {}, Lm7/z;->e()Lm7/z;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lm7/z;

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lm7/z;

    throw p0

    .line 19
    :cond_2
    new-instance p1, Lm7/z;

    invoke-direct {p1, p0}, Lm7/z;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 20
    invoke-virtual {p0}, Lm7/h1;->a()Lm7/z;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    .line 21
    throw p0
.end method

.method public static w(Ljava/lang/Class;Lm7/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lm7/w<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lm7/w;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget v0, p0, Lm7/w;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lm7/z0;->c:Lm7/z0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm7/z0;->a(Ljava/lang/Class;)Lm7/c1;

    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lm7/c1;->e(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lm7/w;->memoizedSerializedSize:I

    .line 6
    :cond_0
    iget v0, p0, Lm7/w;->memoizedSerializedSize:I

    return v0
.end method

.method public bridge synthetic b()Lm7/p0;
    .locals 1

    invoke-virtual {p0}, Lm7/w;->q()Lm7/w;

    move-result-object v0

    return-object v0
.end method

.method public c()Lm7/p0$a;
    .locals 1

    .line 1
    sget-object v0, Lm7/w$f;->l:Lm7/w$f;

    .line 2
    invoke-virtual {p0, v0}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lm7/w$a;

    .line 4
    invoke-virtual {v0, p0}, Lm7/w$a;->l(Lm7/w;)Lm7/w$a;

    return-object v0
.end method

.method public bridge synthetic d()Lm7/p0$a;
    .locals 1

    invoke-virtual {p0}, Lm7/w;->u()Lm7/w$a;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 2
    :cond_2
    sget-object v0, Lm7/z0;->c:Lm7/z0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm7/z0;->a(Ljava/lang/Class;)Lm7/c1;

    move-result-object v0

    .line 5
    check-cast p1, Lm7/w;

    invoke-interface {v0, p0, p1}, Lm7/c1;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lm7/w;->s(Lm7/w;Z)Z

    move-result v0

    return v0
.end method

.method public final g(Lm7/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lm7/z0;->c:Lm7/z0;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm7/z0;->a(Ljava/lang/Class;)Lm7/c1;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lm7/k;->a:Lm7/l;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lm7/l;

    invoke-direct {v1, p1}, Lm7/l;-><init>(Lm7/k;)V

    .line 6
    :goto_0
    invoke-interface {v0, p0, v1}, Lm7/c1;->i(Ljava/lang/Object;Lm7/q1;)V

    return-void
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lm7/a;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lm7/z0;->c:Lm7/z0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm7/z0;->a(Ljava/lang/Class;)Lm7/c1;

    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lm7/c1;->g(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lm7/a;->memoizedHashCode:I

    return v0
.end method

.method final i()I
    .locals 1

    iget v0, p0, Lm7/w;->memoizedSerializedSize:I

    return v0
.end method

.method final l(I)V
    .locals 0

    iput p1, p0, Lm7/w;->memoizedSerializedSize:I

    return-void
.end method

.method public final n()Lm7/w$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lm7/w<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lm7/w$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lm7/w$f;->l:Lm7/w$f;

    .line 2
    invoke-virtual {p0, v0}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lm7/w$a;

    return-object v0
.end method

.method public abstract o(Lm7/w$f;)Ljava/lang/Object;
.end method

.method public final q()Lm7/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lm7/w$f;->m:Lm7/w$f;

    .line 2
    invoke-virtual {p0, v0}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lm7/w;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v1, v0}, Lm7/r0;->c(Lm7/p0;Ljava/lang/StringBuilder;I)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lm7/w$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lm7/w$f;->l:Lm7/w$f;

    .line 2
    invoke-virtual {p0, v0}, Lm7/w;->o(Lm7/w$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lm7/w$a;

    return-object v0
.end method
