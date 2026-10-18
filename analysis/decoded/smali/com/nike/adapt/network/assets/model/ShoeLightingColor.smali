.class public final Lcom/nike/adapt/network/assets/model/ShoeLightingColor;
.super Ljava/lang/Object;
.source "Manifest.kt"


# instance fields
.field private final blue:I
    .annotation runtime Lf7/b;
        value = "blue"
    .end annotation
.end field

.field private final brightness:I
    .annotation runtime Lf7/b;
        value = "brightness"
    .end annotation
.end field

.field private final green:I
    .annotation runtime Lf7/b;
        value = "green"
    .end annotation
.end field

.field private final red:I
    .annotation runtime Lf7/b;
        value = "red"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->blue:I

    .line 3
    iput p2, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->green:I

    .line 4
    iput p3, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->red:I

    .line 5
    iput p4, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->brightness:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/network/assets/model/ShoeLightingColor;IIIIILjava/lang/Object;)Lcom/nike/adapt/network/assets/model/ShoeLightingColor;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->blue:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->green:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->red:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->brightness:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->copy(IIII)Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->blue:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->green:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->red:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->brightness:I

    return v0
.end method

.method public final copy(IIII)Lcom/nike/adapt/network/assets/model/ShoeLightingColor;
    .locals 1

    new-instance v0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;

    iget v1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->blue:I

    iget v3, p1, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->blue:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->green:I

    iget v3, p1, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->green:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->red:I

    iget v3, p1, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->red:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->brightness:I

    iget p1, p1, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->brightness:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBlue()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->blue:I

    return v0
.end method

.method public final getBrightness()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->brightness:I

    return v0
.end method

.method public final getGreen()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->green:I

    return v0
.end method

.method public final getRed()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->red:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->blue:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->green:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->red:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->brightness:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->blue:I

    iget v1, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->green:I

    iget v2, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->red:I

    iget v3, p0, Lcom/nike/adapt/network/assets/model/ShoeLightingColor;->brightness:I

    const-string v4, "ShoeLightingColor(blue="

    const-string v5, ", green="

    const-string v6, ", red="

    .line 1
    invoke-static {v4, v0, v5, v1, v6}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
