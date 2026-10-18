.class public final Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$d;
.super Lrd/o;
.source "GestureIntroModalActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic h:Ln3/r;


# direct methods
.method public constructor <init>(Ln3/r;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$d;->h:Ln3/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$d;->h:Ln3/r;

    invoke-interface {v0}, Ln3/o1;->b0()J

    move-result-wide v0

    const-wide/16 v2, 0x15e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GestureIntroModalActivity$d;->h:Ln3/r;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Ln3/o1;->R(J)V

    .line 2
    :cond_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
