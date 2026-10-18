.class final Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;
.super Lrd/o;
.source "AdaptRequester.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/AdaptRequester;->connect(Lea/m;)V
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

.field public final synthetic $this_apply:Lv9/l;

.field public final synthetic this$0:Lcom/nike/adapt/adk/AdaptRequester;


# direct methods
.method public constructor <init>(Lea/m;Lcom/nike/adapt/adk/AdaptRequester;Lv9/l;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->$it:Lea/m;

    iput-object p2, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    iput-object p3, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->$this_apply:Lv9/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/e0;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->invoke(Lv9/e0;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/e0;)V
    .locals 3

    const-string v0, "$this$pairedDevicesUpdatedListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    const-string v0, "shoe"

    .line 3
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ConnectRequest"

    .line 4
    sget-object v1, Lo7/x;->a:Lo7/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->$it:Lea/m;

    .line 6
    iget-object v1, v1, Lea/m;->k:Lea/b;

    .line 7
    iget v1, v1, Lea/b;->m:I

    .line 8
    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 9
    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->$it:Lea/m;

    .line 10
    iget-object v0, v0, Lea/m;->l:Lea/b;

    .line 11
    iget v0, v0, Lea/b;->m:I

    .line 12
    invoke-interface {p1, v0}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setMaxTightness(I)V

    .line 13
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->$this_apply:Lv9/l;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->LEFT:Lcom/nike/adapt/adk/Shoe;

    new-instance v2, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$1;

    invoke-direct {v2, p1}, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$1;-><init>(Lcom/nike/adapt/adk/AdaptRequester;)V

    invoke-static {p1, v0, v1, v2}, Lcom/nike/adapt/adk/AdaptRequester;->access$connectOrReportPermissionMissing(Lcom/nike/adapt/adk/AdaptRequester;Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;)V

    .line 14
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->$this_apply:Lv9/l;

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    new-instance v2, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$2;

    invoke-direct {v2, p1}, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$2;-><init>(Lcom/nike/adapt/adk/AdaptRequester;)V

    invoke-static {p1, v0, v1, v2}, Lcom/nike/adapt/adk/AdaptRequester;->access$connectOrReportPermissionMissing(Lcom/nike/adapt/adk/AdaptRequester;Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;)V

    .line 15
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->$this_apply:Lv9/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lv9/l;->j(Lv9/e0;)V

    return-void
.end method
