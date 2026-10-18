.class public final Lh9/r0;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I

.field public final d:Lcom/nike/adapt/adk/Shoe;


# direct methods
.method public constructor <init>(ILcom/nike/adapt/adk/Shoe;)V
    .locals 1

    const-class v0, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-direct {p0, v0}, Lh9/a;-><init>(Ljava/lang/Class;)V

    iput p1, p0, Lh9/r0;->c:I

    iput-object p2, p0, Lh9/r0;->d:Lcom/nike/adapt/adk/Shoe;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object v0, Lr7/a;->o:Lr7/a;

    const-string v1, "deep_link_action"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2
    iget v0, p0, Lh9/r0;->c:I

    const-string v1, "deep_link_percent_position"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    iget-object v0, p0, Lh9/r0;->d:Lcom/nike/adapt/adk/Shoe;

    const-string v1, "deep_link_unlace_shoe_side"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh9/r0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh9/r0;

    iget v1, p0, Lh9/r0;->c:I

    iget v3, p1, Lh9/r0;->c:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lh9/r0;->d:Lcom/nike/adapt/adk/Shoe;

    iget-object p1, p1, Lh9/r0;->d:Lcom/nike/adapt/adk/Shoe;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lh9/r0;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lh9/r0;->d:Lcom/nike/adapt/adk/Shoe;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lh9/r0;->c:I

    iget-object v1, p0, Lh9/r0;->d:Lcom/nike/adapt/adk/Shoe;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShoeControllerActivityLaceTo(percent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", shoe="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
