.class public final Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c;
.super Ljava/lang/Object;
.source "ModeSelectionActivity.kt"

# interfaces
.implements Lcom/nike/adapt/ui/helper/BottomSheet$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->q0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/modes/ModeSelectionActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c;->a:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

    iput-boolean p2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 6

    const-string p1, "bottomSheet"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string p2, "Start Find Your Fit - Modes"

    invoke-virtual {p1, p2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c;->a:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

    .line 3
    iget-object p1, p1, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->I:Lq7/q;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p1, Lq7/q;->f:Lcom/nike/adapt/ui/helper/BottomSheet;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/helper/BottomSheet;->t()V

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c;->a:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

    .line 6
    iget-object v0, p1, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 7
    new-instance v3, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;

    iget-boolean v4, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c;->b:Z

    invoke-direct {v3, p1, v4, p2}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;-><init>(Lcom/nike/adapt/ui/modes/ModeSelectionActivity;ZLjd/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_0
    const-string p1, "binding"

    .line 8
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p2
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public final d(Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 0

    return-void
.end method
