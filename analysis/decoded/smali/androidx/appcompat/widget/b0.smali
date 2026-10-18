.class public final Landroidx/appcompat/widget/b0;
.super Landroidx/appcompat/widget/o0;
.source "AppCompatSpinner.java"


# instance fields
.field public final synthetic q:Landroidx/appcompat/widget/c0$g;

.field public final synthetic r:Landroidx/appcompat/widget/c0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/c0;Landroid/view/View;Landroidx/appcompat/widget/c0$g;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/b0;->r:Landroidx/appcompat/widget/c0;

    iput-object p3, p0, Landroidx/appcompat/widget/b0;->q:Landroidx/appcompat/widget/c0$g;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/o0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lk/f;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/b0;->q:Landroidx/appcompat/widget/c0$g;

    return-object v0
.end method

.method public final c()Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->r:Landroidx/appcompat/widget/c0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->getInternalPopup()Landroidx/appcompat/widget/c0$i;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/c0$i;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/b0;->r:Landroidx/appcompat/widget/c0;

    invoke-virtual {v0}, Landroidx/appcompat/widget/c0;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
