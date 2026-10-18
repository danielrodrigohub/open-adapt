.class public final Lcom/nike/adapt/adk/model/AdaptAnimation;
.super Ljava/lang/Object;
.source "AdaptAnimation.kt"


# instance fields
.field private final color:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

.field private final duration:I

.field private final enter:I

.field private final exit:I

.field private final off:I

.field private final on:I

.field private final prequel:I


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;IIIIII)V
    .locals 1

    const-string v0, "color"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->color:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    .line 3
    iput p2, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->prequel:I

    .line 4
    iput p3, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->enter:I

    .line 5
    iput p4, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->on:I

    .line 6
    iput p5, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->exit:I

    .line 7
    iput p6, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->off:I

    .line 8
    iput p7, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->duration:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/nike/adapt/adk/model/AdaptAnimation;Lcom/nike/adapt/adk/model/AdaptDeviceColor;IIIIIIILjava/lang/Object;)Lcom/nike/adapt/adk/model/AdaptAnimation;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->color:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->prequel:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->enter:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->on:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->exit:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->off:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->duration:I

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/nike/adapt/adk/model/AdaptAnimation;->copy(Lcom/nike/adapt/adk/model/AdaptDeviceColor;IIIIII)Lcom/nike/adapt/adk/model/AdaptAnimation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/nike/adapt/adk/model/AdaptDeviceColor;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->color:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->prequel:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->enter:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->on:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->exit:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->off:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->duration:I

    return v0
.end method

.method public final copy(Lcom/nike/adapt/adk/model/AdaptDeviceColor;IIIIII)Lcom/nike/adapt/adk/model/AdaptAnimation;
    .locals 9

    const-string v0, "color"

    move-object v2, p1

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/adapt/adk/model/AdaptAnimation;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/nike/adapt/adk/model/AdaptAnimation;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;IIIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/nike/adapt/adk/model/AdaptAnimation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/nike/adapt/adk/model/AdaptAnimation;

    iget-object v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->color:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    iget-object v3, p1, Lcom/nike/adapt/adk/model/AdaptAnimation;->color:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->prequel:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptAnimation;->prequel:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->enter:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptAnimation;->enter:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->on:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptAnimation;->on:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->exit:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptAnimation;->exit:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->off:I

    iget v3, p1, Lcom/nike/adapt/adk/model/AdaptAnimation;->off:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->duration:I

    iget p1, p1, Lcom/nike/adapt/adk/model/AdaptAnimation;->duration:I

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getColor()Lcom/nike/adapt/adk/model/AdaptDeviceColor;
    .locals 1

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->color:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    return-object v0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->duration:I

    return v0
.end method

.method public final getEnter()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->enter:I

    return v0
.end method

.method public final getExit()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->exit:I

    return v0
.end method

.method public final getOff()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->off:I

    return v0
.end method

.method public final getOn()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->on:I

    return v0
.end method

.method public final getPrequel()I
    .locals 1

    iget v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->prequel:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->color:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {v0}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->prequel:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->enter:I

    .line 3
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 4
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->on:I

    .line 5
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 6
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->exit:I

    .line 7
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 8
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->off:I

    .line 9
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 10
    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->duration:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->color:Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    iget v1, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->prequel:I

    iget v2, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->enter:I

    iget v3, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->on:I

    iget v4, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->exit:I

    iget v5, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->off:I

    iget v6, p0, Lcom/nike/adapt/adk/model/AdaptAnimation;->duration:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdaptAnimation(color="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", prequel="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", enter="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", on="

    const-string v1, ", exit="

    .line 1
    invoke-static {v7, v2, v0, v3, v1}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ", off="

    const-string v1, ", duration="

    invoke-static {v7, v4, v0, v5, v1}, La1/d;->e(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v0, ")"

    .line 2
    invoke-static {v7, v6, v0}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
