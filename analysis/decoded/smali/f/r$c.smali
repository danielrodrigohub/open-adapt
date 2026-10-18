.class public final Lf/r$c;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public h:Z

.field public final synthetic i:Lf/r;


# direct methods
.method public constructor <init>(Lf/r;)V
    .locals 0

    iput-object p1, p0, Lf/r$c;->i:Lf/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/appcompat/view/menu/e;Z)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lf/r$c;->h:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lf/r$c;->h:Z

    .line 3
    iget-object p2, p0, Lf/r$c;->i:Lf/r;

    iget-object p2, p2, Lf/r;->a:Landroidx/appcompat/widget/i1;

    .line 4
    iget-object p2, p2, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    .line 5
    iget-object p2, p2, Landroidx/appcompat/widget/Toolbar;->h:Landroidx/appcompat/widget/ActionMenuView;

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p2, Landroidx/appcompat/widget/ActionMenuView;->A:Landroidx/appcompat/widget/c;

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Landroidx/appcompat/widget/c;->a()Z

    .line 8
    :cond_1
    iget-object p2, p0, Lf/r$c;->i:Lf/r;

    iget-object p2, p2, Lf/r;->b:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lf/r$c;->h:Z

    return-void
.end method

.method public final c(Landroidx/appcompat/view/menu/e;)Z
    .locals 2

    iget-object v0, p0, Lf/r$c;->i:Lf/r;

    iget-object v0, v0, Lf/r;->b:Landroid/view/Window$Callback;

    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method
