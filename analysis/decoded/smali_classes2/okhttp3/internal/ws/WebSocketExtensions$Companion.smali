.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "WebSocketExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "responseHeaders"

    invoke-static {v0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v4, v1, :cond_14

    .line 2
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    const-string v12, "Sec-WebSocket-Extensions"

    invoke-static {v5, v12}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_9

    .line 3
    :cond_0
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x1

    const/4 v15, 0x0

    .line 4
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v15, v12, :cond_13

    const/16 v13, 0x2c

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v19, 0x0

    move-object v12, v5

    move v14, v15

    move v2, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v19

    .line 5
    invoke-static/range {v12 .. v17}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v12

    const/16 v13, 0x3b

    .line 6
    invoke-static {v5, v13, v2, v12}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v14

    .line 7
    invoke-static {v5, v2, v14}, Lokhttp3/internal/_UtilCommonKt;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v15, v14, 0x1

    const-string v14, "permessage-deflate"

    .line 8
    invoke-static {v2, v14}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v6, :cond_1

    move/from16 v11, v18

    :cond_1
    :goto_2
    if-ge v15, v12, :cond_11

    .line 9
    invoke-static {v5, v13, v15, v12}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v2

    const/16 v6, 0x3d

    .line 10
    invoke-static {v5, v6, v15, v2}, Lokhttp3/internal/_UtilCommonKt;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v6

    .line 11
    invoke-static {v5, v15, v6}, Lokhttp3/internal/_UtilCommonKt;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    if-ge v6, v2, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 12
    invoke-static {v5, v6, v2}, Lokhttp3/internal/_UtilCommonKt;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    const-string v15, "\""

    const-string v3, "<this>"

    .line 13
    invoke-static {v6, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    add-int v13, v19, v17

    if-lt v3, v13, :cond_3

    invoke-static {v6, v15}, Lyd/s;->C0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v6, v15}, Lyd/s;->k0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v13, v15

    invoke-virtual {v6, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :cond_3
    :goto_3
    add-int/lit8 v15, v2, 0x1

    const-string v2, "client_max_window_bits"

    .line 16
    invoke-static {v14, v2}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v7, :cond_4

    move/from16 v11, v18

    :cond_4
    if-eqz v6, :cond_5

    .line 17
    invoke-static {v6}, Lyd/n;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object v7, v2

    goto :goto_4

    :cond_5
    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_10

    goto :goto_6

    :cond_6
    const-string v2, "client_no_context_takeover"

    .line 18
    invoke-static {v14, v2}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v8, :cond_7

    move/from16 v11, v18

    :cond_7
    if-eqz v6, :cond_8

    move/from16 v11, v18

    :cond_8
    move/from16 v8, v18

    goto :goto_8

    :cond_9
    const-string v2, "server_max_window_bits"

    .line 19
    invoke-static {v14, v2}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v9, :cond_a

    move/from16 v11, v18

    :cond_a
    if-eqz v6, :cond_b

    .line 20
    invoke-static {v6}, Lyd/n;->W(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object v9, v2

    goto :goto_5

    :cond_b
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_10

    :goto_6
    goto :goto_7

    :cond_c
    const-string v2, "server_no_context_takeover"

    .line 21
    invoke-static {v14, v2}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    if-eqz v10, :cond_d

    move/from16 v11, v18

    :cond_d
    if-eqz v6, :cond_e

    move/from16 v11, v18

    :cond_e
    move/from16 v10, v18

    goto :goto_8

    :cond_f
    :goto_7
    move/from16 v11, v18

    :cond_10
    :goto_8
    const/16 v13, 0x3b

    goto/16 :goto_2

    :cond_11
    move/from16 v6, v18

    goto/16 :goto_1

    :cond_12
    move/from16 v11, v18

    goto/16 :goto_1

    :cond_13
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 22
    :cond_14
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    return-object v0
.end method
