.class public final Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source "SettingsVoiceActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/ui/settings/SettingsVoiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    iput-object p1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final h(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;

    .line 2
    iget-object v0, p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;->u:Landroid/widget/TextView;

    .line 3
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    .line 4
    iget v1, v1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->a:I

    .line 5
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;->v:Landroid/widget/TextView;

    .line 7
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    .line 8
    iget v1, v1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->b:I

    .line 9
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;->w:Landroid/widget/ImageView;

    .line 11
    iget-object v1, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;

    .line 12
    iget v1, v1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$a;->c:I

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object v0, p0, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b;->d:Ljava/util/List;

    invoke-static {v0}, Landroidx/lifecycle/o;->p(Ljava/util/List;)I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 15
    iget-object p1, p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;->x:Landroid/view/View;

    const/16 p2, 0x8

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 7

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00ea

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0492

    .line 4
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_0

    const p2, 0x7f0a0493

    .line 5
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const p2, 0x7f0a0494

    .line 6
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    const p2, 0x7f0a0495

    .line 7
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const p2, 0x7f0a0496

    .line 8
    invoke-static {p1, p2}, Lg7/b;->d(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 9
    new-instance p2, Lq7/s1;

    move-object v2, p1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lq7/s1;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 10
    new-instance p1, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;

    invoke-direct {p1, p2}, Lcom/nike/adapt/ui/settings/SettingsVoiceActivity$b$a;-><init>(Lq7/s1;)V

    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
