.class public final Lz8/m$b;
.super Ljava/lang/Object;
.source "LightPacksRequestQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz8/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/nike/adapt/adk/model/AdaptShoeColor;

.field public final c:Lz8/a;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(ILcom/nike/adapt/adk/model/AdaptShoeColor;Lz8/a;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v1

    :cond_1
    const-string p4, "type"

    .line 1
    invoke-static {p1, p4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lz8/m$b;->a:I

    .line 4
    iput-object p2, p0, Lz8/m$b;->b:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    .line 5
    iput-object p3, p0, Lz8/m$b;->c:Lz8/a;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lz8/m$b;->d:Z

    .line 7
    iput-boolean p1, p0, Lz8/m$b;->e:Z

    .line 8
    iput-boolean p1, p0, Lz8/m$b;->f:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lz8/m$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lz8/m$b;

    iget v1, p0, Lz8/m$b;->a:I

    iget v3, p1, Lz8/m$b;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lz8/m$b;->b:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    iget-object v3, p1, Lz8/m$b;->b:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lz8/m$b;->c:Lz8/a;

    iget-object v3, p1, Lz8/m$b;->c:Lz8/a;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lz8/m$b;->d:Z

    iget-boolean v3, p1, Lz8/m$b;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lz8/m$b;->e:Z

    iget-boolean v3, p1, Lz8/m$b;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lz8/m$b;->f:Z

    iget-boolean p1, p1, Lz8/m$b;->f:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lz8/m$b;->a:I

    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz8/m$b;->b:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lz8/m$b;->c:Lz8/a;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz8/m$b;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz8/m$b;->e:Z

    if-eqz v1, :cond_3

    move v1, v2

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lz8/m$b;->f:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lz8/m$b;->a:I

    iget-object v1, p0, Lz8/m$b;->b:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    iget-object v2, p0, Lz8/m$b;->c:Lz8/a;

    iget-boolean v3, p0, Lz8/m$b;->d:Z

    iget-boolean v4, p0, Lz8/m$b;->e:Z

    iget-boolean v5, p0, Lz8/m$b;->f:Z

    const-string v6, "Request(type="

    .line 1
    invoke-static {v6}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2
    invoke-static {v0}, La0/d;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", color="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", lightPack="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pendingColorChange="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pendingStopAnimation="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pendingStartAnimation="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
