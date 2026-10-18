.class public abstract Lb7/x;
.super Lb7/a;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb7/x$b;,
        Lb7/x$e;,
        Lb7/x$d;,
        Lb7/x$c;,
        Lb7/x$a;,
        Lb7/x$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lb7/x<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lb7/x$a<",
        "TMessageType;TBuilderType;>;>",
        "Lb7/a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lb7/x<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public memoizedSerializedSize:I

.field public unknownFields:Lb7/m1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lb7/x;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb7/a;-><init>()V

    .line 2
    sget-object v0, Lb7/m1;->f:Lb7/m1;

    iput-object v0, p0, Lb7/x;->unknownFields:Lb7/m1;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lb7/x;->memoizedSerializedSize:I

    return-void
.end method

.method public static m(Lb7/x;)Lb7/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb7/x<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb7/a0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb7/x;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lb7/k1;

    invoke-direct {p0}, Lb7/k1;-><init>()V

    .line 3
    new-instance v0, Lb7/a0;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lb7/a0;-><init>(Ljava/lang/String;)V

    .line 4
    throw v0
.end method

.method public static q(Ljava/lang/Class;)Lb7/x;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb7/x<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb7/x;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7/x;

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
    sget-object v0, Lb7/x;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7/x;

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
    invoke-static {p0}, Lb7/p1;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb7/x;

    invoke-virtual {v0}, Lb7/x;->r()Lb7/x;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v1, Lb7/x;->defaultInstanceMap:Ljava/util/Map;

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

