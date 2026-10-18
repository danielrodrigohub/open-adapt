.class public Landroidx/preference/DropDownPreference;
.super Landroidx/preference/ListPreference;
.source "DropDownPreference.java"


# instance fields
.field public final e0:Landroid/widget/ArrayAdapter;

.field public f0:Landroid/widget/Spinner;

.field public final g0:Landroidx/preference/DropDownPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    sget v0, Landroidx/preference/R$attr;->dropdownPreferenceStyle:I

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 p4, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    new-instance p2, Landroidx/preference/DropDownPreference$a;

    invoke-direct {p2, p0}, Landroidx/preference/DropDownPreference$a;-><init>(Landroidx/preference/DropDownPreference;)V

    iput-object p2, p0, Landroidx/preference/DropDownPreference;->g0:Landroidx/preference/DropDownPreference$a;

    .line 5
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090009

    invoke-direct {p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 6
    iput-object p2, p0, Landroidx/preference/DropDownPreference;->e0:Landroid/widget/ArrayAdapter;

    .line 7
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 8
    iget-object p1, p0, Landroidx/preference/ListPreference;->Z:[Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    .line 9
    array-length p2, p1

    :goto_0
    if-ge p4, p2, :cond_0

    aget-object p3, p1, p4

    .line 10
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->e0:Landroid/widget/ArrayAdapter;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final q()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->q()V

    .line 2
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->e0:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final x(Landroidx/preference/g;)V
    .locals 6

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->a:Landroid/view/View;

    sget v1, Landroidx/preference/R$id;->spinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Landroidx/preference/DropDownPreference;->f0:Landroid/widget/Spinner;

    .line 2
    iget-object v1, p0, Landroidx/preference/DropDownPreference;->e0:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->f0:Landroid/widget/Spinner;

    iget-object v1, p0, Landroidx/preference/DropDownPreference;->g0:Landroidx/preference/DropDownPreference$a;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 4
    iget-object v0, p0, Landroidx/preference/DropDownPreference;->f0:Landroid/widget/Spinner;

    .line 5
    iget-object v1, p0, Landroidx/preference/ListPreference;->b0:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Landroidx/preference/ListPreference;->a0:[Ljava/lang/CharSequence;

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 7
    array-length v4, v2

    add-int/2addr v4, v3

    :goto_0
    if-ltz v4, :cond_1

    .line 8
    aget-object v5, v2, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 10
    invoke-super {p0, p1}, Landroidx/preference/Preference;->x(Landroidx/preference/g;)V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Landroidx/preference/DropDownPreference;->f0:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method
