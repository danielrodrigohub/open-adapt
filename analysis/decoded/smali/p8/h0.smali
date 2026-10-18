.class public final Lp8/h0;
.super Lp8/l;
.source "ControllerRequest.kt"


# instance fields
.field public final a:Lcom/nike/adapt/adk/model/AdaptAnimation;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/model/AdaptAnimation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp8/l;-><init>()V

    .line 2
    iput-object p1, p0, Lp8/h0;->a:Lcom/nike/adapt/adk/model/AdaptAnimation;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp8/h0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp8/h0;

    iget-object v1, p0, Lp8/h0;->a:Lcom/nike/adapt/adk/model/AdaptAnimation;

    iget-object p1, p1, Lp8/h0;->a:Lcom/nike/adapt/adk/model/AdaptAnimation;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lp8/h0;->a:Lcom/nike/adapt/adk/model/AdaptAnimation;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptAnimation;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lp8/h0;->a:Lcom/nike/adapt/adk/model/AdaptAnimation;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartAnimationRequest(animation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
