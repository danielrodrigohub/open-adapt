.class final Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;
.super Lld/i;
.source "DeviceController.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/DeviceController;->checkForFirmwareUpdates()V
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
    c = "com.nike.adapt.adk.DeviceController$checkForFirmwareUpdates$1"
    f = "DeviceController.kt"
    l = {
        0x18b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/nike/adapt/adk/DeviceController;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/DeviceController;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/adk/DeviceController;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 1
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

    new-instance p1, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;

    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-direct {p1, v0, p2}, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;-><init>(Lcom/nike/adapt/adk/DeviceController;Ljd/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Ljd/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-static {p1}, Lcom/nike/adapt/adk/DeviceController;->access$isFirmwareCallInProgress$p(Lcom/nike/adapt/adk/DeviceController;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-static {p1, v2}, Lcom/nike/adapt/adk/DeviceController;->access$setFirmwareCallInProgress$p(Lcom/nike/adapt/adk/DeviceController;Z)V

    .line 7
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-static {p1}, Lcom/nike/adapt/adk/DeviceController;->access$getRequester$p(Lcom/nike/adapt/adk/DeviceController;)Lv9/l;

    move-result-object p1

    if-eqz p1, :cond_4

    iput v2, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->label:I

    .line 8
    invoke-virtual {p1}, Lv9/l;->c()Lw9/d;

    move-result-object p1

    invoke-interface {p1, p0}, Lw9/d;->u(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_0
    check-cast p1, Lfa/a;

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lfa/a;)Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    move-result-object p1

    goto :goto_1

    :cond_4
    move-object p1, v3

    :goto_1
    if-nez p1, :cond_5

    .line 10
    new-instance p1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$ErrorOccurred;

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    const-string v1, "null"

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;-><init>(Ljava/lang/String;)V

    const-string v1, "Null returned"

    invoke-direct {p1, v0, v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$ErrorOccurred;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    .line 12
    new-instance v1, Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    .line 13
    iget-object v2, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-static {v2}, Lcom/nike/adapt/adk/DeviceController;->access$getControllerEventUUID$p(Lcom/nike/adapt/adk/DeviceController;)Li8/d;

    move-result-object v2

    .line 14
    new-instance v3, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;

    invoke-direct {v3, p1, p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;-><init>(Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;)V

    .line 15
    invoke-direct {v1, v2, v3}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;-><init>(Li8/d;Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;)V

    .line 16
    invoke-static {v0, v1}, Lcom/nike/adapt/adk/DeviceController;->access$publish(Lcom/nike/adapt/adk/DeviceController;Li8/b;)V

    .line 17
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->getLeftStatus()Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;->getRightStatus()Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;

    move-result-object v1

    .line 20
    sget-object v4, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v5

    invoke-interface {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setAdaptFirmwareVersion(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)V

    .line 21
    invoke-virtual {v4}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v5

    invoke-interface {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setAdaptFirmwareVersion(Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;)V

    .line 22
    instance-of v5, v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    if-eqz v5, :cond_6

    move-object v6, v0

    check-cast v6, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    goto :goto_2

    :cond_6
    move-object v6, v3

    :goto_2
    const/4 v7, 0x0

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getReadyForUpdate()Z

    move-result v6

    goto :goto_3

    :cond_7
    move v6, v7

    .line 23
    :goto_3
    instance-of v8, v1, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    if-eqz v8, :cond_8

    move-object v9, v1

    check-cast v9, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    goto :goto_4

    :cond_8
    move-object v9, v3

    :goto_4
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getReadyForUpdate()Z

    move-result v9

    goto :goto_5

    :cond_9
    move v9, v7

    :goto_5
    if-nez v6, :cond_a

    if-eqz v9, :cond_b

    .line 24
    :cond_a
    sget-object v6, Ls9/g;->a:Ls9/g;

    invoke-virtual {v6}, Ls9/g;->e()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_6

    :cond_b
    move v2, v7

    .line 25
    :goto_6
    invoke-virtual {v4, v2}, Lcom/nike/adapt/adk/InMemoryCache;->setHasShoeUpdates(Z)V

    if-eqz v5, :cond_c

    .line 26
    move-object v2, v0

    check-cast v2, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    goto :goto_7

    :cond_c
    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getUpdatedVersion()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    :cond_d
    invoke-interface {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v2

    :cond_e
    if-eqz v8, :cond_f

    .line 27
    move-object v3, v1

    check-cast v3, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;

    :cond_f
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus$UpdateAvailable;->getUpdatedVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    :cond_10
    invoke-interface {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 28
    :cond_11
    sget-object v5, Ls9/g;->a:Ls9/g;

    .line 29
    invoke-virtual {v5, v3, v2}, Ls9/g;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    if-nez v3, :cond_12

    goto :goto_8

    :cond_12
    move-object v2, v3

    goto :goto_9

    :cond_13
    if-nez v2, :cond_14

    :goto_8
    const-string v2, ""

    .line 30
    :cond_14
    :goto_9
    invoke-virtual {v4, v2}, Lcom/nike/adapt/adk/InMemoryCache;->setUpdateToFirmwareVersion(Ljava/lang/String;)V

    .line 31
    invoke-interface {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-interface {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareStatus;->getCurrentVersion()Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptFirmwareVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {v5, v0, v1}, Ls9/g;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/nike/adapt/adk/InMemoryCache;->setLowestFirmwareVersion(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    new-instance v1, Lcom/nike/adapt/adk/GetFirmwareVersionResult;

    iget-object v2, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-static {v2}, Lcom/nike/adapt/adk/DeviceController;->access$getControllerEventUUID$p(Lcom/nike/adapt/adk/DeviceController;)Li8/d;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/nike/adapt/adk/GetFirmwareVersionResult;-><init>(Li8/d;Lcom/nike/adapt/adk/model/AdaptFirmwareCheckStatuses;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/adk/DeviceController;->access$publish(Lcom/nike/adapt/adk/DeviceController;Li8/b;)V

    .line 35
    iget-object p1, p0, Lcom/nike/adapt/adk/DeviceController$checkForFirmwareUpdates$1;->this$0:Lcom/nike/adapt/adk/DeviceController;

    invoke-static {p1, v7}, Lcom/nike/adapt/adk/DeviceController;->access$setFirmwareCallInProgress$p(Lcom/nike/adapt/adk/DeviceController;Z)V

    .line 36
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
