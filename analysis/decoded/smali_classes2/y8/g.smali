.class public final synthetic Ly8/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Ly8/i;

.field public final synthetic i:I

.field public final synthetic j:Ly8/i$c;


# direct methods
.method public synthetic constructor <init>(Ly8/i;ILy8/i$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/g;->h:Ly8/i;

    iput p2, p0, Ly8/g;->i:I

    iput-object p3, p0, Ly8/g;->j:Ly8/i$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object p1, p0, Ly8/g;->h:Ly8/i;

    iget v0, p0, Ly8/g;->i:I

    iget-object v1, p0, Ly8/g;->j:Ly8/i$c;

    const-string v2, "this$0"

    .line 1
    invoke-static {p1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$holder"

    invoke-static {v1, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p1, Ly8/i;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly8/i$a;

    .line 3
    iget-boolean v2, v2, Ly8/i$a;->b:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 4
    sget-object v2, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getLeftDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v5

    invoke-interface {v5}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_0

    invoke-virtual {v2}, Lcom/nike/adapt/adk/InMemoryCache;->getRightDevice()Lcom/nike/adapt/adk/IDeviceCacheADK;

    move-result-object v2

    invoke-interface {v2}, Lcom/nike/adapt/adk/IDeviceCacheADK;->getBattery()Lcom/nike/adapt/adk/model/Battery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nike/adapt/adk/model/Battery;->getPercent()I

    move-result v2

    if-le v2, v6, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    .line 5
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->lightingEffectsBatteryLow()V

    .line 6
    sget-object v0, Ls9/y;->a:Ls9/y;

    iget-object p1, p1, Ly8/i;->d:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Activity;

    sget-object v1, Ly8/j;->h:Ly8/j;

    invoke-virtual {v0, p1, v1}, Ls9/y;->g(Landroid/app/Activity;Lqd/l;)Landroidx/appcompat/app/d;

    goto/16 :goto_4

    .line 7
    :cond_1
    iget-object v2, p1, Ly8/i;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly8/i$a;

    .line 8
    iget-object v2, v2, Ly8/i$a;->a:Lv7/c;

    .line 9
    sget-object v5, Lv7/c$f;->c:Lv7/c$f;

    invoke-static {v2, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    .line 10
    :cond_2
    sget-object v5, Lv7/c$c;->c:Lv7/c$c;

    invoke-static {v2, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    :goto_1
    const/4 v6, 0x2

    const-string v7, "null cannot be cast to non-null type com.nike.adapt.ui.lighting.LightingEffectsActivity"

    if-eqz v5, :cond_4

    .line 11
    iget v5, p1, Ly8/i;->f:I

    sget-object v6, Ly8/i$d;->a:[I

    invoke-static {v5}, Lq/g;->a(I)I

    move-result v5

    aget v5, v6, v5

    if-ne v5, v4, :cond_3

    .line 12
    iget-object v5, p1, Ly8/i;->g:Lh8/c;

    invoke-virtual {v5, v2}, Lh8/c;->p0(Lv7/c;)V

    .line 13
    iget-object v5, p1, Ly8/i;->d:Landroid/content/Context;

    invoke-static {v5, v7}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    iget-object v6, p1, Ly8/i;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly8/i$a;

    invoke-virtual {v5, v0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->x0(Ly8/i$a;)V

    .line 14
    iget-object p1, p1, Ly8/i;->d:Landroid/content/Context;

    check-cast p1, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    invoke-static {p1, v2}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->t0(Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;Lv7/c;)V

    goto/16 :goto_3

    .line 15
    :cond_3
    iget-object v2, p1, Ly8/i;->d:Landroid/content/Context;

    invoke-static {v2, v7}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    iget-object p1, p1, Ly8/i;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly8/i$a;

    .line 16
    iget-object p1, p1, Ly8/i$a;->a:Lv7/c;

    .line 17
    invoke-virtual {v2, p1}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->q0(Lv7/c;)V

    goto :goto_2

    .line 18
    :cond_4
    sget-object v5, Lv7/c$e;->c:Lv7/c$e;

    invoke-static {v2, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 19
    iget v8, p1, Ly8/i;->f:I

    invoke-static {v8}, Lq/g;->a(I)I

    move-result v8

    if-eqz v8, :cond_7

    if-eq v8, v4, :cond_6

    if-eq v8, v6, :cond_5

    goto :goto_2

    .line 20
    :cond_5
    iget-object v2, p1, Ly8/i;->d:Landroid/content/Context;

    invoke-static {v2, v7}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    iget-object p1, p1, Ly8/i;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly8/i$a;

    .line 21
    iget-object p1, p1, Ly8/i$a;->a:Lv7/c;

    .line 22
    invoke-virtual {v2, p1}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->q0(Lv7/c;)V

    goto :goto_2

    .line 23
    :cond_6
    iget-object v6, p1, Ly8/i;->g:Lh8/c;

    invoke-virtual {v6, v2}, Lh8/c;->p0(Lv7/c;)V

    .line 24
    iget-object v2, p1, Ly8/i;->d:Landroid/content/Context;

    invoke-static {v2, v7}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    iget-object v6, p1, Ly8/i;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly8/i$a;

    invoke-virtual {v2, v0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->y0(Ly8/i$a;)V

    .line 25
    iget-object p1, p1, Ly8/i;->d:Landroid/content/Context;

    check-cast p1, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    invoke-static {p1, v5}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->t0(Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;Lv7/c;)V

    goto :goto_3

    .line 26
    :cond_7
    iget-object v6, p1, Ly8/i;->g:Lh8/c;

    invoke-virtual {v6, v2}, Lh8/c;->p0(Lv7/c;)V

    .line 27
    iget-object v2, p1, Ly8/i;->d:Landroid/content/Context;

    invoke-static {v2, v7}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    iget-object v6, p1, Ly8/i;->e:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly8/i$a;

    invoke-virtual {v2, v0}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->x0(Ly8/i$a;)V

    .line 28
    iget-object p1, p1, Ly8/i;->d:Landroid/content/Context;

    check-cast p1, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    invoke-static {p1, v5}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->t0(Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;Lv7/c;)V

    goto :goto_3

    :cond_8
    :goto_2
    move v4, v3

    :goto_3
    if-eqz v4, :cond_9

    .line 29
    iget-object p1, v1, Ly8/i$c;->v:Landroidx/cardview/widget/CardView;

    const/16 v0, 0x8

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, v1, Ly8/i$c;->u:Landroidx/cardview/widget/CardView;

    .line 32
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method
