.class public final Le9/d;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "ModeEditAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le9/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Le9/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lcom/nike/adapt/ui/modes/ModeEditActivity;

.field public final e:Landroidx/recyclerview/widget/t;

.field public f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/modes/ModeEditActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Le9/d;->d:Lcom/nike/adapt/ui/modes/ModeEditActivity;

    .line 2
    new-instance p1, Le9/a;

    invoke-direct {p1, p0}, Le9/a;-><init>(Le9/d;)V

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/t;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/t;-><init>(Landroidx/recyclerview/widget/t$d;)V

    iput-object v0, p0, Le9/d;->e:Landroidx/recyclerview/widget/t;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le9/d;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Le9/d;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 6

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le9/d;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iget-object v0, p0, Le9/d;->e:Landroidx/recyclerview/widget/t;

    .line 3
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, p1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->c0(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 5
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/t;->z:Landroidx/recyclerview/widget/t$b;

    .line 6
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/RecyclerView$q;

    const/4 v4, 0x0

    if-ne v3, v2, :cond_1

    .line 8
    iput-object v4, v1, Landroidx/recyclerview/widget/RecyclerView;->y:Landroidx/recyclerview/widget/RecyclerView$q;

    .line 9
    :cond_1
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->J:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    :goto_0
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 13
    iget-object v3, v0, Landroidx/recyclerview/widget/t;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/t$f;

    .line 14
    iget-object v3, v2, Landroidx/recyclerview/widget/t$f;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 15
    iget-object v3, v0, Landroidx/recyclerview/widget/t;->m:Landroidx/recyclerview/widget/t$d;

    iget-object v5, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Landroidx/recyclerview/widget/t$f;->e:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v3, v5, v2}, Landroidx/recyclerview/widget/t$d;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 17
    iput-object v4, v0, Landroidx/recyclerview/widget/t;->w:Landroid/view/View;

    .line 18
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->t:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    .line 20
    iput-object v4, v0, Landroidx/recyclerview/widget/t;->t:Landroid/view/VelocityTracker;

    .line 21
    :cond_4
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->y:Landroidx/recyclerview/widget/t$e;

    if-eqz v1, :cond_5

    .line 22
    iput-boolean v2, v1, Landroidx/recyclerview/widget/t$e;->h:Z

    .line 23
    iput-object v4, v0, Landroidx/recyclerview/widget/t;->y:Landroidx/recyclerview/widget/t$e;

    .line 24
    :cond_5
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->x:Lj0/e;

    if-eqz v1, :cond_6

    .line 25
    iput-object v4, v0, Landroidx/recyclerview/widget/t;->x:Lj0/e;

    .line 26
    :cond_6
    iput-object p1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 28
    sget v1, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, v0, Landroidx/recyclerview/widget/t;->f:F

    .line 30
    sget v1, Landroidx/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/t;->g:F

    .line 32
    iget-object p1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/t;->q:I

    .line 34
    iget-object p1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 35
    iget-object p1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/t;->z:Landroidx/recyclerview/widget/t$b;

    .line 36
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->x:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->J:Ljava/util/ArrayList;

    if-nez v1, :cond_7

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Landroidx/recyclerview/widget/RecyclerView;->J:Ljava/util/ArrayList;

    .line 40
    :cond_7
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->J:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance p1, Landroidx/recyclerview/widget/t$e;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/t$e;-><init>(Landroidx/recyclerview/widget/t;)V

    iput-object p1, v0, Landroidx/recyclerview/widget/t;->y:Landroidx/recyclerview/widget/t$e;

    .line 42
    new-instance p1, Lj0/e;

    iget-object v1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Landroidx/recyclerview/widget/t;->y:Landroidx/recyclerview/widget/t$e;

    invoke-direct {p1, v1, v2}, Lj0/e;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, v0, Landroidx/recyclerview/widget/t;->x:Lj0/e;

    :goto_2
    return-void
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 5

    .line 1
    check-cast p1, Le9/d$a;

    .line 2
    iget-object p2, p0, Le9/d;->g:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$b0;->h()I

    move-result v1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lea/e;

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 3
    :goto_0
    iget-object v1, p1, Le9/d$a;->u:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 4
    iget-object v0, p2, Lea/e;->i:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Le9/d$a;->u:Landroid/widget/TextView;

    .line 7
    new-instance v1, Le9/c;

    invoke-direct {v1, p2, p0}, Le9/c;-><init>(Lea/e;Le9/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p1, Le9/d$a;->v:Landroid/widget/ImageView;

    .line 9
    new-instance v1, Lx8/v;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p0, v2}, Lx8/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    iget-object v0, p1, Le9/d$a;->w:Landroid/widget/ImageView;

    .line 11
    new-instance v1, Le9/b;

    invoke-direct {v1, p0, p1}, Le9/b;-><init>(Le9/d;Le9/d$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_2

    .line 12
    iget-object p2, p2, Lea/e;->i:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 13
    iget-object p1, p1, Le9/d$a;->w:Landroid/widget/ImageView;

    const v0, 0x7f110038

    .line 14
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Landroid/util/Pair;

    const/4 v2, 0x0

    new-instance v3, Landroid/util/Pair;

    const-string v4, "mode"

    invoke-direct {v3, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ls9/e;->b(Ljava/lang/String;[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 3

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0088

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a015b

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const p2, 0x7f0a026e

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const p2, 0x7f0a026f

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 7
    new-instance p2, Lq7/c1;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p2, p1, v0, v1, v2}, Lq7/c1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 8
    new-instance p1, Le9/d$a;

    invoke-direct {p1, p2}, Le9/d$a;-><init>(Lq7/c1;)V

    return-object p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final m(I)V
    .locals 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le9/d;->g:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lea/e;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$e;->a:Landroidx/recyclerview/widget/RecyclerView$f;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroidx/recyclerview/widget/RecyclerView$f;->f(II)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v2, p0, Le9/d;->g:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lea/e;

    .line 6
    iget-object v3, v3, Lea/e;->i:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, p0, Le9/d;->g:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sget-object v3, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 9
    invoke-interface {p1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v4}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v2, p1}, Lcom/nike/adapt/analytics/TrackManager;->isModeDeleted(I[Ljava/lang/String;)V

    .line 11
    :cond_3
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v2, "Pressed : Mode Deleted"

    invoke-virtual {p1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Le9/d;->g:Ljava/util/List;

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    iget-object p1, p0, Le9/d;->d:Lcom/nike/adapt/ui/modes/ModeEditActivity;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p1, Lcom/nike/adapt/ui/modes/ModeEditActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    if-eqz p1, :cond_4

    new-instance v1, Lp8/p;

    invoke-direct {v1, v0}, Lp8/p;-><init>(Lea/e;)V

    invoke-interface {p1, v1}, Lcom/nike/adapt/adk/IDeviceController;->requestModeTo(Lp8/l;)V

    goto :goto_2

    :cond_4
    const-string p1, "deviceController"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le9/d;->g:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->d()V

    return-void
.end method
