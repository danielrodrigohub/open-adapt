.class public final Lh9/q;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lh9/q;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 1
    const-class v0, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lh9/a;-><init>(Ljava/lang/Class;ZLrd/h;)V

    .line 2
    iput-boolean v1, p0, Lh9/q;->c:Z

    .line 3
    iput-boolean p1, p0, Lh9/q;->d:Z

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 3

    const/4 v0, 0x0

    and-int/lit8 p2, p2, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p1, v1

    .line 4
    :cond_0
    const-class p2, Lcom/nike/adapt/ui/gestures/GesturesTutorialActivity;

    const/4 v2, 0x0

    invoke-direct {p0, p2, v1, v2}, Lh9/a;-><init>(Ljava/lang/Class;ZLrd/h;)V

    .line 5
    iput-boolean v0, p0, Lh9/q;->c:Z

    .line 6
    iput-boolean p1, p0, Lh9/q;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lh9/q;->c:Z

    const-string v1, "extra_gesture_tutorial_accessed_from_intro"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2
    iget-boolean v0, p0, Lh9/q;->d:Z

    const-string v1, "PREVIOUS_GESTURE_DOUBLE_TAP_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh9/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh9/q;

    iget-boolean v1, p0, Lh9/q;->c:Z

    iget-boolean v3, p1, Lh9/q;->c:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lh9/q;->d:Z

    iget-boolean p1, p1, Lh9/q;->d:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lh9/q;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lh9/q;->d:Z

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

    iget-boolean v0, p0, Lh9/q;->c:Z

    iget-boolean v1, p0, Lh9/q;->d:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GesturesTutorialDoNavigate(accessedFromIntro="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDoubleTabGestureEnabled="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
