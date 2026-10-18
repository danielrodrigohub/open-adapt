.class public final Landroidx/recyclerview/widget/t$e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public h:Z

.field public final synthetic i:Landroidx/recyclerview/widget/t;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/t$e;->i:Landroidx/recyclerview/widget/t;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/recyclerview/widget/t$e;->h:Z

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/t$e;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/t$e;->i:Landroidx/recyclerview/widget/t;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/t;->m(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/t$e;->i:Landroidx/recyclerview/widget/t;

    iget-object v1, v1, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->J(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$b0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/t$e;->i:Landroidx/recyclerview/widget/t;

    iget-object v2, v1, Landroidx/recyclerview/widget/t;->m:Landroidx/recyclerview/widget/t$d;

    iget-object v1, v1, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/t$d;->d(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)I

    move-result v1

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/t$e;->i:Landroidx/recyclerview/widget/t;

    iget v3, v3, Landroidx/recyclerview/widget/t;->l:I

    if-ne v1, v3, :cond_3

    .line 8
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 11
    iget-object v1, p0, Landroidx/recyclerview/widget/t$e;->i:Landroidx/recyclerview/widget/t;

    iput v3, v1, Landroidx/recyclerview/widget/t;->d:F

    .line 12
    iput p1, v1, Landroidx/recyclerview/widget/t;->e:F

    const/4 p1, 0x0

    .line 13
    iput p1, v1, Landroidx/recyclerview/widget/t;->i:F

    iput p1, v1, Landroidx/recyclerview/widget/t;->h:F

    .line 14
    iget-object p1, v1, Landroidx/recyclerview/widget/t;->m:Landroidx/recyclerview/widget/t$d;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    instance-of p1, p1, Le9/a;

    xor-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Landroidx/recyclerview/widget/t$e;->i:Landroidx/recyclerview/widget/t;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/t;->r(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    :cond_3
    return-void
.end method
