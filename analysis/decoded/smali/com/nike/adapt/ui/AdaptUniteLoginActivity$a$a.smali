.class public final Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;
.super Lld/i;
.source "AdaptUniteLoginActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.AdaptUniteLoginActivity$onCreate$1$1"
    f = "AdaptUniteLoginActivity.kt"
    l = {
        0x20
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/AdaptUniteLoginActivity;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->j:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lld/i;-><init>(ILjd/d;)V

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

    new-instance v0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;

    iget-object v1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->j:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    invoke-direct {v0, v1, p2}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;-><init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;Ljd/d;)V

    iput-object p1, v0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->h:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Ld3/e;->p(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->i:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 4
    iget-object v2, v1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->j:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    .line 5
    :try_start_1
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    new-instance v6, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;

    invoke-direct {v6, v2, v3}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$a;-><init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;Ljd/d;)V

    iput v4, v1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->h:I

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Ljd/f;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast v2, Lob/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    :goto_1
    iget-object v0, v1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->j:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    .line 8
    instance-of v5, v2, Lfd/f$a;

    xor-int/2addr v5, v4

    const-string v6, "adaptPreferenceHelper"

    if-eqz v5, :cond_5

    .line 9
    move-object v5, v2

    check-cast v5, Lob/g;

    .line 10
    instance-of v7, v5, Lob/g$b;

    if-eqz v7, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    instance-of v5, v5, Lob/g$a;

    :goto_2
    if-eqz v5, :cond_5

    .line 11
    iget-object v5, v0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity;->A:Lh8/c;

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v5, v4}, Lh8/c;->q0(Z)V

    const/4 v5, -0x1

    .line 13
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v5, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 14
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 15
    :cond_4
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 16
    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->j:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    invoke-static {v2}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 17
    iget-object v5, v0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity;->A:Lh8/c;

    if-eqz v5, :cond_e

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v5, v3}, Lh8/c;->q0(Z)V

    .line 19
    instance-of v5, v2, Lob/e;

    if-eqz v5, :cond_c

    .line 20
    sget-object v7, Lo7/x;->a:Lo7/x;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "LoginException"

    .line 21
    invoke-virtual {v7, v5}, Lo7/x;->e(Ljava/lang/String;)Lfd/e;

    move-result-object v5

    .line 22
    iget-object v6, v5, Lfd/e;->h:Ljava/lang/Object;

    .line 23
    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .line 24
    iget-object v5, v5, Lfd/e;->i:Ljava/lang/Object;

    .line 25
    check-cast v5, Ljava/lang/String;

    .line 26
    sget-object v10, Lo7/u;->j:Lo7/u;

    const-string v6, "|"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lyd/s;->B0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/String;

    .line 27
    invoke-interface {v5, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    check-cast v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x50

    const/16 v16, 0x0

    move-object v13, v2

    .line 28
    invoke-static/range {v7 .. v16}, Lo7/t$a;->a(Lo7/t;Ljava/lang/String;Ljava/lang/String;Lo7/u;[Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 29
    check-cast v2, Lob/e;

    .line 30
    instance-of v3, v2, Lob/e$e;

    if-eqz v3, :cond_6

    move v3, v4

    goto :goto_4

    .line 31
    :cond_6
    instance-of v3, v2, Lob/e$b;

    :goto_4
    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_5

    .line 32
    :cond_7
    instance-of v3, v2, Lob/e$g;

    :goto_5
    if-eqz v3, :cond_8

    move v3, v4

    goto :goto_6

    .line 33
    :cond_8
    instance-of v3, v2, Lob/e$a;

    :goto_6
    if-eqz v3, :cond_9

    move v3, v4

    goto :goto_7

    .line 34
    :cond_9
    instance-of v3, v2, Lob/e$c;

    :goto_7
    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity;->onBackPressed()V

    goto :goto_9

    .line 35
    :cond_a
    instance-of v3, v2, Lob/e$f;

    if-eqz v3, :cond_b

    goto :goto_8

    .line 36
    :cond_b
    instance-of v4, v2, Lob/e$d;

    :goto_8
    if-eqz v4, :cond_f

    .line 37
    sget-object v2, Ls9/y;->a:Ls9/y;

    new-instance v3, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$b;

    invoke-direct {v3, v0}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$b;-><init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;)V

    invoke-virtual {v2, v0, v3}, Ls9/y;->i(Landroid/app/Activity;Lqd/l;)Landroidx/appcompat/app/d;

    goto :goto_9

    .line 38
    :cond_c
    instance-of v0, v2, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_d

    goto :goto_9

    .line 39
    :cond_d
    throw v2

    .line 40
    :cond_e
    invoke-static {v6}, Lp4/h;->C(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_f
    :goto_9
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
