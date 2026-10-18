.class public abstract Landroidx/preference/c;
.super Landroidx/fragment/app/m;
.source "PreferenceFragmentCompat.java"

# interfaces
.implements Landroidx/preference/f$c;
.implements Landroidx/preference/f$a;
.implements Landroidx/preference/f$b;
.implements Landroidx/preference/DialogPreference$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/c$c;,
        Landroidx/preference/c$d;,
        Landroidx/preference/c$f;,
        Landroidx/preference/c$e;
    }
.end annotation


# instance fields
.field public final a0:Landroidx/preference/c$c;

.field public b0:Landroidx/preference/f;

.field public c0:Landroidx/recyclerview/widget/RecyclerView;

.field public d0:Z

.field public e0:Z

.field public f0:I

.field public final g0:Landroidx/preference/c$a;

.field public final h0:Landroidx/preference/c$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/m;-><init>()V

    .line 2
    new-instance v0, Landroidx/preference/c$c;

    invoke-direct {v0, p0}, Landroidx/preference/c$c;-><init>(Landroidx/preference/c;)V

    iput-object v0, p0, Landroidx/preference/c;->a0:Landroidx/preference/c$c;

    .line 3
    sget v0, Landroidx/preference/R$layout;->preference_list_fragment:I

    iput v0, p0, Landroidx/preference/c;->f0:I

    .line 4
    new-instance v0, Landroidx/preference/c$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/preference/c$a;-><init>(Landroidx/preference/c;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/preference/c;->g0:Landroidx/preference/c$a;

    .line 5
    new-instance v0, Landroidx/preference/c$b;

    invoke-direct {v0, p0}, Landroidx/preference/c$b;-><init>(Landroidx/preference/c;)V

    iput-object v0, p0, Landroidx/preference/c;->h0:Landroidx/preference/c$b;

    return-void
.end method


# virtual methods
.method public H(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->H(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Landroidx/preference/R$attr;->preferenceTheme:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_0

    .line 5
    sget p1, Landroidx/preference/R$style;->PreferenceThemeOverlay:I

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 7
    new-instance p1, Landroidx/preference/f;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/preference/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 8
    iput-object p0, p1, Landroidx/preference/f;->k:Landroidx/preference/f$b;

    .line 9
    iget-object p1, p0, Landroidx/fragment/app/m;->n:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    const-string v0, "androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/c;->p0(Ljava/lang/String;)V

    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object p3

    sget-object v0, Landroidx/preference/R$styleable;->PreferenceFragmentCompat:[I

    sget v1, Landroidx/preference/R$attr;->preferenceFragmentCompatStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 2
    sget v0, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_android_layout:I

    iget v1, p0, Landroidx/preference/c;->f0:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/preference/c;->f0:I

    .line 3
    sget v0, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_android_divider:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    sget v1, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_android_dividerHeight:I

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 5
    sget v4, Landroidx/preference/R$styleable;->PreferenceFragmentCompat_allowDividerAfterLastItem:I

    const/4 v5, 0x1

    invoke-virtual {p3, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 6
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 8
    iget p3, p0, Landroidx/preference/c;->f0:I

    invoke-virtual {p1, p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x102003f

    .line 9
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 10
    instance-of v6, p3, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    .line 11
    check-cast p3, Landroid/view/ViewGroup;

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.type.automotive"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 13
    sget v6, Landroidx/preference/R$id;->recycler_view:I

    invoke-virtual {p3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget v6, Landroidx/preference/R$layout;->preference_recyclerview:I

    .line 15
    invoke-virtual {p1, v6, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/m;->f0()Landroid/content/Context;

    .line 17
    invoke-direct {p1, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 18
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 19
    new-instance p1, Lx0/e;

    invoke-direct {p1, v6}, Lx0/e;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroidx/recyclerview/widget/h0;)V

    .line 20
    :goto_0
    iput-object v6, p0, Landroidx/preference/c;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    iget-object p1, p0, Landroidx/preference/c;->a0:Landroidx/preference/c$c;

    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/RecyclerView;->g(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 22
    invoke-virtual {p0, v0}, Landroidx/preference/c;->q0(Landroid/graphics/drawable/Drawable;)V

    if-eq v1, v2, :cond_1

    .line 23
    iget-object p1, p0, Landroidx/preference/c;->a0:Landroidx/preference/c$c;

    .line 24
    iput v1, p1, Landroidx/preference/c$c;->b:I

    .line 25
    iget-object p1, p1, Landroidx/preference/c$c;->d:Landroidx/preference/c;

    iget-object p1, p1, Landroidx/preference/c;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    .line 26
    :cond_1
    iget-object p1, p0, Landroidx/preference/c;->a0:Landroidx/preference/c$c;

    .line 27
    iput-boolean v4, p1, Landroidx/preference/c$c;->c:Z

    .line 28
    iget-object p1, p0, Landroidx/preference/c;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_2

    .line 29
    iget-object p1, p0, Landroidx/preference/c;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    :cond_2
    iget-object p1, p0, Landroidx/preference/c;->g0:Landroidx/preference/c$a;

    iget-object p3, p0, Landroidx/preference/c;->h0:Landroidx/preference/c$b;

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p2

    .line 31
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final K()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->g0:Landroidx/preference/c$a;

    iget-object v1, p0, Landroidx/preference/c;->h0:Landroidx/preference/c$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Landroidx/preference/c;->g0:Landroidx/preference/c$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-boolean v0, p0, Landroidx/preference/c;->d0:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Landroidx/preference/c;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 6
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 7
    iget-object v0, v0, Landroidx/preference/f;->h:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->z()V

    .line 9
    :cond_0
    iput-object v2, p0, Landroidx/preference/c;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    iput-boolean v1, p0, Landroidx/fragment/app/m;->K:Z

    return-void
.end method

.method public final R(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 2
    iget-object v0, v0, Landroidx/preference/f;->h:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->g(Landroid/os/Bundle;)V

    const-string v0, "android:preferences"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public S()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 3
    iput-object p0, v0, Landroidx/preference/f;->i:Landroidx/preference/f$c;

    .line 4
    iput-object p0, v0, Landroidx/preference/f;->j:Landroidx/preference/f$a;

    return-void
.end method

.method public T()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/fragment/app/m;->K:Z

    .line 2
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Landroidx/preference/f;->i:Landroidx/preference/f$c;

    .line 4
    iput-object v1, v0, Landroidx/preference/f;->j:Landroidx/preference/f$a;

    return-void
.end method

.method public U(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "android:preferences"

    .line 1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 3
    iget-object p2, p2, Landroidx/preference/f;->h:Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->b(Landroid/os/Bundle;)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Landroidx/preference/c;->d0:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 7
    iget-object p1, p1, Landroidx/preference/f;->h:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Landroidx/preference/c;->c0:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    new-instance v0, Landroidx/preference/d;

    invoke-direct {v0, p1}, Landroidx/preference/d;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 10
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 11
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->u()V

    :cond_1
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroidx/preference/c;->e0:Z

    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/f;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroidx/preference/Preference;)Z
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, p0

    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 2
    instance-of v2, v0, Landroidx/preference/c$e;

    if-eqz v2, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Landroidx/preference/c$e;

    .line 4
    invoke-interface {v1}, Landroidx/preference/c$e;->a()Z

    move-result v1

    .line 5
    :cond_0
    iget-object v0, v0, Landroidx/fragment/app/m;->C:Landroidx/fragment/app/m;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/c$e;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/preference/c$e;

    .line 8
    invoke-interface {v0}, Landroidx/preference/c$e;->a()Z

    move-result v1

    :cond_2
    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/c$e;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v0

    check-cast v0, Landroidx/preference/c$e;

    .line 11
    invoke-interface {v0}, Landroidx/preference/c$e;->a()Z

    move-result v1

    :cond_3
    const/4 v0, 0x1

    if-nez v1, :cond_6

    const-string v1, "PreferenceFragment"

    const-string v2, "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments."

    .line 12
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/m;->r()Landroidx/fragment/app/x;

    move-result-object v1

    .line 14
    iget-object v2, p1, Landroidx/preference/Preference;->u:Landroid/os/Bundle;

    if-nez v2, :cond_4

    .line 15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p1, Landroidx/preference/Preference;->u:Landroid/os/Bundle;

    .line 16
    :cond_4
    iget-object v2, p1, Landroidx/preference/Preference;->u:Landroid/os/Bundle;

    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/x;->H()Landroidx/fragment/app/t;

    move-result-object v3

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 19
    iget-object p1, p1, Landroidx/preference/Preference;->t:Ljava/lang/String;

    .line 20
    invoke-virtual {v3, v4, p1}, Landroidx/fragment/app/t;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v2}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p1, p0}, Landroidx/fragment/app/m;->n0(Landroidx/fragment/app/m;)V

    .line 23
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/m;->g0()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x0

    .line 25
    invoke-virtual {v2, v1, p1, v3}, Landroidx/fragment/app/g0;->f(ILandroidx/fragment/app/m;Ljava/lang/String;)Landroidx/fragment/app/g0;

    .line 26
    iget-boolean p1, v2, Landroidx/fragment/app/g0;->h:Z

    if-eqz p1, :cond_5

    .line 27
    iput-boolean v0, v2, Landroidx/fragment/app/g0;->g:Z

    .line 28
    iput-object v3, v2, Landroidx/fragment/app/g0;->i:Ljava/lang/String;

    .line 29
    invoke-virtual {v2}, Landroidx/fragment/app/a;->i()I

    goto :goto_1

    .line 30
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return v0

    :cond_7
    return v1
.end method

.method public abstract p0(Ljava/lang/String;)V
.end method

.method public final q0(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->a0:Landroidx/preference/c$c;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Landroidx/preference/c$c;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroidx/preference/c$c;->b:I

    .line 4
    :goto_0
    iput-object p1, v0, Landroidx/preference/c$c;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object p1, v0, Landroidx/preference/c$c;->d:Landroidx/preference/c;

    iget-object p1, p1, Landroidx/preference/c;->c0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->P()V

    return-void
.end method

.method public final r0(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->b0:Landroidx/preference/f;

    .line 2
    iget-object v1, v0, Landroidx/preference/f;->h:Landroidx/preference/PreferenceScreen;

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->z()V

    .line 4
    :cond_0
    iput-object p1, v0, Landroidx/preference/f;->h:Landroidx/preference/PreferenceScreen;

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 5
    iput-boolean v2, p0, Landroidx/preference/c;->d0:Z

    .line 6
    iget-boolean p1, p0, Landroidx/preference/c;->e0:Z

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Landroidx/preference/c;->g0:Landroidx/preference/c$a;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Landroidx/preference/c;->g0:Landroidx/preference/c$a;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_1
    return-void
.end method
