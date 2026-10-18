.class public final Lbb/b$a$a;
.super Lld/i;
.source "AdaptKitFirmwareRepository.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbb/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lfa/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.repository.firmware.AdaptKitFirmwareRepositoryImpl$checkFirmware$2$1"
    f = "AdaptKitFirmwareRepository.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:Lbb/b;

.field public i:Lfb/c;

.field public j:I

.field public final synthetic k:Lbb/b;

.field public final synthetic l:Lfb/c;


# direct methods
.method public constructor <init>(Lbb/b;Lfb/c;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbb/b;",
            "Lfb/c;",
            "Ljd/d<",
            "-",
            "Lbb/b$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lbb/b$a$a;->k:Lbb/b;

    iput-object p2, p0, Lbb/b$a$a;->l:Lfb/c;

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

    new-instance p1, Lbb/b$a$a;

    iget-object v0, p0, Lbb/b$a$a;->k:Lbb/b;

    iget-object v1, p0, Lbb/b$a$a;->l:Lfb/c;

    invoke-direct {p1, v0, v1, p2}, Lbb/b$a$a;-><init>(Lbb/b;Lfb/c;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lbb/b$a$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lbb/b$a$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lbb/b$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lbb/b$a$a;->j:I

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
    iget-object p1, p0, Lbb/b$a$a;->k:Lbb/b;

    iget-object v1, p0, Lbb/b$a$a;->l:Lfb/c;

    iput-object p1, p0, Lbb/b$a$a;->h:Lbb/b;

    iput-object v1, p0, Lbb/b$a$a;->i:Lfb/c;

    iput v2, p0, Lbb/b$a$a;->j:I

    new-instance v2, Ljd/i;

    invoke-static {p0}, Landroidx/lifecycle/o;->t(Ljd/d;)Ljd/d;

    move-result-object v3

    invoke-direct {v2, v3}, Ljd/i;-><init>(Ljd/d;)V

    .line 5
    iget-object p1, p1, Lbb/b;->c:Lra/c;

    .line 6
    new-instance v3, Lbb/b$a$a$a;

    invoke-direct {v3, v2, v1}, Lbb/b$a$a$a;-><init>(Ljd/d;Lfb/c;)V

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "currentVersion"

    .line 8
    invoke-static {v1, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p1, Lz9/a;->k:Lz9/a;

    new-instance v4, Lra/a;

    invoke-direct {v4, v3, v1}, Lra/a;-><init>(Lta/a;Lfb/c;)V

    invoke-virtual {p1, v4}, Lz9/a;->b(Lqd/a;)V

    .line 10
    invoke-virtual {v2}, Ljd/i;->a()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
