.class public final Lz8/m;
.super Ljava/lang/Object;
.source "LightPacksRequestQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz8/m$a;,
        Lz8/m$b;
    }
.end annotation


# instance fields
.field public final a:Lz8/m$a;

.field public final b:Lkotlinx/coroutines/CoroutineScope;

.field public c:Lz8/m$b;

.field public d:Lz8/m$b;

.field public e:J

.field public f:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lz8/m$a;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8/m;->a:Lz8/m$a;

    iput-object p2, p0, Lz8/m;->b:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lz8/m;->c:Lz8/m$b;

    if-eqz v0, :cond_d

    .line 2
    iget-boolean v1, v0, Lz8/m$b;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lz8/m$b;->e:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lz8/m$b;->f:Z

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_d

    .line 3
    iget-object v1, p0, Lz8/m;->d:Lz8/m$b;

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v1, :cond_5

    .line 4
    iget v8, v0, Lz8/m$b;->a:I

    invoke-static {v8}, Lq/g;->a(I)I

    move-result v8

    if-eqz v8, :cond_3

    if-eq v8, v3, :cond_2

    if-eq v8, v7, :cond_3

    if-eq v8, v6, :cond_3

    if-eq v8, v5, :cond_2

    if-ne v8, v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Lj2/a;

    invoke-direct {v0}, Lj2/a;-><init>()V

    throw v0

    :cond_2
    iget v8, v0, Lz8/m$b;->a:I

    iget v9, v1, Lz8/m$b;->a:I

    if-ne v8, v9, :cond_4

    iget-object v8, v0, Lz8/m$b;->c:Lz8/a;

    iget-object v1, v1, Lz8/m$b;->c:Lz8/a;

    if-ne v8, v1, :cond_4

    goto :goto_2

    .line 6
    :cond_3
    :goto_1
    iget v8, v0, Lz8/m$b;->a:I

    iget v1, v1, Lz8/m$b;->a:I

    if-ne v8, v1, :cond_4

    :goto_2
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    xor-int/2addr v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    const/4 v8, 0x0

    .line 7
    iput-object v8, p0, Lz8/m;->c:Lz8/m$b;

    .line 8
    iget-object v9, p0, Lz8/m;->f:Lkotlinx/coroutines/Job;

    if-eqz v9, :cond_6

    invoke-static {v9, v8, v3, v8}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_6
    if-eqz v1, :cond_7

    .line 9
    iget-object v0, p0, Lz8/m;->d:Lz8/m$b;

    if-eqz v0, :cond_d

    .line 10
    invoke-virtual {p0, v0}, Lz8/m;->c(Lz8/m$b;)V

    goto :goto_5

    .line 11
    :cond_7
    iget v1, v0, Lz8/m$b;->a:I

    .line 12
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    if-eqz v1, :cond_c

    if-eq v1, v3, :cond_c

    if-eq v1, v7, :cond_b

    if-eq v1, v6, :cond_a

    if-eq v1, v5, :cond_9

    if-eq v1, v4, :cond_8

    goto :goto_5

    .line 13
    :cond_8
    iget-object v0, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v0}, Lz8/m$a;->o()V

    goto :goto_5

    .line 14
    :cond_9
    iget-object v0, v0, Lz8/m$b;->c:Lz8/a;

    if-eqz v0, :cond_d

    .line 15
    iget-object v1, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v1, v0}, Lz8/m$a;->X(Lz8/a;)V

    goto :goto_5

    .line 16
    :cond_a
    iget-object v0, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v0, v3}, Lz8/m$a;->k(Z)V

    goto :goto_5

    .line 17
    :cond_b
    iget-object v0, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v0, v2}, Lz8/m$a;->k(Z)V

    goto :goto_5

    .line 18
    :cond_c
    iget-object v0, v0, Lz8/m$b;->c:Lz8/a;

    if-eqz v0, :cond_d

    .line 19
    iget-object v1, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v1, v0}, Lz8/m$a;->K(Lz8/a;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public final b(Lz8/a;)V
    .locals 4

    new-instance v0, Lz8/m$b;

    sget-object v1, Lz8/a;->m:Lz8/a;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x3a

    invoke-direct {v0, v1, v2, p1, v3}, Lz8/m$b;-><init>(ILcom/nike/adapt/adk/model/AdaptShoeColor;Lz8/a;I)V

    invoke-virtual {p0, v0}, Lz8/m;->c(Lz8/m$b;)V

    return-void
.end method

.method public final c(Lz8/m$b;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lz8/m;->c:Lz8/m$b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lz8/m;->e:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iput-object p1, p0, Lz8/m;->d:Lz8/m$b;

    goto/16 :goto_3

    .line 4
    :cond_2
    :goto_1
    iput-object p1, p0, Lz8/m;->c:Lz8/m$b;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lz8/m;->e:J

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lz8/m;->d:Lz8/m$b;

    .line 7
    iget-object v3, p0, Lz8/m;->c:Lz8/m$b;

    const/4 v4, 0x4

    if-eqz v3, :cond_8

    .line 8
    iget v5, v3, Lz8/m$b;->a:I

    .line 9
    invoke-static {v5}, Lq/g;->a(I)I

    move-result v5

    if-eqz v5, :cond_7

    if-eq v5, v2, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    if-eq v5, v4, :cond_6

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 10
    new-instance v5, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    sget-object v9, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->LIGHT_OFF:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v5

    move-object v8, v9

    invoke-direct/range {v7 .. v12}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 11
    iget-object v6, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v6, v5}, Lz8/m$a;->z(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 12
    iget-object v5, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v5}, Lz8/m$a;->t()V

    .line 13
    iput-boolean v2, v3, Lz8/m$b;->d:Z

    .line 14
    iput-boolean v2, v3, Lz8/m$b;->e:Z

    goto :goto_2

    .line 15
    :cond_3
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 16
    :cond_4
    iget-object v5, v3, Lz8/m$b;->b:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    if-eqz v5, :cond_8

    .line 17
    iget-object v6, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v6, v5}, Lz8/m$a;->z(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 18
    iget-object v5, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v5}, Lz8/m$a;->t()V

    .line 19
    iput-boolean v2, v3, Lz8/m$b;->d:Z

    .line 20
    iput-boolean v2, v3, Lz8/m$b;->e:Z

    goto :goto_2

    .line 21
    :cond_5
    iget-object v5, v3, Lz8/m$b;->b:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    if-eqz v5, :cond_8

    .line 22
    iget-object v6, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v6, v5}, Lz8/m$a;->z(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 23
    iput-boolean v2, v3, Lz8/m$b;->d:Z

    goto :goto_2

    .line 24
    :cond_6
    iget-object v5, v3, Lz8/m$b;->c:Lz8/a;

    if-eqz v5, :cond_8

    .line 25
    iget-object v6, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v6}, Lz8/m$a;->t()V

    .line 26
    iget-object v6, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v6, v5}, Lz8/m$a;->F(Lz8/a;)V

    .line 27
    iget-object v5, p0, Lz8/m;->a:Lz8/m$a;

    .line 28
    sget-object v6, Lh8/c;->b:Lh8/c;

    .line 29
    invoke-virtual {v6}, Lh8/c;->c()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v6

    invoke-interface {v5, v6}, Lz8/m$a;->z(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V

    .line 30
    iput-boolean v2, v3, Lz8/m$b;->e:Z

    .line 31
    iput-boolean v2, v3, Lz8/m$b;->f:Z

    .line 32
    iput-boolean v2, v3, Lz8/m$b;->d:Z

    goto :goto_2

    .line 33
    :cond_7
    iget-object v5, p0, Lz8/m;->a:Lz8/m$a;

    invoke-interface {v5}, Lz8/m$a;->t()V

    .line 34
    iput-boolean v2, v3, Lz8/m$b;->e:Z

    .line 35
    :cond_8
    :goto_2
    iget-object v3, p0, Lz8/m;->a:Lz8/m$a;

    .line 36
    iget p1, p1, Lz8/m$b;->a:I

    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_9

    if-eq p1, v4, :cond_9

    move v1, v2

    .line 37
    :cond_9
    invoke-interface {v3, v1}, Lz8/m$a;->y(Z)V

    .line 38
    iget-object p1, p0, Lz8/m;->f:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_a

    invoke-static {p1, v0, v2, v0}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 39
    :cond_a
    iget-object v3, p0, Lz8/m;->b:Lkotlinx/coroutines/CoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lz8/m$c;

    invoke-direct {v6, p0, v0}, Lz8/m$c;-><init>(Lz8/m;Ljd/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lz8/m;->f:Lkotlinx/coroutines/Job;

    :goto_3
    return-void
.end method
