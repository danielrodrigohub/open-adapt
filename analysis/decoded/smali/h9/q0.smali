.class public final Lh9/q0;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/lighting/LightingActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;)V
    .locals 1

    const-class v0, Lcom/nike/adapt/ui/lighting/LightingActivity;

    invoke-direct {p0, v0}, Lh9/a;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lh9/q0;->c:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 7

    .line 1
    iget-object v2, p0, Lh9/q0;->c:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    if-eqz v2, :cond_0

    new-instance v6, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v2

    invoke-direct/range {v0 .. v5}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/nike/adapt/adk/model/ShoeColor;->Companion:Lcom/nike/adapt/adk/model/ShoeColor$Companion;

    .line 3
    sget-object v1, Lh8/c;->b:Lh8/c;

    .line 4
    invoke-virtual {v1}, Lh8/c;->S()Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nike/adapt/adk/model/ShoeColor$Companion;->valueOf(Lcom/nike/adapt/adk/model/AdaptShoeColor;)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    sget-object v1, Ls9/g;->a:Ls9/g;

    invoke-virtual {v1}, Ls9/g;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nike/adapt/adk/model/ShoeColor;->getNext(Z)Lcom/nike/adapt/adk/model/ShoeColor;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/nike/adapt/adk/model/AdaptShoeColor;->Companion:Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2, v3}, Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;->create$default(Lcom/nike/adapt/adk/model/AdaptShoeColor$Companion;Lcom/nike/adapt/adk/model/ShoeColor;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptShoeColor;

    move-result-object v6

    .line 6
    :goto_0
    sget-object v0, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    const-string v1, "deep_link_unlace_shoe_side"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "deep_link_change_lights_color"

    .line 7
    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    sget-object v0, Lr7/a;->l:Lr7/a;

    const-string v1, "deep_link_action"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh9/q0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh9/q0;

    iget-object v1, p0, Lh9/q0;->c:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    iget-object p1, p1, Lh9/q0;->c:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lh9/q0;->c:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lh9/q0;->c:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShoeControllerActivityChangeLights(color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
