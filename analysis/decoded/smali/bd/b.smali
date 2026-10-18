.class public final Lbd/b;
.super Lld/i;
.source "FileDataStoreImpl.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/l<",
        "Ljd/d<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.persistence.implementation.datastores.FileDataStoreImpl$readInstance$2"
    f = "FileDataStoreImpl.kt"
    l = {
        0x20,
        0x23
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lkotlinx/serialization/StringFormat;

.field public i:Lkotlinx/serialization/DeserializationStrategy;

.field public j:I

.field public final synthetic k:Lbd/d;

.field public final synthetic l:Lkotlinx/serialization/DeserializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/DeserializationStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbd/d;Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbd/d;",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lbd/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbd/b;->k:Lbd/d;

    iput-object p2, p0, Lbd/b;->l:Lkotlinx/serialization/DeserializationStrategy;

    iput-object p3, p0, Lbd/b;->m:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljd/d;)Ljd/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance v0, Lbd/b;

    iget-object v1, p0, Lbd/b;->k:Lbd/d;

    iget-object v2, p0, Lbd/b;->l:Lkotlinx/serialization/DeserializationStrategy;

    iget-object v3, p0, Lbd/b;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lbd/b;-><init>(Lbd/d;Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;Ljd/d;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljd/d;

    invoke-virtual {p0, p1}, Lbd/b;->create(Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lbd/b;

    sget-object v0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, v0}, Lbd/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lbd/b;->j:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lbd/b;->i:Lkotlinx/serialization/DeserializationStrategy;

    iget-object v1, p0, Lbd/b;->h:Lkotlinx/serialization/StringFormat;

    check-cast v1, Lkotlinx/serialization/BinaryFormat;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v0, p0, Lbd/b;->i:Lkotlinx/serialization/DeserializationStrategy;

    iget-object v1, p0, Lbd/b;->h:Lkotlinx/serialization/StringFormat;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lbd/b;->k:Lbd/d;

    .line 5
    iget-object v1, p1, Lbd/d;->d:Ldd/e;

    .line 6
    instance-of v4, v1, Ldd/e$c;

    if-eqz v4, :cond_4

    check-cast v1, Ldd/e$c;

    .line 7
    iget-object v1, v1, Ldd/e$c;->j:Lkotlinx/serialization/StringFormat;

    .line 8
    iget-object v2, p0, Lbd/b;->l:Lkotlinx/serialization/DeserializationStrategy;

    .line 9
    iget-object p1, p1, Lbd/d;->b:Lcd/e;

    .line 10
    iget-object v4, p0, Lbd/b;->m:Ljava/lang/String;

    iput-object v1, p0, Lbd/b;->h:Lkotlinx/serialization/StringFormat;

    iput-object v2, p0, Lbd/b;->i:Lkotlinx/serialization/DeserializationStrategy;

    iput v3, p0, Lbd/b;->j:I

    invoke-interface {p1, v4, p0}, Lcd/e;->d(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v0, v2

    .line 11
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 12
    invoke-interface {v1, v0, p1}, Lkotlinx/serialization/StringFormat;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .line 13
    :cond_4
    instance-of p1, v1, Ldd/e$a;

    if-eqz p1, :cond_6

    check-cast v1, Ldd/e$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 14
    iget-object p1, p0, Lbd/b;->l:Lkotlinx/serialization/DeserializationStrategy;

    iget-object v3, p0, Lbd/b;->k:Lbd/d;

    .line 15
    iget-object v3, v3, Lbd/d;->b:Lcd/e;

    .line 16
    iget-object v4, p0, Lbd/b;->m:Ljava/lang/String;

    iput-object v1, p0, Lbd/b;->h:Lkotlinx/serialization/StringFormat;

    iput-object p1, p0, Lbd/b;->i:Lkotlinx/serialization/DeserializationStrategy;

    iput v2, p0, Lbd/b;->j:I

    invoke-interface {v3, v4, p0}, Lcd/e;->b(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    return-object v0

    :cond_5
    move-object v0, p1

    move-object p1, v2

    .line 17
    :goto_1
    check-cast p1, [B

    .line 18
    invoke-interface {v1, v0, p1}, Lkotlinx/serialization/BinaryFormat;->decodeFromByteArray(Lkotlinx/serialization/DeserializationStrategy;[B)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_6
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1
.end method
