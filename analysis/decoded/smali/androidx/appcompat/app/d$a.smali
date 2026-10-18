.class public Landroidx/appcompat/app/d$a;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/appcompat/app/AlertController$b;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Landroidx/appcompat/app/d;->h(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/appcompat/app/AlertController$b;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 4
    invoke-static {p1, p2}, Landroidx/appcompat/app/d;->h(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertController$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    .line 5
    iput p2, p0, Landroidx/appcompat/app/d$a;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->c:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->n:[Ljava/lang/CharSequence;

    .line 2
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 3
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->s:[Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->t:Z

    return-object p0
.end method

.method public create()Landroidx/appcompat/app/d;
    .locals 14

    .line 1
    new-instance v0, Landroidx/appcompat/app/d;

    iget-object v1, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v2, p0, Landroidx/appcompat/app/d$a;->b:I

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/d;-><init>(Landroid/content/Context;I)V

    .line 2
    iget-object v1, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v2, v0, Landroidx/appcompat/app/d;->l:Landroidx/appcompat/app/AlertController;

    .line 3
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->e:Landroid/view/View;

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    .line 4
    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->C:Landroid/view/View;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 6
    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->e:Ljava/lang/CharSequence;

    .line 7
    iget-object v4, v2, Landroidx/appcompat/app/AlertController;->A:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    :cond_1
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 10
    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->y:Landroid/graphics/drawable/Drawable;

    .line 11
    iput v9, v2, Landroidx/appcompat/app/AlertController;->x:I

    .line 12
    iget-object v4, v2, Landroidx/appcompat/app/AlertController;->z:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object v4, v2, Landroidx/appcompat/app/AlertController;->z:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_2
    :goto_0
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 16
    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->f:Ljava/lang/CharSequence;

    .line 17
    iget-object v4, v2, Landroidx/appcompat/app/AlertController;->B:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    :cond_3
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, -0x1

    .line 20
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3, v5}, Landroidx/appcompat/app/AlertController;->e(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 21
    :goto_1
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, -0x2

    .line 22
    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v4, v3, v5}, Landroidx/appcompat/app/AlertController;->e(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 23
    :goto_2
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->n:[Ljava/lang/CharSequence;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v3, :cond_6

    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->o:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_e

    .line 24
    :cond_6
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->b:Landroid/view/LayoutInflater;

    iget v4, v2, Landroidx/appcompat/app/AlertController;->H:I

    .line 25
    invoke-virtual {v3, v4, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 26
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->t:Z

    if-eqz v3, :cond_7

    .line 27
    new-instance v13, Landroidx/appcompat/app/a;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget v6, v2, Landroidx/appcompat/app/AlertController;->I:I

    iget-object v7, v1, Landroidx/appcompat/app/AlertController$b;->n:[Ljava/lang/CharSequence;

    move-object v3, v13

    move-object v4, v1

    move-object v8, v12

    invoke-direct/range {v3 .. v8}, Landroidx/appcompat/app/a;-><init>(Landroidx/appcompat/app/AlertController$b;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto :goto_4

    .line 28
    :cond_7
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->u:Z

    if-eqz v3, :cond_8

    .line 29
    iget v3, v2, Landroidx/appcompat/app/AlertController;->J:I

    goto :goto_3

    .line 30
    :cond_8
    iget v3, v2, Landroidx/appcompat/app/AlertController;->K:I

    .line 31
    :goto_3
    iget-object v13, v1, Landroidx/appcompat/app/AlertController$b;->o:Landroid/widget/ListAdapter;

    if-eqz v13, :cond_9

    goto :goto_4

    .line 32
    :cond_9
    new-instance v13, Landroidx/appcompat/app/AlertController$d;

    iget-object v4, v1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    iget-object v5, v1, Landroidx/appcompat/app/AlertController$b;->n:[Ljava/lang/CharSequence;

    invoke-direct {v13, v4, v3, v5}, Landroidx/appcompat/app/AlertController$d;-><init>(Landroid/content/Context;I[Ljava/lang/CharSequence;)V

    .line 33
    :goto_4
    iput-object v13, v2, Landroidx/appcompat/app/AlertController;->D:Landroid/widget/ListAdapter;

    .line 34
    iget v3, v1, Landroidx/appcompat/app/AlertController$b;->v:I

    iput v3, v2, Landroidx/appcompat/app/AlertController;->E:I

    .line 35
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_a

    .line 36
    new-instance v3, Landroidx/appcompat/app/b;

    invoke-direct {v3, v1, v2}, Landroidx/appcompat/app/b;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v12, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_5

    .line 37
    :cond_a
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->w:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_b

    .line 38
    new-instance v3, Landroidx/appcompat/app/c;

    invoke-direct {v3, v1, v12, v2}, Landroidx/appcompat/app/c;-><init>(Landroidx/appcompat/app/AlertController$b;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    invoke-virtual {v12, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 39
    :cond_b
    :goto_5
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->u:Z

    if-eqz v3, :cond_c

    .line 40
    invoke-virtual {v12, v10}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_6

    .line 41
    :cond_c
    iget-boolean v3, v1, Landroidx/appcompat/app/AlertController$b;->t:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    .line 42
    invoke-virtual {v12, v3}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 43
    :cond_d
    :goto_6
    iput-object v12, v2, Landroidx/appcompat/app/AlertController;->g:Landroidx/appcompat/app/AlertController$RecycleListView;

    .line 44
    :cond_e
    iget-object v3, v1, Landroidx/appcompat/app/AlertController$b;->r:Landroid/view/View;

    if-eqz v3, :cond_f

    .line 45
    iput-object v3, v2, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 46
    iput v9, v2, Landroidx/appcompat/app/AlertController;->i:I

    .line 47
    iput-boolean v9, v2, Landroidx/appcompat/app/AlertController;->j:Z

    goto :goto_7

    .line 48
    :cond_f
    iget v1, v1, Landroidx/appcompat/app/AlertController$b;->q:I

    if-eqz v1, :cond_10

    .line 49
    iput-object v11, v2, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    .line 50
    iput v1, v2, Landroidx/appcompat/app/AlertController;->i:I

    .line 51
    iput-boolean v9, v2, Landroidx/appcompat/app/AlertController;->j:Z

    .line 52
    :cond_10
    :goto_7
    iget-object v1, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->k:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 53
    iget-object v1, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-boolean v1, v1, Landroidx/appcompat/app/AlertController$b;->k:Z

    if-eqz v1, :cond_11

    .line 54
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    :cond_11
    iget-object v1, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    iget-object v1, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->l:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    iget-object v1, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v1, Landroidx/appcompat/app/AlertController$b;->m:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_12

    .line 58
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_12
    return-object v0
.end method

.method public d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    iput-object p2, v0, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public f([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->n:[Ljava/lang/CharSequence;

    .line 2
    iput-object p3, v0, Landroidx/appcompat/app/AlertController$b;->p:Landroid/content/DialogInterface$OnClickListener;

    .line 3
    iput p2, v0, Landroidx/appcompat/app/AlertController$b;->v:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Landroidx/appcompat/app/AlertController$b;->u:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->i:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->j:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, v0, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->g:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->h:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/app/d$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v0, Landroidx/appcompat/app/AlertController$b;->r:Landroid/view/View;

    const/4 p1, 0x0

    .line 2
    iput p1, v0, Landroidx/appcompat/app/AlertController$b;->q:I

    return-object p0
.end method
