.class public final Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "FragmentLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final h:Landroidx/fragment/app/x;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    .line 2
    const-class v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Landroidx/fragment/app/FragmentContainerView;

    iget-object p2, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    invoke-direct {p1, p3, p4, p2}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroidx/fragment/app/x;)V

    return-object p1

    :cond_0
    const-string v0, "fragment"

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "class"

    .line 5
    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    sget-object v1, Landroidx/fragment/R$styleable;->Fragment:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    if-nez p2, :cond_2

    .line 7
    sget p2, Landroidx/fragment/R$styleable;->Fragment_android_name:I

    invoke-virtual {v1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 8
    :cond_2
    sget v2, Landroidx/fragment/R$styleable;->Fragment_android_id:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 9
    sget v4, Landroidx/fragment/R$styleable;->Fragment_android_tag:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_11

    .line 11
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget-object v5, Landroidx/fragment/app/t;->a:Lp/g;

    const/4 v5, 0x0

    .line 12
    :try_start_0
    invoke-static {v1, p2}, Landroidx/fragment/app/t;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 13
    const-class v6, Landroidx/fragment/app/m;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v5

    :goto_0
    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz p1, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    :cond_4
    if-ne v5, v3, :cond_6

    if-ne v2, v3, :cond_6

    if-eqz v4, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    if-eq v2, v3, :cond_7

    .line 16
    iget-object v0, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/x;->E(I)Landroidx/fragment/app/m;

    move-result-object v0

    :cond_7
    if-nez v0, :cond_8

    if-eqz v4, :cond_8

    .line 17
    iget-object v0, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_9

    if-eq v5, v3, :cond_9

    .line 18
    iget-object v0, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/x;->E(I)Landroidx/fragment/app/m;

    move-result-object v0

    :cond_9
    const-string v1, "Fragment "

    const-string v3, "FragmentManager"

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v0, :cond_b

    .line 19
    iget-object p4, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    invoke-virtual {p4}, Landroidx/fragment/app/x;->H()Landroidx/fragment/app/t;

    move-result-object p4

    .line 20
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 21
    invoke-virtual {p4, p3, p2}, Landroidx/fragment/app/t;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v0

    .line 22
    iput-boolean v7, v0, Landroidx/fragment/app/m;->u:Z

    if-eqz v2, :cond_a

    move p3, v2

    goto :goto_2

    :cond_a
    move p3, v5

    .line 23
    :goto_2
    iput p3, v0, Landroidx/fragment/app/m;->D:I

    .line 24
    iput v5, v0, Landroidx/fragment/app/m;->E:I

    .line 25
    iput-object v4, v0, Landroidx/fragment/app/m;->F:Ljava/lang/String;

    .line 26
    iput-boolean v7, v0, Landroidx/fragment/app/m;->v:Z

    .line 27
    iget-object p3, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    iput-object p3, v0, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 28
    iget-object p3, p3, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 29
    iput-object p3, v0, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    .line 30
    iget-object p3, p3, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 31
    invoke-virtual {v0}, Landroidx/fragment/app/m;->N()V

    .line 32
    iget-object p3, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/x;->a(Landroidx/fragment/app/m;)Landroidx/fragment/app/e0;

    move-result-object p3

    .line 33
    invoke-static {v6}, Landroidx/fragment/app/x;->L(I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 34
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 36
    invoke-static {v3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 37
    :cond_b
    iget-boolean p3, v0, Landroidx/fragment/app/m;->v:Z

    if-nez p3, :cond_10

    .line 38
    iput-boolean v7, v0, Landroidx/fragment/app/m;->v:Z

    .line 39
    iget-object p3, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    iput-object p3, v0, Landroidx/fragment/app/m;->z:Landroidx/fragment/app/x;

    .line 40
    iget-object p3, p3, Landroidx/fragment/app/x;->q:Landroidx/fragment/app/u;

    .line 41
    iput-object p3, v0, Landroidx/fragment/app/m;->A:Landroidx/fragment/app/u;

    .line 42
    iget-object p3, p3, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 43
    invoke-virtual {v0}, Landroidx/fragment/app/m;->N()V

    .line 44
    iget-object p3, p0, Landroidx/fragment/app/v;->h:Landroidx/fragment/app/x;

    invoke-virtual {p3, v0}, Landroidx/fragment/app/x;->f(Landroidx/fragment/app/m;)Landroidx/fragment/app/e0;

    move-result-object p3

    .line 45
    invoke-static {v6}, Landroidx/fragment/app/x;->L(I)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 46
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retained Fragment "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 48
    invoke-static {v3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_c
    :goto_3
    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, v0, Landroidx/fragment/app/m;->L:Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {p3}, Landroidx/fragment/app/e0;->k()V

    .line 51
    invoke-virtual {p3}, Landroidx/fragment/app/e0;->j()V

    .line 52
    iget-object p1, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    if-eqz p1, :cond_f

    if-eqz v2, :cond_d

    .line 53
    invoke-virtual {p1, v2}, Landroid/view/View;->setId(I)V

    .line 54
    :cond_d
    iget-object p1, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_e

    .line 55
    iget-object p1, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :cond_e
    iget-object p1, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    new-instance p2, Landroidx/fragment/app/v$a;

    invoke-direct {p2, p0, p3}, Landroidx/fragment/app/v$a;-><init>(Landroidx/fragment/app/v;Landroidx/fragment/app/e0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 57
    iget-object p1, v0, Landroidx/fragment/app/m;->M:Landroid/view/View;

    return-object p1

    .line 58
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, " did not create a view."

    .line 59
    invoke-static {v1, p2, p3}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with another fragment for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    :goto_4
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
