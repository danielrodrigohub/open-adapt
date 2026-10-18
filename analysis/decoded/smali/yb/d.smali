.class public final Lyb/d;
.super Lld/i;
.source "NativeOIDCWrapper.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Ljava/lang/Throwable;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper$doRevokeRefreshToken$2$2"
    f = "NativeOIDCWrapper.kt"
    l = {
        0xa5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lrd/u;

.field public final synthetic k:Lyb/e;

.field public final synthetic l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrd/u;Lyb/e;Ljava/lang/String;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrd/u;",
            "Lyb/e;",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lyb/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyb/d;->j:Lrd/u;

    iput-object p2, p0, Lyb/d;->k:Lyb/e;

    iput-object p3, p0, Lyb/d;->l:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 4
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

    new-instance v0, Lyb/d;

    iget-object v1, p0, Lyb/d;->j:Lrd/u;

    iget-object v2, p0, Lyb/d;->k:Lyb/e;

    iget-object v3, p0, Lyb/d;->l:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lyb/d;-><init>(Lrd/u;Lyb/e;Ljava/lang/String;Ljd/d;)V

    iput-object p1, v0, Lyb/d;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lyb/d;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lyb/d;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lyb/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lyb/d;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lyb/d;->i:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

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

    iget-object p1, p0, Lyb/d;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    .line 4
    iget-object v1, p0, Lyb/d;->j:Lrd/u;

    iput-boolean v2, v1, Lrd/u;->h:Z

    .line 5
    iget-object v1, p0, Lyb/d;->k:Lyb/e;

    .line 6
    iget-object v1, v1, Lyb/e;->d:Lac/a;

    .line 7
    iget-object v3, p0, Lyb/d;->l:Ljava/lang/String;

    iput-object p1, p0, Lyb/d;->i:Ljava/lang/Object;

    iput v2, p0, Lyb/d;->h:I

    invoke-interface {v1, v3, p0}, Lac/a;->a(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 8
    :goto_0
    iget-object p1, p0, Lyb/d;->k:Lyb/e;

    .line 9
    invoke-virtual {p1}, Lyb/e;->h()Led/e;

    move-result-object p1

    .line 10
    invoke-static {p1, v0}, Lec/b;->d(Led/e;Ljava/lang/Throwable;)V

    .line 11
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
