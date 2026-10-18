.class public final Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$f;
.super Lrd/o;
.source "ShoeControllerActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->onAdaptDeviceControllerActionResult(Lcom/nike/adapt/adk/DeviceControllerResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$f;

    invoke-direct {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$f;-><init>()V

    sput-object v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$f;->h:Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
