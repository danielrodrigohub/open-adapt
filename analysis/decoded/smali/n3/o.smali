.class public final Ln3/o;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Ln3/h;


# instance fields
.field public final h:I

.field public final i:I

.field public final j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln3/n;->c:Ln3/n;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/o;->h:I

    .line 3
    iput p2, p0, Ln3/o;->i:I

    .line 4
    iput p3, p0, Ln3/o;->j:I

    return-void
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ln3/o;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/o;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ln3/o;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/o;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ln3/o;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/o;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3/o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ln3/o;

    .line 3
    iget v1, p0, Ln3/o;->h:I

    iget v3, p1, Ln3/o;->h:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ln3/o;->i:I

    iget v3, p1, Ln3/o;->i:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Ln3/o;->j:I

    iget p1, p1, Ln3/o;->j:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Ln3/o;->h:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Ln3/o;->i:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Ln3/o;->j:I

    add-int/2addr v1, v0

    return v1
.end method
