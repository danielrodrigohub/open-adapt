.class public final Le8/b$a;
.super Lrd/o;
.source "AdaptExecutor.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le8/b;->a(Lf8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lf8/a;


# direct methods
.method public constructor <init>(Lf8/a;)V
    .locals 0

    iput-object p1, p0, Le8/b$a;->h:Lf8/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Le8/b$a;->h:Lf8/a;

    .line 2
    sget-object v1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v1}, Lcom/nike/adapt/BigfootApplication$e;->c()Lg8/a;

    move-result-object v1

    invoke-virtual {v1}, Lg8/a;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v2, Le8/b;->b:Le8/b;

    .line 4
    sget-object v2, Le8/b;->c:Lfd/h;

    invoke-virtual {v2}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nike/adapt/network/identity/AdaptIdentityServiceApi;

    .line 5
    new-instance v3, Le8/c;

    .line 6
    sget-object v4, Le8/b;->d:Ljava/util/List;

    .line 7
    invoke-direct {v3, v4}, Le8/c;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v1, v3}, Lcom/nike/adapt/network/identity/AdaptIdentityServiceApi;->getIdentity(Ljava/lang/String;Le8/c;)Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lf8/a;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed network request with status code of: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lf8/a;->b(Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    sget-object v1, Lfd/o;->a:Lfd/o;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    .line 12
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "upmId not found"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lf8/a;->b(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Le8/b$a;->h:Lf8/a;

    invoke-interface {v1, v0}, Lf8/a;->b(Ljava/lang/Throwable;)V

    .line 14
    :cond_2
    :goto_2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
