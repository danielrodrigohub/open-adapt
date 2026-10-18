.class public final Ll5/u;
.super Ljava/lang/Object;
.source "DefaultLoadErrorHandlingPolicy.java"

# interfaces
.implements Ll5/c0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll5/c0$a;Ll5/c0$c;)Ll5/c0$b;
    .locals 4

    .line 1
    iget-object p2, p2, Ll5/c0$c;->a:Ljava/io/IOException;

    .line 2
    instance-of v0, p2, Ll5/z;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p2, Ll5/z;

    .line 4
    iget p2, p2, Ll5/z;->k:I

    const/16 v0, 0x193

    if-eq p2, v0, :cond_2

    const/16 v0, 0x194

    if-eq p2, v0, :cond_2

    const/16 v0, 0x19a

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1a0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1f4

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1f7

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v1

    :goto_2
    const/4 v0, 0x0

    if-nez p2, :cond_3

    return-object v0

    .line 5
    :cond_3
    invoke-virtual {p1, v1}, Ll5/c0$a;->a(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 6
    new-instance p1, Ll5/c0$b;

    const-wide/32 v2, 0x493e0

    invoke-direct {p1, v1, v2, v3}, Ll5/c0$b;-><init>(IJ)V

    return-object p1

    :cond_4
    const/4 p2, 0x2

    .line 7
    invoke-virtual {p1, p2}, Ll5/c0$a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    new-instance p1, Ll5/c0$b;

    const-wide/32 v0, 0xea60

    invoke-direct {p1, p2, v0, v1}, Ll5/c0$b;-><init>(IJ)V

    return-object p1

    :cond_5
    return-object v0
.end method

.method public final b(Ll5/c0$c;)J
    .locals 4

    .line 1
    iget-object v0, p1, Ll5/c0$c;->a:Ljava/io/IOException;

    .line 2
    instance-of v1, v0, Ln3/i1;

    if-nez v1, :cond_3

    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-nez v1, :cond_3

    instance-of v1, v0, Ll5/w;

    if-nez v1, :cond_3

    instance-of v1, v0, Ll5/d0$g;

    if-nez v1, :cond_3

    sget v1, Ll5/k;->i:I

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    instance-of v2, v0, Ll5/k;

    if-eqz v2, :cond_0

    .line 4
    move-object v2, v0

    check-cast v2, Ll5/k;

    iget v2, v2, Ll5/k;->h:I

    const/16 v3, 0x7d8

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    iget p1, p1, Ll5/c0$c;->b:I

    sub-int/2addr p1, v1

    mul-int/lit16 p1, p1, 0x3e8

    const/16 v0, 0x1388

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v0, p1

    goto :goto_3

    :cond_3
    :goto_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    return-wide v0
.end method

.method public final c(I)I
    .locals 1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    return p1
.end method
