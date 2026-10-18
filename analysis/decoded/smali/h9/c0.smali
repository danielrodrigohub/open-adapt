.class public final Lh9/c0;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/PairingActivity;",
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

    invoke-direct {p0, v0, v0, v1, v2}, Lh9/c0;-><init>(ZZILrd/h;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 1
    const-class p1, Lcom/nike/adapt/ui/PairingActivity;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lh9/a;-><init>(Ljava/lang/Class;ZLrd/h;)V

    iput-boolean p2, p0, Lh9/c0;->c:Z

    iput-boolean p2, p0, Lh9/c0;->d:Z

    return-void
.end method

.method public constructor <init>(ZZILrd/h;)V
    .locals 0

    .line 2
    const-class p1, Lcom/nike/adapt/ui/PairingActivity;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Lh9/a;-><init>(Ljava/lang/Class;ZLrd/h;)V

    iput-boolean p3, p0, Lh9/c0;->c:Z

    iput-boolean p3, p0, Lh9/c0;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    iget-boolean v0, p0, Lh9/c0;->c:Z

    const-string v1, "extra_is_deep_link"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh9/c0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh9/c0;

    iget-boolean v1, p0, Lh9/c0;->c:Z

    iget-boolean v3, p1, Lh9/c0;->c:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lh9/c0;->d:Z

    iget-boolean p1, p1, Lh9/c0;->d:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lh9/c0;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lh9/c0;->d:Z

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

    iget-boolean v0, p0, Lh9/c0;->c:Z

    iget-boolean v1, p0, Lh9/c0;->d:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PairingActivityDoNavigate(isDeepLink="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", startWithResults="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
