.class final Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$2$4$2;
.super Lrd/o;
.source "AdaptRequester.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/AdaptRequester;->initialiseAdaptKitRequester(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/e0;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $it:Lea/m;


# direct methods
.method public constructor <init>(Lea/m;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$2$4$2;->$it:Lea/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/e0;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$2$4$2;->invoke(Lv9/e0;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/e0;)V
    .locals 2

    const-string v0, "$this$pairedDevicesUpdatedListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$2$4$2;->$it:Lea/m;

    .line 3
    iget-object v1, v1, Lea/m;->k:Lea/b;

    .line 4
    iget v1, v1, Lea/b;->m:I

    .line 5
    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 6
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester$initialiseAdaptKitRequester$2$4$2;->$it:Lea/m;

    .line 7
    iget-object v0, v0, Lea/m;->l:Lea/b;

    .line 8
    iget v0, v0, Lea/b;->m:I

    .line 9
    invoke-interface {p1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    return-void
.end method
