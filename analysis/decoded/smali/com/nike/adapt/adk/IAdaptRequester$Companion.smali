.class public final Lcom/nike/adapt/adk/IAdaptRequester$Companion;
.super Ljava/lang/Object;
.source "AdaptRequester.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/IAdaptRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/nike/adapt/adk/IAdaptRequester$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/IAdaptRequester$Companion;

    invoke-direct {v0}, Lcom/nike/adapt/adk/IAdaptRequester$Companion;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/IAdaptRequester$Companion;->$$INSTANCE:Lcom/nike/adapt/adk/IAdaptRequester$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/nike/adapt/adk/IAdaptRequester$Companion;Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;ILjava/lang/Object;)Lcom/nike/adapt/adk/IAdaptRequester;
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

    invoke-virtual/range {v0 .. v6}, Lcom/nike/adapt/adk/IAdaptRequester$Companion;->create(Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)Lcom/nike/adapt/adk/IAdaptRequester;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)Lcom/nike/adapt/adk/IAdaptRequester;
    .locals 8
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
            ">;)",
            "Lcom/nike/adapt/adk/IAdaptRequester;"
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

    new-instance v0, Lcom/nike/adapt/adk/AdaptRequester;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/nike/adapt/adk/AdaptRequester;-><init>(Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)V

    return-object v0
.end method
