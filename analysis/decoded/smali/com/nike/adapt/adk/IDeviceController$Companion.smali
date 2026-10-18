.class public final Lcom/nike/adapt/adk/IDeviceController$Companion;
.super Ljava/lang/Object;
.source "DeviceController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/adk/IDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/nike/adapt/adk/IDeviceController$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/IDeviceController$Companion;

    invoke-direct {v0}, Lcom/nike/adapt/adk/IDeviceController$Companion;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/IDeviceController$Companion;->$$INSTANCE:Lcom/nike/adapt/adk/IDeviceController$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/lifecycle/i;Li8/d;)Lcom/nike/adapt/adk/IDeviceController;
    .locals 1

    const-string v0, "eventUUID"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/DeviceController;

    invoke-direct {v0, p1, p2}, Lcom/nike/adapt/adk/DeviceController;-><init>(Landroidx/lifecycle/i;Li8/d;)V

    return-object v0
.end method
