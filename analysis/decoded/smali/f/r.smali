.class public final Lf/r;
.super Lf/a;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/r$d;,
        Lf/r$c;,
        Lf/r$e;
    }
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/widget/i1;

.field public final b:Landroid/view/Window$Callback;

.field public final c:Lf/r$e;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lf/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lf/r$a;

.field public final i:Lf/r$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lf/a;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/r;->g:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lf/r$a;

    invoke-direct {v0, p0}, Lf/r$a;-><init>(Lf/r;)V

    iput-object v0, p0, Lf/r;->h:Lf/r$a;

    .line 4
    new-instance v0, Lf/r$b;

    invoke-direct {v0, p0}, Lf/r$b;-><init>(Lf/r;)V

    iput-object v0, p0, Lf/r;->i:Lf/r$b;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Landroidx/appcompat/widget/i1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroidx/appcompat/widget/i1;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v1, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 7
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Lf/r;->b:Landroid/view/Window$Callback;

    .line 9
    iput-object p3, v1, Landroidx/appcompat/widget/i1;->l:Landroid/view/Window$Callback;

    .line 10
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$f;)V

    .line 11
    invoke-virtual {v1, p2}, Landroidx/appcompat/widget/i1;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 12
    new-instance p1, Lf/r$e;

    invoke-direct {p1, p0}, Lf/r$e;-><init>(Lf/r;)V

    iput-object p1, p0, Lf/r;->c:Lf/r$e;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/i1;->e()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->T:Landroidx/appcompat/widget/Toolbar$d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroidx/appcompat/widget/Toolbar$d;->i:Landroidx/appcompat/view/menu/g;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar$d;->i:Landroidx/appcompat/view/menu/g;

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->collapseActionView()Z

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public final c(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf/r;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lf/r;->f:Z

    .line 3
    iget-object p1, p0, Lf/r;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 4
    iget-object v1, p0, Lf/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a$b;

    invoke-interface {v1}, Lf/a$b;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 2
    iget v0, v0, Landroidx/appcompat/widget/i1;->b:I

    return v0
.end method

.method public final e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    invoke-virtual {v0}, Landroidx/appcompat/widget/i1;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    iget-object v1, p0, Lf/r;->h:Lf/r$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 6
    iget-object v1, p0, Lf/r;->h:Lf/r$a;

    sget-object v2, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 7
    invoke-static {v0, v1}, Lj0/a0$d;->m(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 3
    iget-object v1, p0, Lf/r;->h:Lf/r$a;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final i(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lf/r;->r()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 3
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 5
    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final j(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 3
    iget-object p1, p1, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->w()Z

    :cond_0
    return v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 2
    iget-object v0, v0, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->w()Z

    move-result v0

    return v0
.end method

.method public final l(Z)V
    .locals 0

    return-void
.end method

.method public final m(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 2
    iget v0, p1, Landroidx/appcompat/widget/i1;->b:I

    const/4 v1, 0x4

    and-int/lit8 v0, v0, -0x5

    or-int/2addr v0, v1

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/i1;->l(I)V

    return-void
.end method

.method public final n(Z)V
    .locals 0

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i1;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/i1;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final r()Landroid/view/Menu;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf/r;->e:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    new-instance v1, Lf/r$c;

    invoke-direct {v1, p0}, Lf/r$c;-><init>(Lf/r;)V

    new-instance v2, Lf/r$d;

    invoke-direct {v2, p0}, Lf/r$d;-><init>(Lf/r;)V

    .line 3
    iget-object v0, v0, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Landroidx/appcompat/widget/Toolbar;->U:Landroidx/appcompat/view/menu/i$a;

    .line 5
    iput-object v2, v0, Landroidx/appcompat/widget/Toolbar;->V:Landroidx/appcompat/view/menu/e$a;

    .line 6
    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 7
    iput-object v1, v0, Landroidx/appcompat/widget/ActionMenuView;->B:Landroidx/appcompat/view/menu/i$a;

    .line 8
    iput-object v2, v0, Landroidx/appcompat/widget/ActionMenuView;->C:Landroidx/appcompat/view/menu/e$a;

    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lf/r;->e:Z

    .line 10
    :cond_1
    iget-object v0, p0, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 11
    iget-object v0, v0, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
