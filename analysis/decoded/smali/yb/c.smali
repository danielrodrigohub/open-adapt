.class public final Lyb/c;
.super Lld/i;
.source "NativeOIDCWrapper.kt"

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
    c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper$doRevokeRefreshToken$2$1"
    f = "NativeOIDCWrapper.kt"
    l = {
        0x9d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lyb/e;

.field public final synthetic j:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lyb/e;Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;Ljava/lang/String;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/e;",
            "Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lyb/c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyb/c;->i:Lyb/e;

    iput-object p2, p0, Lyb/c;->j:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    iput-object p3, p0, Lyb/c;->k:Ljava/lang/String;

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

    new-instance v0, Lyb/c;

    iget-object v1, p0, Lyb/c;->i:Lyb/e;

    iget-object v2, p0, Lyb/c;->j:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    iget-object v3, p0, Lyb/c;->k:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p1}, Lyb/c;-><init>(Lyb/e;Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;Ljava/lang/String;Ljd/d;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljd/d;

    invoke-virtual {p0, p1}, Lyb/c;->create(Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lyb/c;

    sget-object v0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, v0}, Lyb/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lyb/c;->h:I

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
    iget-object p1, p0, Lyb/c;->i:Lyb/e;

    .line 5
    iget-object p1, p1, Lyb/e;->b:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;

    .line 6
    invoke-interface {p1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;->create()Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;

    move-result-object p1

    .line 7
    iget-object v1, p0, Lyb/c;->j:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    invoke-virtual {v1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;->getRevoke_endpoint()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v3, p0, Lyb/c;->i:Lyb/e;

    .line 9
    iget-object v3, v3, Lyb/e;->a:Lob/a;

    .line 10
    iget-object v3, v3, Lob/a;->b:Lob/a$b;

    .line 11
    invoke-interface {v3}, Lob/a$b;->e()V

    .line 12
    iget-object v3, p0, Lyb/c;->k:Ljava/lang/String;

    .line 13
    iput v2, p0, Lyb/c;->h:I

    const-string v2, "5049d3b1ed877abc784ac3233c0cf83"

    invoke-interface {p1, v1, v2, v3, p0}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;->revokeRefreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 14
    :cond_2
    :goto_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
