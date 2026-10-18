.class public final Lt9/b;
.super Ljava/lang/Object;
.source "PairResultTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt9/b$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/nike/adapt/adk/model/Battery;

.field public d:Lcom/nike/adapt/adk/model/Battery;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field public h:Lcom/nike/adapt/adk/model/AdaptDeviceColor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lt9/b;->a:I

    .line 3
    iput v0, p0, Lt9/b;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lt9/b;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/b;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lt9/b;->c:Lcom/nike/adapt/adk/model/Battery;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt9/b;->d:Lcom/nike/adapt/adk/model/Battery;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lt9/b;->f:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lt9/b;->e:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final d(Lcom/nike/adapt/adk/DeviceControllerResult;)V
    .locals 5

    const-string v0, "result"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lcom/nike/adapt/adk/GetAutoLaceResult;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/nike/adapt/adk/GetAutoLaceResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAutoLaceResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v4, Lt9/b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAutoLaceResult;->getPercent()I

    move-result v0

    iput v0, p0, Lt9/b;->a:I

    .line 4
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAutoLaceResult;->getPercent()I

    move-result p1

    iput p1, p0, Lt9/b;->b:I

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAutoLaceResult;->getPercent()I

    move-result p1

    iput p1, p0, Lt9/b;->b:I

    goto/16 :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAutoLaceResult;->getPercent()I

    move-result p1

    iput p1, p0, Lt9/b;->a:I

    goto/16 :goto_0

    .line 7
    :cond_3
    instance-of v0, p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    if-eqz v0, :cond_7

    .line 8
    check-cast p1, Lcom/nike/adapt/adk/GetBatteryPercentResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v4, Lt9/b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    goto/16 :goto_0

    .line 9
    :cond_4
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v0

    iput-object v0, p0, Lt9/b;->c:Lcom/nike/adapt/adk/model/Battery;

    .line 10
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->d:Lcom/nike/adapt/adk/model/Battery;

    goto/16 :goto_0

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->d:Lcom/nike/adapt/adk/model/Battery;

    goto/16 :goto_0

    .line 12
    :cond_6
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetBatteryPercentResult;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->c:Lcom/nike/adapt/adk/model/Battery;

    goto/16 :goto_0

    .line 13
    :cond_7
    instance-of v0, p1, Lcom/nike/adapt/adk/GetAnimationResult;

    if-eqz v0, :cond_b

    .line 14
    check-cast p1, Lcom/nike/adapt/adk/GetAnimationResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v4, Lt9/b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_a

    if-eq v0, v2, :cond_9

    if-eq v0, v1, :cond_8

    goto/16 :goto_0

    .line 15
    :cond_8
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lt9/b;->f:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 17
    :cond_9
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->e:Ljava/lang/Boolean;

    goto :goto_0

    .line 18
    :cond_a
    invoke-virtual {p1}, Lcom/nike/adapt/adk/GetAnimationResult;->getAnimation()Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptCurrentAnimation;->isRunning()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->f:Ljava/lang/Boolean;

    goto :goto_0

    .line 19
    :cond_b
    instance-of v0, p1, Lcom/nike/adapt/adk/SetLedResult;

    if-eqz v0, :cond_f

    .line 20
    check-cast p1, Lcom/nike/adapt/adk/SetLedResult;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoe()Lcom/nike/adapt/adk/Shoe;

    move-result-object v0

    sget-object v4, Lt9/b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_e

    if-eq v0, v2, :cond_d

    if-eq v0, v1, :cond_c

    goto :goto_0

    .line 21
    :cond_c
    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object v0

    iput-object v0, p0, Lt9/b;->g:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 22
    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->h:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto :goto_0

    .line 23
    :cond_d
    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->h:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    goto :goto_0

    .line 24
    :cond_e
    invoke-virtual {p1}, Lcom/nike/adapt/adk/SetLedResult;->getShoeLed()Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    move-result-object p1

    iput-object p1, p0, Lt9/b;->g:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    :cond_f
    :goto_0
    return-void
.end method
