.class public final Landroidx/preference/a;
.super Landroidx/preference/Preference;
.source "ExpandButton.java"


# instance fields
.field public T:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Landroidx/preference/R$layout;->expand_button:I

    .line 3
    iput p1, p0, Landroidx/preference/Preference;->K:I

    .line 4
    sget p1, Landroidx/preference/R$drawable;->ic_arrow_down_24dp:I

    .line 5
    iget-object v0, p0, Landroidx/preference/Preference;->h:Landroid/content/Context;

    invoke-static {v0, p1}, Lg/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroidx/preference/Preference;->q:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    .line 7
    iput-object v0, p0, Landroidx/preference/Preference;->q:Landroid/graphics/drawable/Drawable;

    .line 8
    iput v2, p0, Landroidx/preference/Preference;->p:I

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    .line 10
    :cond_0
    iput p1, p0, Landroidx/preference/Preference;->p:I

    .line 11
    sget p1, Landroidx/preference/R$string;->expand_button_title:I

    .line 12
    iget-object v0, p0, Landroidx/preference/Preference;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iput-object p1, p0, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 15
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    :cond_1
    const/16 p1, 0x3e7

    .line 16
    iget v0, p0, Landroidx/preference/Preference;->m:I

    if-eq p1, v0, :cond_2

    .line 17
    iput p1, p0, Landroidx/preference/Preference;->m:I

    .line 18
    invoke-virtual {p0}, Landroidx/preference/Preference;->t()V

    .line 19
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 21
    iget-object v3, v1, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 22
    instance-of v4, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 23
    move-object v5, v1

    check-cast v5, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_4
    iget-object v5, v1, Landroidx/preference/Preference;->O:Landroidx/preference/PreferenceGroup;

    .line 25
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_3

    .line 26
    check-cast v1, Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 27
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_6

    move-object v0, v3

    goto :goto_0

    .line 28
    :cond_6
    iget-object v1, p0, Landroidx/preference/Preference;->h:Landroid/content/Context;

    .line 29
    sget v4, Landroidx/preference/R$string;->summary_collapsed_preference_list:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object v3, v5, v0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_7
    iget-object p1, p0, Landroidx/preference/Preference;->R:Landroidx/preference/Preference$f;

    if-nez p1, :cond_9

    .line 31
    iget-object p1, p0, Landroidx/preference/Preference;->o:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 32
    iput-object v0, p0, Landroidx/preference/Preference;->o:Ljava/lang/CharSequence;

    .line 33
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    :cond_8
    const-wide/32 p1, 0xf4240

    add-long/2addr p3, p1

    .line 34
    iput-wide p3, p0, Landroidx/preference/a;->T:J

    return-void

    .line 35
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Preference already has a SummaryProvider set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final i()J
    .locals 2

    iget-wide v0, p0, Landroidx/preference/a;->T:J

    return-wide v0
.end method

.method public final x(Landroidx/preference/g;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->x(Landroidx/preference/g;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Landroidx/preference/g;->x:Z

    return-void
.end method
