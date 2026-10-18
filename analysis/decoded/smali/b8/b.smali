.class public final Lb8/b;
.super Ljava/lang/Object;
.source "PermissionsApi.kt"

# interfaces
.implements Lb8/a;


# static fields
.field public static final b:Lb8/b;

.field public static final c:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb8/b;

    invoke-direct {v0}, Lb8/b;-><init>()V

    sput-object v0, Lb8/b;->b:Lb8/b;

    sget-object v0, Lb8/b$a;->h:Lb8/b$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lb8/b;->c:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljd/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lb8/b$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lb8/b$b;

    iget v1, v0, Lb8/b$b;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lb8/b$b;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lb8/b$b;

    invoke-direct {v0, p0, p1}, Lb8/b$b;-><init>(Lb8/b;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lb8/b$b;->h:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lb8/b$b;->j:I

    const/4 v3, 0x0

    const-string v4, "adapt"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    :try_start_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

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
    :try_start_1
    sget-object p1, Lb8/b;->c:Lfd/h;

    invoke-virtual {p1}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;

    .line 5
    iput v5, v0, Lb8/b$b;->j:I

    invoke-interface {p1, v4, v0}, Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;->getPrivacyCompliance(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/nike/adapt/network/dataopt/permissions/model/Permissions;

    .line 8
    invoke-virtual {v2}, Lcom/nike/adapt/network/dataopt/permissions/model/Permissions;->getPrincipal()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/nike/adapt/network/dataopt/permissions/model/Permissions;->getPermission()Ljava/lang/String;

    move-result-object v2

    const-string v6, "productimprovement:laceenginestats"

    invoke-static {v2, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    :cond_6
    move-object v1, v3

    :goto_3
    check-cast v1, Lcom/nike/adapt/network/dataopt/permissions/model/Permissions;

    if-eqz v1, :cond_7

    .line 9
    invoke-virtual {v1}, Lcom/nike/adapt/network/dataopt/permissions/model/Permissions;->getConsent()Ljava/lang/String;

    move-result-object p1

    const-string v0, "accept"

    invoke-static {p1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 10
    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPermissions api : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo7/x;->a(Ljava/lang/String;)V

    return-object v3
.end method

.method public final b(ZLjd/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljd/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lb8/b$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lb8/b$c;

    iget v1, v0, Lb8/b$c;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lb8/b$c;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lb8/b$c;

    invoke-direct {v0, p0, p2}, Lb8/b$c;-><init>(Lb8/b;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lb8/b$c;->h:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lb8/b$c;->j:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :try_start_1
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    sget-object p2, Lb8/b;->c:Lfd/h;

    invoke-virtual {p2}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;

    .line 5
    new-instance v2, Lc8/a;

    if-eqz p1, :cond_4

    const-string p1, "accept"

    goto :goto_1

    :cond_4
    const-string p1, "decline"

    :goto_1
    invoke-direct {v2, p1}, Lc8/a;-><init>(Ljava/lang/String;)V

    iput v4, v0, Lb8/b$c;->j:I

    invoke-interface {p2, v2, v0}, Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;->updatePrivacyCompliance(Lc8/a;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Lb8/b;->b:Lb8/b;

    iput v3, v0, Lb8/b$c;->j:I

    invoke-virtual {p1, v0}, Lb8/b;->a(Ljd/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_3
    return-object p2

    :catchall_0
    move-exception p1

    .line 7
    sget-object p2, Lo7/x;->a:Lo7/x;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePermissions api : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo7/x;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
