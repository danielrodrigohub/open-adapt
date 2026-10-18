.class public final Lkd/b;
.super Lld/g;
.source "IntrinsicsJvm.kt"


# instance fields
.field public h:I

.field public final synthetic i:Lqd/p;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljd/d;Lqd/p;Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lkd/b;->i:Lqd/p;

    iput-object p3, p0, Lkd/b;->j:Ljava/lang/Object;

    const-string p2, "null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>"

    invoke-static {p1, p2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lld/g;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lkd/b;->h:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lkd/b;->h:I

    .line 3
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    iput v1, p0, Lkd/b;->h:I

    .line 6
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lkd/b;->i:Lqd/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda-1>, kotlin.Any?>"

    invoke-static {p1, v0}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lkd/b;->i:Lqd/p;

    invoke-static {p1}, Lrd/b0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lkd/b;->j:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method
