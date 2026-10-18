.class public final Lad/b;
.super Lld/i;
.source "PersistenceManager.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lcom/nike/persistence/implementation/PersistenceManager$Settings;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.persistence.implementation.PersistenceManager$init$1$2$1"
    f = "PersistenceManager.kt"
    l = {
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lkotlinx/serialization/json/Json$Default;

.field public i:I

.field public final synthetic j:Lcd/a;

.field public final synthetic k:Lcom/nike/persistence/implementation/PersistenceManager;


# direct methods
.method public constructor <init>(Lcd/a;Lcom/nike/persistence/implementation/PersistenceManager;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcd/a;",
            "Lcom/nike/persistence/implementation/PersistenceManager;",
            "Ljd/d<",
            "-",
            "Lad/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lad/b;->j:Lcd/a;

    iput-object p2, p0, Lad/b;->k:Lcom/nike/persistence/implementation/PersistenceManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lad/b;

    iget-object v0, p0, Lad/b;->j:Lcd/a;

    iget-object v1, p0, Lad/b;->k:Lcom/nike/persistence/implementation/PersistenceManager;

    invoke-direct {p1, v0, v1, p2}, Lad/b;-><init>(Lcd/a;Lcom/nike/persistence/implementation/PersistenceManager;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lad/b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lad/b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lad/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lad/b;->i:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lad/b;->h:Lkotlinx/serialization/json/Json$Default;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    iget-object v1, p0, Lad/b;->j:Lcd/a;

    iget-object v3, p0, Lad/b;->k:Lcom/nike/persistence/implementation/PersistenceManager;

    .line 5
    iget-object v3, v3, Lcom/nike/persistence/implementation/PersistenceManager;->d:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Lad/b;->h:Lkotlinx/serialization/json/Json$Default;

    iput v2, p0, Lad/b;->i:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcd/a$d;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v3, v5}, Lcd/a$d;-><init>(Lcd/a;Ljava/lang/String;Ljd/d;)V

    invoke-static {v2, v4, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 8
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 9
    invoke-interface {v0}, Lkotlinx/serialization/SerialFormat;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    .line 10
    const-class v2, Lcom/nike/persistence/implementation/PersistenceManager$Settings;

    invoke-static {v2}, Lrd/x;->b(Ljava/lang/Class;)Lwd/g;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    .line 11
    invoke-interface {v0, v1, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
