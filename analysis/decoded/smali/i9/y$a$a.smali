.class public final Li9/y$a$a;
.super Li9/y$a$f;
.source "ChooseYourShoesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/y$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lq7/x1;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lq7/x1;->a:Landroid/view/View;

    const-string v0, "binding.root"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Li9/y$a$f;-><init>(Landroid/view/View;)V

    return-void
.end method
