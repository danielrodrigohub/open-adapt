.class final Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$2;
.super Lrd/o;
.source "AdaptRequester.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1;->invoke(Lv9/e0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/h;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nike/adapt/adk/AdaptRequester;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/AdaptRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/h;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$2;->invoke(Lv9/h;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/h;)V
    .locals 4

    const-string v0, "$this$connectOrReportPermissionMissing"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    .line 3
    new-instance v0, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;

    .line 4
    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v1}, Lcom/nike/adapt/adk/AdaptRequester;->access$getRequesterEventUUID$p(Lcom/nike/adapt/adk/AdaptRequester;)Li8/d;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    .line 6
    iget-object v3, p0, Lcom/nike/adapt/adk/AdaptRequester$connect$1$1$1$2;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v3}, Lcom/nike/adapt/adk/AdaptRequester;->access$getMyDevice$p(Lcom/nike/adapt/adk/AdaptRequester;)Lea/m;

    move-result-object v3

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/nike/adapt/adk/ConnectedAndAuthenticatedToPair;-><init>(Li8/d;Lcom/nike/adapt/adk/Shoe;Lea/m;)V

    .line 8
    invoke-static {p1, v0}, Lcom/nike/adapt/adk/AdaptRequester;->access$postResults(Lcom/nike/adapt/adk/AdaptRequester;Li8/b;)V

    return-void
.end method
