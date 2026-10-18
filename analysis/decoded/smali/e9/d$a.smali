.class public final Le9/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "ModeEditAdapter.kt"

# interfaces
.implements Le9/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le9/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/ImageView;

.field public final w:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lq7/c1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lq7/c1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p1, Lq7/c1;->d:Landroid/widget/TextView;

    const-string v1, "binding.itemEditModeName"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le9/d$a;->u:Landroid/widget/TextView;

    .line 4
    iget-object v0, p1, Lq7/c1;->c:Landroid/widget/ImageView;

    const-string v1, "binding.itemEditModeDragHandle"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le9/d$a;->v:Landroid/widget/ImageView;

    .line 5
    iget-object p1, p1, Lq7/c1;->b:Landroid/widget/ImageView;

    const-string v0, "binding.delete"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le9/d$a;->w:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 2
    iget-object v0, p0, Le9/d$a;->w:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 4
    iget-object v0, p0, Le9/d$a;->w:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
