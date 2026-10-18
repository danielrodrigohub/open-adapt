.class public final Landroidx/appcompat/view/menu/c;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/i;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/c$a;
    }
.end annotation


# instance fields
.field public h:Landroid/content/Context;

.field public i:Landroid/view/LayoutInflater;

.field public j:Landroidx/appcompat/view/menu/e;

.field public k:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public l:I

.field public m:Landroidx/appcompat/view/menu/i$a;

.field public n:Landroidx/appcompat/view/menu/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Landroidx/appcompat/view/menu/c;->l:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->h:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->i:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->n:Landroidx/appcompat/view/menu/c$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/view/menu/c$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/c$a;-><init>(Landroidx/appcompat/view/menu/c;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/c;->n:Landroidx/appcompat/view/menu/c$a;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->n:Landroidx/appcompat/view/menu/c$a;

    return-object v0
.end method

.method public final b(Landroidx/appcompat/view/menu/e;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->m:Landroidx/appcompat/view/menu/i$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/view/menu/i$a;->b(Landroidx/appcompat/view/menu/e;Z)V

    :cond_0
    return-void
.end method

.method public final d(Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final e(Landroid/content/Context;Landroidx/appcompat/view/menu/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->h:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->h:Landroid/content/Context;

    .line 3
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->i:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->i:Landroid/view/LayoutInflater;

    .line 5
    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/c;->j:Landroidx/appcompat/view/menu/e;

    .line 6
    iget-object p1, p0, Landroidx/appcompat/view/menu/c;->n:Landroidx/appcompat/view/menu/c$a;

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/c$a;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->n:Landroidx/appcompat/view/menu/c$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/c$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final h(Landroidx/appcompat/view/menu/l;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/e;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/f;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/f;-><init>(Landroidx/appcompat/view/menu/e;)V

    .line 3
    new-instance v1, Landroidx/appcompat/app/d$a;

    .line 4
    iget-object v2, p1, Landroidx/appcompat/view/menu/e;->a:Landroid/content/Context;

    .line 5
    invoke-direct {v1, v2}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v2, Landroidx/appcompat/view/menu/c;

    invoke-virtual {v1}, Landroidx/appcompat/app/d$a;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/c;-><init>(Landroid/content/Context;I)V

    iput-object v2, v0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/c;

    .line 7
    iput-object v0, v2, Landroidx/appcompat/view/menu/c;->m:Landroidx/appcompat/view/menu/i$a;

    .line 8
    iget-object v3, v0, Landroidx/appcompat/view/menu/f;->h:Landroidx/appcompat/view/menu/e;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/e;->b(Landroidx/appcompat/view/menu/i;)V

    .line 9
    iget-object v2, v0, Landroidx/appcompat/view/menu/f;->j:Landroidx/appcompat/view/menu/c;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/c;->a()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 10
    iget-object v3, v1, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->o:Landroid/widget/ListAdapter;

    .line 11
    iput-object v0, v3, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    iget-object v2, p1, Landroidx/appcompat/view/menu/e;->o:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 13
    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->e:Landroid/view/View;

    goto :goto_0

    .line 14
    :cond_1
    iget-object v2, p1, Landroidx/appcompat/view/menu/e;->n:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object v2, v3, Landroidx/appcompat/app/AlertController$b;->c:Landroid/graphics/drawable/Drawable;

    .line 16
    iget-object v2, p1, Landroidx/appcompat/view/menu/e;->m:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/d$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    .line 18
    :goto_0
    iget-object v2, v1, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v2, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnKeyListener;

    .line 19
    invoke-virtual {v1}, Landroidx/appcompat/app/d$a;->create()Landroidx/appcompat/app/d;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/view/menu/f;->i:Landroidx/appcompat/app/d;

    .line 20
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 21
    iget-object v1, v0, Landroidx/appcompat/view/menu/f;->i:Landroidx/appcompat/app/d;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    .line 22
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 23
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 24
    iget-object v0, v0, Landroidx/appcompat/view/menu/f;->i:Landroidx/appcompat/app/d;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 25
    iget-object v0, p0, Landroidx/appcompat/view/menu/c;->m:Landroidx/appcompat/view/menu/i$a;

    if-eqz v0, :cond_2

    .line 26
    invoke-interface {v0, p1}, Landroidx/appcompat/view/menu/i$a;->c(Landroidx/appcompat/view/menu/e;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j(Landroidx/appcompat/view/menu/i$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/c;->m:Landroidx/appcompat/view/menu/i$a;

    return-void
.end method

.method public final k(Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Landroidx/appcompat/view/menu/c;->j:Landroidx/appcompat/view/menu/e;

    iget-object p2, p0, Landroidx/appcompat/view/menu/c;->n:Landroidx/appcompat/view/menu/c$a;

    invoke-virtual {p2, p3}, Landroidx/appcompat/view/menu/c$a;->c(I)Landroidx/appcompat/view/menu/g;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/appcompat/view/menu/e;->t(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/i;I)Z

    return-void
.end method
