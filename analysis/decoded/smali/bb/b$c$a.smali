.class public final Lbb/b$c$a;
.super Lld/i;
.source "AdaptKitFirmwareRepository.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfa/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl$downloadFirmware$2$1"
    f = "AdaptKitFirmwareRepository.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lbb/b;

.field public i:Lfa/b$c;

.field public j:I

.field public final synthetic k:Lbb/b;

.field public final synthetic l:Lfa/b$c;


# direct methods
.method public constructor <init>(Lbb/b;Lfa/b$c;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbb/b;",
            "Lfa/b$c;",
            "Ljd/d<",
            "-",
            "Lbb/b$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbb/b$c$a;->k:Lbb/b;

    iput-object p2, p0, Lbb/b$c$a;->l:Lfa/b$c;

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

    new-instance p1, Lbb/b$c$a;

    iget-object v0, p0, Lbb/b$c$a;->k:Lbb/b;

    iget-object v1, p0, Lbb/b$c$a;->l:Lfa/b$c;

    invoke-direct {p1, v0, v1, p2}, Lbb/b$c$a;-><init>(Lbb/b;Lfa/b$c;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lbb/b$c$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lbb/b$c$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lbb/b$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lbb/b$c$a;->j:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Lbb/b$c$a;->k:Lbb/b;

    iget-object v1, p0, Lbb/b$c$a;->l:Lfa/b$c;

    iput-object p1, p0, Lbb/b$c$a;->h:Lbb/b;

    iput-object v1, p0, Lbb/b$c$a;->i:Lfa/b$c;

    iput v2, p0, Lbb/b$c$a;->j:I

    new-instance v2, Ljd/i;

    invoke-static {p0}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object v3

    invoke-direct {v2, v3}, Ljd/i;-><init>(Ljd/d;)V

    .line 5
    iget-object v3, p1, Lbb/b;->c:Lra/c;

    .line 6
    iget-object v4, v1, Lfa/b$c;->n:Ljava/lang/String;

    .line 7
    new-instance v5, Lbb/b$c$a$a;

    invoke-direct {v5, p1, v1, v2}, Lbb/b$c$a$a;-><init>(Lbb/b;Lfa/b$c;Ljd/d;)V

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "fullUrl"

    .line 9
    invoke-static {v4, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lz9/a;->k:Lz9/a;

    new-instance v1, Lra/b;

    invoke-direct {v1, v5, v4}, Lra/b;-><init>(Lta/a;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lz9/a;->b(Lqd/a;)V

    .line 11
    invoke-virtual {v2}, Ljd/i;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
