.class public final Lcom/nike/adapt/adk/DeviceController$Companion;
.super Ljava/lang/Object;
.source "DeviceController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/DeviceController;
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

    invoke-direct {p0}, Lcom/nike/adapt/adk/DeviceController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/i;Li8/d;)Lcom/nike/adapt/adk/DeviceController;
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/DeviceController;

    invoke-direct {v0, p1, p2}, Lcom/nike/adapt/adk/DeviceController;-><init>(Landroidx/lifecycle/i;Li8/d;)V

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nike/adapt/adk/DeviceController;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
