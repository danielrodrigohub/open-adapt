.class public final synthetic Landroidx/activity/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/d;->h:I

    iput-object p1, p0, Landroidx/activity/d;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/activity/d;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/d;->i:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/nike/adapt/ui/lighting/LightingEffectsActivity;->k0:I

    const-string v1, "$this_apply"

    .line 1
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f06029d

    .line 2
    invoke-static {v1}, Landroidx/lifecycle/o;->o(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Landroidx/activity/d;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/exoplayer2/ui/d;

    sget v1, Lcom/google/android/exoplayer2/ui/d;->m0:I

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/d;->m()V

    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/activity/d;->i:Ljava/lang/Object;

    check-cast v0, Lu4/n;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lu4/n;->J:Z

    .line 5
    invoke-virtual {v0}, Lu4/n;->D()V

    return-void

    .line 6
    :pswitch_3
    iget-object v0, p0, Landroidx/activity/d;->i:Ljava/lang/Object;

    check-cast v0, Ly0/w;

    .line 7
    iget-object v0, v0, Ly0/w;->h:Ly0/d0$d;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ly0/d0$d;->a()V

    return-void

    .line 10
    :pswitch_4
    iget-object v0, p0, Landroidx/activity/d;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity;

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void

    .line 12
    :goto_0
    iget-object v0, p0, Landroidx/activity/d;->i:Ljava/lang/Object;

    check-cast v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    sget v1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->s0:I

    const-string v1, "this$0"

    .line 13
    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;->u0()Lh8/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lh8/a;->s(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
