.class public final Lf/k;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Lf/h;


# direct methods
.method public constructor <init>(Lf/h;)V
    .locals 0

    iput-object p1, p0, Lf/k;->h:Lf/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/k;->h:Lf/h;

    iget-object v1, v0, Lf/h;->w:Landroid/widget/PopupWindow;

    iget-object v0, v0, Lf/h;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v2, 0x37

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2
    iget-object v0, p0, Lf/k;->h:Lf/h;

    invoke-virtual {v0}, Lf/h;->H()V

    .line 3
    iget-object v0, p0, Lf/k;->h:Lf/h;

    .line 4
    iget-boolean v1, v0, Lf/h;->z:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lf/h;->A:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {v0}, Lj0/a0$g;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lf/k;->h:Lf/h;

    iget-object v0, v0, Lf/h;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lf/k;->h:Lf/h;

    iget-object v2, v0, Lf/h;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Lj0/a0;->b(Landroid/view/View;)Lj0/g0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lj0/g0;->a(F)Lj0/g0;

    iput-object v2, v0, Lf/h;->y:Lj0/g0;

    .line 8
    iget-object v0, p0, Lf/k;->h:Lf/h;

    iget-object v0, v0, Lf/h;->y:Lj0/g0;

    new-instance v1, Lf/k$a;

    invoke-direct {v1, p0}, Lf/k$a;-><init>(Lf/k;)V

    invoke-virtual {v0, v1}, Lj0/g0;->d(Lj0/h0;)Lj0/g0;

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lf/k;->h:Lf/h;

    iget-object v0, v0, Lf/h;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Lf/k;->h:Lf/h;

    iget-object v0, v0, Lf/h;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
