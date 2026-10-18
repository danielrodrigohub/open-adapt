.class public final Lr3/v;
.super Ljava/lang/Object;
.source "FrameworkMediaDrm.java"

# interfaces
.implements Lr3/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr3/v$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:Landroid/media/MediaDrm;

.field public c:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/UnsupportedSchemeException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ln3/i;->b:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Use C.CLEARKEY_UUID instead"

    invoke-static {v1, v3}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lr3/v;->a:Ljava/util/UUID;

    .line 5
    new-instance v1, Landroid/media/MediaDrm;

    .line 6
    sget v3, Lm5/g0;->a:I

    const/16 v4, 0x1b

    if-ge v3, v4, :cond_0

    sget-object v3, Ln3/i;->c:Ljava/util/UUID;

    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 7
    :goto_0
    invoke-direct {v1, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V

    iput-object v1, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    .line 8
    iput v2, p0, Lr3/v;->c:I

    .line 9
    sget-object v0, Ln3/i;->d:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lm5/g0;->d:Ljava/lang/String;

    const-string v0, "ASUS_Z00AD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "securityLevel"

    const-string v0, "L3"

    .line 11
    invoke-virtual {v1, p1, v0}, Landroid/media/MediaDrm;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lr3/v;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lr3/v;->c:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b([BLjava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-static {p1, p2}, Lr3/v$a;->a(Landroid/media/MediaDrm;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/MediaCrypto;

    iget-object v1, p0, Lr3/v;->a:Ljava/util/UUID;

    invoke-direct {v0, v1, p1}, Landroid/media/MediaCrypto;-><init>(Ljava/util/UUID;[B)V
    :try_end_0
    .catch Landroid/media/MediaCryptoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/media/MediaCrypto;->release()V

    .line 6
    throw p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public final c([B[B)V
    .locals 1

    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->restoreKeys([B[B)V

    return-void
.end method

.method public final d([B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->queryKeyStatus([B)Ljava/util/HashMap;

    move-result-object p1

    return-object p1
.end method

.method public final e([B)V
    .locals 1

    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->closeSession([B)V

    return-void
.end method

.method public final f([B[B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;,
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/i;->c:Ljava/util/UUID;

    iget-object v1, p0, Lr3/v;->a:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p2}, Lm5/g0;->n([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"keys\":["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "keys"

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    if-eqz v2, :cond_1

    const-string v3, ","

    .line 7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "{\"k\":\""

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "k"

    .line 10
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    .line 11
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0x2f

    const/16 v8, 0x5f

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kid\":\""

    .line 13
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kid"

    .line 14
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"kty\":\""

    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "kty"

    .line 18
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "]}"

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm5/g0;->F(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Failed to adjust response data: "

    .line 22
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 23
    invoke-static {p2}, Lm5/g0;->n([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClearKeyUtil"

    invoke-static {v2, v1, v0}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_3
    :goto_1
    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDrm;->provideKeyResponse([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public final g()Lr3/s$d;
    .locals 3

    .line 1
    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v0

    .line 2
    new-instance v1, Lr3/s$d;

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lr3/s$d;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public final h([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/DeniedByServerException;
        }
    .end annotation

    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0, p1}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    return-void
.end method

.method public final i([BLo3/v0;)V
    .locals 2

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-static {v0, p1, p2}, Lr3/v$a;->b(Landroid/media/MediaDrm;[BLo3/v0;)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FrameworkMediaDrm"

    const-string p2, "setLogSessionId failed."

    .line 3
    invoke-static {p1, p2}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final j([BLjava/util/List;ILjava/util/HashMap;)Lr3/s$a;
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lr3/d$b;",
            ">;I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lr3/s$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/NotProvisionedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-eqz v1, :cond_15

    .line 1
    iget-object v4, v0, Lr3/v;->a:Ljava/util/UUID;

    .line 2
    sget-object v5, Ln3/i;->d:Ljava/util/UUID;

    invoke-virtual {v5, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_0

    .line 3
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/d$b;

    goto/16 :goto_7

    .line 4
    :cond_0
    sget v4, Lm5/g0;->a:I

    const/16 v8, 0x1c

    if-lt v4, v8, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_5

    .line 5
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lr3/d$b;

    move v8, v6

    move v9, v8

    .line 6
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_3

    .line 7
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lr3/d$b;

    .line 8
    iget-object v11, v10, Lr3/d$b;->l:[B

    .line 9
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v12, v10, Lr3/d$b;->k:Ljava/lang/String;

    iget-object v13, v4, Lr3/d$b;->k:Ljava/lang/String;

    invoke-static {v12, v13}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v10, v10, Lr3/d$b;->j:Ljava/lang/String;

    iget-object v12, v4, Lr3/d$b;->j:Ljava/lang/String;

    .line 11
    invoke-static {v10, v12}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 12
    invoke-static {v11}, La4/i;->b([B)La4/i$a;

    move-result-object v10

    if-eqz v10, :cond_1

    move v10, v7

    goto :goto_1

    :cond_1
    move v10, v6

    :goto_1
    if-eqz v10, :cond_2

    .line 13
    array-length v10, v11

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v6

    goto :goto_2

    :cond_3
    move v8, v7

    :goto_2
    if-eqz v8, :cond_5

    .line 14
    new-array v8, v9, [B

    move v9, v6

    move v10, v9

    .line 15
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_4

    .line 16
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr3/d$b;

    .line 17
    iget-object v11, v11, Lr3/d$b;->l:[B

    .line 18
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    array-length v12, v11

    .line 20
    invoke-static {v11, v6, v8, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 21
    :cond_4
    new-instance v1, Lr3/d$b;

    iget-object v9, v4, Lr3/d$b;->i:Ljava/util/UUID;

    iget-object v10, v4, Lr3/d$b;->j:Ljava/lang/String;

    iget-object v4, v4, Lr3/d$b;->k:Ljava/lang/String;

    invoke-direct {v1, v9, v10, v4, v8}, Lr3/d$b;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    goto :goto_7

    :cond_5
    move v4, v6

    .line 22
    :goto_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 23
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lr3/d$b;

    .line 24
    iget-object v9, v8, Lr3/d$b;->l:[B

    .line 25
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {v9}, La4/i;->b([B)La4/i$a;

    move-result-object v9

    if-nez v9, :cond_6

    move v9, v5

    goto :goto_5

    .line 27
    :cond_6
    iget v9, v9, La4/i$a;->b:I

    .line 28
    :goto_5
    sget v10, Lm5/g0;->a:I

    if-ge v10, v2, :cond_7

    if-nez v9, :cond_7

    goto :goto_6

    :cond_7
    if-lt v10, v2, :cond_8

    if-ne v9, v7, :cond_8

    :goto_6
    move-object v1, v8

    goto :goto_7

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 29
    :cond_9
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr3/d$b;

    .line 30
    :goto_7
    iget-object v4, v0, Lr3/v;->a:Ljava/util/UUID;

    iget-object v8, v1, Lr3/d$b;->l:[B

    .line 31
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v9, Ln3/i;->e:Ljava/util/UUID;

    invoke-virtual {v9, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 33
    invoke-static {v8, v4}, La4/i;->c([BLjava/util/UUID;)[B

    move-result-object v10

    if-nez v10, :cond_a

    goto :goto_8

    :cond_a
    move-object v8, v10

    .line 34
    :goto_8
    new-instance v10, Lm5/w;

    invoke-direct {v10, v8}, Lm5/w;-><init>([B)V

    .line 35
    invoke-virtual {v10}, Lm5/w;->g()I

    move-result v11

    .line 36
    invoke-virtual {v10}, Lm5/w;->i()S

    move-result v12

    .line 37
    invoke-virtual {v10}, Lm5/w;->i()S

    move-result v13

    const-string v14, "FrameworkMediaDrm"

    if-ne v12, v7, :cond_e

    if-eq v13, v7, :cond_b

    goto :goto_9

    .line 38
    :cond_b
    invoke-virtual {v10}, Lm5/w;->i()S

    move-result v7

    .line 39
    sget-object v15, Lt6/c;->d:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v7, v15}, Lm5/w;->r(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "<LA_URL>"

    .line 40
    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    goto :goto_a

    :cond_c
    const-string v8, "</DATA>"

    .line 41
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_d

    const-string v5, "Could not find the </DATA> tag. Skipping LA_URL workaround."

    .line 42
    invoke-static {v14, v5}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "<LA_URL>https://x</LA_URL>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v11, v11, 0x34

    .line 46
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 47
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 48
    invoke-virtual {v6, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-short v7, v12

    .line 49
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-short v7, v13

    .line 50
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {v5, v15}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    goto :goto_a

    :cond_e
    :goto_9
    const-string v5, "Unexpected record count or type. Skipping LA_URL workaround."

    .line 54
    invoke-static {v14, v5}, Lm5/p;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_a
    invoke-static {v9, v3, v8}, La4/i;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v8

    .line 56
    :cond_f
    sget v3, Lm5/g0;->a:I

    if-ge v3, v2, :cond_10

    sget-object v5, Ln3/i;->d:Ljava/util/UUID;

    invoke-virtual {v5, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 57
    :cond_10
    invoke-virtual {v9, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lm5/g0;->c:Ljava/lang/String;

    const-string v6, "Amazon"

    .line 58
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    sget-object v5, Lm5/g0;->d:Ljava/lang/String;

    const-string v6, "AFTB"

    .line 59
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "AFTS"

    .line 60
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "AFTM"

    .line 61
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    const-string v6, "AFTT"

    .line 62
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 63
    :cond_11
    invoke-static {v8, v4}, La4/i;->c([BLjava/util/UUID;)[B

    move-result-object v4

    if-eqz v4, :cond_12

    goto :goto_b

    :cond_12
    move-object v4, v8

    .line 64
    :goto_b
    iget-object v5, v0, Lr3/v;->a:Ljava/util/UUID;

    iget-object v6, v1, Lr3/d$b;->k:Ljava/lang/String;

    const/16 v7, 0x1a

    if-ge v3, v7, :cond_14

    .line 65
    sget-object v3, Ln3/i;->c:Ljava/util/UUID;

    .line 66
    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "video/mp4"

    .line 67
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "audio/mp4"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :cond_13
    const-string v3, "cenc"

    goto :goto_c

    :cond_14
    move-object v3, v6

    :goto_c
    move-object v8, v3

    move-object v7, v4

    move-object v3, v1

    goto :goto_d

    :cond_15
    move-object v7, v3

    move-object v8, v7

    .line 68
    :goto_d
    iget-object v5, v0, Lr3/v;->b:Landroid/media/MediaDrm;

    move-object/from16 v6, p1

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 69
    invoke-virtual/range {v5 .. v10}, Landroid/media/MediaDrm;->getKeyRequest([B[BLjava/lang/String;ILjava/util/HashMap;)Landroid/media/MediaDrm$KeyRequest;

    move-result-object v1

    .line 70
    iget-object v4, v0, Lr3/v;->a:Ljava/util/UUID;

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getData()[B

    move-result-object v5

    .line 71
    sget-object v6, Ln3/i;->c:Ljava/util/UUID;

    invoke-virtual {v6, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 72
    sget v4, Lm5/g0;->a:I

    const/16 v6, 0x1b

    if-lt v4, v6, :cond_16

    goto :goto_e

    .line 73
    :cond_16
    invoke-static {v5}, Lm5/g0;->n([B)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    const/16 v6, 0x2d

    .line 74
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x5f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {v4}, Lm5/g0;->F(Ljava/lang/String;)[B

    move-result-object v5

    .line 76
    :cond_17
    :goto_e
    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https://x"

    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v4, ""

    .line 78
    :cond_18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_19

    if-eqz v3, :cond_19

    iget-object v6, v3, Lr3/d$b;->j:Ljava/lang/String;

    .line 79
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 80
    iget-object v4, v3, Lr3/d$b;->j:Ljava/lang/String;

    .line 81
    :cond_19
    sget v3, Lm5/g0;->a:I

    if-lt v3, v2, :cond_1a

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyRequest;->getRequestType()I

    .line 82
    :cond_1a
    new-instance v1, Lr3/s$a;

    invoke-direct {v1, v5, v4}, Lr3/s$a;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public final k(Lr3/s$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    .line 2
    new-instance v1, Lr3/u;

    invoke-direct {v1, p0, p1}, Lr3/u;-><init>(Lr3/v;Lr3/s$b;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/MediaDrm;->setOnEventListener(Landroid/media/MediaDrm$OnEventListener;)V

    return-void
.end method

.method public final l()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final m([B)Lq3/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCryptoException;
        }
    .end annotation

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    sget-object v1, Ln3/i;->d:Ljava/util/UUID;

    iget-object v2, p0, Lr3/v;->a:Ljava/util/UUID;

    .line 2
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    const-string v2, "securityLevel"

    invoke-virtual {v1, v2}, Landroid/media/MediaDrm;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "L3"

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    new-instance v2, Lr3/t;

    iget-object v3, p0, Lr3/v;->a:Ljava/util/UUID;

    const/16 v4, 0x1b

    if-ge v0, v4, :cond_1

    .line 6
    sget-object v0, Ln3/i;->c:Ljava/util/UUID;

    invoke-virtual {v0, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v3, Ln3/i;->b:Ljava/util/UUID;

    .line 7
    :cond_1
    invoke-direct {v2, v3, p1, v1}, Lr3/t;-><init>(Ljava/util/UUID;[BZ)V

    return-object v2
.end method

.method public final n()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaDrmException;
        }
    .end annotation

    iget-object v0, p0, Lr3/v;->b:Landroid/media/MediaDrm;

    invoke-virtual {v0}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v0

    return-object v0
.end method
