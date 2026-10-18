.class public Lx0/b;
.super Landroidx/preference/b;
.source "ListPreferenceDialogFragmentCompat.java"


# instance fields
.field public A0:[Ljava/lang/CharSequence;

.field public y0:I

.field public z0:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/preference/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final H(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/b;->H(Landroid/os/Bundle;)V

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/preference/b;->s0()Landroidx/preference/DialogPreference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    .line 3
    iget-object v0, p1, Landroidx/preference/ListPreference;->Z:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Landroidx/preference/ListPreference;->a0:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p1, Landroidx/preference/ListPreference;->b0:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->L(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lx0/b;->y0:I

    .line 7
    iget-object v0, p1, Landroidx/preference/ListPreference;->Z:[Ljava/lang/CharSequence;

    .line 8
    iput-object v0, p0, Lx0/b;->z0:[Ljava/lang/CharSequence;

    .line 9
    iget-object p1, p1, Landroidx/preference/ListPreference;->a0:[Ljava/lang/CharSequence;

    .line 10
    iput-object p1, p0, Lx0/b;->A0:[Ljava/lang/CharSequence;

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ListPreference requires an entries array and an entryValues array."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    const-string v1, "ListPreferenceDialogFragment.index"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lx0/b;->y0:I

    const-string v0, "ListPreferenceDialogFragment.entries"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lx0/b;->z0:[Ljava/lang/CharSequence;

    const-string v0, "ListPreferenceDialogFragment.entryValues"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lx0/b;->A0:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method

.method public final R(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/b;->R(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Lx0/b;->y0:I

    const-string v1, "ListPreferenceDialogFragment.index"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lx0/b;->z0:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entries"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lx0/b;->A0:[Ljava/lang/CharSequence;

    const-string v1, "ListPreferenceDialogFragment.entryValues"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final u0(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lx0/b;->y0:I

    if-ltz p1, :cond_0

    .line 2
    iget-object v0, p0, Lx0/b;->A0:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/preference/b;->s0()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->N(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final v0(Landroidx/appcompat/app/d$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lx0/b;->z0:[Ljava/lang/CharSequence;

    iget v1, p0, Lx0/b;->y0:I

    new-instance v2, Lx0/b$a;

    invoke-direct {v2, p0}, Lx0/b$a;-><init>(Lx0/b;)V

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/app/d$a;->f([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0, v0}, Landroidx/appcompat/app/d$a;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    return-void
.end method
