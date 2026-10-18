.class public final Lx8/m;
.super Ljava/lang/Object;
.source "BadgeData.kt"


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lx8/m;-><init>(IIIILrd/h;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx8/m;->a:I

    iput p2, p0, Lx8/m;->b:I

    iput p3, p0, Lx8/m;->c:I

    return-void
.end method

.method public constructor <init>(IIIILrd/h;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lx8/m;->a:I

    iput p1, p0, Lx8/m;->b:I

    iput p1, p0, Lx8/m;->c:I

    return-void
.end method

.method public static a(Lx8/m;)Lx8/m;
    .locals 3

    iget v0, p0, Lx8/m;->a:I

    iget v1, p0, Lx8/m;->b:I

    iget v2, p0, Lx8/m;->c:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lx8/m;

    invoke-direct {p0, v0, v1, v2}, Lx8/m;-><init>(III)V

    return-object p0
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget v0, p0, Lx8/m;->a:I

    iget v1, p0, Lx8/m;->b:I

    add-int/2addr v0, v1

    iget v1, p0, Lx8/m;->c:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lx8/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lx8/m;

    iget v1, p0, Lx8/m;->a:I

    iget v3, p1, Lx8/m;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lx8/m;->b:I

    iget v3, p1, Lx8/m;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lx8/m;->c:I

    iget p1, p1, Lx8/m;->c:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lx8/m;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lx8/m;->b:I

    const/16 v2, 0x1f

    .line 1
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 2
    iget v1, p0, Lx8/m;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lx8/m;->a:I

    iget v1, p0, Lx8/m;->b:I

    iget v2, p0, Lx8/m;->c:I

    const-string v3, "BadgeData(firmwareUpdate="

    const-string v4, ", autoLaceIntro="

    const-string v5, ", gesturesIntro="

    .line 1
    invoke-static {v3, v0, v4, v1, v5}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    .line 2
    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
