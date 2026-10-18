.class public final Ln3/y0$f;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y0$f$a;
    }
.end annotation


# static fields
.field public static final m:Ln3/y0$f;

.field public static final n:Ly0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Ln3/y0$f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:F

.field public final l:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/y0$f$a;

    invoke-direct {v0}, Ln3/y0$f$a;-><init>()V

    .line 2
    new-instance v1, Ln3/y0$f;

    invoke-direct {v1, v0}, Ln3/y0$f;-><init>(Ln3/y0$f$a;)V

    .line 3
    sput-object v1, Ln3/y0$f;->m:Ln3/y0$f;

    .line 4
    sget-object v0, Ly0/h;->d:Ly0/h;

    sput-object v0, Ln3/y0$f;->n:Ly0/h;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Ln3/y0$f;->h:J

    .line 14
    iput-wide p3, p0, Ln3/y0$f;->i:J

    .line 15
    iput-wide p5, p0, Ln3/y0$f;->j:J

    .line 16
    iput p7, p0, Ln3/y0$f;->k:F

    .line 17
    iput p8, p0, Ln3/y0$f;->l:F

    return-void
.end method

.method public constructor <init>(Ln3/y0$f$a;)V
    .locals 7

    .line 1
    iget-wide v0, p1, Ln3/y0$f$a;->a:J

    .line 2
    iget-wide v2, p1, Ln3/y0$f$a;->b:J

    .line 3
    iget-wide v4, p1, Ln3/y0$f$a;->c:J

    .line 4
    iget v6, p1, Ln3/y0$f$a;->d:F

    .line 5
    iget p1, p1, Ln3/y0$f$a;->e:F

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide v0, p0, Ln3/y0$f;->h:J

    .line 8
    iput-wide v2, p0, Ln3/y0$f;->i:J

    .line 9
    iput-wide v4, p0, Ln3/y0$f;->j:J

    .line 10
    iput v6, p0, Ln3/y0$f;->k:F

    .line 11
    iput p1, p0, Ln3/y0$f;->l:F

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
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/y0$f;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/y0$f;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/y0$f;->j:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/y0$f;->k:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/y0$f;->l:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3/y0$f;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ln3/y0$f;

    .line 3
    iget-wide v3, p0, Ln3/y0$f;->h:J

    iget-wide v5, p1, Ln3/y0$f;->h:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Ln3/y0$f;->i:J

    iget-wide v5, p1, Ln3/y0$f;->i:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Ln3/y0$f;->j:J

    iget-wide v5, p1, Ln3/y0$f;->j:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Ln3/y0$f;->k:F

    iget v3, p1, Ln3/y0$f;->k:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, Ln3/y0$f;->l:F

    iget p1, p1, Ln3/y0$f;->l:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Ln3/y0$f;->h:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v3, p0, Ln3/y0$f;->i:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v3, p0, Ln3/y0$f;->j:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Ln3/y0$f;->k:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Ln3/y0$f;->l:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :cond_1
    add-int/2addr v0, v4

    return v0
.end method
