.class public final Lh9/m;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/FindYourFitActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lh9/m;-><init>(ZILrd/h;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/nike/adapt/ui/FindYourFitActivity;

    invoke-direct {p0, v0}, Lh9/a;-><init>(Ljava/lang/Class;)V

    iput-boolean p1, p0, Lh9/m;->c:Z

    return-void
.end method

.method public constructor <init>(ZILrd/h;)V
    .locals 0

    const/4 p1, 0x0

    .line 2
    const-class p2, Lcom/nike/adapt/ui/FindYourFitActivity;

    invoke-direct {p0, p2}, Lh9/a;-><init>(Ljava/lang/Class;)V

    iput-boolean p1, p0, Lh9/m;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lh9/m;->c:Z

    const-string v1, "extra_is_deep_link"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2
    iget-boolean v0, p0, Lh9/m;->c:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x2000000

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 1

    const v0, 0x7f010020

    return v0
.end method

.method public final c()I
    .locals 1

    const v0, 0x7f010021

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh9/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh9/m;

    iget-boolean v1, p0, Lh9/m;->c:Z

    iget-boolean p1, p1, Lh9/m;->c:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lh9/m;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lh9/m;->c:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FindYourFitActivityDoNavigate(isDeepLink="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
