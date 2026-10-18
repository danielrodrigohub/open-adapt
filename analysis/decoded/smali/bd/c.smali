.class public final Lbd/c;
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
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.persistence.implementation.datastores.FileDataStoreImpl$writeInstance$2"
    f = "FileDataStoreImpl.kt"
    l = {
        0x2e,
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lbd/d;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lkotlinx/serialization/SerializationStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/SerializationStrategy<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic l:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbd/d;Ljava/lang/String;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbd/d;",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/SerializationStrategy<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "-",
            "Lbd/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbd/c;->i:Lbd/d;

    iput-object p2, p0, Lbd/c;->j:Ljava/lang/String;

    iput-object p3, p0, Lbd/c;->k:Lkotlinx/serialization/SerializationStrategy;

    iput-object p4, p0, Lbd/c;->l:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p5}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljd/d;)Ljd/d;
    .locals 7
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

    new-instance v6, Lbd/c;

    iget-object v1, p0, Lbd/c;->i:Lbd/d;

    iget-object v2, p0, Lbd/c;->j:Ljava/lang/String;

    iget-object v3, p0, Lbd/c;->k:Lkotlinx/serialization/SerializationStrategy;

    iget-object v4, p0, Lbd/c;->l:Ljava/lang/Object;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lbd/c;-><init>(Lbd/d;Ljava/lang/String;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;Ljd/d;)V

    return-object v6
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljd/d;

    invoke-virtual {p0, p1}, Lbd/c;->create(Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lbd/c;

    sget-object v0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, v0}, Lbd/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lbd/c;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    :cond_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lbd/c;->i:Lbd/d;

    .line 5
    iget-object v1, p1, Lbd/d;->d:Ldd/e;

    .line 6
    instance-of v3, v1, Ldd/e$c;

    if-eqz v3, :cond_3

    .line 7
    iget-object p1, p1, Lbd/d;->b:Lcd/e;

    .line 8
    iget-object v3, p0, Lbd/c;->j:Ljava/lang/String;

    check-cast v1, Ldd/e$c;

    .line 9
    iget-object v1, v1, Ldd/e$c;->j:Lkotlinx/serialization/StringFormat;

    .line 10
    iget-object v4, p0, Lbd/c;->k:Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lbd/c;->l:Ljava/lang/Object;

    invoke-interface {v1, v4, v5}, Lkotlinx/serialization/StringFormat;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 11
    iput v2, p0, Lbd/c;->h:I

    invoke-interface {p1, v3, v1, p0}, Lcd/e;->a(Ljava/lang/String;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 12
    :cond_3
    instance-of v0, v1, Ldd/e$a;

    if-nez v0, :cond_5

    .line 13
    :cond_4
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 14
    :cond_5
    iget-object p1, p1, Lbd/d;->b:Lcd/e;

    .line 15
    check-cast v1, Ldd/e$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
