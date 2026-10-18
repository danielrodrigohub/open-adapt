.class public final Lp8/f;
.super Lp8/l;
.source "ControllerRequest.kt"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "percentType"

    invoke-static {v0, v1}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lp8/l;-><init>()V

    .line 2
    iput p1, p0, Lp8/f;->a:I

    iput v0, p0, Lp8/f;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lp8/f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lp8/f;

    iget v1, p0, Lp8/f;->a:I

    iget v3, p1, Lp8/f;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lp8/f;->b:I

    iget p1, p1, Lp8/f;->b:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lp8/f;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lp8/f;->b:I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lp8/f;->a:I

    iget v1, p0, Lp8/f;->b:I

    const-string v2, "AutoLaceSetRequest(percent="

    const-string v3, ", percentType="

    .line 1
    invoke-static {v2, v0, v3}, Landroidx/appcompat/widget/y0;->c(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-static {v1}, Led/c;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
