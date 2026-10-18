.class public final Ly8/i$c;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "LightingEffectsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly8/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final A:Landroid/widget/FrameLayout;

.field public final u:Landroidx/cardview/widget/CardView;

.field public final v:Landroidx/cardview/widget/CardView;

.field public final w:Landroid/widget/TextView;

.field public final x:Landroid/widget/TextView;

.field public final y:Lcom/airbnb/lottie/LottieAnimationView;

.field public final z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lq7/f1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lq7/f1;->a:Landroid/widget/LinearLayout;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p1, Lq7/f1;->f:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.effectSelectedContainer"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ly8/i$c;->u:Landroidx/cardview/widget/CardView;

    .line 4
    iget-object v0, p1, Lq7/f1;->b:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.effectContainer"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ly8/i$c;->v:Landroidx/cardview/widget/CardView;

    .line 5
    iget-object v0, p1, Lq7/f1;->h:Landroid/widget/TextView;

    const-string v1, "binding.effectSelectedName"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ly8/i$c;->w:Landroid/widget/TextView;

    .line 6
    iget-object v0, p1, Lq7/f1;->d:Landroid/widget/TextView;

    const-string v1, "binding.effectName"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ly8/i$c;->x:Landroid/widget/TextView;

    .line 7
    iget-object v0, p1, Lq7/f1;->g:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "binding.effectSelectedIcon"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ly8/i$c;->y:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    iget-object v0, p1, Lq7/f1;->c:Landroid/widget/ImageView;

    const-string v1, "binding.effectIcon"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ly8/i$c;->z:Landroid/widget/ImageView;

    .line 9
    iget-object p1, p1, Lq7/f1;->e:Landroid/widget/FrameLayout;

    const-string v0, "binding.effectRowBackground"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ly8/i$c;->A:Landroid/widget/FrameLayout;

    return-void
.end method
