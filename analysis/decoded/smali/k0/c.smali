.class public final Lk0/c;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"


# direct methods
.method public static a(Landroid/view/accessibility/AccessibilityManager;Lk0/d;)Z
    .locals 1

    new-instance v0, Lk0/e;

    invoke-direct {v0, p1}, Lk0/e;-><init>(Lk0/d;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/accessibility/AccessibilityManager;Lk0/d;)Z
    .locals 1

    new-instance v0, Lk0/e;

    invoke-direct {v0, p1}, Lk0/e;-><init>(Lk0/d;)V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    move-result p0

    return p0
.end method
