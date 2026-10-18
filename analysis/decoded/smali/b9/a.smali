.class public final Lb9/a;
.super Ljava/lang/Object;
.source "AnimatingController.kt"


# instance fields
.field public final a:Lcom/nike/adapt/adk/Shoe;

.field public final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/Shoe;Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "shoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb9/a;->a:Lcom/nike/adapt/adk/Shoe;

    iput-object p2, p0, Lb9/a;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lb9/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lb9/a;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lb9/a;->a:Lcom/nike/adapt/adk/Shoe;

    :cond_1
    iget-object p1, p0, Lb9/a;->a:Lcom/nike/adapt/adk/Shoe;

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lb9/a;->a:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lb9/a;->a:Lcom/nike/adapt/adk/Shoe;

    iget-object v1, p0, Lb9/a;->b:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnimatingController(shoe="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", shoeController="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
