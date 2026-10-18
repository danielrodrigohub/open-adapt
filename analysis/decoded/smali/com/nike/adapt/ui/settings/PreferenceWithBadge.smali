.class public final Lcom/nike/adapt/ui/settings/PreferenceWithBadge;
.super Landroidx/preference/Preference;
.source "PreferenceWithBadge.kt"


# instance fields
.field public final T:Lh8/c;

.field public U:Landroid/view/View;


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

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILrd/h;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILrd/h;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    sget-object p1, Lh8/c;->b:Lh8/c;

    .line 3
    iput-object p1, p0, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;->T:Lh8/c;

    const p1, 0x7f0d00f1

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
    invoke-direct {p0, p1, p2, p3}, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final L()V
    .locals 4

    const v0, 0x7f1101b0

    .line 1
    invoke-static {v0}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;->U:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    .line 4
    invoke-static {v2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;->T:Lh8/c;

    .line 5
    invoke-virtual {v0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "PREF_SHOULD_SHOW_JORDAN_APP_ICON_BADGE"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 6
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final x(Landroidx/preference/g;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->x(Landroidx/preference/g;)V

    const v0, 0x7f0a0258

    .line 2
    invoke-virtual {p1, v0}, Landroidx/preference/g;->A(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;->U:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Lcom/nike/adapt/ui/settings/PreferenceWithBadge;->L()V

    return-void
.end method
