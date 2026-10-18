.class public final Lx8/q$a;
.super Ljava/lang/Object;
.source "BottomSheetManagers.kt"

# interfaces
.implements Lcom/nike/adapt/ui/helper/BottomSheet$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx8/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 0

    const-string p1, "bottomSheet"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/nike/adapt/ui/helper/BottomSheet;->t()V

    .line 2
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceActionSheetUserSelectsOkay()V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(ILandroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/Context;)V
    .locals 4

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    .line 1
    sget-object p1, Ls9/b;->a:Ls9/b;

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 2
    sget-object p3, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    invoke-static {p3, p2, p1, p2}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 3
    sget-object v0, Ls9/b;->b:Lh8/c;

    invoke-virtual {v0}, Lh8/c;->O()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lv7/k;

    .line 5
    iget-object v3, v3, Lv7/k;->a:Ljava/lang/String;

    .line 6
    invoke-static {v3, p3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object p2, v2

    :cond_2
    check-cast p2, Lv7/k;

    if-eqz p2, :cond_3

    .line 7
    iput-boolean p1, p2, Lv7/k;->c:Z

    .line 8
    :cond_3
    sget-object p1, Ls9/b;->b:Lh8/c;

    invoke-virtual {p1, v0}, Lh8/c;->a(Ljava/util/ArrayList;)V

    .line 9
    sget-object p1, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {p1}, Lcom/nike/adapt/analytics/TrackManager;->autoLaceActionSheetPresented()V

    :cond_4
    return-void
.end method

.method public final d(Lcom/nike/adapt/ui/helper/BottomSheet;)V
    .locals 0

    return-void
.end method
