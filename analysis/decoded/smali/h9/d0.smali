.class public final Lh9/d0;
.super Lh9/a;
.source "ActivityDoNavigate.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh9/a<",
        "Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lea/m;


# direct methods
.method public constructor <init>(Lea/m;)V
    .locals 3

    const-class v0, Lcom/nike/adapt/ui/myshoes/SelectShoesActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lh9/a;-><init>(Ljava/lang/Class;ZLrd/h;)V

    iput-object p1, p0, Lh9/d0;->c:Lea/m;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lh9/d0;->c:Lea/m;

    const-string v1, "PARAM_SELECTED_PAIR"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

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
    instance-of v1, p1, Lh9/d0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh9/d0;

    iget-object v1, p0, Lh9/d0;->c:Lea/m;

    iget-object p1, p1, Lh9/d0;->c:Lea/m;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lh9/d0;->c:Lea/m;

    invoke-virtual {v0}, Lea/m;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lh9/d0;->c:Lea/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectShoeDoNavigate(selectedPair="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
