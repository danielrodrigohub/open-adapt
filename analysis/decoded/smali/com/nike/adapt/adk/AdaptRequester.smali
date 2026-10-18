.class final Lcom/nike/adapt/adk/AdaptRequester;
.super Ljava/lang/Object;
.source "AdaptRequester.kt"

# interfaces
.implements Landroidx/lifecycle/b;
.implements Lcom/nike/adapt/adk/IAdaptRequester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/AdaptRequester$Companion;,
        Lcom/nike/adapt/adk/AdaptRequester$WhenMappings;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nike/adapt/adk/AdaptRequester$Companion;


# instance fields
.field private final adaptIdentifier:Lv9/a;

.field private final adaptPreferenceHelper$delegate:Lfd/d;

.field private final isReady:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field private final leftDeviceCacheADK:Lcom/nike/adapt/adk/IDeviceCacheADK;

.field private final lifecycle:Landroidx/lifecycle/i;

.field private myDevice:Lea/m;

.field private final noDevices:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field private pairId:Ljava/lang/String;

.field private final pairListener:Lv9/i;

.field private final permissionsRequired:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "[",
            "Ljava/lang/String;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field private requester:Lv9/l;

.field private final requesterEventUUID:Li8/d;

.field private final rightDeviceCacheADK:Lcom/nike/adapt/adk/IDeviceCacheADK;

.field private final uiScope:Lcom/nike/adapt/coroutine/MainCoroutineScope;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nike/adapt/adk/AdaptRequester$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/AdaptRequester$Companion;-><init>(Lrd/h;)V

    sput-object v0, Lcom/nike/adapt/adk/AdaptRequester;->Companion:Lcom/nike/adapt/adk/AdaptRequester$Companion;

    return-void
.end method

