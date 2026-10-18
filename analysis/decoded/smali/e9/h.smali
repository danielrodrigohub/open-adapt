.class public final synthetic Le9/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Le9/i;

.field public final synthetic i:Le9/i$e;

.field public final synthetic j:Ls9/n;

.field public final synthetic k:I


# direct methods
.method public synthetic constructor <init>(Le9/i;Le9/i$e;Ls9/n;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9/h;->h:Le9/i;

    iput-object p2, p0, Le9/h;->i:Le9/i$e;

    iput-object p3, p0, Le9/h;->j:Ls9/n;

    iput p4, p0, Le9/h;->k:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Le9/h;->h:Le9/i;

    iget-object v1, p0, Le9/h;->i:Le9/i$e;

    iget-object v2, p0, Le9/h;->j:Ls9/n;

    iget v3, p0, Le9/h;->k:I

    const-string v4, "this$0"

    .line 1
    invoke-static {v0, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$holder"

    invoke-static {v1, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$current"

    invoke-static {v2, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 2
    iput-boolean v4, v0, Le9/i;->f:Z

    .line 3
    iget-object v5, v1, Le9/i$e;->v:Landroid/view/View;

    .line 4
    iget-object v1, v1, Le9/i$e;->w:Landroid/view/View;

    .line 5
    iget-object v2, v2, Ls9/n;->b:Lea/e;

    if-eqz v2, :cond_2

    .line 6
    iget-object v6, v0, Le9/i;->g:Ld9/a;

    if-eqz v6, :cond_2

    iget-object v7, v0, Le9/i;->h:Ld9/a;

    if-nez v7, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-object v8, v2, Lea/e;->k:Lea/c;

    .line 8
    iget-object v8, v8, Lea/c;->h:Lea/i;

    .line 9
    iget-object v8, v8, Lea/i;->i:Lea/h$a;

    .line 10
    iget v8, v8, Lea/h$a;->j:I

    .line 11
    iget v6, v6, Ld9/a;->k:I

    sub-int/2addr v8, v6

    .line 12
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 13
    iget-object v2, v2, Lea/e;->l:Lea/c;

    .line 14
    iget-object v2, v2, Lea/c;->h:Lea/i;

    .line 15
    iget-object v2, v2, Lea/i;->i:Lea/h$a;

    .line 16
    iget v2, v2, Lea/h$a;->j:I

    .line 17
    iget v7, v7, Ld9/a;->k:I

    sub-int/2addr v2, v7

    .line 18
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const-wide/16 v7, 0x50

    if-le v6, v2, :cond_1

    int-to-long v9, v6

    goto :goto_0

    :cond_1
    int-to-long v9, v2

    :goto_0
    mul-long/2addr v9, v7

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v7, v6, v7

    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    aput v5, v6, v4

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 21
    invoke-virtual {v4, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 23
    new-instance v5, Le9/e;

    invoke-direct {v5, v2, v1, v0, v4}, Le9/e;-><init>(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Le9/i;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 24
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 25
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Le9/i;->m(I)V

    return-void
.end method
