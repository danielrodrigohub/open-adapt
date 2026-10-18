.class public final Lcom/nike/adapt/adk/DeviceListRepository;
.super Ljava/lang/Object;
.source "DeviceListRepository.kt"


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/DeviceListRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/DeviceListRepository;

    invoke-direct {v0}, Lcom/nike/adapt/adk/DeviceListRepository;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/DeviceListRepository;->INSTANCE:Lcom/nike/adapt/adk/DeviceListRepository;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getDevices$default(Lcom/nike/adapt/adk/DeviceListRepository;Lv9/d0;Lv9/t;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Lv9/t;->a:Lv9/t;

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/adk/DeviceListRepository;->getDevices(Lv9/d0;Lv9/t;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getLocalDevices$default(Lcom/nike/adapt/adk/DeviceListRepository;Lv9/t;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lv9/t;->a:Lv9/t;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/DeviceListRepository;->getLocalDevices(Lv9/t;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDevices(Lv9/d0;Lv9/t;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/d0;",
            "Lv9/t;",
            ")",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    const-string v0, "devicesListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitModule"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lv9/t;->e()Lab/a;

    move-result-object p2

    sget-object v0, Lv9/a;->i:Lv9/a$a;

    .line 2
    sget-object v0, Lv9/a;->m:Lv9/a;

    .line 3
    invoke-interface {p2, v0, p1}, Lab/a;->a(Lv9/a;Lv9/p0;)Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lea/m;

    .line 6
    iget-object v1, v1, Lea/m;->r:Lea/f;

    .line 7
    sget-object v2, Lea/f;->i:Lea/f;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final getLocalDevices(Lv9/t;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/t;",
            ")",
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation

    const-string v0, "adaptKitModule"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lv9/t;->f()Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lea/m;

    .line 4
    iget-object v2, v2, Lea/m;->r:Lea/f;

    .line 5
    sget-object v3, Lea/f;->i:Lea/f;

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
