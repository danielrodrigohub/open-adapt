.class public final synthetic Ly8/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic h:Ly8/i;

.field public final synthetic i:Ly8/i$c;


# direct methods
.method public synthetic constructor <init>(Ly8/i;Ly8/i$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly8/h;->h:Ly8/i;

    iput-object p2, p0, Ly8/h;->i:Ly8/i$c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Ly8/h;->h:Ly8/i;

    iget-object v0, p0, Ly8/h;->i:Ly8/i$c;

    const-string v1, "this$0"

    .line 1
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$holder"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Ly8/i;->d:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type com.nike.adapt.ui.lighting.LightingEffectsActivity"

    invoke-static {p1, v1}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p1, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->j0:Z

    .line 4
    sget-object v1, Lv7/c$d;->c:Lv7/c$d;

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->u0(Lv7/c;I)V

    .line 5
    invoke-virtual {p1}, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->s0()Lcom/nike/adapt/adk/IDeviceController;

    move-result-object p1

    sget-object v1, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    sget-object v2, Lp8/j0;->a:Lp8/j0;

    invoke-interface {p1, v1, v2}, Lcom/nike/adapt/adk/IDeviceController;->requestTo(Lcom/nike/adapt/adk/Shoe;Lp8/l;)V

    .line 6
    sget-object p1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/nike/adapt/adk/InMemoryCache;->setNeedToDisplayEffectsSubtitleForFirstTime(Z)V

    .line 7
    iget-object p1, v0, Ly8/i$c;->v:Landroidx/cardview/widget/CardView;

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, v0, Ly8/i$c;->u:Landroidx/cardview/widget/CardView;

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
