.class public final Lcom/nike/adapt/adk/AdaptRequester$Companion;
.super Ljava/lang/Object;
.source "AdaptRequester.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/AdaptRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/adapt/adk/AdaptRequester$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/nike/adapt/adk/AdaptRequester$Companion;Landroidx/lifecycle/i;Li8/d;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;ILjava/lang/Object;)Lcom/nike/adapt/adk/AdaptRequester;
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const-string p3, ""

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    .line 1
    sget-object p4, Lcom/nike/adapt/adk/AdaptRequester$Companion$create$1;->INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$Companion$create$1;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    .line 2
    sget-object p5, Lcom/nike/adapt/adk/AdaptRequester$Companion$create$2;->INSTANCE:Lcom/nike/adapt/adk/AdaptRequester$Companion$create$2;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p6

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/nike/adapt/adk/AdaptRequester$Companion;->create(Landroidx/lifecycle/i;Li8/d;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)Lcom/nike/adapt/adk/AdaptRequester;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/i;Li8/d;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)Lcom/nike/adapt/adk/AdaptRequester;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/i;",
            "Li8/d;",
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
            ">;)",
            "Lcom/nike/adapt/adk/AdaptRequester;"
        }
    .end annotation

    const-string v0, "eventUUID"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairId"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isReady"

    invoke-static {p4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noDevices"

    invoke-static {p5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionRequired"

    invoke-static {p6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/AdaptRequester;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/nike/adapt/adk/AdaptRequester;-><init>(Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)V

    return-object v0
.end method
