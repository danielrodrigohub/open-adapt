.class public final Ls3/k;
.super Ljava/lang/Object;
.source "ExtractorUtil.java"


# direct methods
.method public static a(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0
.end method

.method public static b(Ls3/i;[BIZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, v0, p2, p3}, Ls3/i;->p([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    if-eqz p3, :cond_0

    return v0

    .line 2
    :cond_0
    throw p0
.end method
