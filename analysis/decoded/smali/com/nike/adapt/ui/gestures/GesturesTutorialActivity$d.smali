.class public final Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;
.super Lrd/o;
.source "GesturesTutorialActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

.field public final synthetic i:Ln3/r;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;Ln3/r;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;->h:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    iput-object p2, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;->i:Ln3/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;->h:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    .line 2
    iget-boolean v1, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->U:Z

    if-nez v1, :cond_1

    .line 3
    iget-boolean v0, v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->V:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;->i:Ln3/r;

    invoke-interface {v0}, Ln3/o1;->b0()J

    move-result-wide v0

    const-wide/16 v2, 0x16da

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;->i:Ln3/r;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Ln3/o1;->R(J)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;->i:Ln3/r;

    invoke-interface {v0}, Ln3/o1;->b0()J

    move-result-wide v0

    const-wide/16 v2, 0x2fda

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;->i:Ln3/r;

    const-wide/16 v1, 0x17d4

    invoke-interface {v0, v1, v2}, Ln3/o1;->R(J)V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity$d;->h:Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;->r0(Z)V

    .line 9
    :cond_2
    :goto_1
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
