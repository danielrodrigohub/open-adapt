.class public final Li9/y$a$c;
.super Li9/y$a$f;
.source "ChooseYourShoesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/y$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final u:Landroidx/cardview/widget/CardView;

.field public final v:Landroid/widget/TextView;

.field public final w:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lq7/t1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lq7/t1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Li9/y$a$f;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p1, Lq7/t1;->b:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.shoeRowCardView"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Li9/y$a$c;->u:Landroidx/cardview/widget/CardView;

    .line 4
    iget-object v0, p1, Lq7/t1;->d:Landroid/widget/TextView;

    const-string v1, "binding.shoeRowName"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Li9/y$a$c;->v:Landroid/widget/TextView;

    .line 5
    iget-object p1, p1, Lq7/t1;->c:Landroid/widget/ImageView;

    const-string v0, "binding.shoeRowImage"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Li9/y$a$c;->w:Landroid/widget/ImageView;

    return-void
.end method
