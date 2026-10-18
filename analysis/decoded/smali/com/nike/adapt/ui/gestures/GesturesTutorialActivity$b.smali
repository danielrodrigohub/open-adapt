.class public final Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$b;
.super Ljava/lang/Object;
.source "GesturesTutorialActivity.kt"

# interfaces
.implements Lcom/nike/adapt/ui/helper/BottomSheet$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$b;->a:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 0

    const-string p1, "bottomSheet"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$b;->a:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    invoke-static {p1}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->p0(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/Context;)V
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$b;->a:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    invoke-static {p1}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->p0(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 0

    return-void
.end method
