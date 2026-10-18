.class public final Lcom/nike/adapt/PeripheralConnectionManager;
.super Ljava/lang/Object;
.source "PeripheralConnectionManager.kt"

# interfaces
.implements Landroidx/lifecycle/b;
.implements Lcom/nike/adapt/adk/GlobalDeviceRequests;


# static fields
.field public static final h:Lcom/nike/adapt/PeripheralConnectionManager;

.field public static i:Lea/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/PeripheralConnectionManager;

    invoke-direct {v0}, Lcom/nike/adapt/PeripheralConnectionManager;-><init>()V

    sput-object v0, Lcom/nike/adapt/PeripheralConnectionManager;->h:Lcom/nike/adapt/PeripheralConnectionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lea/m;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
    .locals 1

    .line 1
    new-instance v0, Lv9/l;

    invoke-direct {v0, p1}, Lv9/l;-><init>(Lea/m;)V

    .line 2
    invoke-virtual {v0}, Lv9/l;->c()Lw9/d;

    move-result-object p1

    invoke-interface {p1}, Lw9/d;->t()Lfa/d;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lfa/d;->k:Lfa/i;

    .line 4
    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lfa/i;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage;

    move-result-object p1

    return-object p1
.end method

.method public final onStart(Landroidx/lifecycle/q;)V
    .locals 4

    .line 1
    sget-object p1, Lcom/nike/adapt/PeripheralConnectionManager;->i:Lea/m;

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/nike/adapt/PeripheralConnectionManager;->h:Lcom/nike/adapt/PeripheralConnectionManager;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/PeripheralConnectionManager;->b(Lea/m;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage;

    move-result-object v0

    instance-of v0, v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    const-class v1, Lv9/c2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shoe"

    .line 4
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v2, Lo7/x;->a:Lo7/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lv9/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1}, Lv9/l;-><init>(Lea/m;)V

    new-instance p1, Lv9/c2;

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2, v1}, Lv9/c2;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    :cond_0
    return-void
.end method

.method public final onStop(Landroidx/lifecycle/q;)V
    .locals 4

    sget-boolean v0, Lcom/openadapt/MotionService;->active:Z
    if-eqz v0, :openadapt_normal_stop
    return-void
    :openadapt_normal_stop

    .line 1
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    sget-object v1, Lv9/e;->i:Lv9/e;

    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownConnectionState(Lv9/e;)V

    .line 2
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownConnectionState(Lv9/e;)V

    .line 3
    sget-object p1, Lcom/nike/adapt/PeripheralConnectionManager;->i:Lea/m;

    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Ls9/g;->a:Ls9/g;

    sget-object v0, Lcom/nike/adapt/PeripheralConnectionManager;->h:Lcom/nike/adapt/PeripheralConnectionManager;

    invoke-virtual {v0, p1}, Lcom/nike/adapt/PeripheralConnectionManager;->b(Lea/m;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$InProgress;

    if-nez v1, :cond_0

    .line 6
    instance-of v1, v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$FetchingData;

    if-nez v1, :cond_0

    .line 7
    instance-of v0, v0, Lcom/nike/adapt/adk/model/AdaptFirmwareStage$Reconnecting;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    const-class v1, Lv9/o2;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shoe"

    .line 9
    invoke-static {v0, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v2, Lo7/x;->a:Lo7/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lv9/l;

    const/4 v1, 0x0

    invoke-direct {v0, p1}, Lv9/l;-><init>(Lea/m;)V

    sget-object p1, Lv9/o2;->b:Lv9/o2;

    invoke-static {v0, p1}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    .line 12
    sput-object v1, Lcom/nike/adapt/PeripheralConnectionManager;->i:Lea/m;

    :cond_1
    return-void
.end method

.method public final stopAnimation()V
    .locals 4

    .line 1
    sget-object v0, Lcom/nike/adapt/PeripheralConnectionManager;->i:Lea/m;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lv9/l;

    invoke-direct {v1, v0}, Lv9/l;-><init>(Lea/m;)V

    new-instance v0, Lv9/d1;

    sget-object v2, Lcom/nike/adapt/PeripheralConnectionManager$a;->h:Lcom/nike/adapt/PeripheralConnectionManager$a;

    sget-object v3, Lcom/nike/adapt/PeripheralConnectionManager$b;->h:Lcom/nike/adapt/PeripheralConnectionManager$b;

    invoke-direct {v0, v2, v3}, Lv9/d1;-><init>(Lqd/l;Lqd/l;)V

    invoke-static {v1, v0}, Landroidx/activity/k;->e(Lv9/l;Lv9/k;)V

    :cond_0
    return-void
.end method
