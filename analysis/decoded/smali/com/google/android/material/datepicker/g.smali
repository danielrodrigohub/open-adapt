.class public final Lcom/google/android/material/datepicker/g;
.super Lcom/google/android/material/datepicker/y;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/g$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/y;"
    }
.end annotation


# static fields
.field public static final synthetic l0:I


# instance fields
.field public b0:I

.field public c0:Lcom/google/android/material/datepicker/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/d<",
            "TS;>;"
        }
    .end annotation
.end field

.field public d0:Lcom/google/android/material/datepicker/a;

.field public e0:Lcom/google/android/material/datepicker/t;

.field public f0:I

.field public g0:Lcom/google/android/material/datepicker/c;

.field public h0:Landroidx/recyclerview/widget/RecyclerView;

.field public i0:Landroidx/recyclerview/widget/RecyclerView;

.field public j0:Landroid/view/View;

.field public k0:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/datepicker/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final H(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->H(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroid/os/Bundle;

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/g;->b0:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/d;

    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->c0:Lcom/google/android/material/datepicker/d;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a;

    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->d0:Lcom/google/android/material/datepicker/a;

    const-string v0, "CURRENT_MONTH_KEY"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/t;

    iput-object p1, p0, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/g;->b0:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Lcom/google/android/material/datepicker/c;

    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/g;->g0:Lcom/google/android/material/datepicker/c;

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->d0:Lcom/google/android/material/datepicker/a;

    .line 5
    iget-object v0, v0, Lcom/google/android/material/datepicker/a;->h:Lcom/google/android/material/datepicker/t;

    .line 6
    invoke-static {p3}, Lcom/google/android/material/datepicker/o;->u0(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 7
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    move v4, v2

    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    move v4, v3

    .line 9
    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 12
    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_height:I

    .line 13
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_top_padding:I

    .line 14
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v5, v1

    sget v1, Lcom/google/android/material/R$dimen;->mtrl_calendar_navigation_bottom_padding:I

    .line 15
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v1, v5

    .line 16
    sget v5, Lcom/google/android/material/R$dimen;->mtrl_calendar_days_of_week_height:I

    .line 17
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 18
    sget v6, Lcom/google/android/material/datepicker/u;->m:I

    sget v7, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    .line 19
    invoke-virtual {p2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/lit8 v6, v6, -0x1

    sget v8, Lcom/google/android/material/R$dimen;->mtrl_calendar_month_vertical_padding:I

    .line 20
    invoke-virtual {p2, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    mul-int/2addr v8, v6

    add-int/2addr v8, v7

    .line 21
    sget v6, Lcom/google/android/material/R$dimen;->mtrl_calendar_bottom_padding:I

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    add-int/2addr v1, v5

    add-int/2addr v1, v8

    add-int/2addr v1, p2

    .line 22
    invoke-virtual {p1, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 23
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 24
    new-instance v1, Lcom/google/android/material/datepicker/g$b;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/g$b;-><init>()V

    invoke-static {p2, v1}, Lj0/a0;->p(Landroid/view/View;Lj0/a;)V

    .line 25
    new-instance v1, Lcom/google/android/material/datepicker/f;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/f;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    iget v0, v0, Lcom/google/android/material/datepicker/t;->k:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 27
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    new-instance p2, Lcom/google/android/material/datepicker/g$c;

    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, p0, v0, v4, v4}, Lcom/google/android/material/datepicker/g$c;-><init>(Lcom/google/android/material/datepicker/g;Landroid/content/Context;II)V

    .line 31
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 32
    iget-object p2, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 33
    new-instance p2, Lcom/google/android/material/datepicker/w;

    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->c0:Lcom/google/android/material/datepicker/d;

    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->d0:Lcom/google/android/material/datepicker/a;

    new-instance v3, Lcom/google/android/material/datepicker/g$d;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/g$d;-><init>(Lcom/google/android/material/datepicker/g;)V

    invoke-direct {p2, p3, v0, v1, v3}, Lcom/google/android/material/datepicker/w;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/d;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/g$e;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 35
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 36
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/google/android/material/datepicker/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 38
    iget-object v3, p0, Lcom/google/android/material/datepicker/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, p3, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/google/android/material/datepicker/d0;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/d0;-><init>(Lcom/google/android/material/datepicker/g;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    new-instance v3, Lcom/google/android/material/datepicker/h;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/h;-><init>(Lcom/google/android/material/datepicker/g;)V

    .line 42
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 43
    :cond_1
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v3, "SELECTOR_TOGGLE_TAG"

    .line 45
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 46
    new-instance v3, Lcom/google/android/material/datepicker/i;

    invoke-direct {v3, p0}, Lcom/google/android/material/datepicker/i;-><init>(Lcom/google/android/material/datepicker/g;)V

    invoke-static {v0, v3}, Lj0/a0;->p(Landroid/view/View;Lj0/a;)V

    .line 47
    sget v3, Lcom/google/android/material/R$id;->month_navigation_previous:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const-string v4, "NAVIGATION_PREV_TAG"

    .line 48
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    sget v4, Lcom/google/android/material/R$id;->month_navigation_next:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    const-string v5, "NAVIGATION_NEXT_TAG"

    .line 50
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/g;->j0:Landroid/view/View;

    .line 52
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/g;->k0:Landroid/view/View;

    .line 53
    invoke-virtual {p0, v2}, Lcom/google/android/material/datepicker/g;->t0(I)V

    .line 54
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/t;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/google/android/material/datepicker/j;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/android/material/datepicker/j;-><init>(Lcom/google/android/material/datepicker/g;Lcom/google/android/material/datepicker/w;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->h(Landroidx/recyclerview/widget/RecyclerView$r;)V

    .line 56
    new-instance v1, Lcom/google/android/material/datepicker/k;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/k;-><init>(Lcom/google/android/material/datepicker/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v0, Lcom/google/android/material/datepicker/l;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/l;-><init>(Lcom/google/android/material/datepicker/g;Lcom/google/android/material/datepicker/w;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v0, Lcom/google/android/material/datepicker/m;

    invoke-direct {v0, p0, p2}, Lcom/google/android/material/datepicker/m;-><init>(Lcom/google/android/material/datepicker/g;Lcom/google/android/material/datepicker/w;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_2
    invoke-static {p3}, Lcom/google/android/material/datepicker/o;->u0(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 60
    new-instance p3, Landroidx/recyclerview/widget/e0;

    invoke-direct {p3}, Landroidx/recyclerview/widget/e0;-><init>()V

    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/k0;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 61
    :cond_3
    iget-object p3, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/w;->n(Lcom/google/android/material/datepicker/t;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->h0(I)V

    return-object p1
.end method

.method public final R(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/g;->b0:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->c0:Lcom/google/android/material/datepicker/d;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->d0:Lcom/google/android/material/datepicker/a;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final p0(Lcom/google/android/material/datepicker/x;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/x<",
            "TS;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/datepicker/y;->a0:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final q0()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final r0(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/g$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/g$a;-><init>(Lcom/google/android/material/datepicker/g;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final s0(Lcom/google/android/material/datepicker/t;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/w;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/w;->n(Lcom/google/android/material/datepicker/t;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/w;->n(Lcom/google/android/material/datepicker/t;)I

    move-result v0

    sub-int v0, v1, v0

    .line 4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 5
    :goto_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h0(I)V

    .line 7
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/g;->r0(I)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 8
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->i0:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->h0(I)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/g;->r0(I)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/datepicker/g;->r0(I)V

    :goto_2
    return-void
.end method

.method public final t0(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/material/datepicker/g;->f0:I

    const/4 v0, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/g;->h0:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$e;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/d0;

    iget-object v3, p0, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    iget v3, v3, Lcom/google/android/material/datepicker/t;->j:I

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/d0;->m(I)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->w0(I)V

    .line 6
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->j0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->k0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->j0:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->k0:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/google/android/material/datepicker/g;->e0:Lcom/google/android/material/datepicker/t;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/g;->s0(Lcom/google/android/material/datepicker/t;)V

    :cond_1
    :goto_0
    return-void
.end method
