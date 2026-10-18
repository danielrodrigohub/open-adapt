.class public final Li9/y$a$e;
.super Landroidx/recyclerview/widget/o$b;
.source "ChooseYourShoesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/y$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li9/y$a$d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li9/y$a$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Li9/y$a$d;",
            ">;",
            "Ljava/util/List<",
            "Li9/y$a$d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldShoeUiList"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/o$b;-><init>()V

    iput-object p1, p0, Li9/y$a$e;->a:Ljava/util/List;

    iput-object p2, p0, Li9/y$a$e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li9/y$a$e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li9/y$a$d;

    .line 2
    iget-boolean p1, p1, Li9/y$a$d;->b:Z

    .line 3
    iget-object v0, p0, Li9/y$a$e;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li9/y$a$d;

    .line 4
    iget-boolean p2, p2, Li9/y$a$d;->b:Z

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li9/y$a$e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li9/y$a$d;

    .line 2
    iget-object p1, p1, Li9/y$a$d;->a:Ls9/r;

    .line 3
    iget-object v0, p0, Li9/y$a$e;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li9/y$a$d;

    .line 4
    iget-object p2, p2, Li9/y$a$d;->a:Ls9/r;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(II)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v0, p0, Li9/y$a$e;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li9/y$a$d;

    .line 3
    iget-boolean p2, p2, Li9/y$a$d;->b:Z

    const-string v0, "KEY_BUNDLE_IS_SELECTED"

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Li9/y$a$e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Li9/y$a$e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
