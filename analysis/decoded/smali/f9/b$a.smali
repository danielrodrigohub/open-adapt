.class public final Lf9/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;
.source "MyShoesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/ImageView;

.field public final x:Landroid/widget/TextView;

.field public final y:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lq7/j1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lq7/j1;->a:Landroidx/cardview/widget/CardView;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p1, Lq7/j1;->e:Landroid/widget/TextView;

    const-string v1, "binding.itemMyShoesNickName"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lf9/b$a;->u:Landroid/widget/TextView;

    .line 4
    iget-object v0, p1, Lq7/j1;->d:Landroid/widget/TextView;

    const-string v1, "binding.itemMyShoesModelName"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lf9/b$a;->v:Landroid/widget/TextView;

    .line 5
    iget-object v0, p1, Lq7/j1;->c:Landroid/widget/ImageView;

    const-string v1, "binding.itemMyShoesIcon"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lf9/b$a;->w:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p1, Lq7/j1;->b:Landroid/widget/TextView;

    const-string v1, "binding.itemMyShoesConnectionStatus"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lf9/b$a;->x:Landroid/widget/TextView;

    .line 7
    iget-object p1, p1, Lq7/j1;->f:Landroid/widget/TextView;

    const-string v0, "binding.myShoesItemBadge"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lf9/b$a;->y:Landroid/widget/TextView;

    return-void
.end method
