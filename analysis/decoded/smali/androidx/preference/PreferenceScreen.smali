.class public final Landroidx/preference/PreferenceScreen;
.super Landroidx/preference/PreferenceGroup;
.source "PreferenceScreen.java"


# instance fields
.field public b0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget v0, Landroidx/preference/R$attr;->preferenceScreenStyle:I

    const v1, 0x101008b

    invoke-static {p1, v0, v1}, Lz/i;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/preference/PreferenceScreen;->b0:Z

    return-void
.end method


# virtual methods
.method public final y()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->s:Landroid/content/Intent;

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->t:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 3
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->N()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->i:Landroidx/preference/f;

    .line 5
    iget-object v0, v0, Landroidx/preference/f;->k:Landroidx/preference/f$b;

    if-eqz v0, :cond_4

    .line 6
    check-cast v0, Landroidx/preference/c;

    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 7
    instance-of v4, v2, Landroidx/preference/c$f;

    if-eqz v4, :cond_1

    .line 8
    move-object v1, v2

    check-cast v1, Landroidx/preference/c$f;

    .line 9
    invoke-interface {v1, v0, p0}, Landroidx/preference/c$f;->q(Landroidx/preference/c;Landroidx/preference/PreferenceScreen;)V

    move v1, v3

    .line 10
    :cond_1
    iget-object v2, v2, Landroidx/fragment/app/m;->C:Landroidx/fragment/app/m;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/c$f;

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroidx/preference/c$f;

    .line 13
    invoke-interface {v1, v0, p0}, Landroidx/preference/c$f;->q(Landroidx/preference/c;Landroidx/preference/PreferenceScreen;)V

    move v1, v3

    :cond_3
    if-nez v1, :cond_4

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/c$f;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v1

    check-cast v1, Landroidx/preference/c$f;

    .line 16
    invoke-interface {v1, v0, p0}, Landroidx/preference/c$f;->q(Landroidx/preference/c;Landroidx/preference/PreferenceScreen;)V

    :cond_4
    :goto_1
    return-void
.end method
