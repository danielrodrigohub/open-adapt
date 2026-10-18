.class public final Lb4/g;
.super Lb4/h;
.source "OpusReader.java"


# static fields
.field public static final o:[B

.field public static final p:[B


# instance fields
.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lb4/g;->o:[B

    new-array v0, v0, [B

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lb4/g;->p:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb4/h;-><init>()V

    return-void
.end method

.method public static f(Lm5/w;[B)Z
    .locals 4

    .line 1
    iget v0, p0, Lm5/w;->c:I

    iget v1, p0, Lm5/w;->b:I

    sub-int/2addr v0, v1

    .line 2
    array-length v2, p1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_0

    return v3

    .line 3
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    .line 4
    array-length v2, p1

    invoke-virtual {p0, v0, v3, v2}, Lm5/w;->d([BII)V

    .line 5
    invoke-virtual {p0, v1}, Lm5/w;->D(I)V

    .line 6
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final c(Lm5/w;)J
    .locals 6

    .line 1
    iget-object p1, p1, Lm5/w;->a:[B

    const/4 v0, 0x0

    .line 2
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 3
    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_3

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v1

    :goto_1
    int-to-long v0, v2

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 4
    invoke-virtual {p0, v0, v1}, Lb4/h;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Lm5/w;JLb4/h$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 1
    sget-object p2, Lb4/g;->o:[B

    invoke-static {p1, p2}, Lb4/g;->f(Lm5/w;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p1, Lm5/w;->a:[B

    .line 3
    iget p1, p1, Lm5/w;->c:I

    .line 4
    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const/16 p2, 0x9

    .line 5
    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 6
    invoke-static {p1}, Lp4/h;->d([B)Ljava/util/List;

    move-result-object p1

    .line 7
    iget-object v0, p4, Lb4/h$a;->a:Ln3/s0;

    if-eqz v0, :cond_0

    return p3

    .line 8
    :cond_0
    new-instance v0, Ln3/s0$a;

    invoke-direct {v0}, Ln3/s0$a;-><init>()V

    const-string v1, "audio/opus"

    .line 9
    iput-object v1, v0, Ln3/s0$a;->k:Ljava/lang/String;

    .line 10
    iput p2, v0, Ln3/s0$a;->x:I

    const p2, 0xbb80

    .line 11
    iput p2, v0, Ln3/s0$a;->y:I

    .line 12
    iput-object p1, v0, Ln3/s0$a;->m:Ljava/util/List;

    .line 13
    new-instance p1, Ln3/s0;

    invoke-direct {p1, v0}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 14
    iput-object p1, p4, Lb4/h$a;->a:Ln3/s0;

    return p3

    .line 15
    :cond_1
    sget-object p2, Lb4/g;->p:[B

    invoke-static {p1, p2}, Lb4/g;->f(Lm5/w;[B)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 16
    iget-object p2, p4, Lb4/h$a;->a:Ln3/s0;

    invoke-static {p2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-boolean p2, p0, Lb4/g;->n:Z

    if-eqz p2, :cond_2

    return p3

    .line 18
    :cond_2
    iput-boolean p3, p0, Lb4/g;->n:Z

    const/16 p2, 0x8

    .line 19
    invoke-virtual {p1, p2}, Lm5/w;->E(I)V

    .line 20
    invoke-static {p1, v0, v0}, Ls3/z;->c(Lm5/w;ZZ)Ls3/z$a;

    move-result-object p1

    .line 21
    iget-object p1, p1, Ls3/z$a;->a:[Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lu6/v;->t([Ljava/lang/Object;)Lu6/v;

    move-result-object p1

    invoke-static {p1}, Ls3/z;->b(Ljava/util/List;)Lf4/a;

    move-result-object p1

    if-nez p1, :cond_3

    return p3

    .line 23
    :cond_3
    iget-object p2, p4, Lb4/h$a;->a:Ln3/s0;

    .line 24
    new-instance v0, Ln3/s0$a;

    invoke-direct {v0, p2}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 25
    iget-object p2, p4, Lb4/h$a;->a:Ln3/s0;

    iget-object p2, p2, Ln3/s0;->q:Lf4/a;

    .line 26
    invoke-virtual {p1, p2}, Lf4/a;->b(Lf4/a;)Lf4/a;

    move-result-object p1

    .line 27
    iput-object p1, v0, Ln3/s0$a;->i:Lf4/a;

    .line 28
    new-instance p1, Ln3/s0;

    invoke-direct {p1, v0}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 29
    iput-object p1, p4, Lb4/h$a;->a:Ln3/s0;

    return p3

    .line 30
    :cond_4
    iget-object p1, p4, Lb4/h$a;->a:Ln3/s0;

    invoke-static {p1}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb4/h;->e(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lb4/g;->n:Z

    :cond_0
    return-void
.end method
