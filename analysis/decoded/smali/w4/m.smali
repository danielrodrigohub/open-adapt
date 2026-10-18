.class public final Lw4/m;
.super Ljava/lang/Object;
.source "RtspTrackTiming.java"


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JILandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lw4/m;->a:J

    .line 3
    iput p3, p0, Lw4/m;->b:I

    .line 4
    iput-object p4, p0, Lw4/m;->c:Landroid/net/Uri;

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/net/Uri;)Lu6/v;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Lu6/v<",
            "Lw4/m;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    const/4 v0, 0x4

    const-string v1, "initialCapacity"

    .line 1
    invoke-static {v0, v1}, Lu6/h;->b(ILjava/lang/String;)I

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    sget v1, Lm5/g0;->a:I

    const-string v1, ","

    const/4 v2, -0x1

    move-object/from16 v3, p0

    .line 3
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 4
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_b

    aget-object v7, v1, v5

    const-string v8, ";"

    .line 5
    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 6
    array-length v9, v8

    move v10, v2

    move v13, v4

    const/4 v14, 0x0

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    if-ge v13, v9, :cond_7

    aget-object v11, v8, v13

    :try_start_0
    const-string v2, "="

    const/4 v12, 0x2

    .line 7
    invoke-virtual {v11, v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 8
    aget-object v12, v2, v4

    const/4 v4, 0x1

    .line 9
    aget-object v2, v2, v4

    .line 10
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object/from16 v17, v1

    const v1, 0x1bc5f

    if-eq v4, v1, :cond_2

    const v1, 0x1c56f

    if-eq v4, v1, :cond_1

    const v1, 0x5ad9263b

    if-eq v4, v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "rtptime"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_3

    :cond_1
    const-string v1, "url"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    const-string v1, "seq"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, -0x1

    :goto_3
    if-eqz v1, :cond_6

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 11
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-wide v15, v1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    .line 12
    invoke-static {v12, v0}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 13
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v10, v1

    :goto_4
    move-object/from16 v1, p1

    goto :goto_5

    :cond_6
    move-object/from16 v1, p1

    .line 14
    invoke-static {v2, v1}, Lw4/m;->b(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v17

    const/4 v2, -0x1

    const/4 v4, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 15
    invoke-static {v11, v0}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_7
    move-object/from16 v17, v1

    move-object/from16 v1, p1

    if-eqz v14, :cond_a

    .line 16
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v2, -0x1

    move-wide v8, v15

    if-ne v10, v2, :cond_8

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v8, v11

    if-eqz v4, :cond_a

    .line 17
    :cond_8
    new-instance v4, Lw4/m;

    invoke-direct {v4, v8, v9, v10, v14}, Lw4/m;-><init>(JILandroid/net/Uri;)V

    add-int/lit8 v7, v6, 0x1

    .line 18
    array-length v8, v0

    if-ge v8, v7, :cond_9

    .line 19
    array-length v8, v0

    .line 20
    invoke-static {v8, v7}, Lu6/t$b;->a(II)I

    move-result v8

    invoke-static {v0, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 21
    :cond_9
    aput-object v4, v0, v6

    add-int/lit8 v5, v5, 0x1

    move v6, v7

    move-object/from16 v1, v17

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x0

    .line 22
    invoke-static {v7, v0}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 23
    :cond_b
    invoke-static {v0, v6}, Lu6/v;->q([Ljava/lang/Object;I)Lu6/v;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rtsp"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rtsp://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "/"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    invoke-static {v1, p0}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method
