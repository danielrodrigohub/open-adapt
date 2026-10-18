.class public final Lp8/i0;
.super Lp8/l;
.source "ControllerRequest.kt"


# instance fields
.field public final a:Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

.field public final b:I


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/model/AdaptCustomAnimation;I)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lp8/l;-><init>()V

    .line 2
    iput-object p1, p0, Lp8/i0;->a:Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    iput p2, p0, Lp8/i0;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp8/i0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp8/i0;

    iget-object v1, p0, Lp8/i0;->a:Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    iget-object v3, p1, Lp8/i0;->a:Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lp8/i0;->b:I

    iget p1, p1, Lp8/i0;->b:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lp8/i0;->a:Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptCustomAnimation;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lp8/i0;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lp8/i0;->a:Lcom/nike/adapt/adk/model/AdaptCustomAnimation;

    iget v1, p0, Lp8/i0;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartNewAnimationRequest(animation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
