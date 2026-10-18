.class public final Lx8/k;
.super Lld/i;
.source "AnimationHelper.kt"

# interfaces
.implements Lqd/p;


# annotations
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
    c = "com.nike.adapt.ui.helper.AnimationHelperKt$simpleFlash$1"
    f = "AnimationHelper.kt"
    l = {
        0x6a,
        0x74
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:J

.field public final synthetic j:Landroid/view/View;

.field public final synthetic k:Z

.field public final synthetic l:Landroid/widget/TextView;

.field public final synthetic m:Landroid/view/View;

.field public final synthetic n:I

.field public final synthetic o:J

.field public final synthetic p:I


# direct methods
.method public constructor <init>(JLandroid/view/View;ZLandroid/widget/TextView;Landroid/view/View;IJILjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/view/View;",
            "Z",
            "Landroid/widget/TextView;",
            "Landroid/view/View;",
            "IJI",
            "Ljd/d<",
            "-",
            "Lx8/k;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lx8/k;->i:J

    iput-object p3, p0, Lx8/k;->j:Landroid/view/View;

    iput-boolean p4, p0, Lx8/k;->k:Z

    iput-object p5, p0, Lx8/k;->l:Landroid/widget/TextView;

    iput-object p6, p0, Lx8/k;->m:Landroid/view/View;

    iput p7, p0, Lx8/k;->n:I

    iput-wide p8, p0, Lx8/k;->o:J

    iput p10, p0, Lx8/k;->p:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 12
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

    new-instance p1, Lx8/k;

    iget-wide v1, p0, Lx8/k;->i:J

    iget-object v3, p0, Lx8/k;->j:Landroid/view/View;

    iget-boolean v4, p0, Lx8/k;->k:Z

    iget-object v5, p0, Lx8/k;->l:Landroid/widget/TextView;

    iget-object v6, p0, Lx8/k;->m:Landroid/view/View;

    iget v7, p0, Lx8/k;->n:I

    iget-wide v8, p0, Lx8/k;->o:J

    iget v10, p0, Lx8/k;->p:I

    move-object v0, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lx8/k;-><init>(JLandroid/view/View;ZLandroid/widget/TextView;Landroid/view/View;IJILjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lx8/k;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lx8/k;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lx8/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lx8/k;->h:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-wide v4, p0, Lx8/k;->i:J

    iput v3, p0, Lx8/k;->h:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Lx8/k;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-boolean p1, p0, Lx8/k;->k:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lx8/k;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 8
    iget-object p1, p0, Lx8/k;->m:Landroid/view/View;

    iget v1, p0, Lx8/k;->n:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 9
    :cond_4
    iget-object p1, p0, Lx8/k;->j:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    :goto_1
    iget-wide v3, p0, Lx8/k;->o:J

    iput v2, p0, Lx8/k;->h:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 11
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lx8/k;->k:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Lx8/k;->l:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 13
    iget-object p1, p0, Lx8/k;->m:Landroid/view/View;

    iget v0, p0, Lx8/k;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 14
    :cond_6
    iget-object p1, p0, Lx8/k;->j:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 15
    :goto_3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
