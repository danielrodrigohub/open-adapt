.class public final Lf/u$a;
.super Li0/b;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/u;


# direct methods
.method public constructor <init>(Lf/u;)V
    .locals 0

    iput-object p1, p0, Lf/u$a;->a:Lf/u;

    invoke-direct {p0}, Li0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/u$a;->a:Lf/u;

    iget-boolean v1, v0, Lf/u;->p:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lf/u;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object v0, p0, Lf/u$a;->a:Lf/u;

    iget-object v0, v0, Lf/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object v0, p0, Lf/u$a;->a:Lf/u;

    iget-object v0, v0, Lf/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lf/u$a;->a:Lf/u;

    iget-object v0, v0, Lf/u;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    iget-object v0, p0, Lf/u$a;->a:Lf/u;

    const/4 v1, 0x0

    iput-object v1, v0, Lf/u;->t:Lj/g;

    .line 7
    iget-object v2, v0, Lf/u;->k:Lj/a$a;

    if-eqz v2, :cond_1

    .line 8
    iget-object v3, v0, Lf/u;->j:Lf/u$d;

    invoke-interface {v2, v3}, Lj/a$a;->c(Lj/a;)V

    .line 9
    iput-object v1, v0, Lf/u;->j:Lf/u$d;

    .line 10
    iput-object v1, v0, Lf/u;->k:Lj/a$a;

    .line 11
    :cond_1
    iget-object v0, p0, Lf/u$a;->a:Lf/u;

    iget-object v0, v0, Lf/u;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    .line 12
    sget-object v1, Lj0/a0;->a:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {v0}, Lj0/a0$h;->c(Landroid/view/View;)V

    :cond_2
    return-void
.end method
