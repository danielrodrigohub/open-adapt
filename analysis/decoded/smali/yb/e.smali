.class public final Lyb/e;
.super Ljava/lang/Object;
.source "NativeOIDCWrapper.kt"

# interfaces
.implements Lpb/d;


# instance fields
.field public final a:Lob/a;

.field public final b:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;

.field public final c:Lzb/a;

.field public final d:Lac/a;

.field public final e:Lwc/b;

.field public final f:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final g:Lkotlinx/coroutines/sync/Mutex;

.field public h:J

.field public i:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

.field public final j:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lob/a;)V
    .locals 10

    .line 1
    new-instance v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl;

    invoke-direct {v0, p1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl;-><init>(Lob/a;)V

    .line 2
    new-instance v1, Lzb/b;

    invoke-direct {v1, p1}, Lzb/b;-><init>(Lob/a;)V

    .line 3
    new-instance v2, Lac/b;

    .line 4
    iget-object v3, p1, Lob/a;->a:Lob/a$a;

    .line 5
    invoke-interface {v3}, Lob/a$a;->g()Lyc/c;

    move-result-object v3

    invoke-interface {v3}, Lyc/c;->a()Lyc/a$d;

    move-result-object v3

    const-string v4, "<this>"

    .line 6
    invoke-static {v3, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v4, Ldd/a;->h:Ldd/a;

    invoke-interface {v3, v4}, Lyc/a$a;->b(Lyc/a$b;)V

    .line 8
    new-instance v4, Ldd/d;

    const-string v5, "com.nike.authcomponent.oidc"

    invoke-direct {v4, v5}, Ldd/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lyc/a$a;->b(Lyc/a$b;)V

    .line 9
    invoke-interface {v3}, Lyc/a$d;->a()Lyc/a;

    move-result-object v3

    check-cast v3, Lzc/c;

    .line 10
    invoke-direct {v2, v3}, Lac/b;-><init>(Lzc/c;)V

    .line 11
    new-instance v3, Lwc/b;

    invoke-direct {v3}, Lwc/b;-><init>()V

    .line 12
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    const-string v4, "dispatcher"

    .line 13
    invoke-static {v5, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lyb/e;->a:Lob/a;

    .line 16
    iput-object v0, p0, Lyb/e;->b:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;

    .line 17
    iput-object v1, p0, Lyb/e;->c:Lzb/a;

    .line 18
    iput-object v2, p0, Lyb/e;->d:Lac/a;

    .line 19
    iput-object v3, p0, Lyb/e;->e:Lwc/b;

    .line 20
    iput-object v5, p0, Lyb/e;->f:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lyb/e;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lyb/e;->h:J

    .line 24
    iget-object p1, p1, Lob/a;->a:Lob/a$a;

    .line 25
    invoke-interface {p1}, Lob/a$a;->a()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v4

    iput-object v4, p0, Lyb/e;->j:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x0

    .line 26
    new-instance v7, Lyb/a;

    invoke-direct {v7, p0, v2}, Lyb/a;-><init>(Lyb/e;Ljd/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final f(Lyb/e;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v2, v0, Lyb/b;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lyb/b;

    iget v3, v2, Lyb/b;->n:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyb/b;->n:I

    goto :goto_0

    :cond_0
    new-instance v2, Lyb/b;

    invoke-direct {v2, v1, v0}, Lyb/b;-><init>(Lyb/e;Ljd/d;)V

    :goto_0
    iget-object v0, v2, Lyb/b;->l:Ljava/lang/Object;

    sget-object v3, Lkd/a;->h:Lkd/a;

    .line 3
    iget v4, v2, Lyb/b;->n:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v1, v2, Lyb/b;->j:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v2, Lyb/b;->h:Lyb/e;

    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_2
    iget-object v1, v2, Lyb/b;->k:Ljava/lang/Object;

    iget-object v4, v2, Lyb/b;->j:Ljava/io/Serializable;

    check-cast v4, Lrd/u;

    iget-object v6, v2, Lyb/b;->i:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v2, Lyb/b;->h:Lyb/e;

    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_3
    iget-object v1, v2, Lyb/b;->j:Ljava/io/Serializable;

    check-cast v1, Lrd/u;

    iget-object v4, v2, Lyb/b;->i:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v10, v2, Lyb/b;->h:Lyb/e;

    :try_start_0
    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    iget-object v1, v2, Lyb/b;->k:Ljava/lang/Object;

    check-cast v1, Lyb/e;

    iget-object v4, v2, Lyb/b;->j:Ljava/io/Serializable;

    check-cast v4, Lrd/u;

    iget-object v10, v2, Lyb/b;->i:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v2, Lyb/b;->h:Lyb/e;

    :try_start_1
    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 6
    new-instance v4, Lrd/u;

    invoke-direct {v4}, Lrd/u;-><init>()V

    .line 7
    :try_start_2
    iput-object v1, v2, Lyb/b;->h:Lyb/e;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v10, p1

    :try_start_3
    iput-object v10, v2, Lyb/b;->i:Ljava/lang/Object;

    iput-object v4, v2, Lyb/b;->j:Ljava/io/Serializable;

    iput-object v1, v2, Lyb/b;->k:Ljava/lang/Object;

    iput v8, v2, Lyb/b;->n:I

    invoke-virtual {v1, v2}, Lyb/e;->g(Ljd/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v3, :cond_6

    goto/16 :goto_8

    :cond_6
    move-object v11, v1

    .line 8
    :goto_1
    :try_start_4
    check-cast v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    .line 9
    iget-object v12, v1, Lyb/e;->e:Lwc/b;

    .line 10
    new-instance v13, Lyb/c;

    invoke-direct {v13, v1, v0, v10, v9}, Lyb/c;-><init>(Lyb/e;Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;Ljava/lang/String;Ljd/d;)V

    .line 11
    new-instance v0, Lyb/d;

    invoke-direct {v0, v4, v1, v10, v9}, Lyb/d;-><init>(Lrd/u;Lyb/e;Ljava/lang/String;Ljd/d;)V

    .line 12
    iput-object v11, v2, Lyb/b;->h:Lyb/e;

    iput-object v10, v2, Lyb/b;->i:Ljava/lang/Object;

    iput-object v4, v2, Lyb/b;->j:Ljava/io/Serializable;

    iput-object v9, v2, Lyb/b;->k:Ljava/lang/Object;

    iput v7, v2, Lyb/b;->n:I

    invoke-static {v12, v13, v0, v2}, Lwc/a;->a(Lwc/b;Lqd/l;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v0, v3, :cond_7

    goto/16 :goto_8

    :cond_7
    move-object v1, v4

    move-object v4, v10

    move-object v10, v11

    .line 13
    :goto_2
    :try_start_5
    sget-object v0, Lfd/o;->a:Lfd/o;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v18, v1

    move-object v1, v0

    move-object v0, v10

    move-object v10, v4

    move-object/from16 v4, v18

    goto :goto_5

    :goto_3
    move-object/from16 v18, v4

    move-object v4, v1

    move-object v1, v10

    move-object/from16 v10, v18

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v11

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v10, p1

    .line 14
    :goto_4
    invoke-static {v0}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v1

    move-object v1, v0

    move-object/from16 v0, v18

    .line 15
    :goto_5
    instance-of v11, v1, Lfd/f$a;

    xor-int/2addr v11, v8

    if-eqz v11, :cond_9

    .line 16
    move-object v11, v1

    check-cast v11, Lfd/o;

    .line 17
    iget-object v11, v0, Lyb/e;->d:Lac/a;

    iput-object v0, v2, Lyb/b;->h:Lyb/e;

    iput-object v10, v2, Lyb/b;->i:Ljava/lang/Object;

    iput-object v4, v2, Lyb/b;->j:Ljava/io/Serializable;

    iput-object v1, v2, Lyb/b;->k:Ljava/lang/Object;

    iput v6, v2, Lyb/b;->n:I

    invoke-interface {v11, v10, v2}, Lac/a;->c(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_8

    goto :goto_8

    :cond_8
    move-object v6, v10

    move-object v10, v0

    .line 18
    :goto_6
    invoke-virtual {v10}, Lyb/e;->h()Led/e;

    move-result-object v0

    const-string v11, "<this>"

    .line 19
    invoke-static {v0, v11}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v11, Led/b;

    const/4 v13, 0x3

    const/16 v12, 0x1f

    const/4 v14, 0x0

    .line 21
    invoke-static {v9, v9, v9, v14, v12}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v16

    .line 22
    sget-object v12, Lec/a;->a:Lec/a;

    new-array v7, v7, [Led/d;

    .line 23
    sget-object v15, Lec/a;->e:Led/d;

    aput-object v15, v7, v14

    .line 24
    sget-object v14, Lec/a;->g:Led/d;

    aput-object v14, v7, v8

    .line 25
    invoke-static {v7}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v12, v7}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    const-string v14, "Revoke_Refresh_Token_Succeeded"

    const-string v15, "Revoke refresh token succeeded"

    move-object v12, v11

    .line 26
    invoke-direct/range {v12 .. v17}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 27
    invoke-interface {v0, v11}, Led/e;->b(Landroid/support/v4/media/a;)V

    move-object v0, v10

    move-object v10, v6

    .line 28
    :cond_9
    invoke-static {v1}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 29
    iget-boolean v4, v4, Lrd/u;->h:Z

    if-nez v4, :cond_b

    .line 30
    iget-object v4, v0, Lyb/e;->d:Lac/a;

    iput-object v0, v2, Lyb/b;->h:Lyb/e;

    iput-object v1, v2, Lyb/b;->i:Ljava/lang/Object;

    iput-object v6, v2, Lyb/b;->j:Ljava/io/Serializable;

    iput-object v9, v2, Lyb/b;->k:Ljava/lang/Object;

    iput v5, v2, Lyb/b;->n:I

    invoke-interface {v4, v10, v2}, Lac/a;->a(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    goto :goto_8

    :cond_a
    move-object v2, v0

    move-object v1, v6

    .line 31
    :goto_7
    invoke-virtual {v2}, Lyb/e;->h()Led/e;

    move-result-object v0

    invoke-static {v0, v1}, Lec/b;->d(Led/e;Ljava/lang/Throwable;)V

    .line 32
    :cond_b
    sget-object v3, Lfd/o;->a:Lfd/o;

    :goto_8
    return-object v3
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    const-string v0, "refreshToken"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lyb/e;->j:Lkotlinx/coroutines/CoroutineScope;

    iget-object v2, p0, Lyb/e;->f:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v4, Lyb/e$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lyb/e$d;-><init>(Lyb/e;Ljava/lang/String;Ljd/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lyb/e;->j:Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lyb/e;->f:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance v3, Lyb/e$b;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lyb/e$b;-><init>(Lyb/e;Ljd/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2
    iget-object v0, p0, Lyb/e;->c:Lzb/a;

    invoke-interface {v0}, Lzb/a;->a()V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lob/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lyb/e$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lyb/e$c;

    iget v1, v0, Lyb/e$c;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyb/e$c;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyb/e$c;

    invoke-direct {v0, p0, p2}, Lyb/e$c;-><init>(Lyb/e;Ljd/d;)V

    :goto_0
    move-object v6, v0

    iget-object p2, v6, Lyb/e$c;->j:Ljava/lang/Object;

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, v6, Lyb/e$c;->l:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v6, Lyb/e$c;->h:Lyb/e;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v6, Lyb/e$c;->i:Ljava/lang/String;

    iget-object v1, v6, Lyb/e$c;->h:Lyb/e;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v4, p1

    move-object p1, v1

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v6, Lyb/e$c;->h:Lyb/e;

    iput-object p1, v6, Lyb/e$c;->i:Ljava/lang/String;

    iput v3, v6, Lyb/e$c;->l:I

    invoke-virtual {p0, v6}, Lyb/e;->g(Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    move-object v4, p1

    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    .line 6
    iget-object v1, p1, Lyb/e;->b:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;

    invoke-interface {v1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;->create()Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;

    move-result-object v1

    .line 7
    invoke-virtual {p2}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;->getToken_endpoint()Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object v3, p1, Lyb/e;->a:Lob/a;

    .line 9
    iget-object v3, v3, Lob/a;->b:Lob/a$b;

    .line 10
    invoke-interface {v3}, Lob/a$b;->e()V

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 11
    iput-object p1, v6, Lyb/e$c;->h:Lyb/e;

    const/4 v3, 0x0

    iput-object v3, v6, Lyb/e$c;->i:Ljava/lang/String;

    iput v2, v6, Lyb/e$c;->l:I

    const-string v3, "5049d3b1ed877abc784ac3233c0cf83"

    move-object v2, p2

    invoke-static/range {v1 .. v8}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService$DefaultImpls;->updateCredential$default(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_5

    return-object v0

    .line 12
    :cond_5
    :goto_2
    check-cast p2, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    .line 13
    invoke-virtual {p1}, Lyb/e;->h()Led/e;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt;->toInternal(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;Led/e;)Lob/c;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroidx/fragment/app/p;Lzd/a;Ljd/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/p;",
            "Lzd/a;",
            "Ljd/d<",
            "-",
            "Lob/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    instance-of v2, v0, Lyb/e$e;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lyb/e$e;

    iget v3, v2, Lyb/e$e;->m:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lyb/e$e;->m:I

    goto :goto_0

    :cond_0
    new-instance v2, Lyb/e$e;

    invoke-direct {v2, v1, v0}, Lyb/e$e;-><init>(Lyb/e;Ljd/d;)V

    :goto_0
    move-object v10, v2

    iget-object v0, v10, Lyb/e$e;->k:Ljava/lang/Object;

    sget-object v2, Lkd/a;->h:Lkd/a;

    .line 1
    iget v3, v10, Lyb/e$e;->m:I

    const/4 v9, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v4, :cond_3

    if-eq v3, v11, :cond_2

    if-ne v3, v9, :cond_1

    iget-object v2, v10, Lyb/e$e;->h:Lyb/e;

    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v3, v10, Lyb/e$e;->j:Ljava/lang/Object;

    check-cast v3, Lbc/a;

    iget-object v4, v10, Lyb/e$e;->i:Ljava/lang/Object;

    check-cast v4, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    iget-object v5, v10, Lyb/e$e;->h:Lyb/e;

    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v13, v5

    goto/16 :goto_3

    :cond_3
    iget-object v3, v10, Lyb/e$e;->j:Ljava/lang/Object;

    check-cast v3, Lzd/a;

    iget-object v5, v10, Lyb/e$e;->i:Ljava/lang/Object;

    check-cast v5, Landroidx/fragment/app/p;

    iget-object v6, v10, Lyb/e$e;->h:Lyb/e;

    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    move-object v7, v3

    move-object v13, v6

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iput-object v1, v10, Lyb/e$e;->h:Lyb/e;

    move-object/from16 v0, p1

    iput-object v0, v10, Lyb/e$e;->i:Ljava/lang/Object;

    move-object/from16 v3, p2

    iput-object v3, v10, Lyb/e$e;->j:Ljava/lang/Object;

    iput v4, v10, Lyb/e$e;->m:I

    invoke-virtual {v1, v10}, Lyb/e;->g(Ljd/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_5

    return-object v2

    :cond_5
    move-object v13, v1

    move-object v7, v3

    move-object/from16 v16, v5

    move-object v5, v0

    move-object/from16 v0, v16

    .line 5
    :goto_1
    check-cast v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    const/16 v3, 0x80

    const/4 v6, 0x0

    const-string v8, ""

    move v14, v6

    :goto_2
    add-int/2addr v14, v4

    .line 6
    sget-object v15, Ltd/c;->h:Ltd/c$a;

    const/16 v4, 0x42

    .line 7
    invoke-virtual {v15, v4}, Ltd/c$a;->b(I)I

    move-result v4

    const-string v15, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~"

    invoke-virtual {v15, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 8
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v8, v4}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-lt v14, v3, :cond_f

    .line 9
    :try_start_0
    sget-object v3, Lyd/a;->e:Ljava/nio/charset/Charset;

    if-eqz v8, :cond_e

    invoke-virtual {v8, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v4, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v4, "SHA-256"

    .line 10
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const-string v14, "getInstance(SHA_256)"

    invoke-static {v4, v14}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v14, v3

    invoke-virtual {v4, v3, v6, v14}, Ljava/security/MessageDigest;->update([BII)V

    .line 12
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-string v4, "{\n            val md: MessageDigest = MessageDigest.getInstance(SHA_256)\n            md.update(input, 0, input.size)\n            md.digest()\n        }"

    .line 13
    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0xb

    .line 14
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "encodeToString(source, Base64.URL_SAFE or Base64.NO_WRAP or Base64.NO_PADDING)"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v14, Lbc/a;

    invoke-direct {v14, v8, v3}, Lbc/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v3, v13, Lyb/e;->c:Lzb/a;

    iput-object v13, v10, Lyb/e$e;->h:Lyb/e;

    iput-object v0, v10, Lyb/e$e;->i:Ljava/lang/Object;

    iput-object v14, v10, Lyb/e$e;->j:Ljava/lang/Object;

    iput v11, v10, Lyb/e$e;->m:I

    move-object v4, v5

    move-object v5, v0

    move-object v6, v14

    move-object v8, v10

    invoke-interface/range {v3 .. v8}, Lzb/a;->b(Landroidx/fragment/app/p;Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;Lbc/a;Lzd/a;Ljd/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_6

    return-object v2

    :cond_6
    move-object v4, v0

    move-object v0, v3

    move-object v3, v14

    .line 17
    :goto_3
    check-cast v0, Landroidx/activity/result/a;

    .line 18
    iget-object v0, v0, Landroidx/activity/result/a;->i:Landroid/content/Intent;

    if-nez v0, :cond_7

    goto/16 :goto_7

    .line 19
    :cond_7
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_8

    move-object v7, v12

    goto :goto_4

    :cond_8
    const-string v6, "code"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    .line 20
    :goto_4
    sget v5, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->m:I

    const-string v5, "com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationException"

    .line 21
    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    move-object v0, v12

    goto :goto_5

    .line 22
    :cond_9
    :try_start_2
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->c(Ljava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    if-nez v0, :cond_d

    if-eqz v7, :cond_c

    .line 23
    iget-object v0, v13, Lyb/e;->b:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;

    invoke-interface {v0}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;->create()Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;

    move-result-object v0

    .line 24
    invoke-virtual {v4}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;->getToken_endpoint()Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object v5, v13, Lyb/e;->a:Lob/a;

    .line 26
    iget-object v5, v5, Lob/a;->b:Lob/a$b;

    .line 27
    invoke-interface {v5}, Lob/a$b;->e()V

    .line 28
    iget-object v5, v13, Lyb/e;->a:Lob/a;

    .line 29
    iget-object v5, v5, Lob/a;->b:Lob/a$b;

    .line 30
    invoke-interface {v5}, Lob/a$b;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v5, "configuration.settings.redirectURI.toString()"

    invoke-static {v6, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v8, v3, Lbc/a;->a:Ljava/lang/String;

    const/4 v11, 0x0

    const/16 v14, 0x20

    const/4 v15, 0x0

    .line 32
    iput-object v13, v10, Lyb/e$e;->h:Lyb/e;

    iput-object v12, v10, Lyb/e$e;->i:Ljava/lang/Object;

    iput-object v12, v10, Lyb/e$e;->j:Ljava/lang/Object;

    iput v9, v10, Lyb/e$e;->m:I

    const-string v5, "5049d3b1ed877abc784ac3233c0cf83"

    move-object v3, v0

    move-object v9, v11

    move v11, v14

    move-object v12, v15

    invoke-static/range {v3 .. v12}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService$DefaultImpls;->getCredential$default(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_a

    return-object v2

    :cond_a
    move-object v2, v13

    .line 33
    :goto_6
    check-cast v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    .line 34
    invoke-virtual {v2}, Lyb/e;->h()Led/e;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt;->toInternal(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;Led/e;)Lob/c;

    move-result-object v12

    :goto_7
    if-eqz v12, :cond_b

    return-object v12

    .line 35
    :cond_b
    new-instance v0, Lob/e$d;

    .line 36
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v3, "AppAuth did not send result data"

    .line 37
    invoke-direct {v0, v3, v2}, Lob/e$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 38
    :cond_c
    new-instance v0, Lob/e$d;

    const-string v2, "AppAuth gave an empty response"

    invoke-direct {v0, v2, v12, v11}, Lob/e$d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 39
    :cond_d
    throw v0

    :catch_0
    move-exception v0

    .line 40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Intent contains malformed exception data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 41
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to get SHA-256 signature"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 42
    :cond_e
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    .line 43
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not convert string to an ASCII byte array"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_2
.end method

.method public final e()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lyb/e;->i:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lyb/e;->h:J

    return-void
.end method

.method public final g(Ljd/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lyb/e$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyb/e$a;

    iget v1, v0, Lyb/e$a;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyb/e$a;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyb/e$a;

    invoke-direct {v0, p0, p1}, Lyb/e$a;-><init>(Lyb/e;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lyb/e$a;->j:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lyb/e$a;->l:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lyb/e$a;->i:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lyb/e$a;->h:Lyb/e;

    :try_start_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lyb/e$a;->i:Lkotlinx/coroutines/sync/Mutex;

    iget-object v6, v0, Lyb/e$a;->h:Lyb/e;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Lyb/e;->g:Lkotlinx/coroutines/sync/Mutex;

    .line 5
    iput-object p0, v0, Lyb/e$a;->h:Lyb/e;

    iput-object v2, v0, Lyb/e$a;->i:Lkotlinx/coroutines/sync/Mutex;

    iput v5, v0, Lyb/e$a;->l:I

    invoke-interface {v2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    .line 6
    :goto_1
    :try_start_1
    iget-object p1, v6, Lyb/e;->i:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 8
    iget-wide v9, v6, Lyb/e;->h:J

    sub-long/2addr v7, v9

    .line 9
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_6

    if-nez p1, :cond_8

    .line 10
    :cond_6
    iget-object p1, v6, Lyb/e;->b:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;

    invoke-interface {p1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;->create()Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;

    move-result-object p1

    iput-object v6, v0, Lyb/e$a;->h:Lyb/e;

    iput-object v2, v0, Lyb/e$a;->i:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lyb/e$a;->l:I

    invoke-interface {p1, v0}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;->getConfiguration(Ljd/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, v2

    move-object v0, v6

    .line 11
    :goto_3
    :try_start_2
    move-object v2, p1

    check-cast v2, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 13
    iput-wide v5, v0, Lyb/e;->h:J

    .line 14
    iput-object v2, v0, Lyb/e;->i:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;

    .line 15
    check-cast p1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    .line 16
    :cond_8
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :goto_4
    move-object v2, v1

    goto :goto_5

    :catchall_1
    move-exception p1

    :goto_5
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method

.method public final h()Led/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lyb/e;->a:Lob/a;

    .line 2
    iget-object v0, v0, Lob/a;->a:Lob/a$a;

    .line 3
    invoke-interface {v0}, Lob/a$a;->f()Led/e;

    move-result-object v0

    return-object v0
.end method
