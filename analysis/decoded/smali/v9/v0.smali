.class public final Lv9/v0;
.super Lv9/k;
.source "AdaptKitDeviceRequest.kt"

# interfaces
.implements Lv9/e2;
.implements Lv9/t2;


# annotations
.annotation runtime Lv9/n;
    minimumFirmwareVersion = "1.5.0"
.end annotation


# instance fields
.field public final b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/j;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/p;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqd/l;Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/l<",
            "-",
            "Lv9/j;",
            "Lfd/o;",
            ">;",
            "Lqd/l<",
            "-",
            "Lv9/p;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "minimumFirmwareRequirementNotMet"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lv9/k;-><init>()V

    .line 2
    iput-object p1, p0, Lv9/v0;->b:Lqd/l;

    .line 3
    iput-object p2, p0, Lv9/v0;->c:Lqd/l;

    return-void
.end method


# virtual methods
.method public final a()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "Lv9/p;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv9/v0;->c:Lqd/l;

    return-object v0
.end method

.method public final b()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "Lv9/j;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lv9/v0;->b:Lqd/l;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv9/v0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv9/v0;

    .line 1
    iget-object v1, p0, Lv9/v0;->b:Lqd/l;

    .line 2
    iget-object v3, p1, Lv9/v0;->b:Lqd/l;

    .line 3
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lv9/v0;->c:Lqd/l;

    iget-object p1, p1, Lv9/v0;->c:Lqd/l;

    .line 5
    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lv9/v0;->b:Lqd/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lv9/v0;->c:Lqd/l;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lv9/v0;->b:Lqd/l;

    .line 2
    iget-object v1, p0, Lv9/v0;->c:Lqd/l;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnimationGetRequest(notConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", minimumFirmwareRequirementNotMet="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
