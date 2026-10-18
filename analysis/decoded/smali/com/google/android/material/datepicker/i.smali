.class public final Lcom/google/android/material/datepicker/i;
.super Lj0/a;
.source "MaterialCalendar.java"


# instance fields
.field public final synthetic d:Lcom/google/android/material/datepicker/g;


# direct methods
.method public constructor <init>(Lcom/google/android/material/datepicker/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/i;->d:Lcom/google/android/material/datepicker/g;

    invoke-direct {p0}, Lj0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lk0/f;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 2
    iget-object v1, p2, Lk0/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/datepicker/i;->d:Lcom/google/android/material/datepicker/g;

    .line 5
    iget-object p1, p1, Lcom/google/android/material/datepicker/g;->k0:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/google/android/material/datepicker/i;->d:Lcom/google/android/material/datepicker/g;

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_year_selection:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->z(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/i;->d:Lcom/google/android/material/datepicker/g;

    sget v0, Lcom/google/android/material/R$string;->mtrl_picker_toggle_to_day_selection:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/m;->z(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p2, p1}, Lk0/f;->t(Ljava/lang/CharSequence;)V

    return-void
.end method
