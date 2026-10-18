.class public final Lja/a;
.super Ljava/lang/Object;
.source "AdaptKitRequirements.kt"

# interfaces
.implements Lja/b;


# instance fields
.field public final a:Landroid/support/v4/media/a;

.field public final b:Landroid/support/v4/media/a;

.field public final c:Landroid/support/v4/media/a;

.field public final d:Landroid/support/v4/media/a;

.field public final e:Landroid/support/v4/media/a;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/a;Landroid/support/v4/media/a;Landroid/support/v4/media/a;Landroid/support/v4/media/a;Landroid/support/v4/media/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lja/a;->a:Landroid/support/v4/media/a;

    .line 3
    iput-object p2, p0, Lja/a;->b:Landroid/support/v4/media/a;

    .line 4
    iput-object p3, p0, Lja/a;->c:Landroid/support/v4/media/a;

    .line 5
    iput-object p4, p0, Lja/a;->d:Landroid/support/v4/media/a;

    .line 6
    iput-object p5, p0, Lja/a;->e:Landroid/support/v4/media/a;

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/a;
    .locals 1

    iget-object v0, p0, Lja/a;->b:Landroid/support/v4/media/a;

    return-object v0
.end method

.method public final b()Landroid/support/v4/media/a;
    .locals 1

    iget-object v0, p0, Lja/a;->a:Landroid/support/v4/media/a;

    return-object v0
.end method

.method public final c()Landroid/support/v4/media/a;
    .locals 1

    iget-object v0, p0, Lja/a;->c:Landroid/support/v4/media/a;

    return-object v0
.end method

.method public final d()Landroid/support/v4/media/a;
    .locals 1

    iget-object v0, p0, Lja/a;->d:Landroid/support/v4/media/a;

    return-object v0
.end method

.method public final e()Landroid/support/v4/media/a;
    .locals 1

    iget-object v0, p0, Lja/a;->e:Landroid/support/v4/media/a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lja/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lja/a;

    .line 1
    iget-object v1, p0, Lja/a;->a:Landroid/support/v4/media/a;

    .line 2
    iget-object v3, p1, Lja/a;->a:Landroid/support/v4/media/a;

    .line 3
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lja/a;->b:Landroid/support/v4/media/a;

    iget-object v3, p1, Lja/a;->b:Landroid/support/v4/media/a;

    .line 5
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lja/a;->c:Landroid/support/v4/media/a;

    iget-object v3, p1, Lja/a;->c:Landroid/support/v4/media/a;

    .line 7
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 8
    :cond_4
    iget-object v1, p0, Lja/a;->d:Landroid/support/v4/media/a;

    iget-object v3, p1, Lja/a;->d:Landroid/support/v4/media/a;

    .line 9
    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 10
    :cond_5
    iget-object v1, p0, Lja/a;->e:Landroid/support/v4/media/a;

    iget-object p1, p1, Lja/a;->e:Landroid/support/v4/media/a;

    .line 11
    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lja/a;->b:Landroid/support/v4/media/a;

    .line 2
    instance-of v0, v0, Lja/d;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lja/a;->c:Landroid/support/v4/media/a;

    .line 4
    instance-of v0, v0, Lja/d;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lja/a;->a:Landroid/support/v4/media/a;

    .line 6
    instance-of v0, v0, Lja/d;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lja/a;->d:Landroid/support/v4/media/a;

    .line 8
    instance-of v0, v0, Lja/d;

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lja/a;->e:Landroid/support/v4/media/a;

    .line 10
    instance-of v0, v0, Lja/d;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lja/a;->a:Landroid/support/v4/media/a;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lja/a;->b:Landroid/support/v4/media/a;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lja/a;->c:Landroid/support/v4/media/a;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lja/a;->d:Landroid/support/v4/media/a;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v0, p0, Lja/a;->e:Landroid/support/v4/media/a;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lja/a;->a:Landroid/support/v4/media/a;

    .line 2
    iget-object v1, p0, Lja/a;->b:Landroid/support/v4/media/a;

    .line 3
    iget-object v2, p0, Lja/a;->c:Landroid/support/v4/media/a;

    .line 4
    iget-object v3, p0, Lja/a;->d:Landroid/support/v4/media/a;

    .line 5
    iget-object v4, p0, Lja/a;->e:Landroid/support/v4/media/a;

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdaptKitRequirements(locationPermissionMissing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", locationTurnedOffByUser="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bluetoothIsTurnedOff="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", nearbyDevicesPermissionMissing="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", bluetoothConnectPermissionMissing="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
