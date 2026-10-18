.class public final Landroidx/recyclerview/widget/t$c;
.super Landroidx/recyclerview/widget/t$f;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/t;->r(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic n:I

.field public final synthetic o:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public final synthetic p:Landroidx/recyclerview/widget/t;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/RecyclerView$b0;IIFFFFILandroidx/recyclerview/widget/RecyclerView$b0;)V
    .locals 8

    move-object v7, p0

    move-object v0, p1

    iput-object v0, v7, Landroidx/recyclerview/widget/t$c;->p:Landroidx/recyclerview/widget/t;

    move/from16 v0, p9

    iput v0, v7, Landroidx/recyclerview/widget/t$c;->n:I

    move-object/from16 v0, p10

    iput-object v0, v7, Landroidx/recyclerview/widget/t$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroidx/recyclerview/widget/t$f;-><init>(Landroidx/recyclerview/widget/RecyclerView$b0;IFFFF)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/t$f;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-boolean p1, p0, Landroidx/recyclerview/widget/t$f;->k:Z

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/t$c;->n:I

    if-gtz p1, :cond_1

    .line 4
    iget-object p1, p0, Landroidx/recyclerview/widget/t$c;->p:Landroidx/recyclerview/widget/t;

    iget-object v0, p1, Landroidx/recyclerview/widget/t;->m:Landroidx/recyclerview/widget/t$d;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/t$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/t$d;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$b0;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/t$c;->p:Landroidx/recyclerview/widget/t;

    iget-object p1, p1, Landroidx/recyclerview/widget/t;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/t$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Landroidx/recyclerview/widget/t$f;->h:Z

    .line 7
    iget p1, p0, Landroidx/recyclerview/widget/t$c;->n:I

    if-lez p1, :cond_2

    .line 8
    iget-object v0, p0, Landroidx/recyclerview/widget/t$c;->p:Landroidx/recyclerview/widget/t;

    .line 9
    iget-object v1, v0, Landroidx/recyclerview/widget/t;->r:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/u;

    invoke-direct {v2, v0, p0, p1}, Landroidx/recyclerview/widget/u;-><init>(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/t$f;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/t$c;->p:Landroidx/recyclerview/widget/t;

    iget-object v0, p1, Landroidx/recyclerview/widget/t;->w:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/t$c;->o:Landroidx/recyclerview/widget/RecyclerView$b0;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    if-ne v0, v1, :cond_3

    .line 11
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/t;->q(Landroid/view/View;)V

    :cond_3
    return-void
.end method
