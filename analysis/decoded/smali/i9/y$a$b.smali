.class public final Li9/y$a$b;
.super Li9/y$a$f;
.source "ChooseYourShoesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/y$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final u:Landroid/widget/TextView;

.field public final v:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lq7/y1;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lq7/y1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Li9/y$a$f;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p1, Lq7/y1;->c:Landroid/widget/TextView;

    const-string v1, "binding.chooseYourShoesTitle"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Li9/y$a$b;->u:Landroid/widget/TextView;

    .line 4
    iget-object p1, p1, Lq7/y1;->b:Landroid/widget/TextView;

    const-string v0, "binding.chooseYourShoesDescriptionOne"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Li9/y$a$b;->v:Landroid/widget/TextView;

    return-void
.end method
