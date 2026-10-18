.class public final Lf/k$a;
.super Li0/b;
.source "AppCompatDelegateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/k;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/k;


# direct methods
.method public constructor <init>(Lf/k;)V
    .locals 0

    iput-object p1, p0, Lf/k$a;->a:Lf/k;

    invoke-direct {p0}, Li0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/k$a;->a:Lf/k;

    iget-object v0, v0, Lf/k;->h:Lf/h;

    iget-object v0, v0, Lf/h;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lf/k$a;->a:Lf/k;

    iget-object v0, v0, Lf/k;->h:Lf/h;

    iget-object v0, v0, Lf/h;->y:Lj0/g0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj0/g0;->d(Lj0/h0;)Lj0/g0;

    .line 3
    iget-object v0, p0, Lf/k$a;->a:Lf/k;

    iget-object v0, v0, Lf/k;->h:Lf/h;

    iput-object v1, v0, Lf/h;->y:Lj0/g0;

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lf/k$a;->a:Lf/k;

    iget-object v0, v0, Lf/k;->h:Lf/h;

    iget-object v0, v0, Lf/h;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
