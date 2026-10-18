.class public final Li9/b0$c;
.super Lrd/o;
.source "PutOnShoesOnBoardingFragment.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li9/b0;->onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Li9/b0;


# direct methods
.method public constructor <init>(Li9/b0;)V
    .locals 0

    iput-object p1, p0, Li9/b0$c;->h:Li9/b0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Li9/b0$c;->h:Li9/b0;

    sget-object v0, Li9/b0;->q0:Li9/b0$a;

    .line 4
    invoke-virtual {p1}, Li9/b0;->u0()Lh8/d;

    move-result-object p1

    .line 5
    sget-object v0, Lv7/g;->s:Lv7/g;

    invoke-interface {p1, v0}, Lh8/d;->h(Lv7/g;)V

    .line 6
    iget-object p1, p0, Li9/b0$c;->h:Li9/b0;

    .line 7
    invoke-virtual {p1}, Li9/b0;->u0()Lh8/d;

    move-result-object p1

    .line 8
    sget-object v0, Lv7/h;->i:Lv7/h;

    invoke-interface {p1, v0}, Lh8/d;->i(Lv7/h;)V

    .line 9
    new-instance p1, Lh9/v0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lh9/v0;-><init>(ZILrd/h;)V

    iget-object v0, p0, Li9/b0$c;->h:Li9/b0;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 10
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
