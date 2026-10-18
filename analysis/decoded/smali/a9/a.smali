.class public final La9/a;
.super Lp8/h;
.source "MessagingCenterFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La9/a$a;
    }
.end annotation


# static fields
.field public static final h0:La9/a$a;


# instance fields
.field public final b0:Ljava/lang/String;

.field public c0:Lq7/l0;

.field public d0:Lq7/i1;

.field public e0:Lq7/g1;

.field public f0:Lb9/c;

.field public g0:Lv8/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, La9/a$a;

    invoke-direct {v0}, La9/a$a;-><init>()V

    sput-object v0, La9/a;->h0:La9/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp8/h;-><init>()V

    const-string v0, "MessagingCenterFragment"

    .line 2
    iput-object v0, p0, La9/a;->b0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final G(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/m;->G(Landroid/content/Context;)V

    .line 2
    instance-of v0, p1, Lv8/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lv8/a;

    iput-object p1, p0, La9/a;->g0:Lv8/a;

    :cond_0
    return-void
.end method

.method public final I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/m;->o()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0050

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lq7/l0;->a(Landroid/view/View;)Lq7/l0;

    move-result-object p1

    .line 4
    iput-object p1, p0, La9/a;->c0:Lq7/l0;

    .line 5
    iget-object p1, p1, Lq7/l0;->a:Landroid/widget/LinearLayout;

    .line 6
    invoke-static {p1}, Lq7/i1;->a(Landroid/view/View;)Lq7/i1;

    move-result-object p1

    iput-object p1, p0, La9/a;->d0:Lq7/i1;

    .line 7
    iget-object p1, p0, La9/a;->c0:Lq7/l0;

    const-string p2, "binding"

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 8
    iget-object p1, p1, Lq7/l0;->a:Landroid/widget/LinearLayout;

    .line 9
    invoke-static {p1}, Lq7/g1;->a(Landroid/view/View;)Lq7/g1;

    move-result-object p1

    iput-object p1, p0, La9/a;->e0:Lq7/g1;

    const-string p1, "null cannot be cast to non-null type com.nike.adapt.ui.model.BigfootMessageType"

    const-string v2, "PARAM_BIGFOOT_MESSAGE_TYPE"

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    invoke-static {p3, p1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lb9/c;

    goto :goto_1

    .line 11
    :cond_0
    iget-object p3, p0, Landroidx/fragment/app/m;->n:Landroid/os/Bundle;

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lb9/c;

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    invoke-static {p3, p1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    :goto_1
    iput-object p3, p0, La9/a;->f0:Lb9/c;

    .line 14
    iget-object p1, p0, La9/a;->d0:Lq7/i1;

    const-string v2, "itemMessagingHeadlineBinding"

    if-eqz p1, :cond_16

    iget-object p1, p1, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Lb9/c;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, La9/a;->d0:Lq7/i1;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lq7/i1;->a:Landroid/widget/TextView;

    iget-object p3, p0, La9/a;->f0:Lb9/c;

    const-string v3, "messageType"

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Lb9/c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object p1, p0, La9/a;->e0:Lq7/g1;

    const-string p3, "itemMessagingCtaBinding"

    if-eqz p1, :cond_13

    iget-object p1, p1, Lq7/g1;->a:Landroid/widget/Button;

    iget-object v4, p0, La9/a;->f0:Lb9/c;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lb9/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, p0, La9/a;->e0:Lq7/g1;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lq7/g1;->a:Landroid/widget/Button;

    new-instance v4, Lo8/f;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lo8/f;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object p1, p0, La9/a;->e0:Lq7/g1;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lq7/g1;->a:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, La9/a;->f0:Lb9/c;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lb9/c;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 20
    iget-object v3, p0, La9/a;->e0:Lq7/g1;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget-object p1, p0, La9/a;->e0:Lq7/g1;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    new-instance v3, Lx8/j0;

    invoke-direct {v3, p0, v5}, Lx8/j0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, La9/a;->e0:Lq7/g1;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_3
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_4
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_5
    :goto_2
    iget-object p1, p0, La9/a;->c0:Lq7/l0;

    if-eqz p1, :cond_e

    .line 26
    iget-object p1, p1, Lq7/l0;->a:Landroid/widget/LinearLayout;

    .line 27
    iget-object v1, p0, La9/a;->d0:Lq7/i1;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lq7/i1;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06029d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object v1, p0, La9/a;->d0:Lq7/i1;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lq7/i1;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object v1, p0, La9/a;->d0:Lq7/i1;

    if-eqz v1, :cond_b

    iget-object v1, v1, Lq7/i1;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v1, p0, La9/a;->e0:Lq7/g1;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lq7/g1;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0602a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object v1, p0, La9/a;->e0:Lq7/g1;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lq7/g1;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08006d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v1, p0, La9/a;->e0:Lq7/g1;

    if-eqz v1, :cond_8

    iget-object v1, v1, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object v1, p0, La9/a;->e0:Lq7/g1;

    if-eqz v1, :cond_7

    iget-object p3, v1, Lq7/g1;->b:Lcom/nike/adapt/ui/view/SecondaryButton;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0801dc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object p1, p0, La9/a;->c0:Lq7/l0;

    if-eqz p1, :cond_6

    .line 35
    iget-object p1, p1, Lq7/l0;->a:Landroid/widget/LinearLayout;

    return-object p1

    .line 36
    :cond_6
    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_7
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_8
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_9
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_a
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_b
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_c
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_d
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_e
    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_f
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_10
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_11
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_12
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_13
    invoke-static {p3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_14
    invoke-static {v3}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_16
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_17
    invoke-static {p2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0
.end method

.method public final R(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, La9/a;->f0:Lb9/c;

    if-eqz v0, :cond_0

    const-string v1, "PARAM_BIGFOOT_MESSAGE_TYPE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_0
    const-string p1, "messageType"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final p0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La9/a;->b0:Ljava/lang/String;

    return-object v0
.end method
