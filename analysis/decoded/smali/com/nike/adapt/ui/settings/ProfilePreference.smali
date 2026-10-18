.class public final Lcom/nike/adapt/ui/settings/ProfilePreference;
.super Landroidx/preference/Preference;
.source "ProfilePreference.kt"


# instance fields
.field public final T:Ljava/text/SimpleDateFormat;

.field public final U:Lfd/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/ui/settings/ProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILrd/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/ui/settings/ProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILrd/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string p3, "yyyy"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/ProfilePreference;->T:Ljava/text/SimpleDateFormat;

    .line 3
    sget-object p1, Lcom/nike/adapt/ui/settings/ProfilePreference$a;->h:Lcom/nike/adapt/ui/settings/ProfilePreference$a;

    const/4 p2, 0x3

    invoke-static {p2, p1}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/ProfilePreference;->U:Lfd/d;

    const p1, 0x7f0d00f6

    .line 4
    iput p1, p0, Landroidx/preference/Preference;->K:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILrd/h;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/nike/adapt/ui/settings/ProfilePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final x(Landroidx/preference/g;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->x(Landroidx/preference/g;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    const v1, 0x7f0a03bc

    .line 3
    invoke-virtual {p1, v1}, Landroidx/preference/g;->A(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v1, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a03c2

    .line 4
    invoke-virtual {p1, v2}, Landroidx/preference/g;->A(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v2, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a03c0

    .line 5
    invoke-virtual {p1, v4}, Landroidx/preference/g;->A(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a03c1

    .line 6
    invoke-virtual {p1, v5}, Landroidx/preference/g;->A(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v3}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 7
    iget-object v3, p0, Lcom/nike/adapt/ui/settings/ProfilePreference;->U:Lfd/d;

    invoke-interface {v3}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lh8/a;

    .line 8
    invoke-interface {v3}, Lh8/a;->R()Lcom/nike/adapt/presenter/profile/AdaptUser;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {v3}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getAvatarUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v6, Lt7/b;->a:Lt7/b$a;

    invoke-virtual {v6}, Lt7/b$a;->a()Lt7/b;

    move-result-object v6

    invoke-static {}, Lh3/g;->C()Lh3/g;

    move-result-object v7

    const-string v8, "circleCropTransform()"

    invoke-static {v7, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v5, v7, v1}, Lt7/b;->d(Ljava/lang/String;Lh3/g;Landroid/widget/ImageView;)V

    .line 10
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {v3}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getFirstName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 12
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_2
    invoke-virtual {v3}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getLastName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_3

    move v8, v6

    goto :goto_0

    :cond_3
    move v8, v7

    :goto_0
    if-eqz v8, :cond_4

    const-string v8, " "

    .line 15
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {v3}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getDob()Ljava/lang/Integer;

    move-result-object v1

    .line 19
    invoke-virtual {v3}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getHometown()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 20
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    move v5, v7

    goto :goto_2

    :cond_7
    :goto_1
    move v5, v6

    :goto_2
    if-nez v5, :cond_8

    .line 21
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    :cond_8
    invoke-virtual {v3}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getRegistrationTimestamp()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 24
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 25
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/ProfilePreference;->T:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "registrationYear"

    .line 26
    invoke-static {v1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    move v2, v6

    goto :goto_3

    :cond_9
    move v2, v7

    :goto_3
    if-eqz v2, :cond_a

    .line 27
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11025d

    new-array v3, v6, [Landroid/util/Pair;

    new-instance v4, Landroid/util/Pair;

    const-string v5, "year"

    invoke-direct {v4, v5, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v3, v7

    invoke-static {v0, v2, v3}, Ls9/e;->a(Landroid/content/Context;I[Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    return-void
.end method
