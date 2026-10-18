.class final Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;
.super Lrd/o;
.source "AdaptRequester.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1;->invoke(Lv9/h2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/f2;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nike/adapt/adk/AdaptRequester;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/AdaptRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/f2;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->invoke(Lv9/f2;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/f2;)V
    .locals 4

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v0}, Lcom/nike/adapt/adk/AdaptRequester;->access$getRightDeviceCacheADK$p(Lcom/nike/adapt/adk/AdaptRequester;)Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lv9/f2;->m:Lv9/e;

    .line 4
    invoke-interface {v0, v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->setLastKnownConnectionState(Lv9/e;)V

    .line 5
    sget-object v0, Lo7/x;->a:Lo7/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECTION UPDATE RIGHT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo7/x;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lv9/f2;->m:Lv9/e;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptRequester;->access$canExecuteOnRequester(Lcom/nike/adapt/adk/AdaptRequester;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    .line 9
    sget-boolean p1, Lcom/nike/adapt/BigfootApplication;->x:Z

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {p1}, Lcom/nike/adapt/adk/AdaptRequester;->access$getRequester$p(Lcom/nike/adapt/adk/AdaptRequester;)Lv9/l;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Lv9/s3;

    invoke-direct {v2, v1, v0, v1}, Lv9/s3;-><init>(Lqd/l;ILrd/h;)V

    invoke-static {p1, v2}, Landroidx/activity/k;->g(Lv9/l;Lv9/k;)V

    goto :goto_0

    :cond_1
    const-string p1, "requester"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/AdaptRequester;->getNoDevices()Lqd/a;

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    .line 13
    new-instance v0, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    .line 14
    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v1}, Lcom/nike/adapt/adk/AdaptRequester;->access$getRequesterEventUUID$p(Lcom/nike/adapt/adk/AdaptRequester;)Li8/d;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    .line 16
    iget-object v3, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v3}, Lcom/nike/adapt/adk/AdaptRequester;->access$getMyDevice$p(Lcom/nike/adapt/adk/AdaptRequester;)Lea/m;

    move-result-object v3

    .line 17
    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V

    .line 18
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptRequester;->access$postResults(Lcom/nike/adapt/adk/AdaptRequester;Li8/b;)V

    goto :goto_1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    .line 20
    new-instance v0, Lcom/nike/adapt/adk/ConnectingToPair;

    .line 21
    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v1}, Lcom/nike/adapt/adk/AdaptRequester;->access$getRequesterEventUUID$p(Lcom/nike/adapt/adk/AdaptRequester;)Li8/d;

    move-result-object v1

    .line 22
    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    .line 23
    iget-object v3, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v3}, Lcom/nike/adapt/adk/AdaptRequester;->access$getMyDevice$p(Lcom/nike/adapt/adk/AdaptRequester;)Lea/m;

    move-result-object v3

    .line 24
    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/adk/ConnectingToPair;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V

    .line 25
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptRequester;->access$postResults(Lcom/nike/adapt/adk/AdaptRequester;Li8/b;)V

    goto :goto_1

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    new-instance v0, Lcom/nike/adapt/adk/Disconnected;

    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v1}, Lcom/nike/adapt/adk/AdaptRequester;->access$getRequesterEventUUID$p(Lcom/nike/adapt/adk/AdaptRequester;)Li8/d;

    move-result-object v1

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    iget-object v3, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v3}, Lcom/nike/adapt/adk/AdaptRequester;->access$getMyDevice$p(Lcom/nike/adapt/adk/AdaptRequester;)Lea/m;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/adk/Disconnected;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptRequester;->access$postResults(Lcom/nike/adapt/adk/AdaptRequester;Li8/b;)V

    .line 27
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {p1, v2}, Lcom/nike/adapt/adk/AdaptRequester;->access$connectTo(Lcom/nike/adapt/adk/AdaptRequester;Lcom/nike/adapt/adk/Shoe;)V

    goto :goto_1

    .line 28
    :cond_5
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    new-instance v0, Lcom/nike/adapt/adk/Disconnected;

    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v1}, Lcom/nike/adapt/adk/AdaptRequester;->access$getRequesterEventUUID$p(Lcom/nike/adapt/adk/AdaptRequester;)Li8/d;

    move-result-object v1

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    iget-object v3, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v3}, Lcom/nike/adapt/adk/AdaptRequester;->access$getMyDevice$p(Lcom/nike/adapt/adk/AdaptRequester;)Lea/m;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/adk/Disconnected;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V

    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptRequester;->access$postResults(Lcom/nike/adapt/adk/AdaptRequester;Li8/b;)V

    .line 29
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {p1, v2}, Lcom/nike/adapt/adk/AdaptRequester;->access$connectTo(Lcom/nike/adapt/adk/AdaptRequester;Lcom/nike/adapt/adk/Shoe;)V

    :goto_1
    return-void
.end method
