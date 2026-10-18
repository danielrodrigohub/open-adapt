.class public final Lw4/g;
.super Ljava/lang/Object;
.source "RtspMediaTrack.java"


# instance fields
.field public final a:Lw4/f;

.field public final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lw4/a;Landroid/net/Uri;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v2, v1, Lw4/a;->i:Lu6/x;

    const-string v3, "control"

    invoke-virtual {v2, v3}, Lu6/x;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lm5/a;->a(Z)V

    .line 3
    new-instance v2, Ln3/s0$a;

    invoke-direct {v2}, Ln3/s0$a;-><init>()V

    .line 4
    iget v4, v1, Lw4/a;->e:I

    if-lez v4, :cond_0

    .line 5
    iput v4, v2, Ln3/s0$a;->f:I

    .line 6
    :cond_0
    iget-object v4, v1, Lw4/a;->j:Lw4/a$c;

    iget v5, v4, Lw4/a$c;->a:I

    .line 7
    iget-object v4, v4, Lw4/a$c;->b:Ljava/lang/String;

    .line 8
    invoke-static {v4}, Landroidx/activity/k;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v8, "L16"

    const-string v9, "L8"

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v7, "H263-2000"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "H263-1998"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0xe

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "MP4V-ES"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "AMR-WB"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_4
    const-string v7, "PCMU"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "PCMA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_6
    const-string v7, "OPUS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_7
    const-string v7, "H265"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_8
    const-string v7, "H264"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_9
    const-string v7, "VP9"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_0

    :cond_a
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_a
    const-string v7, "VP8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_0

    :cond_b
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_b
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_0

    :cond_c
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_c
    const-string v7, "AMR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto :goto_0

    :cond_d
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_d
    const-string v7, "AC3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto :goto_0

    :cond_e
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_e
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_0

    :cond_f
    const/4 v6, 0x1

    goto :goto_1

    :sswitch_f
    const-string v7, "MPEG4-GENERIC"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_0

    :cond_10
    const/4 v6, 0x0

    goto :goto_1

    :goto_0
    const/4 v6, -0x1

    :goto_1
    const-string v7, "audio/ac3"

    const-string v12, "video/x-vnd.on2.vp9"

    const-string v13, "video/x-vnd.on2.vp8"

    const-string v14, "audio/3gpp"

    const-string v15, "audio/raw"

    const-string v10, "audio/mp4a-latm"

    const-string v11, "video/mp4v-es"

    move-object/from16 v16, v3

    const-string v3, "audio/amr-wb"

    const-string v0, "audio/g711-mlaw"

    move/from16 v17, v5

    const-string v5, "audio/g711-alaw"

    move-object/from16 v18, v8

    const-string v8, "audio/opus"

    move-object/from16 v19, v4

    const-string v4, "video/hevc"

    move-object/from16 v20, v9

    const-string v9, "video/avc"

    packed-switch v6, :pswitch_data_0

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    .line 9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v6, "video/3gpp"

    goto :goto_2

    :pswitch_1
    move-object v6, v11

    goto :goto_2

    :pswitch_2
    move-object v6, v3

    goto :goto_2

    :pswitch_3
    move-object v6, v0

    goto :goto_2

    :pswitch_4
    move-object v6, v5

    goto :goto_2

    :pswitch_5
    move-object v6, v8

    goto :goto_2

    :pswitch_6
    move-object v6, v4

    goto :goto_2

    :pswitch_7
    move-object v6, v9

    goto :goto_2

    :pswitch_8
    move-object v6, v12

    goto :goto_2

    :pswitch_9
    move-object v6, v13

    goto :goto_2

    :pswitch_a
    move-object v6, v14

    goto :goto_2

    :pswitch_b
    move-object v6, v7

    goto :goto_2

    :pswitch_c
    move-object v6, v15

    goto :goto_2

    :pswitch_d
    move-object v6, v10

    .line 10
    :goto_2
    iput-object v6, v2, Ln3/s0$a;->k:Ljava/lang/String;

    move-object/from16 v21, v4

    .line 11
    iget-object v4, v1, Lw4/a;->j:Lw4/a$c;

    iget v4, v4, Lw4/a$c;->c:I

    move-object/from16 v22, v3

    .line 12
    iget-object v3, v1, Lw4/a;->a:Ljava/lang/String;

    move-object/from16 v23, v10

    const-string v10, "audio"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 13
    iget-object v3, v1, Lw4/a;->j:Lw4/a$c;

    iget v3, v3, Lw4/a$c;->d:I

    const/4 v10, -0x1

    if-eq v3, v10, :cond_11

    goto :goto_3

    .line 14
    :cond_11
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v3, 0x6

    goto :goto_3

    :cond_12
    const/4 v3, 0x1

    .line 15
    :goto_3
    iput v4, v2, Ln3/s0$a;->y:I

    .line 16
    iput v3, v2, Ln3/s0$a;->x:I

    goto :goto_4

    :cond_13
    const/4 v3, -0x1

    .line 17
    :goto_4
    iget-object v10, v1, Lw4/a;->i:Lu6/x;

    const-string v1, "fmtp"

    invoke-virtual {v10, v1}, Lu6/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_14

    .line 18
    sget-object v1, Lu6/q0;->n:Lu6/q0;

    move-object/from16 v26, v2

    move/from16 v25, v3

    move/from16 v24, v4

    move-object/from16 v29, v7

    move-object/from16 v30, v15

    goto/16 :goto_7

    .line 19
    :cond_14
    sget v10, Lm5/g0;->a:I

    const-string v10, " "

    move/from16 v24, v4

    const/4 v4, 0x2

    .line 20
    invoke-virtual {v1, v10, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    move/from16 v25, v3

    .line 21
    array-length v3, v10

    if-ne v3, v4, :cond_15

    const/4 v3, 0x1

    goto :goto_5

    :cond_15
    const/4 v3, 0x0

    :goto_5
    invoke-static {v3, v1}, Lm5/a;->b(ZLjava/lang/Object;)V

    const/4 v1, 0x1

    .line 22
    aget-object v1, v10, v1

    const-string v3, ";\\s?"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    array-length v10, v1

    move-object/from16 v26, v2

    move v2, v4

    :goto_6
    if-ge v4, v10, :cond_17

    move/from16 v27, v10

    aget-object v10, v1, v4

    move-object/from16 v28, v1

    const-string v1, "="

    move-object/from16 v29, v7

    const/4 v7, 0x2

    .line 24
    invoke-virtual {v10, v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    .line 25
    aget-object v7, v1, v7

    const/4 v10, 0x1

    aget-object v1, v1, v10

    add-int/lit8 v10, v2, 0x1

    move-object/from16 v30, v15

    mul-int/lit8 v15, v10, 0x2

    move/from16 v31, v10

    .line 26
    array-length v10, v3

    if-le v15, v10, :cond_16

    .line 27
    array-length v10, v3

    .line 28
    invoke-static {v10, v15}, Lu6/t$b;->a(II)I

    move-result v10

    .line 29
    invoke-static {v3, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 30
    :cond_16
    invoke-static {v7, v1}, Lu6/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    mul-int/lit8 v2, v2, 0x2

    .line 31
    aput-object v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    .line 32
    aput-object v1, v3, v2

    add-int/lit8 v4, v4, 0x1

    move/from16 v10, v27

    move-object/from16 v1, v28

    move-object/from16 v7, v29

    move-object/from16 v15, v30

    move/from16 v2, v31

    goto :goto_6

    :cond_17
    move-object/from16 v29, v7

    move-object/from16 v30, v15

    .line 33
    invoke-static {v2, v3}, Lu6/q0;->j(I[Ljava/lang/Object;)Lu6/q0;

    move-result-object v1

    .line 34
    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_8

    :sswitch_10
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v10, 0xd

    goto/16 :goto_9

    :sswitch_11
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v10, 0xc

    goto/16 :goto_9

    :sswitch_12
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v10, 0x9

    goto/16 :goto_9

    :sswitch_13
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v10, 0x8

    goto/16 :goto_9

    :sswitch_14
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v10, 0x3

    goto :goto_9

    :sswitch_15
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v10, 0x1

    goto :goto_9

    :sswitch_16
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v10, 0x6

    goto :goto_9

    :sswitch_17
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v10, 0x4

    goto :goto_9

    :sswitch_18
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v10, 0xa

    goto :goto_9

    :sswitch_19
    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v10, 0xb

    goto :goto_9

    :sswitch_1a
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v10, 0x0

    goto :goto_9

    :sswitch_1b
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v10, 0x2

    goto :goto_9

    :sswitch_1c
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v10, 0x7

    goto :goto_9

    :sswitch_1d
    const-string v0, "video/3gpp"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v10, 0x5

    goto :goto_9

    :cond_18
    :goto_8
    const/4 v10, -0x1

    :goto_9
    const-string v0, "profile-level-id"

    const/16 v2, 0xf0

    packed-switch v10, :pswitch_data_1

    move/from16 v5, v24

    move-object/from16 v3, v26

    goto/16 :goto_1e

    :pswitch_e
    move-object/from16 v3, v19

    move-object/from16 v4, v20

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_a

    :cond_19
    const/4 v0, 0x0

    goto :goto_b

    :cond_1a
    :goto_a
    const/4 v0, 0x1

    .line 36
    :goto_b
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x3

    goto :goto_c

    :cond_1b
    const/high16 v0, 0x10000000

    :goto_c
    move-object/from16 v3, v26

    .line 38
    iput v0, v3, Ln3/s0$a;->z:I

    goto/16 :goto_e

    :pswitch_f
    move-object/from16 v3, v26

    const/16 v0, 0x140

    .line 39
    iput v0, v3, Ln3/s0$a;->p:I

    .line 40
    iput v2, v3, Ln3/s0$a;->q:I

    goto/16 :goto_e

    :pswitch_10
    move-object/from16 v3, v26

    const/16 v0, 0x140

    .line 41
    iput v0, v3, Ln3/s0$a;->p:I

    .line 42
    iput v2, v3, Ln3/s0$a;->q:I

    goto/16 :goto_e

    :pswitch_11
    move-object/from16 v3, v26

    .line 43
    invoke-virtual {v1}, Lu6/x;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lm5/a;->a(Z)V

    const-string v0, "sprop-max-don-diff"

    .line 44
    invoke-virtual {v1, v0}, Lu6/x;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 45
    invoke-virtual {v1, v0}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    const/4 v2, 0x1

    goto :goto_d

    :cond_1c
    const/4 v2, 0x0

    .line 48
    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "non-zero sprop-max-don-diff "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not supported"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lm5/a;->b(ZLjava/lang/Object;)V

    :cond_1d
    const-string v0, "sprop-vps"

    .line 49
    invoke-virtual {v1, v0}, Lu6/x;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lm5/a;->a(Z)V

    .line 50
    invoke-virtual {v1, v0}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sprop-sps"

    .line 52
    invoke-virtual {v1, v2}, Lu6/x;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lm5/a;->a(Z)V

    .line 53
    invoke-virtual {v1, v2}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 54
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sprop-pps"

    .line 55
    invoke-virtual {v1, v4}, Lu6/x;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lm5/a;->a(Z)V

    .line 56
    invoke-virtual {v1, v4}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {v0}, Lw4/g;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    invoke-static {v2}, Lw4/g;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 60
    invoke-static {v4}, Lw4/g;->a(Ljava/lang/String;)[B

    move-result-object v4

    .line 61
    sget-object v5, Lu6/v;->i:Lu6/v$b;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v2, 0x2

    aput-object v4, v5, v2

    .line 62
    invoke-static {v5}, Lu6/v;->r([Ljava/lang/Object;)Lu6/v;

    move-result-object v2

    .line 63
    iput-object v2, v3, Ln3/s0$a;->m:Ljava/util/List;

    .line 64
    check-cast v2, Lu6/p0;

    invoke-virtual {v2, v0}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 65
    sget-object v2, Lm5/t;->a:[B

    array-length v2, v0

    const/4 v4, 0x4

    .line 66
    invoke-static {v0, v4, v2}, Lm5/t;->c([BII)Lm5/t$a;

    move-result-object v0

    .line 67
    iget v2, v0, Lm5/t$a;->i:F

    .line 68
    iput v2, v3, Ln3/s0$a;->t:F

    .line 69
    iget v2, v0, Lm5/t$a;->h:I

    .line 70
    iput v2, v3, Ln3/s0$a;->q:I

    .line 71
    iget v2, v0, Lm5/t$a;->g:I

    .line 72
    iput v2, v3, Ln3/s0$a;->p:I

    .line 73
    iget v4, v0, Lm5/t$a;->a:I

    iget-boolean v5, v0, Lm5/t$a;->b:Z

    iget v6, v0, Lm5/t$a;->c:I

    iget v7, v0, Lm5/t$a;->d:I

    iget-object v8, v0, Lm5/t$a;->e:[I

    iget v9, v0, Lm5/t$a;->f:I

    .line 74
    invoke-static/range {v4 .. v9}, Lde/n0;->d(IZII[II)Ljava/lang/String;

    move-result-object v0

    .line 75
    iput-object v0, v3, Ln3/s0$a;->h:Ljava/lang/String;

    :goto_e
    move/from16 v5, v24

    goto/16 :goto_1e

    :pswitch_12
    move-object/from16 v3, v26

    .line 76
    invoke-virtual {v1}, Lu6/x;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lm5/a;->a(Z)V

    const-string v2, "sprop-parameter-sets"

    .line 77
    invoke-virtual {v1, v2}, Lu6/x;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Lm5/a;->a(Z)V

    .line 78
    invoke-virtual {v1, v2}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget v4, Lm5/g0;->a:I

    const-string v4, ","

    const/4 v5, -0x1

    .line 81
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 82
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1e

    const/4 v4, 0x1

    goto :goto_f

    :cond_1e
    const/4 v4, 0x0

    :goto_f
    invoke-static {v4}, Lm5/a;->a(Z)V

    const/4 v4, 0x0

    .line 83
    aget-object v5, v2, v4

    .line 84
    invoke-static {v5}, Lw4/g;->a(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x1

    aget-object v2, v2, v6

    .line 85
    invoke-static {v2}, Lw4/g;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 86
    invoke-static {v5, v2}, Lu6/v;->w(Ljava/lang/Object;Ljava/lang/Object;)Lu6/v;

    move-result-object v2

    .line 87
    iput-object v2, v3, Ln3/s0$a;->m:Ljava/util/List;

    .line 88
    check-cast v2, Lu6/p0;

    invoke-virtual {v2, v4}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 89
    sget-object v5, Lm5/t;->a:[B

    array-length v5, v2

    const/4 v6, 0x4

    .line 90
    invoke-static {v2, v6, v5}, Lm5/t;->e([BII)Lm5/t$c;

    move-result-object v2

    .line 91
    iget v5, v2, Lm5/t$c;->g:F

    .line 92
    iput v5, v3, Ln3/s0$a;->t:F

    .line 93
    iget v5, v2, Lm5/t$c;->f:I

    .line 94
    iput v5, v3, Ln3/s0$a;->q:I

    .line 95
    iget v5, v2, Lm5/t$c;->e:I

    .line 96
    iput v5, v3, Ln3/s0$a;->p:I

    .line 97
    invoke-virtual {v1, v0}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1f

    const-string v2, "avc1."

    .line 98
    invoke-static {v2, v0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    iput-object v0, v3, Ln3/s0$a;->h:Ljava/lang/String;

    goto/16 :goto_19

    .line 100
    :cond_1f
    iget v0, v2, Lm5/t$c;->a:I

    iget v5, v2, Lm5/t$c;->b:I

    iget v2, v2, Lm5/t$c;->c:I

    .line 101
    invoke-static {v0, v5, v2}, Lde/n0;->c(III)Ljava/lang/String;

    move-result-object v0

    .line 102
    iput-object v0, v3, Ln3/s0$a;->h:Ljava/lang/String;

    goto/16 :goto_19

    :pswitch_13
    move-object/from16 v3, v26

    const/4 v4, 0x0

    const/16 v0, 0x160

    .line 103
    iput v0, v3, Ln3/s0$a;->p:I

    const/16 v0, 0x120

    .line 104
    iput v0, v3, Ln3/s0$a;->q:I

    goto/16 :goto_19

    :pswitch_14
    move-object/from16 v3, v26

    const/4 v4, 0x0

    .line 105
    invoke-virtual {v1}, Lu6/x;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Lm5/a;->a(Z)V

    const-string v5, "config"

    .line 106
    invoke-virtual {v1, v5}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_2c

    .line 107
    invoke-static {v5}, Lm5/g0;->q(Ljava/lang/String;)[B

    move-result-object v5

    .line 108
    invoke-static {v5}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v6

    .line 109
    iput-object v6, v3, Ln3/s0$a;->m:Ljava/util/List;

    .line 110
    array-length v6, v5

    move v7, v4

    move v8, v7

    :goto_10
    add-int/lit8 v9, v7, 0x3

    .line 111
    array-length v10, v5

    const/16 v11, 0x10

    if-ge v9, v10, :cond_23

    add-int/lit8 v10, v8, 0x1

    .line 112
    aget-byte v8, v5, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v11

    add-int/lit8 v12, v10, 0x1

    aget-byte v10, v5, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v8, v10

    add-int/lit8 v10, v12, 0x1

    aget-byte v12, v5, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v8, v12

    const/4 v12, 0x1

    if-ne v8, v12, :cond_21

    .line 113
    aget-byte v8, v5, v9

    and-int/2addr v8, v2

    const/16 v9, 0x20

    if-eq v8, v9, :cond_20

    goto :goto_11

    :cond_20
    const/4 v2, 0x1

    goto :goto_13

    :cond_21
    :goto_11
    add-int/lit8 v8, v10, -0x2

    if-ltz v8, :cond_22

    if-gt v8, v6, :cond_22

    const/4 v9, 0x1

    goto :goto_12

    :cond_22
    move v9, v4

    .line 114
    :goto_12
    invoke-static {v9}, Lm5/a;->a(Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :cond_23
    move v2, v4

    :goto_13
    const-string v6, "Invalid input: VOL not found."

    .line 115
    invoke-static {v2, v6}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 116
    new-instance v2, Lm5/v;

    .line 117
    array-length v6, v5

    invoke-direct {v2, v5, v6}, Lm5/v;-><init>([BI)V

    const/4 v5, 0x4

    add-int/2addr v7, v5

    const/16 v6, 0x8

    mul-int/2addr v7, v6

    .line 118
    invoke-virtual {v2, v7}, Lm5/v;->m(I)V

    const/4 v7, 0x1

    .line 119
    invoke-virtual {v2, v7}, Lm5/v;->m(I)V

    .line 120
    invoke-virtual {v2, v6}, Lm5/v;->m(I)V

    .line 121
    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 122
    invoke-virtual {v2, v5}, Lm5/v;->m(I)V

    const/4 v7, 0x3

    .line 123
    invoke-virtual {v2, v7}, Lm5/v;->m(I)V

    .line 124
    :cond_24
    invoke-virtual {v2, v5}, Lm5/v;->g(I)I

    move-result v5

    const/16 v7, 0xf

    if-ne v5, v7, :cond_25

    .line 125
    invoke-virtual {v2, v6}, Lm5/v;->m(I)V

    .line 126
    invoke-virtual {v2, v6}, Lm5/v;->m(I)V

    .line 127
    :cond_25
    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x2

    .line 128
    invoke-virtual {v2, v5}, Lm5/v;->m(I)V

    const/4 v6, 0x1

    .line 129
    invoke-virtual {v2, v6}, Lm5/v;->m(I)V

    .line 130
    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v6

    if-eqz v6, :cond_27

    const/16 v6, 0x4f

    .line 131
    invoke-virtual {v2, v6}, Lm5/v;->m(I)V

    goto :goto_14

    :cond_26
    const/4 v5, 0x2

    .line 132
    :cond_27
    :goto_14
    invoke-virtual {v2, v5}, Lm5/v;->g(I)I

    move-result v5

    if-nez v5, :cond_28

    const/4 v5, 0x1

    goto :goto_15

    :cond_28
    move v5, v4

    :goto_15
    const-string v6, "Only supports rectangular video object layer shape."

    .line 133
    invoke-static {v5, v6}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 134
    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v5

    invoke-static {v5}, Lm5/a;->a(Z)V

    .line 135
    invoke-virtual {v2, v11}, Lm5/v;->g(I)I

    move-result v5

    .line 136
    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v6

    invoke-static {v6}, Lm5/a;->a(Z)V

    .line 137
    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v6

    if-eqz v6, :cond_2b

    if-lez v5, :cond_29

    const/4 v6, 0x1

    goto :goto_16

    :cond_29
    move v6, v4

    .line 138
    :goto_16
    invoke-static {v6}, Lm5/a;->a(Z)V

    add-int/lit8 v5, v5, -0x1

    move v6, v4

    :goto_17
    if-lez v5, :cond_2a

    add-int/lit8 v6, v6, 0x1

    shr-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 139
    :cond_2a
    invoke-virtual {v2, v6}, Lm5/v;->m(I)V

    .line 140
    :cond_2b
    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v5

    invoke-static {v5}, Lm5/a;->a(Z)V

    const/16 v5, 0xd

    .line 141
    invoke-virtual {v2, v5}, Lm5/v;->g(I)I

    move-result v6

    .line 142
    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v7

    invoke-static {v7}, Lm5/a;->a(Z)V

    .line 143
    invoke-virtual {v2, v5}, Lm5/v;->g(I)I

    move-result v5

    .line 144
    invoke-virtual {v2}, Lm5/v;->f()Z

    move-result v7

    invoke-static {v7}, Lm5/a;->a(Z)V

    const/4 v7, 0x1

    .line 145
    invoke-virtual {v2, v7}, Lm5/v;->m(I)V

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 147
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 148
    iput v5, v3, Ln3/s0$a;->p:I

    .line 149
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 150
    iput v2, v3, Ln3/s0$a;->q:I

    goto :goto_18

    :cond_2c
    const/16 v2, 0x160

    .line 151
    iput v2, v3, Ln3/s0$a;->p:I

    const/16 v2, 0x120

    .line 152
    iput v2, v3, Ln3/s0$a;->q:I

    .line 153
    :goto_18
    invoke-virtual {v1, v0}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "mp4v."

    .line 154
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v0, :cond_2d

    const-string v0, "1"

    .line 155
    :cond_2d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    iput-object v0, v3, Ln3/s0$a;->h:Ljava/lang/String;

    :goto_19
    move/from16 v5, v24

    goto/16 :goto_1f

    :pswitch_15
    move-object/from16 v3, v26

    const/4 v0, -0x1

    const/4 v4, 0x0

    move/from16 v2, v25

    if-eq v2, v0, :cond_2e

    const/4 v0, 0x1

    goto :goto_1a

    :cond_2e
    move v0, v4

    .line 157
    :goto_1a
    invoke-static {v0}, Lm5/a;->a(Z)V

    const v0, 0xbb80

    move/from16 v5, v24

    if-ne v5, v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_1b

    :cond_2f
    move v0, v4

    :goto_1b
    const-string v2, "Invalid OPUS clock rate."

    .line 158
    invoke-static {v0, v2}, Lm5/a;->b(ZLjava/lang/Object;)V

    goto/16 :goto_1f

    :pswitch_16
    move/from16 v5, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    move v2, v4

    goto :goto_1c

    :cond_30
    move v2, v0

    :goto_1c
    const-string v6, "Multi channel AMR is not currently supported."

    .line 159
    invoke-static {v2, v6}, Lm5/a;->b(ZLjava/lang/Object;)V

    .line 160
    invoke-virtual {v1}, Lu6/x;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    const-string v6, "fmtp parameters must include octet-align."

    .line 161
    invoke-static {v2, v6}, Lm5/a;->b(ZLjava/lang/Object;)V

    const-string v2, "octet-align"

    .line 162
    invoke-virtual {v1, v2}, Lu6/x;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "Only octet aligned mode is currently supported."

    .line 163
    invoke-static {v2, v6}, Lm5/a;->b(ZLjava/lang/Object;)V

    const-string v2, "interleaving"

    .line 164
    invoke-virtual {v1, v2}, Lu6/x;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    const-string v6, "Interleaving mode is not currently supported."

    .line 165
    invoke-static {v2, v6}, Lm5/a;->b(ZLjava/lang/Object;)V

    goto :goto_20

    :pswitch_17
    move/from16 v5, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v2, v7, :cond_31

    move v7, v6

    goto :goto_1d

    :cond_31
    move v7, v4

    .line 166
    :goto_1d
    invoke-static {v7}, Lm5/a;->a(Z)V

    .line 167
    invoke-virtual {v1}, Lu6/x;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v6

    invoke-static {v7}, Lm5/a;->a(Z)V

    .line 168
    invoke-virtual {v1, v0}, Lu6/x;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lm5/a;->a(Z)V

    .line 169
    invoke-virtual {v1, v0}, Lu6/q0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mp4a.40."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    iput-object v0, v3, Ln3/s0$a;->h:Ljava/lang/String;

    .line 173
    invoke-static {v5, v2}, Lp3/a;->a(II)[B

    move-result-object v0

    .line 174
    invoke-static {v0}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v0

    .line 175
    iput-object v0, v3, Ln3/s0$a;->m:Ljava/util/List;

    move v0, v4

    move v4, v6

    goto :goto_20

    :goto_1e
    const/4 v4, 0x0

    :goto_1f
    const/4 v0, 0x1

    move/from16 v32, v4

    move v4, v0

    move/from16 v0, v32

    :goto_20
    if-lez v5, :cond_32

    move v0, v4

    .line 176
    :cond_32
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 177
    new-instance v0, Lw4/f;

    .line 178
    new-instance v2, Ln3/s0;

    invoke-direct {v2, v3}, Ln3/s0;-><init>(Ln3/s0$a;)V

    move/from16 v3, v17

    .line 179
    invoke-direct {v0, v2, v3, v5, v1}, Lw4/f;-><init>(Ln3/s0;IILjava/util/Map;)V

    move-object/from16 v1, p0

    .line 180
    iput-object v0, v1, Lw4/g;->a:Lw4/f;

    move-object/from16 v0, p1

    .line 181
    iget-object v0, v0, Lw4/a;->i:Lu6/x;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2}, Lu6/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 182
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroid/net/Uri;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_33

    move-object v0, v2

    goto :goto_21

    :cond_33
    const-string v2, "*"

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v0, p2

    goto :goto_21

    .line 185
    :cond_34
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 186
    :goto_21
    iput-object v0, v1, Lw4/g;->b:Landroid/net/Uri;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7290cac7 -> :sswitch_f
        0x96c -> :sswitch_e
        0xfc51 -> :sswitch_d
        0xfda6 -> :sswitch_c
        0x12371 -> :sswitch_b
        0x14cbe -> :sswitch_a
        0x14cbf -> :sswitch_9
        0x217d28 -> :sswitch_8
        0x217d29 -> :sswitch_7
        0x25203f -> :sswitch_6
        0x2562c7 -> :sswitch_5
        0x2562db -> :sswitch_4
        0x734e0c52 -> :sswitch_3
        0x74c813f6 -> :sswitch_2
        0x7f62e82d -> :sswitch_1
        0x7f6339a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x63306f58 -> :sswitch_1d
        -0x63185e82 -> :sswitch_1c
        -0x5fc6f775 -> :sswitch_1b
        -0x3313c2e -> :sswitch_1a
        0xb269698 -> :sswitch_19
        0xb26d66f -> :sswitch_18
        0x46cdc642 -> :sswitch_17
        0x4f62373a -> :sswitch_16
        0x59976a2d -> :sswitch_15
        0x59b2d2d8 -> :sswitch_14
        0x5f50bed8 -> :sswitch_13
        0x5f50bed9 -> :sswitch_12
        0x71710385 -> :sswitch_11
        0x717677f9 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 2
    array-length v1, p0

    sget-object v2, Lm5/t;->a:[B

    const/4 v3, 0x4

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 3
    invoke-static {v2, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v2, p0

    invoke-static {p0, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
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
    const-class v2, Lw4/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lw4/g;

    .line 3
    iget-object v2, p0, Lw4/g;->a:Lw4/f;

    iget-object v3, p1, Lw4/g;->a:Lw4/f;

    invoke-virtual {v2, v3}, Lw4/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/g;->b:Landroid/net/Uri;

    iget-object p1, p1, Lw4/g;->b:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Lw4/g;->a:Lw4/f;

    invoke-virtual {v0}, Lw4/f;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lw4/g;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
