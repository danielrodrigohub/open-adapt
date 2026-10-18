.class public final Lf/h$d;
.super Ljava/lang/Object;
.source "AppCompatDelegateImpl.java"

# interfaces
.implements Lj/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Lj/a$a;

.field public final synthetic b:Lf/h;


# direct methods
.method public constructor <init>(Lf/h;Lj/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/h$d;->b:Lf/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lf/h$d;->a:Lj/a$a;

    return-void
.end method


# virtual methods
.method public final a(Lj/a;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lf/h$d;->a:Lj/a$a;

    invoke-interface {v0, p1, p2}, Lj/a$a;->a(Lj/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final b(Lj/a;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lf/h$d;->a:Lj/a$a;

    invoke-interface {v0, p1, p2}, Lj/a$a;->b(Lj/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final c(Lj/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/h$d;->a:Lj/a$a;

    invoke-interface {v0, p1}, Lj/a$a;->c(Lj/a;)V

    .line 2
    iget-object p1, p0, Lf/h$d;->b:Lf/h;

    iget-object v0, p1, Lf/h;->w:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lf/h;->l:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lf/h$d;->b:Lf/h;

    iget-object v0, v0, Lf/h;->x:Lf/k;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :cond_0
    iget-object p1, p0, Lf/h$d;->b:Lf/h;

    iget-object v0, p1, Lf/h;->v:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lf/h;->H()V

    .line 6
    iget-object p1, p0, Lf/h$d;->b:Lf/h;

    iget-object v0, p1, Lf/h;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v0}, Lj0/a0;->b(Landroid/view/View;)Lj0/g0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj0/g0;->a(F)Lj0/g0;

    iput-object v0, p1, Lf/h;->y:Lj0/g0;

    .line 7
    iget-object p1, p0, Lf/h$d;->b:Lf/h;

    iget-object p1, p1, Lf/h;->y:Lj0/g0;

    new-instance v0, Lf/h$d$a;

    invoke-direct {v0, p0}, Lf/h$d$a;-><init>(Lf/h$d;)V

    invoke-virtual {p1, v0}, Lj0/g0;->d(Lj0/h0;)Lj0/g0;

    .line 8
    :cond_1
    iget-object p1, p0, Lf/h$d;->b:Lf/h;

    iget-object p1, p1, Lf/h;->n:Lf/f;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Lf/f;->p()V

    .line 10
    :cond_2
    iget-object p1, p0, Lf/h$d;->b:Lf/h;

    const/4 v0, 0x0

    iput-object v0, p1, Lf/h;->u:Lj/a;

    .line 11
    iget-object p1, p1, Lf/h;->A:Landroid/view/ViewGroup;

    sget-object v0, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 12
    invoke-static {p1}, Lj0/a0$h;->c(Landroid/view/View;)V

    return-void
.end method

.method public final d(Lj/a;Landroid/view/Menu;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/h$d;->b:Lf/h;

    iget-object v0, v0, Lf/h;->A:Landroid/view/ViewGroup;

    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {v0}, Lj0/a0$h;->c(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lf/h$d;->a:Lj/a$a;

    invoke-interface {v0, p1, p2}, Lj/a$a;->d(Lj/a;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
