.class public final Lx8/b;
.super Lj0/a;
.source "AccessibilityHelper.kt"


# instance fields
.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lx8/b;->d:Landroid/view/View;

    invoke-direct {p0}, Lj0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;Lk0/f;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lx8/b;->d:Landroid/view/View;

    invoke-virtual {p2, v0}, Lk0/f;->A(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lj0/a;->a:Landroid/view/View$AccessibilityDelegate;

    .line 3
    iget-object p2, p2, Lk0/f;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method
