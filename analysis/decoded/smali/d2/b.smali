.class public final Ld2/b;
.super Ljava/lang/Object;
.source "DocumentData.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:F

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public h:I

.field public i:I

.field public j:F

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p11}, Ld2/b;->a(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZ)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/b;->a:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Ld2/b;->b:Ljava/lang/String;

    .line 3
    iput p3, p0, Ld2/b;->c:F

    .line 4
    iput p4, p0, Ld2/b;->d:I

    .line 5
    iput p5, p0, Ld2/b;->e:I

    .line 6
    iput p6, p0, Ld2/b;->f:F

    .line 7
    iput p7, p0, Ld2/b;->g:F

    .line 8
    iput p8, p0, Ld2/b;->h:I

    .line 9
    iput p9, p0, Ld2/b;->i:I

    .line 10
    iput p10, p0, Ld2/b;->j:F

    .line 11
    iput-boolean p11, p0, Ld2/b;->k:Z

    return-void
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Ld2/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Ld2/b;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 3
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    int-to-float v0, v0

    .line 4
    iget v1, p0, Ld2/b;->c:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Ld2/b;->d:I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget v0, p0, Ld2/b;->e:I

    add-int/2addr v1, v0

    .line 7
    iget v0, p0, Ld2/b;->f:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget v0, p0, Ld2/b;->h:I

    add-int/2addr v1, v0

    return v1
.end method
