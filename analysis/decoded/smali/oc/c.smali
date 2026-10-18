.class public final Loc/c;
.super Ljava/lang/Object;
.source "BigfootAnimationFrameData.kt"


# instance fields
.field public final a:B

.field public final b:B

.field public final c:B


# direct methods
.method public constructor <init>(BBB)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Loc/c;->a:B

    .line 2
    iput-byte p2, p0, Loc/c;->b:B

    .line 3
    iput-byte p3, p0, Loc/c;->c:B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Loc/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Loc/c;

    iget-byte v1, p0, Loc/c;->a:B

    iget-byte v3, p1, Loc/c;->a:B

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-byte v1, p0, Loc/c;->b:B

    iget-byte v3, p1, Loc/c;->b:B

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-byte v1, p0, Loc/c;->c:B

    iget-byte p1, p1, Loc/c;->c:B

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-byte v0, p0, Loc/c;->a:B

    invoke-static {v0}, Ljava/lang/Byte;->hashCode(B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-byte v1, p0, Loc/c;->b:B

    invoke-static {v1}, Ljava/lang/Byte;->hashCode(B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-byte v0, p0, Loc/c;->c:B

    invoke-static {v0}, Ljava/lang/Byte;->hashCode(B)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BigfootAnimationLed(red="

    .line 1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-byte v1, p0, Loc/c;->a:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", green="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Loc/c;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Loc/c;->c:B

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, La0/b;->b(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
