.class public final Ls9/o;
.super Ljava/lang/Object;
.source "PairingUtil.kt"


# static fields
.field public static final a:Ls9/o;

.field public static final b:Lh8/e;

.field public static final c:Lh8/c;

.field public static d:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls9/o;

    invoke-direct {v0}, Ls9/o;-><init>()V

    sput-object v0, Ls9/o;->a:Ls9/o;

    .line 1
    sget-object v0, Lh8/e;->b:Lh8/e;

    .line 2
    sput-object v0, Ls9/o;->b:Lh8/e;

    .line 3
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 4
    sput-object v0, Ls9/o;->c:Lh8/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4

    const-string v0, "pairedState"

    invoke-static {p1, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const/4 v0, 0x1

    const v1, 0x7f110172

    const v2, 0x7f110178

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {v1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x1000000

    .line 3
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    invoke-static {p2, v0}, Lj0/a0;->q(Landroid/view/View;Z)V

    const p2, 0x7f110274

    .line 5
    invoke-static {p2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {p2}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
