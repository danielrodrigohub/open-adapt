.class public final Ls4/e;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method public static a(Lt4/j;Ljava/lang/String;Lt4/i;I)Ll5/m;
    .locals 15

    move-object/from16 v0, p2

    const/4 v4, 0x1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v6

    .line 2
    iget-object v1, v0, Lt4/i;->c:Ljava/lang/String;

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3
    iget-wide v7, v0, Lt4/i;->a:J

    .line 4
    iget-wide v9, v0, Lt4/i;->b:J

    .line 5
    invoke-virtual {p0}, Lt4/j;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 6
    iget-object v2, v2, Lt4/j;->b:Lu6/v;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/b;

    iget-object v2, v2, Lt4/b;->a:Ljava/lang/String;

    .line 7
    iget-object v0, v0, Lt4/i;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lm5/e0;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_0
    const-string v0, "The uri must be set."

    .line 9
    invoke-static {v1, v0}, Lm5/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v14, Ll5/m;

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move/from16 v12, p3

    .line 11
    invoke-direct/range {v0 .. v13}, Ll5/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-object v14
.end method
