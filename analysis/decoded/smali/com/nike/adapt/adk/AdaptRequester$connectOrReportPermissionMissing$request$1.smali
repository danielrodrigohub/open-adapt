.class final Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$request$1;
.super Lrd/o;
.source "AdaptRequester.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/AdaptRequester;->connectOrReportPermissionMissing(Lv9/l;Lcom/nike/adapt/adk/Shoe;Lqd/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/l0;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/nike/adapt/adk/AdaptRequester;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/AdaptRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$request$1;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/l0;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$request$1;->invoke(Lv9/l0;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/l0;)V
    .locals 3

    const-string v0, "$this$$receiver"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$request$1;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-static {v0}, Lcom/nike/adapt/adk/AdaptRequester;->access$getLifecycle$p(Lcom/nike/adapt/adk/AdaptRequester;)Landroidx/lifecycle/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester$connectOrReportPermissionMissing$request$1;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/i;->b()Landroidx/lifecycle/i$c;

    move-result-object v0

    sget-object v2, Landroidx/lifecycle/i$c;->l:Landroidx/lifecycle/i$c;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/i$c;->b(Landroidx/lifecycle/i$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/nike/adapt/adk/AdaptRequester;->getPermissionsRequired()Lqd/l;

    move-result-object v0

    .line 5
    iget-object p1, p1, Lv9/l0;->j:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, p1}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
