.class public final Le9/i;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "ModesSelectionAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le9/i$b;,
        Le9/i$e;,
        Le9/i$a;,
        Le9/i$f;,
        Le9/i$c;,
        Le9/i$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Landroidx/recyclerview/widget/RecyclerView$b0;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Le9/i$d;

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls9/n;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Ld9/a;

.field public h:Ld9/a;


# direct methods
.method public constructor <init>(Le9/i$d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/e;",
            ">;",
            "Le9/i$d;",
            ")V"
        }
    .end annotation

    sget-object v0, Lgd/p;->h:Lgd/p;

    const-string v1, "clickListener"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Le9/i;->d:Le9/i$d;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le9/i;->e:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Le9/k;

    invoke-direct {p1}, Le9/k;-><init>()V

    invoke-static {v0, p1}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Le9/i;->n(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Le9/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Le9/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls9/n;

    .line 2
    iget p1, p1, Ls9/n;->a:I

    return p1
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 13

    .line 1
    iget v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->f:I

    const/4 v1, 0x2

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v4, 0x5

    if-eq v0, v1, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v4, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    check-cast p1, Le9/i$f;

    .line 3
    iget-object p1, p1, Le9/i$f;->u:Landroid/view/View;

    .line 4
    new-instance p2, Lo8/k;

    invoke-direct {p2, p0, v3}, Lo8/k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 5
    :cond_1
    check-cast p1, Le9/i$c;

    .line 6
    iget-object p1, p1, Le9/i$c;->u:Landroidx/cardview/widget/CardView;

    .line 7
    new-instance v0, Lo8/e;

    invoke-direct {v0, p0, p2}, Lo8/e;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 8
    :cond_2
    check-cast p1, Le9/i$a;

    .line 9
    iget-object p1, p1, Le9/i$a;->u:Landroid/widget/TextView;

    .line 10
    new-instance p2, Lx8/j0;

    invoke-direct {p2, p0, v1}, Lx8/j0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 11
    :cond_3
    check-cast p1, Le9/i$e;

    .line 12
    iget-object v0, p0, Le9/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls9/n;

    .line 13
    iget-object v1, v0, Ls9/n;->b:Lea/e;

    .line 14
    iget-object v11, p1, Le9/i$e;->u:Landroid/view/View;

    .line 15
    new-instance v12, Le9/g;

    move-object v5, v12

    move-object v6, p0

    move-object v7, v1

    move-object v8, v0

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v5 .. v10}, Le9/g;-><init>(Le9/i;Lea/e;Ls9/n;Le9/i$e;I)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_9

    .line 16
    iget-boolean p2, v1, Lea/e;->j:Z

    .line 17
    iget-object v5, v1, Lea/e;->i:Ljava/lang/String;

    const-string v6, "name"

    .line 18
    invoke-static {v5, v6}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    .line 19
    :try_start_0
    sget-object p2, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {p2}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v6

    invoke-virtual {p2}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "string"

    .line 20
    invoke-virtual {p2}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, v5, v8, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 21
    invoke-virtual {v6, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v5, "{\n            BigfootApp\u2026N.packageName))\n        }"

    .line 22
    invoke-static {p2, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-string p2, ""

    :goto_0
    move-object v5, p2

    .line 23
    :cond_4
    iget-object p2, v1, Lea/e;->k:Lea/c;

    .line 24
    iget-object p2, p2, Lea/c;->h:Lea/i;

    .line 25
    iget-object p2, p2, Lea/i;->h:Lea/h$c;

    .line 26
    iget p2, p2, Lea/h$c;->j:I

    int-to-float p2, p2

    int-to-float v4, v4

    div-float/2addr p2, v4

    float-to-double v6, p2

    .line 27
    invoke-static {v6, v7}, Ljava/lang/Math;->rint(D)D

    move-result-wide v6

    double-to-float p2, v6

    mul-float/2addr p2, v4

    float-to-int p2, p2

    const/16 v6, 0x64

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 28
    iget-object v7, v1, Lea/e;->l:Lea/c;

    .line 29
    iget-object v7, v7, Lea/c;->h:Lea/i;

    .line 30
    iget-object v7, v7, Lea/i;->h:Lea/h$c;

    .line 31
    iget v7, v7, Lea/h$c;->j:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    float-to-double v7, v7

    .line 32
    invoke-static {v7, v8}, Ljava/lang/Math;->rint(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v4, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    iget-object v4, p1, Le9/i$e;->y:Landroid/widget/TextView;

    .line 35
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v4, p1, Le9/i$e;->x:Landroid/widget/TextView;

    .line 37
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v4, p1, Le9/i$e;->z:Landroid/widget/TextView;

    .line 39
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v4, p1, Le9/i$e;->A:Lcom/nike/adapt/ui/view/DuoColorView;

    const/16 v5, 0x8

    .line 41
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object v4, p1, Le9/i$e;->E:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 43
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iget-object v4, v0, Ls9/n;->b:Lea/e;

    .line 45
    iget-boolean v4, v4, Lea/e;->j:Z

    if-nez v4, :cond_5

    .line 46
    iget-object v4, v1, Lea/e;->k:Lea/c;

    .line 47
    iget-object v4, v4, Lea/c;->i:Lea/d;

    .line 48
    iget-object v4, v4, Lea/d;->l:Lba/f;

    .line 49
    iget-object v1, v1, Lea/e;->l:Lea/c;

    .line 50
    iget-object v1, v1, Lea/c;->i:Lea/d;

    .line 51
    iget-object v1, v1, Lea/d;->l:Lba/f;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    .line 52
    new-instance v11, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    sget-object v5, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->Companion:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;

    invoke-virtual {v5, v4}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v6

    invoke-virtual {v5, v1}, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset$Companion;->parse(Lba/f;)Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    .line 53
    sget-object v1, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    invoke-virtual {v1, v11}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v1

    .line 54
    iget-object v4, p1, Le9/i$e;->A:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 55
    invoke-virtual {v11}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v5

    invoke-virtual {v4, v1, v3, v3, v5}, Lcom/nike/adapt/ui/view/DuoColorView;->b(Lcom/nike/adapt/adk/model/ShoeColor;ZZZ)V

    .line 56
    iget-object v4, p1, Le9/i$e;->E:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 57
    invoke-virtual {v11}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->isOff()Z

    move-result v5

    invoke-virtual {v4, v1, v3, v3, v5}, Lcom/nike/adapt/ui/view/DuoColorView;->b(Lcom/nike/adapt/adk/model/ShoeColor;ZZZ)V

    const/high16 v1, 0x41600000    # 14.0f

    .line 58
    iget-object v4, p1, Le9/i$e;->A:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v1, v3

    float-to-int v1, v1

    .line 60
    iget-object v3, p1, Le9/i$e;->A:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 61
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 62
    iget-object v3, p1, Le9/i$e;->A:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 63
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    iget-object v3, p1, Le9/i$e;->E:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 65
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 66
    iget-object v3, p1, Le9/i$e;->E:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 68
    iget-object v1, p1, Le9/i$e;->A:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v1, p1, Le9/i$e;->E:Lcom/nike/adapt/ui/view/DuoColorView;

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_5
    iget-object v1, p1, Le9/i$e;->D:Landroid/widget/TextView;

    .line 73
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-boolean p2, v0, Ls9/n;->c:Z

    if-nez p2, :cond_6

    .line 75
    iget-object p2, p1, Le9/i$e;->w:Landroid/view/View;

    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 77
    :cond_6
    iget-object p2, p1, Le9/i$e;->w:Landroid/view/View;

    .line 78
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 79
    iget-object v0, p1, Le9/i$e;->v:Landroid/view/View;

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    :goto_1
    iget-object p2, p1, Le9/i$e;->u:Landroid/view/View;

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, Le9/l;

    invoke-direct {v0, p1, p0}, Le9/l;-><init>(Le9/i$e;Le9/i;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_2

    .line 83
    :cond_7
    check-cast p1, Le9/i$b;

    .line 84
    iget-object p2, p1, Le9/i$b;->u:Landroid/widget/TextView;

    const v0, 0x7f11007d

    .line 85
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p2, p1, Le9/i$b;->v:Landroid/widget/TextView;

    const v0, 0x7f11011a

    .line 87
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p1, Le9/i$b;->v:Landroid/widget/TextView;

    .line 89
    new-instance p2, Le9/f;

    invoke-direct {p2, p0, v2}, Le9/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 90
    :cond_8
    check-cast p1, Le9/i$b;

    .line 91
    iget-object p2, p1, Le9/i$b;->u:Landroid/widget/TextView;

    const v0, 0x7f11017c

    .line 92
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object p2, p1, Le9/i$b;->v:Landroid/widget/TextView;

    const v0, 0x7f11017b

    .line 94
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p1, Le9/i$b;->v:Landroid/widget/TextView;

    .line 96
    new-instance p2, Lo8/f;

    invoke-direct {p2, p0, v1}, Lo8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$b0;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Le9/i;->h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    .line 2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .line 4
    iget v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 5
    move-object v1, p1

    check-cast v1, Le9/i$e;

    const-string v2, "default_mode_payload"

    .line 6
    invoke-static {p3, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    iget-object p3, p0, Le9/i;->e:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ls9/n;

    .line 8
    iget-boolean p3, p3, Ls9/n;->c:Z

    if-nez p3, :cond_1

    .line 9
    iget-object p3, v1, Le9/i$e;->w:Landroid/view/View;

    .line 10
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 11
    :cond_1
    iget-object p3, v1, Le9/i$e;->w:Landroid/view/View;

    .line 12
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 13
    iget-object v0, v1, Le9/i$e;->v:Landroid/view/View;

    .line 14
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2}, Le9/i;->h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V

    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "from(context).inflate(R.\u2026ow_layout, parent, false)"

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    const/4 v3, 0x1

    if-eq p2, v3, :cond_4

    const/4 v3, 0x2

    if-eq p2, v3, :cond_3

    const/4 v3, 0x3

    if-eq p2, v3, :cond_2

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_0

    .line 2
    new-instance p1, Le9/i$b;

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, p2}, Le9/i$b;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 3
    :cond_0
    new-instance p2, Le9/i$f;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0092

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le9/i$f;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, Le9/i$c;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0091

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le9/i$c;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p2, Le9/i$a;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d008f

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le9/i$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance p2, Le9/i$e;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0093

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le9/i$e;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_4
    new-instance p2, Le9/i$b;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d0090

    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le9/i$b;-><init>(Landroid/view/View;)V

    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final m(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Le9/i;->e:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    check-cast v3, Ls9/n;

    .line 3
    iget v5, v3, Ls9/n;->a:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 4
    iget-boolean v5, v3, Ls9/n;->c:Z

    if-eqz v5, :cond_0

    if-eq v2, p1, :cond_0

    .line 5
    iput-boolean v1, v3, Ls9/n;->c:Z

    const-string v3, "default_mode_payload"

    .line 6
    invoke-virtual {p0, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$e;->f(ILjava/lang/Object;)V

    :cond_0
    move v2, v4

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method public final n(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/e;

    .line 2
    iget-boolean v1, v1, Lea/e;->j:Z

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lea/e;

    .line 4
    iget-boolean v4, v4, Lea/e;->j:Z

    if-nez v4, :cond_2

    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 5
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lea/e;

    .line 6
    iget-boolean v6, v6, Lea/e;->j:Z

    if-nez v6, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 7
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x6

    const/4 v9, 0x0

    if-nez v0, :cond_6

    if-nez v1, :cond_6

    .line 8
    new-instance p1, Ls9/n;

    invoke-direct {p1, v7, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance p1, Ls9/n;

    invoke-direct {p1, v6, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_6
    const/4 v10, 0x5

    const/4 v11, 0x2

    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 10
    new-instance v0, Ls9/n;

    invoke-direct {v0, v7, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Ls9/n;

    invoke-direct {v0, v3, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lea/e;

    .line 13
    new-instance v1, Ls9/n;

    invoke-direct {v1, v11, v0, v7}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-ge v5, v6, :cond_f

    .line 14
    new-instance p1, Ls9/n;

    invoke-direct {p1, v10, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_8
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    .line 15
    new-instance v0, Ls9/n;

    invoke-direct {v0, v2, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lea/e;

    .line 17
    new-instance v1, Ls9/n;

    invoke-direct {v1, v11, v0, v7}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 18
    :cond_9
    new-instance p1, Ls9/n;

    invoke-direct {p1, v6, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 19
    :cond_a
    new-instance v0, Ls9/n;

    invoke-direct {v0, v2, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lea/e;

    .line 21
    iget-boolean v2, v1, Lea/e;->j:Z

    if-eqz v2, :cond_b

    .line 22
    new-instance v2, Ls9/n;

    invoke-direct {v2, v11, v1, v7}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 23
    :cond_c
    new-instance v0, Ls9/n;

    invoke-direct {v0, v3, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lea/e;

    .line 25
    iget-boolean v1, v0, Lea/e;->j:Z

    if-nez v1, :cond_d

    .line 26
    new-instance v1, Ls9/n;

    invoke-direct {v1, v11, v0, v7}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    if-ge v5, v6, :cond_f

    .line 27
    new-instance p1, Ls9/n;

    invoke-direct {p1, v10, v9, v8}, Ls9/n;-><init>(ILea/e;I)V

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_f
    :goto_7
    iput-object v4, p0, Le9/i;->e:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$e;->d()V

    return-void
.end method

.method public final o(Ljava/util/List;Ld9/a;Ld9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/e;",
            ">;",
            "Ld9/a;",
            "Ld9/a;",
            ")V"
        }
    .end annotation

    const-string v0, "modes"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le9/i$g;

    invoke-direct {v0}, Le9/i$g;-><init>()V

    invoke-static {p1, v0}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Le9/i;->n(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0, p2, p3}, Le9/i;->p(Ld9/a;Ld9/a;)V

    return-void
.end method

.method public final p(Ld9/a;Ld9/a;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Le9/i;->f:Z

    if-eqz v3, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object v1, v0, Le9/i;->g:Ld9/a;

    .line 3
    iput-object v2, v0, Le9/i;->h:Ld9/a;

    .line 4
    iget-object v3, v0, Le9/i;->e:Ljava/util/ArrayList;

    const-string v4, "dataSet"

    .line 5
    invoke-static {v3, v4}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v9, v5, 0x1

    if-ltz v5, :cond_9

    check-cast v6, Ls9/n;

    .line 7
    iget-object v10, v6, Ls9/n;->b:Lea/e;

    if-eqz v10, :cond_8

    .line 8
    iget-object v11, v10, Lea/e;->k:Lea/c;

    .line 9
    iget-object v12, v11, Lea/c;->h:Lea/i;

    .line 10
    iget-object v12, v12, Lea/i;->h:Lea/h$c;

    .line 11
    iget v12, v12, Lea/h$c;->j:I

    .line 12
    iget v13, v1, Ld9/a;->j:I

    add-int/lit8 v14, v13, 0x2

    if-gt v12, v14, :cond_1

    add-int/lit8 v13, v13, -0x2

    if-lt v12, v13, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    .line 13
    :goto_1
    iget-object v13, v10, Lea/e;->l:Lea/c;

    .line 14
    iget-object v14, v13, Lea/c;->h:Lea/i;

    .line 15
    iget-object v14, v14, Lea/i;->h:Lea/h$c;

    .line 16
    iget v14, v14, Lea/h$c;->j:I

    .line 17
    iget v15, v2, Ld9/a;->j:I

    add-int/lit8 v4, v15, 0x2

    if-gt v14, v4, :cond_2

    add-int/lit8 v15, v15, -0x2

    if-lt v14, v15, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 18
    :goto_2
    iget-object v13, v13, Lea/c;->i:Lea/d;

    .line 19
    iget-object v13, v13, Lea/d;->l:Lba/f;

    .line 20
    iget-object v14, v1, Ld9/a;->i:Lba/f;

    if-ne v13, v14, :cond_3

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 21
    :goto_3
    iget-object v11, v11, Lea/c;->i:Lea/d;

    .line 22
    iget-object v11, v11, Lea/d;->l:Lba/f;

    .line 23
    iget-object v14, v2, Ld9/a;->i:Lba/f;

    if-ne v11, v14, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    .line 24
    :goto_4
    iget-object v10, v10, Lea/e;->i:Ljava/lang/String;

    .line 25
    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v15, "ROOT"

    invoke-static {v14, v15}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v15, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v10, v15}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v8, Ls9/n;->d:Ljava/lang/String;

    .line 27
    invoke-virtual {v8, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v15}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v12, :cond_5

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    .line 28
    :goto_5
    iget-object v6, v6, Ls9/n;->b:Lea/e;

    .line 29
    iget-boolean v6, v6, Lea/e;->j:Z

    if-nez v6, :cond_7

    if-eqz v13, :cond_6

    if-eqz v11, :cond_6

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v6, 0x1

    :goto_7
    if-eqz v4, :cond_8

    if-eqz v6, :cond_8

    if-eqz v8, :cond_8

    goto :goto_8

    :cond_8
    move v5, v9

    goto/16 :goto_0

    .line 30
    :cond_9
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    const/4 v1, 0x0

    throw v1

    :cond_a
    move v5, v7

    :goto_8
    if-eq v5, v7, :cond_b

    .line 31
    iget-object v1, v0, Le9/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls9/n;

    const/4 v2, 0x1

    .line 32
    iput-boolean v2, v1, Ls9/n;->c:Z

    const-string v1, "default_mode_payload"

    .line 33
    invoke-virtual {v0, v5, v1}, Landroidx/recyclerview/widget/RecyclerView$e;->f(ILjava/lang/Object;)V

    .line 34
    invoke-virtual {v0, v5}, Le9/i;->m(I)V

    :cond_b
    return-void
.end method
