.class public final Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "LightPacksActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;->a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 4

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_a

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;->a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 2
    iget-object p2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->U:Lz8/a;

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 3
    iget-object v1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    const-string v2, "selectedLightPack"

    if-eqz v1, :cond_8

    if-eq p2, v1, :cond_a

    .line 4
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p1

    iget-object p1, p1, Lq7/j;->d:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 5
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;->a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 6
    iget-boolean p2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->V:Z

    if-eqz p2, :cond_a

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->W:Z

    .line 8
    iget-object v1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v1, :cond_7

    .line 9
    sget-object v3, Lz8/a;->m:Lz8/a;

    if-ne v1, v3, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Lh8/a;->N()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;->a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 12
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->q0()V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;->a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 14
    iget-object v1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v1, :cond_6

    .line 15
    invoke-virtual {p1, v1, p2}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->w0(Lz8/a;Z)V

    .line 16
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;->a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 17
    iget-object p1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_3

    .line 18
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v1

    invoke-interface {v1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v1

    const/16 v3, 0x14

    if-le v1, v3, :cond_1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object p1

    invoke-interface {p1}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result p1

    if-le p1, v3, :cond_1

    const/4 p2, 0x1

    :cond_1
    if-eqz p2, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;->a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 20
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->u0()V

    goto :goto_1

    .line 21
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;->a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 22
    iget-object p2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->L:Lz8/m;

    if-eqz p2, :cond_a

    .line 23
    iget-object p1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz p1, :cond_4

    .line 24
    invoke-virtual {p2, p1}, Lz8/m;->b(Lz8/a;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_5
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_7
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_8
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string p1, "displayedLightPack"

    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_1
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity$o;->a:Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;

    .line 2
    iget-object p2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->P:Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;

    const/4 p3, 0x0

    if-eqz p2, :cond_d

    .line 3
    iget-object p2, p2, Lcom/nike/adapt/ui/lighting/lightpacks/LightPackLayoutManager;->G:Lz8/a;

    if-eqz p2, :cond_c

    .line 4
    iget-object v0, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    const-string v1, "selectedLightPack"

    if-eqz v0, :cond_b

    if-eq p2, v0, :cond_c

    .line 5
    iput-object p2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    .line 6
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->y0()V

    .line 7
    iget-boolean p2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->V:Z

    const/4 v0, 0x1

    const-string v2, "subtitleManager"

    const/4 v3, 0x0

    if-eqz p2, :cond_7

    .line 8
    iget-object p2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz p2, :cond_6

    .line 9
    iget-object v2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz v2, :cond_5

    sget-object v4, Lz8/a;->m:Lz8/a;

    if-ne v2, v4, :cond_0

    invoke-virtual {p2}, Lz8/n;->a()V

    goto/16 :goto_1

    .line 10
    :cond_0
    sget-object v2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v4

    invoke-interface {v4}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_1

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    invoke-interface {v2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v2

    if-le v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    .line 11
    iget-object p1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz p1, :cond_2

    invoke-virtual {p2, p1}, Lz8/n;->g(Lz8/a;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    .line 12
    :cond_3
    iget-object p1, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->T:Lz8/a;

    if-eqz p1, :cond_4

    invoke-virtual {p2, p1}, Lz8/n;->i(Lz8/a;)V

    goto/16 :goto_1

    :cond_4
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    .line 13
    :cond_5
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    .line 14
    :cond_6
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    .line 15
    :cond_7
    iget-object p2, p1, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->M:Lz8/n;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lz8/n;->a()V

    .line 16
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p2

    iget-object p2, p2, Lq7/j;->k:Landroid/view/View;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result p3

    if-eqz p3, :cond_8

    const/16 v3, 0x8

    :cond_8
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->s0()Z

    move-result p2

    if-nez p2, :cond_c

    .line 18
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object p2

    invoke-interface {p2}, Lh8/a;->e()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 19
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p2

    iget-object p2, p2, Lq7/j;->h:Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 20
    new-instance p3, Lz8/l;

    invoke-direct {p3, p1}, Lz8/l;-><init>(Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;)V

    invoke-virtual {p2, p3}, Lcom/nike/adapt/ui/helper/NotificationToast;->d(Lqd/a;)Lcom/nike/adapt/ui/helper/NotificationToast;

    .line 21
    invoke-virtual {p2}, Lcom/nike/adapt/ui/helper/NotificationToast;->a()V

    goto :goto_1

    .line 22
    :cond_9
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p2

    iget-object p2, p2, Lq7/j;->g:Lcom/nike/adapt/ui/helper/BottomSheet;

    sget-object p3, Lx8/q;->d:Lx8/q$c;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-object p3, p2, Lcom/nike/adapt/ui/helper/BottomSheet;->B:Lcom/nike/adapt/ui/helper/BottomSheet$a;

    .line 24
    invoke-virtual {p2}, Lcom/nike/adapt/ui/helper/BottomSheet;->x()V

    .line 25
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->r0()Lq7/j;

    move-result-object p2

    iget-object p2, p2, Lq7/j;->k:Landroid/view/View;

    new-instance p3, Lr9/a;

    new-instance v0, Lw8/c;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lw8/c;-><init>(Ljava/lang/Object;I)V

    const/16 v1, 0xc8

    .line 26
    invoke-direct {p3, v0, v1}, Lr9/a;-><init>(Landroid/view/View$OnClickListener;I)V

    .line 27
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/lightpacks/LightPacksActivity;->t0()Lh8/a;

    move-result-object p1

    invoke-interface {p1}, Lh8/a;->Z()V

    goto :goto_1

    .line 29
    :cond_a
    invoke-static {v2}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    .line 30
    :cond_b
    invoke-static {v1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3

    :cond_c
    :goto_1
    return-void

    :cond_d
    const-string p1, "lightPackLayoutManager"

    .line 31
    invoke-static {p1}, Lp4/h;->C(Ljava/lang/String;)V

    throw p3
.end method
