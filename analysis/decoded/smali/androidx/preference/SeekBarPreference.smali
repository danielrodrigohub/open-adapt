.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/SeekBarPreference$c;
    }
.end annotation


# instance fields
.field public T:I

.field public U:I

.field public V:I

.field public W:I

.field public X:Z

.field public Y:Landroid/widget/SeekBar;

.field public Z:Landroid/widget/TextView;

.field public a0:Z

.field public b0:Z

.field public c0:Z

.field public final d0:Landroidx/preference/SeekBarPreference$a;

.field public final e0:Landroidx/preference/SeekBarPreference$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 19
    sget v0, Landroidx/preference/R$attr;->seekBarPreferenceStyle:I

    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 p4, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Landroidx/preference/SeekBarPreference$a;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$a;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->d0:Landroidx/preference/SeekBarPreference$a;

    .line 3
    new-instance v0, Landroidx/preference/SeekBarPreference$b;

    invoke-direct {v0, p0}, Landroidx/preference/SeekBarPreference$b;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->e0:Landroidx/preference/SeekBarPreference$b;

    .line 4
    sget-object v0, Landroidx/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_min:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->U:I

    .line 6
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 7
    iget p3, p0, Landroidx/preference/SeekBarPreference;->U:I

    if-ge p2, p3, :cond_0

    move p2, p3

    .line 8
    :cond_0
    iget p3, p0, Landroidx/preference/SeekBarPreference;->V:I

    if-eq p2, p3, :cond_1

    .line 9
    iput p2, p0, Landroidx/preference/SeekBarPreference;->V:I

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    .line 11
    :cond_1
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 12
    iget p3, p0, Landroidx/preference/SeekBarPreference;->W:I

    if-eq p2, p3, :cond_2

    .line 13
    iget p3, p0, Landroidx/preference/SeekBarPreference;->V:I

    iget v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    sub-int/2addr p3, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->W:I

    .line 14
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    .line 15
    :cond_2
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->a0:Z

    .line 16
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->b0:Z

    .line 17
    sget p2, Landroidx/preference/R$styleable;->SeekBarPreference_updatesContinuously:I

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->c0:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final A(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final B(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/Preference;->B(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$c;

    .line 4
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->B(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Landroidx/preference/SeekBarPreference$c;->h:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    .line 6
    iget v0, p1, Landroidx/preference/SeekBarPreference$c;->i:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    .line 7
    iget p1, p1, Landroidx/preference/SeekBarPreference$c;->j:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->V:I

    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    return-void
.end method

.method public final C()Landroid/os/Parcelable;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/preference/Preference;->P:Z

    .line 2
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 3
    iget-boolean v1, p0, Landroidx/preference/Preference;->x:Z

    if-eqz v1, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$c;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$c;-><init>(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$c;->h:I

    .line 6
    iget v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$c;->i:I

    .line 7
    iget v0, p0, Landroidx/preference/SeekBarPreference;->V:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$c;->j:I

    return-object v1
.end method

.method public final D(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->k(I)I

    move-result p1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->L(IZ)V

    return-void
.end method

.method public final L(IZ)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->U:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->V:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 3
    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    if-eq p1, v0, :cond_4

    .line 4
    iput p1, p0, Landroidx/preference/SeekBarPreference;->T:I

    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->M(I)V

    .line 6
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    not-int v0, p1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->k(I)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Landroidx/preference/Preference;->i:Landroidx/preference/f;

    invoke-virtual {v0}, Landroidx/preference/f;->c()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    iget-object v1, p0, Landroidx/preference/Preference;->r:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->J(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    if-eqz p2, :cond_4

    .line 11
    invoke-virtual {p0}, Landroidx/preference/Preference;->q()V

    :cond_4
    return-void
.end method

.method public final M(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->Z:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final x(Landroidx/preference/g;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->x(Landroidx/preference/g;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->e0:Landroidx/preference/SeekBarPreference$b;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3
    sget v0, Landroidx/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroidx/preference/g;->A(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/SeekBar;

    .line 4
    sget v0, Landroidx/preference/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Landroidx/preference/g;->A(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->Z:Landroid/widget/TextView;

    .line 5
    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->b0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->Z:Landroid/widget/TextView;

    .line 9
    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 10
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->d0:Landroidx/preference/SeekBarPreference$a;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 12
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->V:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->U:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 13
    iget p1, p0, Landroidx/preference/SeekBarPreference;->W:I

    if-eqz p1, :cond_2

    .line 14
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/AbsSeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->W:I

    .line 16
    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->T:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->U:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 17
    iget p1, p0, Landroidx/preference/SeekBarPreference;->T:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->M(I)V

    .line 18
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->Y:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->p()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
