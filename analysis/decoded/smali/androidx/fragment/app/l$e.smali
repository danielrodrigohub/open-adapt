.class public final Landroidx/fragment/app/l$e;
.super Landroidx/fragment/app/r;
.source "DialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/l;->d()Landroidx/fragment/app/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic h:Landroidx/fragment/app/r;

.field public final synthetic i:Landroidx/fragment/app/l;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l;Landroidx/fragment/app/r;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/l$e;->i:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/l$e;->h:Landroidx/fragment/app/r;

    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l$e;->h:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/l$e;->h:Landroidx/fragment/app/r;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/r;->h(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/l$e;->i:Landroidx/fragment/app/l;

    .line 4
    iget-object v0, v0, Landroidx/fragment/app/l;->l0:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/l$e;->h:Landroidx/fragment/app/r;

    invoke-virtual {v0}, Landroidx/fragment/app/r;->i()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/l$e;->i:Landroidx/fragment/app/l;

    .line 2
    iget-boolean v0, v0, Landroidx/fragment/app/l;->p0:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
