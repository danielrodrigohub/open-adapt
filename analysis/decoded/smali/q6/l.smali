.class public final Lq6/l;
.super Landroid/view/View$AccessibilityDelegate;
.source "IndicatorViewController.java"


# instance fields
.field public final synthetic a:Lq6/k;


# direct methods
.method public constructor <init>(Lq6/k;)V
    .locals 0

    iput-object p1, p0, Lq6/l;->a:Lq6/k;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p1, p0, Lq6/l;->a:Lq6/k;

    .line 3
    iget-object p1, p1, Lq6/k;->b:Lcom/google/android/material/textfield/TextInputLayout;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    :cond_0
    return-void
.end method
