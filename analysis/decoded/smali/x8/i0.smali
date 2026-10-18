.class public final Lx8/i0;
.super Lf8/b;
.source "ShoeControllerUiHelper.kt"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf8/b;-><init>()V

    .line 2
    iput p1, p0, Lx8/i0;->a:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lx8/i0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lx8/i0;

    iget v1, p0, Lx8/i0;->a:I

    iget p1, p1, Lx8/i0;->a:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lx8/i0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lx8/i0;->a:I

    const-string v1, "MoveUiToCurrentLacingPercentOfBigfoot(currentPercent="

    const-string v2, ")"

    .line 1
    invoke-static {v1, v0, v2}, La0/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
