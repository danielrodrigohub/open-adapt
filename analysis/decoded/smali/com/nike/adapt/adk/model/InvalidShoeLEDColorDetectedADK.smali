.class public final Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;
.super Ljava/lang/Exception;
.source "InvalidShoeLEDColorDetectedADK.kt"


# instance fields
.field private final blue:I

.field private final green:I

.field private final red:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    const-string v0, "The shoe reported an invalid color("

    const-string v1, ","

    .line 1
    invoke-static {v0, p1, v1, p2, v1}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 2
    invoke-static {v0, p3, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->red:I

    iput p2, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->green:I

    iput p3, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->blue:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;IIIILjava/lang/Object;)Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->red:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->green:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->blue:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->copy(III)Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->red:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->green:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->blue:I

    return v0
.end method

.method public final copy(III)Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;
    .locals 1

    new-instance v0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;

    invoke-direct {v0, p1, p2, p3}, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;-><init>(III)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;

    iget v1, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->red:I

    iget v3, p1, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->red:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->green:I

    iget v3, p1, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->green:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->blue:I

    iget p1, p1, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->blue:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBlue()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->blue:I

    return v0
.end method

.method public final getGreen()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->green:I

    return v0
.end method

.method public final getRed()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->red:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->red:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->green:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->blue:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->red:I

    iget v1, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->green:I

    iget v2, p0, Lcom/nike/adapt/adk/model/InvalidShoeLEDColorDetectedADK;->blue:I

    const-string v3, "InvalidShoeLEDColorDetectedADK(red="

    const-string v4, ", green="

    const-string v5, ", blue="

    .line 1
    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 2
    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
