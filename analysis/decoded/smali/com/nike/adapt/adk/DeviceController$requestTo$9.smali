.class final Lcom/nike/adapt/adk/DeviceController$requestTo$9;
.super Lrd/o;
.source "DeviceController.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/DeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/b;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$9;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/DeviceController$requestTo$9;

    invoke-direct {v0}, Lcom/nike/adapt/adk/DeviceController$requestTo$9;-><init>()V

    sput-object v0, Lcom/nike/adapt/adk/DeviceController$requestTo$9;->INSTANCE:Lcom/nike/adapt/adk/DeviceController$requestTo$9;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/b;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/DeviceController$requestTo$9;->invoke(Lv9/b;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/b;)V
    .locals 1

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
