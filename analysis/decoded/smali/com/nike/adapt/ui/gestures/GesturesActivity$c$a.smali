.class public final Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;
.super Lld/i;
.source "GesturesActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/gestures/GesturesActivity$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.gestures.GesturesActivity$onCheckedChanged$1$1"
    f = "GesturesActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/gestures/GesturesActivity;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/gestures/GesturesActivity;ZLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/gestures/GesturesActivity;",
            "Z",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->h:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    iput-boolean p2, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->i:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->h:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    iget-boolean v1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->i:Z

    invoke-direct {p1, v0, v1, p2}, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;-><init>(Lcom/nike/adapt/ui/gestures/GesturesActivity;ZLjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->h:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    .line 3
    iget-boolean v0, p1, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    .line 4
    iget-boolean v1, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->i:Z

    if-eq v0, v1, :cond_2

    .line 5
    iput-boolean v1, p1, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->h:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    .line 8
    iget-boolean v0, v0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$DoubleTapUnlace;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;->INSTANCE:Lcom/nike/adapt/adk/model/AdaptGestureConfiguration$Off;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->h:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    .line 12
    iget-object v0, v0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->J:Lcom/nike/adapt/adk/IDeviceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 13
    sget-object v2, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    new-instance v3, Lp8/g0;

    invoke-direct {v3, p1}, Lp8/g0;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 14
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    iget-object v0, p0, Lcom/nike/adapt/ui/gestures/GesturesActivity$c$a;->h:Lcom/nike/adapt/ui/gestures/GesturesActivity;

    .line 15
    iget-boolean v0, v0, Lcom/nike/adapt/ui/gestures/GesturesActivity;->O:Z

    const/4 v2, 0x2

    .line 16
    invoke-static {p1, v0, v1, v2, v1}, Lcom/nike/adapt/analytics/TrackManager;->gestureToggleUpdated$default(Lcom/nike/adapt/analytics/TrackManager;ZLjava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p1, "deviceController"

    .line 17
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_2
    :goto_1
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
