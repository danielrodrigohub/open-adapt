.class public final Landroidx/recyclerview/widget/t$b;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/t;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/t;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->x:Lj0/e;

    .line 2
    iget-object v0, v0, Lj0/e;->a:Lj0/e$a;

    .line 3
    iget-object v0, v0, Lj0/e$a;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget v0, v0, Landroidx/recyclerview/widget/t;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 8
    iget-object v2, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget v2, v2, Landroidx/recyclerview/widget/t;->l:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 9
    iget-object v3, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    invoke-virtual {v3, v0, p1, v2}, Landroidx/recyclerview/widget/t;->j(ILandroid/view/MotionEvent;I)V

    .line 10
    :cond_2
    iget-object v3, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v4, v3, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-nez v4, :cond_3

    return-void

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_8

    const/4 v7, 0x2

    if-eq v0, v7, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 13
    iget-object v2, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget v3, v2, Landroidx/recyclerview/widget/t;->l:I

    if-ne v1, v3, :cond_9

    if-nez v0, :cond_5

    move v5, v6

    .line 14
    :cond_5
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v2, Landroidx/recyclerview/widget/t;->l:I

    .line 15
    iget-object v1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget v2, v1, Landroidx/recyclerview/widget/t;->o:I

    invoke-virtual {v1, p1, v2, v0}, Landroidx/recyclerview/widget/t;->s(Landroid/view/MotionEvent;II)V

    goto :goto_1

    .line 16
    :cond_6
    iget-object p1, v3, Landroidx/recyclerview/widget/t;->t:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    .line 17
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    :cond_7
    if-ltz v2, :cond_9

    .line 18
    iget v0, v3, Landroidx/recyclerview/widget/t;->o:I

    invoke-virtual {v3, p1, v0, v2}, Landroidx/recyclerview/widget/t;->s(Landroid/view/MotionEvent;II)V

    .line 19
    iget-object p1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/t;->p(Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 20
    iget-object p1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v0, p1, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->s:Landroidx/recyclerview/widget/t$a;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    iget-object p1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->s:Landroidx/recyclerview/widget/t$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/t$a;->run()V

    .line 22
    iget-object p1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 23
    :cond_8
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v5}, Landroidx/recyclerview/widget/t;->r(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 24
    iget-object p1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iput v1, p1, Landroidx/recyclerview/widget/t;->l:I

    :cond_9
    :goto_1
    return-void
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->x:Lj0/e;

    .line 2
    iget-object v0, v0, Lj0/e;->a:Lj0/e$a;

    .line 3
    iget-object v0, v0, Lj0/e$a;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, v0, Landroidx/recyclerview/widget/t;->l:I

    .line 6
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v0, Landroidx/recyclerview/widget/t;->d:F

    .line 7
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v0, Landroidx/recyclerview/widget/t;->e:F

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    .line 9
    iget-object v5, v0, Landroidx/recyclerview/widget/t;->t:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 11
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v0, Landroidx/recyclerview/widget/t;->t:Landroid/view/VelocityTracker;

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v5, v0, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-nez v5, :cond_8

    .line 13
    iget-object v5, v0, Landroidx/recyclerview/widget/t;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/t;->m(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    .line 15
    iget-object v6, v0, Landroidx/recyclerview/widget/t;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v1

    :goto_0
    if-ltz v6, :cond_3

    .line 16
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/t$f;

    .line 17
    iget-object v7, v1, Landroidx/recyclerview/widget/t$f;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    if-ne v7, v5, :cond_2

    move-object v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_8

    .line 18
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget v1, v0, Landroidx/recyclerview/widget/t;->d:F

    iget v5, v2, Landroidx/recyclerview/widget/t$f;->i:F

    sub-float/2addr v1, v5

    iput v1, v0, Landroidx/recyclerview/widget/t;->d:F

    .line 19
    iget v1, v0, Landroidx/recyclerview/widget/t;->e:F

    iget v5, v2, Landroidx/recyclerview/widget/t$f;->j:F

    sub-float/2addr v1, v5

    iput v1, v0, Landroidx/recyclerview/widget/t;->e:F

    .line 20
    iget-object v1, v2, Landroidx/recyclerview/widget/t$f;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/t;->l(Landroidx/recyclerview/widget/RecyclerView$b0;Z)V

    .line 21
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->a:Ljava/util/ArrayList;

    iget-object v1, v2, Landroidx/recyclerview/widget/t$f;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v1, v0, Landroidx/recyclerview/widget/t;->m:Landroidx/recyclerview/widget/t$d;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v2, Landroidx/recyclerview/widget/t$f;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v1, v0, v5}, Landroidx/recyclerview/widget/t$d;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    .line 23
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v1, v2, Landroidx/recyclerview/widget/t$f;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget v2, v2, Landroidx/recyclerview/widget/t$f;->f:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/t;->r(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 24
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget v1, v0, Landroidx/recyclerview/widget/t;->o:I

    invoke-virtual {v0, p1, v1, v4}, Landroidx/recyclerview/widget/t;->s(Landroid/view/MotionEvent;II)V

    goto :goto_3

    :cond_5
    const/4 v5, 0x3

    if-eq v0, v5, :cond_7

    if-ne v0, v3, :cond_6

    goto :goto_2

    .line 25
    :cond_6
    iget-object v2, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget v2, v2, Landroidx/recyclerview/widget/t;->l:I

    if-eq v2, v1, :cond_8

    .line 26
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-ltz v1, :cond_8

    .line 27
    iget-object v2, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    invoke-virtual {v2, v0, p1, v1}, Landroidx/recyclerview/widget/t;->j(ILandroid/view/MotionEvent;I)V

    goto :goto_3

    .line 28
    :cond_7
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iput v1, v0, Landroidx/recyclerview/widget/t;->l:I

    .line 29
    invoke-virtual {v0, v2, v4}, Landroidx/recyclerview/widget/t;->r(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 30
    :cond_8
    :goto_3
    iget-object v0, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object v0, v0, Landroidx/recyclerview/widget/t;->t:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 32
    :cond_9
    iget-object p1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->c:Landroidx/recyclerview/widget/RecyclerView$b0;

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move v3, v4

    :goto_4
    return v3
.end method

.method public final e(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/t$b;->a:Landroidx/recyclerview/widget/t;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/t;->r(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void
.end method
