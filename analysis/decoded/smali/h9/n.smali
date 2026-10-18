.class public final Lh9/n;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v0, v1, v2}, Lh9/n;-><init>(ZZILrd/h;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 1
    const-class v0, Lcom/nike/adapt/ui/settings/FirmwareUpdateActivity;

    invoke-direct {p0, v0}, Lh9/a;-><init>(Ljava/lang/Class;)V

    iput-boolean p1, p0, Lh9/n;->c:Z

    iput-boolean p2, p0, Lh9/n;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZILrd/h;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1, p1}, Lh9/n;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget-boolean v0, p0, Lh9/n;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f010023

    goto :goto_0

    :cond_0
    const v0, 0x7f010020

    :goto_0
    return v0
.end method

.method public final c()I
    .locals 1

    iget-boolean v0, p0, Lh9/n;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f010023

    goto :goto_0

    :cond_0
    const v0, 0x7f010021

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh9/n;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh9/n;

    iget-boolean v1, p0, Lh9/n;->c:Z

    iget-boolean v3, p1, Lh9/n;->c:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lh9/n;->d:Z

    iget-boolean p1, p1, Lh9/n;->d:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lh9/n;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lh9/n;->d:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lh9/n;->c:Z

    iget-boolean v1, p0, Lh9/n;->d:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirmwareUpdateDoNavigate(isUserInitiated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", animate="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
