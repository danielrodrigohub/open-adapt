.class public final Lh9/v0;
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
.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lh9/v0;-><init>(ZILrd/h;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    const-class p1, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-direct {p0, p1}, Lh9/a;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lh9/v0;->c:Z

    .line 2
    iput-boolean p1, p0, Lh9/v0;->d:Z

    return-void
.end method

.method public constructor <init>(ZILrd/h;)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    const-class p2, Lcom/nike/adapt/ui/shoecontroller/ShoeControllerActivity;

    invoke-direct {p0, p2}, Lh9/a;-><init>(Ljava/lang/Class;)V

    iput-boolean p1, p0, Lh9/v0;->c:Z

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lh9/v0;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    iget-boolean v0, p0, Lh9/v0;->c:Z

    const-string v1, "extra_unlace_gesture_on"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh9/v0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh9/v0;

    iget-boolean v1, p0, Lh9/v0;->c:Z

    iget-boolean p1, p1, Lh9/v0;->c:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final g()Z
    .locals 1

    iget-boolean v0, p0, Lh9/v0;->d:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lh9/v0;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lh9/v0;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShoeControllerDoNavigate(unlaceGestureOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