.method static varargs s(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static t(Lb7/x;Lb7/i;Lb7/p;)Lb7/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb7/x<",
            "TT;*>;>(TT;",
            "Lb7/i;",
            "Lb7/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb7/a0;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lb7/i;->p()Lb7/j;

    move-result-object p1

    .line 2
    invoke-static {p0, p1, p2}, Lb7/x;->v(Lb7/x;Lb7/j;Lb7/p;)Lb7/x;

    move-result-object p0
    :try_end_0
    .catch Lb7/a0; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 3
    :try_start_1
    invoke-virtual {p1, p2}, Lb7/j;->a(I)V
    :try_end_1
    .catch Lb7/a0; {:try_start_1 .. :try_end_1} :catch_0

    .line 4
    invoke-static {p0}, Lb7/x;->m(Lb7/x;)Lb7/x;

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    :try_start_2
    throw p0
    :try_end_2
    .catch Lb7/a0; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 6
    throw p0
.end method

.method public static u(Lb7/x;[BLb7/p;)Lb7/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb7/x<",
            "TT;*>;>(TT;[B",
            "Lb7/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb7/a0;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    sget-object v1, Lb7/x$f;->k:Lb7/x$f;

    .line 3
    invoke-virtual {p0, v1}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Lb7/x;

    .line 5
    :try_start_0
    sget-object v1, Lb7/a1;->c:Lb7/a1;

    .line 6
    invoke-virtual {v1, p0}, Lb7/a1;->b(Ljava/lang/Object;)Lb7/e1;

    move-result-object v7

    add-int/lit8 v5, v0, 0x0

    .line 7
    new-instance v6, Lb7/e$a;

    invoke-direct {v6, p2}, Lb7/e$a;-><init>(Lb7/p;)V

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lb7/e1;->j(Ljava/lang/Object;[BIILb7/e$a;)V

    .line 8
    invoke-interface {v7, p0}, Lb7/e1;->b(Ljava/lang/Object;)V

    .line 9
    iget p1, p0, Lb7/a;->memoizedHashCode:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 10
    invoke-static {p0}, Lb7/x;->m(Lb7/x;)Lb7/x;

    return-object p0

    .line 11
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    :catch_0
    invoke-static {}, Lb7/a0;->h()Lb7/a0;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lb7/a0;

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lb7/a0;

    throw p0

    .line 15
    :cond_1
    new-instance p1, Lb7/a0;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lb7/a0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static v(Lb7/x;Lb7/j;Lb7/p;)Lb7/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb7/x<",
            "TT;*>;>(TT;",
            "Lb7/j;",
            "Lb7/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb7/a0;
        }
    .end annotation

    .line 1
    sget-object v0, Lb7/x$f;->k:Lb7/x$f;

    .line 2
    invoke-virtual {p0, v0}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    check-cast p0, Lb7/x;

    .line 4
    :try_start_0
    sget-object v0, Lb7/a1;->c:Lb7/a1;

    .line 5
    invoke-virtual {v0, p0}, Lb7/a1;->b(Ljava/lang/Object;)Lb7/e1;

    move-result-object v0

    .line 6
    iget-object v1, p1, Lb7/j;->c:Lb7/k;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v1, Lb7/k;

    invoke-direct {v1, p1}, Lb7/k;-><init>(Lb7/j;)V

    .line 8
    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lb7/e1;->i(Ljava/lang/Object;Lb7/d1;Lb7/p;)V

    .line 9
    invoke-interface {v0, p0}, Lb7/e1;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lb7/a0;

    if-eqz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lb7/a0;

    throw p0

    .line 12
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lb7/a0;

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lb7/a0;

    throw p0

    .line 15
    :cond_2
    new-instance p1, Lb7/a0;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lb7/a0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static w(Ljava/lang/Class;Lb7/x;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lb7/x<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    sget-object v0, Lb7/x;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget v0, p0, Lb7/x;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lb7/a1;->c:Lb7/a1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a1;->a(Ljava/lang/Class;)Lb7/e1;

    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lb7/e1;->e(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lb7/x;->memoizedSerializedSize:I

    .line 6
    :cond_0
    iget v0, p0, Lb7/x;->memoizedSerializedSize:I

    return v0
.end method

.method public final bridge synthetic b()Lb7/q0;
    .locals 1

    invoke-virtual {p0}, Lb7/x;->r()Lb7/x;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lb7/q0$a;
    .locals 1

    .line 1
    sget-object v0, Lb7/x$f;->l:Lb7/x$f;

    .line 2
    invoke-virtual {p0, v0}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lb7/x$a;

    .line 4
    invoke-virtual {v0, p0}, Lb7/x$a;->k(Lb7/x;)Lb7/x$a;

    return-object v0
.end method

.method public final d()Lb7/q0$a;
    .locals 1

    .line 1
    sget-object v0, Lb7/x$f;->l:Lb7/x$f;

    .line 2
    invoke-virtual {p0, v0}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lb7/x$a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lb7/x;->r()Lb7/x;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    sget-object v0, Lb7/a1;->c:Lb7/a1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a1;->a(Ljava/lang/Class;)Lb7/e1;

    move-result-object v0

    .line 5
    check-cast p1, Lb7/x;

    invoke-interface {v0, p0, p1}, Lb7/e1;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Z
    .locals 2

    .line 1
    sget-object v0, Lb7/x$f;->h:Lb7/x$f;

    .line 2
    invoke-virtual {p0, v0}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lb7/a1;->c:Lb7/a1;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a1;->a(Ljava/lang/Class;)Lb7/e1;

    move-result-object v0

    .line 7
    invoke-interface {v0, p0}, Lb7/e1;->c(Ljava/lang/Object;)Z

    move-result v1

    .line 8
    sget-object v0, Lb7/x$f;->i:Lb7/x$f;

    .line 9
    invoke-virtual {p0, v0}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    :goto_0
    return v1
.end method

.method public final g(Lb7/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lb7/a1;->c:Lb7/a1;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a1;->a(Ljava/lang/Class;)Lb7/e1;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lb7/l;->a:Lb7/m;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lb7/m;

    invoke-direct {v1, p1}, Lb7/m;-><init>(Lb7/l;)V

    .line 6
    :goto_0
    invoke-interface {v0, p0, v1}, Lb7/e1;->h(Ljava/lang/Object;Lb7/t1;)V

    return-void
.end method

.method final h()I
    .locals 1

    iget v0, p0, Lb7/x;->memoizedSerializedSize:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lb7/a;->memoizedHashCode:I

    if-eqz v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lb7/a1;->c:Lb7/a1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb7/a1;->a(Ljava/lang/Class;)Lb7/e1;

    move-result-object v0

    .line 5
    invoke-interface {v0, p0}, Lb7/e1;->g(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lb7/a;->memoizedHashCode:I

    return v0
.end method

.method final k(I)V
    .locals 0

    iput p1, p0, Lb7/x;->memoizedSerializedSize:I

    return-void
.end method

.method public final n()Lb7/x$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lb7/x<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lb7/x$a<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb7/x$f;->l:Lb7/x$f;

    .line 2
    invoke-virtual {p0, v0}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lb7/x$a;

    return-object v0
.end method

.method public abstract o(Lb7/x$f;)Ljava/lang/Object;
.end method

.method public final p()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lb7/x$f;->k:Lb7/x$f;

    invoke-virtual {p0, v0}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lb7/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb7/x$f;->m:Lb7/x$f;

    .line 2
    invoke-virtual {p0, v0}, Lb7/x;->o(Lb7/x$f;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lb7/x;

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
    invoke-static {p0, v1, v0}, Lb7/s0;->c(Lb7/q0;Ljava/lang/StringBuilder;I)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
