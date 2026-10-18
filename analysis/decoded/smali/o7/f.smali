.class public final Lo7/f;
.super Ljava/lang/Object;
.source "AdaptKitFactory.kt"

# interfaces
.implements Lo7/s;


# static fields
.field public static final a:Lo7/f;

.field public static final b:Lo7/f$c;
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


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo7/f;

    invoke-direct {v0}, Lo7/f;-><init>()V

    sput-object v0, Lo7/f;->a:Lo7/f;

    sget-object v0, Lo7/f$c;->h:Lo7/f$c;

    sput-object v0, Lo7/f;->b:Lo7/f$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;Li8/d;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/q;",
            "Li8/d;",
            "Lqd/a<",
            "Lfd/o;",
            ">;",
            "Lqd/a<",
            "Lfd/o;",
            ">;)",
            "Lcom/nike/adapt/adk/IAdaptRequester;"
        }
    .end annotation

    const-string v0, "eventUUID"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isReady"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noDevices"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lo7/f;->c(Landroidx/lifecycle/q;Li8/d;Ljava/lang/String;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroidx/lifecycle/q;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/nike/adapt/adk/IDeviceController;->Companion:Lcom/nike/adapt/adk/IDeviceController$Companion;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/nike/adapt/adk/IDeviceController$Companion;->create(Landroidx/lifecycle/i;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroidx/lifecycle/q;Li8/d;Ljava/lang/String;Lqd/a;Lqd/a;)Lcom/nike/adapt/adk/IAdaptRequester;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/q;",
            "Li8/d;",
            "Ljava/lang/String;",
            "Lqd/a<",
            "Lfd/o;",
            ">;",
            "Lqd/a<",
            "Lfd/o;",
            ">;)",
            "Lcom/nike/adapt/adk/IAdaptRequester;"
        }
    .end annotation

    const-string v0, "eventUUID"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isReady"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noDevices"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lp8/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp8/a;

    .line 2
    iget-object v0, v0, Lp8/a;->H:Lp8/a$a;

    :goto_0
    move-object v7, v0

    goto :goto_1

    .line 3
    :cond_0
    instance-of v0, p1, Lp8/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lp8/b;

    .line 4
    iget-object v0, v0, Lp8/b;->g0:Lp8/b$a;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lo7/f;->b:Lo7/f$c;

    goto :goto_0

    .line 6
    :goto_1
    sget-object v1, Lcom/nike/adapt/adk/IAdaptRequester;->Companion:Lcom/nike/adapt/adk/IAdaptRequester$Companion;

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p1}, Landroidx/lifecycle/q;->a()Landroidx/lifecycle/i;

    move-result-object p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 8
    invoke-virtual/range {v1 .. v7}, Lcom/nike/adapt/adk/IAdaptRequester$Companion;->create(Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lcom/nike/adapt/adk/model/AdaptFirmwareStage;
    .locals 3

    .line 1
    sget-object v0, Lcom/nike/adapt/adk/DeviceListRepository;->INSTANCE:Lcom/nike/adapt/adk/DeviceListRepository;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/nike/adapt/adk/DeviceListRepository;->getLocalDevices$default(Lcom/nike/adapt/adk/DeviceListRepository;Lv9/t;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v2, Lo7/f$a;

    invoke-direct {v2}, Lo7/f$a;-><init>()V

    invoke-static {v0, v2}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 3
    new-instance v2, Lo7/f$b;

    invoke-direct {v2}, Lo7/f$b;-><init>()V

    invoke-static {v0, v2}, Lgd/n;->i0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 4
    invoke-static {v0}, Lgd/n;->a0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lea/m;

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v1, Lv9/l;

    invoke-direct {v1, v0}, Lv9/l;-><init>(Lea/m;)V

    .line 6
    invoke-virtual {v1}, Lv9/l;->c()Lw9/d;

    move-result-object v0

    invoke-interface {v0}, Lw9/d;->t()Lfa/d;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lfa/d;->k:Lfa/i;

    .line 8
    invoke-static {v0}, Lcom/nike/adapt/adk/AdaptMarshallerKt;->parseTo(Lfa/i;)Lcom/nike/adapt/adk/model/AdaptFirmwareStage;

    move-result-object v0

    return-object v0
.end method
