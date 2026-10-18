.class public final Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$e;
.super Ljava/lang/Object;
.source "GesturesTutorialActivity.kt"

# interfaces
.implements Ln3/o1$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$e;->h:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final U(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$e;->h:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    .line 2
    iget v1, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->Q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 3
    iget-boolean p1, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->T:Z

    .line 4
    invoke-virtual {v0, p1}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->r0(Z)V

    :cond_0
    return-void
.end method
