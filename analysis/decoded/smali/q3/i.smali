.class public final Lq3/i;
.super Ljava/lang/Object;
.source "DecoderReuseEvaluation.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ln3/s0;

.field public final c:Ln3/s0;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln3/s0;Ln3/s0;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iput-object p1, p0, Lq3/i;->a:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lq3/i;->b:Ln3/s0;

    .line 7
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p3, p0, Lq3/i;->c:Ln3/s0;

    .line 9
    iput p4, p0, Lq3/i;->d:I

    .line 10
    iput p5, p0, Lq3/i;->e:I

    return-void

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lq3/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lq3/i;

    .line 3
    iget v2, p0, Lq3/i;->d:I

    iget v3, p1, Lq3/i;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lq3/i;->e:I

    iget v3, p1, Lq3/i;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lq3/i;->a:Ljava/lang/String;

    iget-object v3, p1, Lq3/i;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq3/i;->b:Ln3/s0;

    iget-object v3, p1, Lq3/i;->b:Ln3/s0;

    .line 5
    invoke-virtual {v2, v3}, Ln3/s0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq3/i;->c:Ln3/s0;

    iget-object p1, p1, Lq3/i;->c:Ln3/s0;

    .line 6
    invoke-virtual {v2, p1}, Ln3/s0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lq3/i;->d:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lq3/i;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lq3/i;->a:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 4
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lq3/i;->b:Ln3/s0;

    invoke-virtual {v1}, Ln3/s0;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v0, p0, Lq3/i;->c:Ln3/s0;

    invoke-virtual {v0}, Ln3/s0;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
