.class public final Landroidx/appcompat/widget/i1$a;
.super Li0/b;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/i1;->q(IJ)Lj0/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:I

.field public final synthetic c:Landroidx/appcompat/widget/i1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/i1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/i1$a;->c:Landroidx/appcompat/widget/i1;

    iput p2, p0, Landroidx/appcompat/widget/i1$a;->b:I

    invoke-direct {p0}, Li0/b;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/i1$a;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/i1$a;->a:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/i1$a;->c:Landroidx/appcompat/widget/i1;

    iget-object v0, v0, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Landroidx/appcompat/widget/i1$a;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/i1$a;->a:Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/widget/i1$a;->c:Landroidx/appcompat/widget/i1;

    iget-object v0, v0, Landroidx/appcompat/widget/i1;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
