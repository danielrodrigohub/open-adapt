.class public final Lr3/w;
.super Ljava/lang/Object;
.source "HttpMediaDrmCallback.java"

# interfaces
.implements Lr3/y;


# instance fields
.field public final a:Ll5/j$a;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLl5/j$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    iput-object p3, p0, Lr3/w;->a:Ll5/j$a;

    .line 4
    iput-object p1, p0, Lr3/w;->b:Ljava/lang/String;

    .line 5
    iput-boolean p2, p0, Lr3/w;->c:Z

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lr3/w;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static b(Ll5/j$a;Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll5/j$a;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr3/z;
        }
    .end annotation

    .line 1
    new-instance v1, Ll5/i0;

    invoke-interface/range {p0 .. p0}, Ll5/j$a;->a()Ll5/j;

    move-result-object v0

    invoke-direct {v1, v0}, Ll5/i0;-><init>(Ll5/j;)V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    const-wide/16 v11, -0x1

    .line 3
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x2

    const/4 v14, 0x1

    const-string v15, "The uri must be set."

    .line 4
    invoke-static {v3, v15}, Lm5/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v17, Ll5/m;

    const-wide/16 v4, 0x0

    const-wide/16 v9, 0x0

    const/4 v13, 0x0

    const/4 v0, 0x0

    move-object/from16 v2, v17

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v23, v15

    move-object v15, v0

    .line 6
    invoke-direct/range {v2 .. v15}, Ll5/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    const/4 v2, 0x0

    move v4, v2

    move-object/from16 v3, v17

    .line 7
    :goto_0
    :try_start_0
    new-instance v5, Ll5/l;

    invoke-direct {v5, v1, v3}, Ll5/l;-><init>(Ll5/j;Ll5/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    invoke-static {v5}, Lm5/g0;->U(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catch Ll5/z; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-static {v5}, Lm5/g0;->g(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 10
    :try_start_3
    iget v0, v6, Ll5/z;->k:I

    const/16 v7, 0x133

    if-eq v0, v7, :cond_0

    const/16 v7, 0x134

    if-ne v0, v7, :cond_1

    :cond_0
    const/4 v0, 0x5

    if-ge v4, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const/4 v7, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, v6, Ll5/z;->l:Ljava/util/Map;

    if-eqz v0, :cond_3

    const-string v8, "Location"

    .line 12
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    add-int/lit8 v4, v4, 0x1

    .line 15
    iget-wide v8, v3, Ll5/m;->b:J

    .line 16
    iget v0, v3, Ll5/m;->c:I

    .line 17
    iget-object v6, v3, Ll5/m;->d:[B

    .line 18
    iget-object v10, v3, Ll5/m;->e:Ljava/util/Map;

    .line 19
    iget-wide v11, v3, Ll5/m;->f:J

    .line 20
    iget-wide v13, v3, Ll5/m;->g:J

    .line 21
    iget-object v15, v3, Ll5/m;->h:Ljava/lang/String;

    .line 22
    iget v2, v3, Ll5/m;->i:I

    .line 23
    iget-object v3, v3, Ll5/m;->j:Ljava/lang/Object;

    .line 24
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move/from16 p1, v4

    move-object/from16 v4, v23

    .line 25
    invoke-static {v7, v4}, Lm5/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v16, Ll5/m;

    move-object/from16 v24, v16

    move-object/from16 v25, v7

    move-wide/from16 v26, v8

    move/from16 v28, v0

    move-object/from16 v29, v6

    move-object/from16 v30, v10

    move-wide/from16 v31, v11

    move-wide/from16 v33, v13

    move-object/from16 v35, v15

    move/from16 v36, v2

    move-object/from16 v37, v3

    .line 27
    invoke-direct/range {v24 .. v37}, Ll5/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    :try_start_4
    invoke-static {v5}, Lm5/g0;->g(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v23, v4

    move-object/from16 v3, v16

    const/4 v2, 0x0

    move/from16 v4, p1

    goto/16 :goto_0

    .line 29
    :cond_4
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 30
    :goto_3
    :try_start_6
    invoke-static {v5}, Lm5/g0;->g(Ljava/io/Closeable;)V

    .line 31
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    move-object/from16 v22, v0

    .line 32
    new-instance v0, Lr3/z;

    .line 33
    iget-object v2, v1, Ll5/i0;->c:Landroid/net/Uri;

    .line 34
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v1}, Ll5/i0;->h()Ljava/util/Map;

    move-result-object v19

    .line 36
    iget-wide v3, v1, Ll5/i0;->b:J

    move-object/from16 v16, v0

    move-object/from16 v18, v2

    move-wide/from16 v20, v3

    .line 37
    invoke-direct/range {v16 .. v22}, Lr3/z;-><init>(Ll5/m;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/util/UUID;Lr3/s$a;)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr3/z;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lr3/s$a;->b:Ljava/lang/String;

    .line 2
    iget-boolean v4, v1, Lr3/w;->c:Z

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    :cond_0
    iget-object v3, v1, Lr3/w;->b:Ljava/lang/String;

    .line 4
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 6
    sget-object v5, Ln3/i;->e:Ljava/util/UUID;

    invoke-virtual {v5, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "text/xml"

    goto :goto_0

    .line 7
    :cond_2
    sget-object v6, Ln3/i;->c:Ljava/util/UUID;

    invoke-virtual {v6, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "application/json"

    goto :goto_0

    :cond_3
    const-string v6, "application/octet-stream"

    :goto_0
    const-string v7, "Content-Type"

    .line 8
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v5, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SOAPAction"

    const-string v5, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 10
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_4
    iget-object v5, v1, Lr3/w;->d:Ljava/util/HashMap;

    monitor-enter v5

    .line 12
    :try_start_0
    iget-object v0, v1, Lr3/w;->d:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 13
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, v1, Lr3/w;->a:Ll5/j$a;

    .line 15
    iget-object v2, v2, Lr3/s$a;->a:[B

    .line 16
    invoke-static {v0, v3, v2, v4}, Lr3/w;->b(Ll5/j$a;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 18
    :cond_5
    new-instance v0, Lr3/z;

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const-wide/16 v9, 0x0

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v8

    const-wide/16 v11, -0x1

    .line 20
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    .line 21
    invoke-static {v3, v2}, Lm5/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v16, Ll5/m;

    move-object/from16 v2, v16

    .line 23
    invoke-direct/range {v2 .. v15}, Ll5/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 24
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 25
    sget-object v9, Lu6/q0;->n:Lu6/q0;

    const-wide/16 v10, 0x0

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v2, "No license URL"

    invoke-direct {v12, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    move-object/from16 v7, v16

    invoke-direct/range {v6 .. v12}, Lr3/z;-><init>(Ll5/m;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    throw v0
.end method

.method public final c(Lr3/s$d;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lr3/z;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p1, Lr3/s$d;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&signedRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object p1, p1, Lr3/s$d;->a:[B

    .line 5
    invoke-static {p1}, Lm5/g0;->n([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lr3/w;->a:Ll5/j$a;

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 8
    invoke-static {v0, p1, v2, v1}, Lr3/w;->b(Ll5/j$a;Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object p1

    return-object p1
.end method