.method public constructor <init>(Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li8/d;",
            "Landroidx/lifecycle/i;",
            "Ljava/lang/String;",
            "Lqd/a<",
            "Lfd/o;",
            ">;",
            "Lqd/a<",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-[",
            "Ljava/lang/String;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "eventUUID"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairId"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isReady"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noDevices"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionsRequired"

    invoke-static {p6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/nike/adapt/adk/AdaptRequester;->lifecycle:Landroidx/lifecycle/i;

    .line 3
    iput-object p3, p0, Lcom/nike/adapt/adk/AdaptRequester;->pairId:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/nike/adapt/adk/AdaptRequester;->isReady:Lqd/a;

    .line 5
    iput-object p5, p0, Lcom/nike/adapt/adk/AdaptRequester;->noDevices:Lqd/a;

    .line 6
    iput-object p6, p0, Lcom/nike/adapt/adk/AdaptRequester;->permissionsRequired:Lqd/l;

    .line 7
    new-instance p3, Lv9/a;

    .line 8
    iget-object p4, p1, Li8/d;->i:Ljava/util/UUID;

    .line 9
    invoke-direct {p3, p4}, Lv9/a;-><init>(Ljava/util/UUID;)V

    iput-object p3, p0, Lcom/nike/adapt/adk/AdaptRequester;->adaptIdentifier:Lv9/a;

    .line 10
    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester;->requesterEventUUID:Li8/d;

    .line 11
    new-instance p1, Lcom/nike/adapt/coroutine/MainCoroutineScope;

    invoke-direct {p1}, Lcom/nike/adapt/coroutine/MainCoroutineScope;-><init>()V

    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester;->uiScope:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p2, p0}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/p;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    invoke-virtual {p2, p1}, Landroidx/lifecycle/i;->a(Landroidx/lifecycle/p;)V

    :cond_1
    const/4 p1, 0x3

    .line 14
    sget-object p2, Lcom/nike/adapt/adk/AdaptRequester$adaptPreferenceHelper$2;->INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$adaptPreferenceHelper$2;

    invoke-static {p1, p2}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester;->adaptPreferenceHelper$delegate:Lfd/d;

    .line 15
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p2

    iput-object p2, p0, Lcom/nike/adapt/adk/AdaptRequester;->rightDeviceCacheADK:Lcom/nike/adapt/adk/IDeviceCacheADK;

    .line 16
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester;->leftDeviceCacheADK:Lcom/nike/adapt/adk/IDeviceCacheADK;

    const/4 p1, 0x1

    .line 17
    new-instance p2, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1;

    invoke-direct {p2, p0}, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1;-><init>(Lcom/nike/adapt/adk/AdaptRequester;)V

    .line 18
    new-instance p3, Lv9/i;

    invoke-direct {p3, p1}, Lv9/i;-><init>(Z)V

    invoke-interface {p2, p3}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iput-object p3, p0, Lcom/nike/adapt/adk/AdaptRequester;->pairListener:Lv9/i;

    return-void
.end method

.method public synthetic constructor <init>(Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;ILrd/h;)V
    .locals 7

    and-int/lit8 p7, p7, 0x4

    if-eqz p7, :cond_0

    const-string p3, ""

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/nike/adapt/adk/AdaptRequester;-><init>(Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)V

    return-void
.end method

.method public static final synthetic access$canExecuteOnRequester(Lcom/nike/adapt/adk/AdaptRequester;)Z
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->canExecuteOnRequester()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$connectOrReportPermissionMissing(Lcom/nike/adapt/adk/AdaptRequester;Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/nike/adapt/adk/AdaptRequester;->connectOrReportPermissionMissing(Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;)V

    return-void
.end method

.method public static final synthetic access$connectTo(Lcom/nike/adapt/adk/AdaptRequester;Lcom/nike/adapt/adk/Shoe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester;->connectTo(Lcom/nike/adapt/adk/Shoe;)V

    return-void
.end method

.method public static final synthetic access$getLeftDeviceCacheADK$p(Lcom/nike/adapt/adk/AdaptRequester;)Lcom/nike/adapt/adk/IDeviceCacheADK;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/adk/AdaptRequester;->leftDeviceCacheADK:Lcom/nike/adapt/adk/IDeviceCacheADK;

    return-object p0
.end method

.method public static final synthetic access$getLifecycle$p(Lcom/nike/adapt/adk/AdaptRequester;)Landroidx/lifecycle/i;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/adk/AdaptRequester;->lifecycle:Landroidx/lifecycle/i;

    return-object p0
.end method

.method public static final synthetic access$getMyDevice$p(Lcom/nike/adapt/adk/AdaptRequester;)Lea/m;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    return-object p0
.end method

.method public static final synthetic access$getRequester$p(Lcom/nike/adapt/adk/AdaptRequester;)Lv9/l;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    return-object p0
.end method

.method public static final synthetic access$getRequesterEventUUID$p(Lcom/nike/adapt/adk/AdaptRequester;)Li8/d;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requesterEventUUID:Li8/d;

    return-object p0
.end method

.method public static final synthetic access$getRightDeviceCacheADK$p(Lcom/nike/adapt/adk/AdaptRequester;)Lcom/nike/adapt/adk/IDeviceCacheADK;
    .locals 0

    iget-object p0, p0, Lcom/nike/adapt/adk/AdaptRequester;->rightDeviceCacheADK:Lcom/nike/adapt/adk/IDeviceCacheADK;

    return-object p0
.end method

.method public static final synthetic access$initialiseAdaptKitRequester(Lcom/nike/adapt/adk/AdaptRequester;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester;->initialiseAdaptKitRequester(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$postResults(Lcom/nike/adapt/adk/AdaptRequester;Li8/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester;->postResults(Li8/b;)V

    return-void
.end method

.method private final canExecuteOnRequester()Z
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final connectOrReportPermissionMissing(Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/l;",
            "Lcom/nike/adapt/adk/Shoe;",
            "Lqd/l<",
            "-",
            "Lv9/h;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Laa/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lv9/d2;

    .line 3
    new-instance v1, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$request$1;

    invoke-direct {v1, p0}, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$request$1;-><init>(Lcom/nike/adapt/adk/AdaptRequester;)V

    .line 4
    invoke-direct {v0, p3, v1}, Lv9/d2;-><init>(Lqd/l;Lqd/l;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lv9/c2;

    invoke-direct {v0, p3}, Lv9/c2;-><init>(Lqd/l;)V

    .line 6
    :goto_0
    sget-object p3, Lcom/nike/adapt/adk/AdaptRequester$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget-object p2, Lw9/u1;->l:Lw9/u1;

    invoke-static {p1, p2, v0}, Landroidx/activity/k;->h(Lv9/l;Lw9/u1;Lv9/k;)V

    goto :goto_1

    .line 8
    :cond_2
    sget-object p2, Lw9/u1;->k:Lw9/u1;

    invoke-static {p1, p2, v0}, Landroidx/activity/k;->h(Lv9/l;Lw9/u1;Lv9/k;)V

    goto :goto_1

    .line 9
    :cond_3
    sget-object p2, Lw9/u1;->j:Lw9/u1;

    invoke-static {p1, p2, v0}, Landroidx/activity/k;->h(Lv9/l;Lw9/u1;Lv9/k;)V

    :goto_1
    return-void
.end method

.method public static synthetic connectOrReportPermissionMissing$default(Lcom/nike/adapt/adk/AdaptRequester;Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget-object p3, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$1;->INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$1;

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/nike/adapt/adk/AdaptRequester;->connectOrReportPermissionMissing(Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;)V

    return-void
.end method

.method private final connectTo(Lcom/nike/adapt/adk/Shoe;)V
    .locals 7

    .line 1
    const-class v0, Lv9/c2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "shoe"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lo7/x;->a:Lo7/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->canExecuteOnRequester()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/nike/adapt/adk/AdaptRequester;->connectOrReportPermissionMissing$default(Lcom/nike/adapt/adk/AdaptRequester;Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "requester"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester;->noDevices:Lqd/a;

    invoke-interface {p1}, Lqd/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private final getAdaptPreferenceHelper()Lh8/a;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->adaptPreferenceHelper$delegate:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method

.method private final initialiseAdaptKitRequester(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lo7/x;->a:Lo7/x;

    .line 2
    sget-object v6, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$1;->INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$1;

    const-string v3, " "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1e

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lgd/n;->d0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lqd/l;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Paired Devices: "

    .line 3
    invoke-static {v3, v2, v1}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    .line 4
    iget-object v1, v0, Lcom/nike/adapt/adk/AdaptRequester;->pairId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/nike/adapt/adk/AdaptRequester;->onManageDeepLinkConnection(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/nike/adapt/adk/AdaptRequester;->findOrSetDefaultDevice(Ljava/util/List;)Lea/m;

    move-result-object v1

    iput-object v1, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    const/4 v4, 0x0

    if-nez v1, :cond_5

    .line 6
    sget-object v1, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-static {v1, v4, v2, v4}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lea/m;

    .line 8
    iget-object v6, v6, Lea/m;->u:Ljava/lang/String;

    .line 9
    invoke-static {v6, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 10
    :goto_1
    move-object v6, v5

    check-cast v6, Lea/m;

    .line 11
    iput-object v6, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    if-eqz v6, :cond_4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1ffb

    .line 12
    invoke-static/range {v6 .. v17}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    iput-object v1, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    .line 13
    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/AdaptRequester;->updatePair(Lea/m;)V

    .line 14
    :cond_5
    iget-object v1, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    if-eqz v1, :cond_6

    .line 15
    iget-object v1, v1, Lea/m;->n:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 16
    sget-object v2, Ls9/p;->a:Ls9/p;

    invoke-virtual {v2, v1}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v1

    .line 17
    invoke-direct/range {p0 .. p0}, Lcom/nike/adapt/adk/AdaptRequester;->getAdaptPreferenceHelper()Lh8/a;

    move-result-object v2

    invoke-interface {v2, v1}, Lh8/a;->setShoeType(Ls9/r;)V

    .line 18
    invoke-direct/range {p0 .. p0}, Lcom/nike/adapt/adk/AdaptRequester;->setFirmwareUpgradeTechnique()V

    .line 19
    :cond_6
    iget-object v1, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    if-eqz v1, :cond_7

    .line 20
    sget-object v2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v5

    .line 21
    iget-object v6, v1, Lea/m;->k:Lea/b;

    .line 22
    iget v6, v6, Lea/b;->m:I

    .line 23
    invoke-interface {v5, v6}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 24
    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    .line 25
    iget-object v1, v1, Lea/m;->l:Lea/b;

    .line 26
    iget v1, v1, Lea/b;->m:I

    .line 27
    invoke-interface {v2, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 28
    :cond_7
    iget-object v1, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    if-eqz v1, :cond_e

    .line 29
    sget-object v2, Lo7/x;->a:Lo7/x;

    .line 30
    iget-object v5, v1, Lea/m;->i:Ljava/lang/String;

    .line 31
    iget-object v6, v1, Lea/m;->u:Ljava/lang/String;

    .line 32
    iget-object v7, v1, Lea/m;->k:Lea/b;

    .line 33
    iget-object v7, v7, Lea/b;->j:Ljava/lang/String;

    .line 34
    iget-object v8, v1, Lea/m;->l:Lea/b;

    .line 35
    iget-object v8, v8, Lea/b;->j:Ljava/lang/String;

    const-string v9, "Current Device : name = "

    const-string v10, "\tpairId = "

    const-string v11, "\tleftDevice = "

    .line 36
    invoke-static {v9, v5, v10, v6, v11}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 37
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\trightDevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lo7/x;->a(Ljava/lang/String;)V

    .line 38
    new-instance v2, Lcom/nike/adapt/adk/DeviceFoundAndReadyToConnect;

    .line 39
    iget-object v5, v0, Lcom/nike/adapt/adk/AdaptRequester;->requesterEventUUID:Li8/d;

    .line 40
    sget-object v6, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    .line 41
    iget-object v7, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    const-string v8, "null cannot be cast to non-null type com.nike.android.adaptkit.model.device.AdaptKitPairedDevices"

    invoke-static {v7, v8}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {v2, v5, v6, v7}, Lcom/nike/adapt/adk/DeviceFoundAndReadyToConnect;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V

    .line 43
    invoke-direct {v0, v2}, Lcom/nike/adapt/adk/AdaptRequester;->postResults(Li8/b;)V

    .line 44
    sget-object v2, Lcom/nike/adapt/PeripheralConnectionManager;->h:Lcom/nike/adapt/PeripheralConnectionManager;

    iget-object v5, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sput-object v5, Lcom/nike/adapt/PeripheralConnectionManager;->i:Lea/m;

    .line 46
    new-instance v2, Lv9/l;

    iget-object v5, v0, Lcom/nike/adapt/adk/AdaptRequester;->adaptIdentifier:Lv9/a;

    invoke-direct {v2, v1, v5}, Lv9/l;-><init>(Lea/m;Lv9/a;)V

    .line 47
    iget-object v5, v0, Lcom/nike/adapt/adk/AdaptRequester;->isReady:Lqd/a;

    invoke-interface {v5}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 48
    iput-object v2, v0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    .line 49
    invoke-direct/range {p0 .. p0}, Lcom/nike/adapt/adk/AdaptRequester;->canExecuteOnRequester()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 50
    iget-object v2, v0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    const-string v5, "requester"

    if-eqz v2, :cond_c

    iget-object v6, v0, Lcom/nike/adapt/adk/AdaptRequester;->pairListener:Lv9/i;

    invoke-virtual {v2, v6}, Lv9/l;->f(Lv9/i;)V

    .line 51
    iget-object v2, v0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v2, :cond_b

    new-instance v6, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$2$4$2;

    invoke-direct {v6, v1}, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$2$4$2;-><init>(Lea/m;)V

    .line 52
    new-instance v1, Lv9/e0;

    invoke-direct {v1, v3}, Lv9/e0;-><init>(Z)V

    invoke-interface {v6, v1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v2, v1}, Lv9/l;->j(Lv9/e0;)V

    .line 54
    iget-object v1, v0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lv9/l;->a()Lda/f;

    move-result-object v1

    .line 55
    iget-object v2, v0, Lcom/nike/adapt/adk/AdaptRequester;->rightDeviceCacheADK:Lcom/nike/adapt/adk/IDeviceCacheADK;

    .line 56
    iget-object v3, v1, Lda/f;->i:Lda/b;

    .line 57
    iget-object v3, v3, Lda/b;->h:Lv9/e;

    .line 58
    invoke-interface {v2, v3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownConnectionState(Lv9/e;)V

    .line 59
    iget-object v2, v0, Lcom/nike/adapt/adk/AdaptRequester;->leftDeviceCacheADK:Lcom/nike/adapt/adk/IDeviceCacheADK;

    .line 60
    iget-object v3, v1, Lda/f;->h:Lda/b;

    .line 61
    iget-object v3, v3, Lda/b;->h:Lv9/e;

    .line 62
    invoke-interface {v2, v3}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownConnectionState(Lv9/e;)V

    .line 63
    iget-object v2, v1, Lda/f;->h:Lda/b;

    .line 64
    iget-object v2, v2, Lda/b;->h:Lv9/e;

    .line 65
    sget-object v3, Lv9/e;->o:Lv9/e;

    if-ne v2, v3, :cond_8

    .line 66
    new-instance v2, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    .line 67
    iget-object v4, v0, Lcom/nike/adapt/adk/AdaptRequester;->requesterEventUUID:Li8/d;

    .line 68
    sget-object v5, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    .line 69
    iget-object v6, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    invoke-static {v6, v8}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {v2, v4, v5, v6}, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V

    .line 71
    invoke-direct {v0, v2}, Lcom/nike/adapt/adk/AdaptRequester;->postResults(Li8/b;)V

    goto :goto_3

    .line 72
    :cond_8
    sget-object v2, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v2}, Lcom/nike/adapt/adk/AdaptRequester;->connectTo(Lcom/nike/adapt/adk/Shoe;)V

    .line 73
    :goto_3
    iget-object v1, v1, Lda/f;->i:Lda/b;

    .line 74
    iget-object v1, v1, Lda/b;->h:Lv9/e;

    if-ne v1, v3, :cond_9

    .line 75
    new-instance v1, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    .line 76
    iget-object v2, v0, Lcom/nike/adapt/adk/AdaptRequester;->requesterEventUUID:Li8/d;

    .line 77
    sget-object v3, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    .line 78
    iget-object v4, v0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    invoke-static {v4, v8}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {v1, v2, v3, v4}, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V

    .line 80
    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/AdaptRequester;->postResults(Li8/b;)V

    goto :goto_4

    .line 81
    :cond_9
    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/AdaptRequester;->connectTo(Lcom/nike/adapt/adk/Shoe;)V

    goto :goto_4

    .line 82
    :cond_a
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 83
    :cond_b
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_c
    invoke-static {v5}, Lp4/h;->C(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_d
    iget-object v1, v0, Lcom/nike/adapt/adk/AdaptRequester;->noDevices:Lqd/a;

    invoke-interface {v1}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 86
    :goto_4
    sget-object v4, Lfd/o;->a:Lfd/o;

    :cond_e
    if-nez v4, :cond_f

    .line 87
    iget-object v1, v0, Lcom/nike/adapt/adk/AdaptRequester;->noDevices:Lqd/a;

    invoke-interface {v1}, Lqd/a;->invoke()Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private final onManageDeepLinkConnection(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lea/m;

    .line 2
    iget-object v1, v1, Lea/m;->u:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcom/nike/adapt/adk/AdaptRequester;->pairId:Ljava/lang/String;

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lea/m;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nike/adapt/adk/AdaptRequester;->connect(Lea/m;)V

    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester;->pairId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method private final postResults(Li8/b;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lde/n0;->b(Li8/b;)V

    .line 2
    sget-object v0, Ls7/b;->a:Ls7/b;

    invoke-virtual {v0, p1}, Ls7/b;->a(Li8/b;)V

    return-void
.end method

.method private final retrieveLocalDevicesSynchronous()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nike/adapt/adk/DeviceListRepository;->INSTANCE:Lcom/nike/adapt/adk/DeviceListRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/nike/adapt/adk/DeviceListRepository;->getLocalDevices$default(Lcom/nike/adapt/adk/DeviceListRepository;Lv9/t;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final setFirmwareUpgradeTechnique()V
    .locals 1

    sget v0, Lo7/n;->a:I

    return-void
.end method

.method private final updatePair(Lea/m;)V
    .locals 8

    if-eqz p1, :cond_2

    .line 1
    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->canExecuteOnRequester()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lo7/x;->a:Lo7/x;

    .line 3
    iget-object v1, p1, Lea/m;->i:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Lea/m;->u:Ljava/lang/String;

    .line 5
    iget-object v3, p1, Lea/m;->k:Lea/b;

    .line 6
    iget-object v3, v3, Lea/b;->j:Ljava/lang/String;

    .line 7
    iget-object v4, p1, Lea/m;->l:Lea/b;

    .line 8
    iget-object v4, v4, Lea/b;->j:Ljava/lang/String;

    const-string v5, "Default Not Found - Pair Updated : name = "

    const-string v6, " id = "

    const-string v7, " left :"

    .line 9
    invoke-static {v5, v1, v6, v2, v7}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " right : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lv9/l;->k(Lea/m;)V

    return-void

    :cond_1
    const-string p1, "requester"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public connect(Lea/m;)V
    .locals 14

    const-string v0, "pair"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    .line 2
    iget-object v1, p1, Lea/m;->u:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 3
    invoke-static {v0, v1, v2, v3, v2}, Lcom/nike/adapt/adk/api/PairDataRepository;->setIsDefaultAndConnected$default(Lcom/nike/adapt/adk/api/PairDataRepository;Ljava/lang/String;Lh8/a;ILjava/lang/Object;)V

    .line 4
    sget-object v0, Lv9/t;->a:Lv9/t;

    invoke-virtual {v0}, Lv9/t;->a()V

    .line 5
    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->canExecuteOnRequester()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv9/l;->d()V

    goto :goto_0

    :cond_0
    const-string p1, "requester"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->noDevices:Lqd/a;

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 6
    :goto_0
    new-instance v0, Lv9/l;

    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester;->adaptIdentifier:Lv9/a;

    invoke-direct {v0, p1, v1}, Lv9/l;-><init>(Lea/m;Lv9/a;)V

    .line 7
    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester;->isReady:Lqd/a;

    invoke-interface {v1}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester;->pairListener:Lv9/i;

    invoke-virtual {v0, v1}, Lv9/l;->f(Lv9/i;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    const/16 v13, 0x17fb

    move-object v2, p1

    invoke-static/range {v2 .. v13}, Lea/m;->a(Lea/m;Ljava/lang/String;ZLea/b;Lea/b;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;JZI)Lea/m;

    move-result-object p1

    .line 10
    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->getAdaptPreferenceHelper()Lh8/a;

    move-result-object v1

    sget-object v2, Ls9/p;->a:Ls9/p;

    .line 11
    iget-object v3, p1, Lea/m;->n:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v2

    invoke-interface {v1, v2}, Lh8/a;->setShoeType(Ls9/r;)V

    .line 13
    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    .line 14
    sget-object v1, Lo7/x;->a:Lo7/x;

    .line 15
    iget-object v2, p1, Lea/m;->i:Ljava/lang/String;

    .line 16
    iget-object v3, p1, Lea/m;->u:Ljava/lang/String;

    .line 17
    iget-object v4, p1, Lea/m;->k:Lea/b;

    .line 18
    iget-object v4, v4, Lea/b;->j:Ljava/lang/String;

    .line 19
    iget-object v5, p1, Lea/m;->l:Lea/b;

    .line 20
    iget-object v5, v5, Lea/b;->j:Ljava/lang/String;

    const-string v6, "Connecting New Pair : name = "

    const-string v7, " id = "

    const-string v8, " left :"

    .line 21
    invoke-static {v6, v2, v7, v3, v8}, Lk1/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " right : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;

    invoke-direct {v1, p1, p0, v0}, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;-><init>(Lea/m;Lcom/nike/adapt/adk/AdaptRequester;Lv9/l;)V

    const/4 v2, 0x0

    .line 24
    new-instance v3, Lv9/e0;

    invoke-direct {v3, v2}, Lv9/e0;-><init>(Z)V

    invoke-interface {v1, v3}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v3}, Lv9/l;->j(Lv9/e0;)V

    .line 26
    invoke-virtual {v0, p1}, Lv9/l;->k(Lea/m;)V

    .line 27
    iput-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    return-void
.end method

.method public connectIfNotConnected()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->canExecuteOnRequester()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lv9/l;->a()Lda/f;

    move-result-object v0

    .line 3
    iget-object v2, v0, Lda/f;->h:Lda/b;

    .line 4
    iget-object v2, v2, Lda/b;->h:Lv9/e;

    .line 5
    invoke-virtual {v2}, Lv9/e;->b()Z

    move-result v2

    .line 6
    iget-object v0, v0, Lda/f;->i:Lda/b;

    .line 7
    iget-object v0, v0, Lda/b;->h:Lv9/e;

    .line 8
    invoke-virtual {v0}, Lv9/e;->b()Z

    move-result v0

    if-nez v2, :cond_0

    .line 9
    sget-object v3, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {p0, v3}, Lcom/nike/adapt/adk/AdaptRequester;->connectTo(Lcom/nike/adapt/adk/Shoe;)V

    :cond_0
    if-nez v0, :cond_1

    .line 10
    sget-object v3, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    invoke-direct {p0, v3}, Lcom/nike/adapt/adk/AdaptRequester;->connectTo(Lcom/nike/adapt/adk/Shoe;)V

    :cond_1
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    const-string v0, "requester"

    .line 11
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_5
    return v1
.end method

.method public currentDevice()Lea/m;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->myDevice:Lea/m;

    return-object v0
.end method

.method public disconnect()V
    .locals 4

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    const-string v1, "shoe"

    .line 2
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "DisconnectRequest"

    .line 3
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

    .line 4
    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->canExecuteOnRequester()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "requester"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v0, :cond_0

    sget-object v3, Lv9/o2;->b:Lv9/o2;

    invoke-static {v0, v3}, Landroidx/activity/k;->f(Lv9/l;Lv9/k;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->noDevices:Lqd/a;

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->canExecuteOnRequester()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v0, :cond_2

    sget-object v1, Lv9/o2;->b:Lv9/o2;

    invoke-static {v0, v1}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->noDevices:Lqd/a;

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public findOrSetDefaultDevice(Ljava/util/List;)Lea/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;)",
            "Lea/m;"
        }
    .end annotation

    const-string v0, "devices"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/nike/adapt/adk/AdaptRequester$findOrSetDefaultDevice$lambda-10$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/nike/adapt/adk/AdaptRequester$findOrSetDefaultDevice$lambda-10$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p1, v0}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/AdaptRequester$findOrSetDefaultDevice$lambda-10$$inlined$sortedByDescending$2;

    invoke-direct {v0}, Lcom/nike/adapt/adk/AdaptRequester$findOrSetDefaultDevice$lambda-10$$inlined$sortedByDescending$2;-><init>()V

    invoke-static {p1, v0}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 3
    invoke-static {p1}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lea/m;

    return-object p1
.end method

.method public final getNoDevices()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->noDevices:Lqd/a;

    return-object v0
.end method

.method public final getPermissionsRequired()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "[",
            "Ljava/lang/String;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->permissionsRequired:Lqd/l;

    return-object v0
.end method

.method public final isReady()Lqd/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->isReady:Lqd/a;

    return-object v0
.end method

.method public modes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nike/adapt/adk/model/AdaptDeviceMode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0}, Lw9/d;->e0()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseModes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "requester"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    sget-object v0, Lgd/p;->h:Lgd/p;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/q;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/q;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPause(Landroidx/lifecycle/q;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onResume(Landroidx/lifecycle/q;)V
    .locals 0

    return-void
.end method

.method public onStart(Landroidx/lifecycle/q;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nike/adapt/adk/AdaptRequester;->subscribe()V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/q;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nike/adapt/adk/AdaptRequester;->unsubscribe()V

    return-void
.end method

.method public subscribe()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->retrieveLocalDevicesSynchronous()Ljava/util/List;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getUseInternetPerSession()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    sget-object v1, Lo7/x;->a:Lo7/x;

    const-string v2, "FROM SYNC call retrieveLocalDevicesSynchronous"

    invoke-virtual {v1, v2}, Lo7/x;->a(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/nike/adapt/adk/AdaptRequester;->initialiseAdaptKitRequester(Ljava/util/List;)V

    goto :goto_3

    .line 5
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/nike/adapt/adk/AdaptRequester;->uiScope:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/nike/adapt/adk/AdaptRequester$subscribe$1$1;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/nike/adapt/adk/AdaptRequester$subscribe$1$1;-><init>(Lcom/nike/adapt/adk/AdaptRequester;Ljd/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_3
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester;->canExecuteOnRequester()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->requester:Lv9/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lv9/l;->d()V

    goto :goto_0

    :cond_0
    const-string v0, "requester"

    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester;->noDevices:Lqd/a;

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method
