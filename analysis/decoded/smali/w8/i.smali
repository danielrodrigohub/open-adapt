.class public final Lw8/i;
.super Landroid/view/View$AccessibilityDelegate;
.source "GesturesActivity.kt"


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/gestures/GesturesActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/gestures/GesturesActivity;)V
    .locals 0

    iput-object p1, p0, Lw8/i;->a:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p1, p0, Lw8/i;->a:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    .line 3
    iget-boolean p1, p1, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    if-eqz p1, :cond_0

    const p1, 0x7f110033

    .line 4
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f110034

    .line 5
    invoke-static {p1}, Landroidx/lifecycle/o;->r(I)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
