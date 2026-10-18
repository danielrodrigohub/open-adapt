.class public abstract Landroidx/preference/DialogPreference;
.super Landroidx/preference/Preference;
.source "DialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/DialogPreference$a;
    }
.end annotation


# instance fields
.field public T:Ljava/lang/CharSequence;

.field public U:Ljava/lang/String;

.field public V:Landroid/graphics/drawable/Drawable;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 18
    sget v0, Landroidx/preference/R$attr;->dialogPreferenceStyle:I

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Lz/i;->a(Landroid/content/Context;II)I

    move-result v0

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object v0, Landroidx/preference/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_dialogTitle:I

    sget p3, Landroidx/preference/R$styleable;->DialogPreference_android_dialogTitle:I

    invoke-static {p1, p2, p3}, Lz/i;->d(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->T:Ljava/lang/CharSequence;

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p0, Landroidx/preference/Preference;->n:Ljava/lang/CharSequence;

    .line 5
    iput-object p2, p0, Landroidx/preference/DialogPreference;->T:Ljava/lang/CharSequence;

    .line 6
    :cond_0
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_dialogMessage:I

    sget p3, Landroidx/preference/R$styleable;->DialogPreference_android_dialogMessage:I

    invoke-static {p1, p2, p3}, Lz/i;->d(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->U:Ljava/lang/String;

    .line 7
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_dialogIcon:I

    sget p3, Landroidx/preference/R$styleable;->DialogPreference_android_dialogIcon:I

    .line 8
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 10
    :cond_1
    iput-object p2, p0, Landroidx/preference/DialogPreference;->V:Landroid/graphics/drawable/Drawable;

    .line 11
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_positiveButtonText:I

    sget p3, Landroidx/preference/R$styleable;->DialogPreference_android_positiveButtonText:I

    invoke-static {p1, p2, p3}, Lz/i;->d(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->W:Ljava/lang/String;

    .line 12
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_negativeButtonText:I

    sget p3, Landroidx/preference/R$styleable;->DialogPreference_android_negativeButtonText:I

    invoke-static {p1, p2, p3}, Lz/i;->d(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/DialogPreference;->X:Ljava/lang/String;

    .line 13
    sget p2, Landroidx/preference/R$styleable;->DialogPreference_dialogLayout:I

    sget p3, Landroidx/preference/R$styleable;->DialogPreference_android_dialogLayout:I

    .line 14
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 16
    iput p2, p0, Landroidx/preference/DialogPreference;->Y:I

    .line 17
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public y()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->i:Landroidx/preference/f;

    .line 2
    iget-object v0, v0, Landroidx/preference/f;->j:Landroidx/preference/f$a;

    if-eqz v0, :cond_9

    .line 3
    check-cast v0, Landroidx/preference/c;

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    if-eqz v3, :cond_1

    .line 4
    instance-of v4, v3, Landroidx/preference/c$d;

    if-eqz v4, :cond_0

    .line 5
    move-object v2, v3

    check-cast v2, Landroidx/preference/c$d;

    .line 6
    invoke-interface {v2}, Landroidx/preference/c$d;->a()Z

    move-result v2

    .line 7
    :cond_0
    iget-object v3, v3, Landroidx/fragment/app/m;->C:Landroidx/fragment/app/m;

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroidx/preference/c$d;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/m;->l()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroidx/preference/c$d;

    .line 10
    invoke-interface {v2}, Landroidx/preference/c$d;->a()Z

    move-result v2

    :cond_2
    if-nez v2, :cond_3

    .line 11
    invoke-virtual {v0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v3

    instance-of v3, v3, Landroidx/preference/c$d;

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v2

    check-cast v2, Landroidx/preference/c$d;

    .line 13
    invoke-interface {v2}, Landroidx/preference/c$d;->a()Z

    move-result v2

    :cond_3
    if-eqz v2, :cond_4

    goto/16 :goto_2

    .line 14
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/m;->r()Landroidx/fragment/app/x;

    move-result-object v2

    const-string v3, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v2, v3}, Landroidx/fragment/app/x;->F(Ljava/lang/String;)Landroidx/fragment/app/m;

    move-result-object v2

    if-eqz v2, :cond_5

    goto/16 :goto_2

    .line 15
    :cond_5
    instance-of v2, p0, Landroidx/preference/EditTextPreference;

    const-string v4, "key"

    const/4 v5, 0x1

    if-eqz v2, :cond_6

    .line 16
    iget-object v2, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    .line 17
    new-instance v6, Lx0/a;

    invoke-direct {v6}, Lx0/a;-><init>()V

    .line 18
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 19
    invoke-virtual {v7, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v6, v7}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    goto :goto_1

    .line 21
    :cond_6
    instance-of v2, p0, Landroidx/preference/ListPreference;

    if-eqz v2, :cond_7

    .line 22
    iget-object v2, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    .line 23
    new-instance v6, Lx0/b;

    invoke-direct {v6}, Lx0/b;-><init>()V

    .line 24
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 25
    invoke-virtual {v7, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v6, v7}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    goto :goto_1

    .line 27
    :cond_7
    instance-of v2, p0, Landroidx/preference/MultiSelectListPreference;

    if-eqz v2, :cond_8

    .line 28
    iget-object v2, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    .line 29
    new-instance v6, Lx0/c;

    invoke-direct {v6}, Lx0/c;-><init>()V

    .line 30
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 31
    invoke-virtual {v7, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6, v7}, Landroidx/fragment/app/m;->j0(Landroid/os/Bundle;)V

    .line 33
    :goto_1
    invoke-virtual {v6, v0}, Landroidx/fragment/app/m;->n0(Landroidx/fragment/app/m;)V

    .line 34
    invoke-virtual {v0}, Landroidx/fragment/app/m;->r()Landroidx/fragment/app/x;

    move-result-object v0

    .line 35
    iput-boolean v1, v6, Landroidx/fragment/app/l;->n0:Z

    .line 36
    iput-boolean v5, v6, Landroidx/fragment/app/l;->o0:Z

    .line 37
    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, v0}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/x;)V

    .line 38
    invoke-virtual {v2, v1, v6, v3, v5}, Landroidx/fragment/app/a;->e(ILandroidx/fragment/app/m;Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v2}, Landroidx/fragment/app/a;->i()I

    goto :goto_2

    .line 40
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot display dialog for an unknown Preference type: "

    .line 41
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_2
    return-void
.end method
