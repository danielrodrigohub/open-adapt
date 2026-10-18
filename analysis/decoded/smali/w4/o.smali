.class public final Lw4/o;
.super Ljava/lang/Object;
.source "SessionDescriptionParser.java"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "([a-z])=\\s?(.+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lw4/o;->a:Ljava/util/regex/Pattern;

    const-string v0, "([\\x21\\x23-\\x27\\x2a\\x2b\\x2d\\x2e\\x30-\\x39\\x41-\\x5a\\x5e-\\x7e]+)(?::(.*))?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lw4/o;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\S+)\\s(\\S+)\\s(\\S+)\\s(\\S+)"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lw4/o;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lw4/n;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    .line 1
    new-instance v0, Lw4/n$a;

    invoke-direct {v0}, Lw4/n$a;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/exoplayer2/source/rtsp/h;->h:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/exoplayer2/source/rtsp/h;->g:Ljava/lang/String;

    :goto_0
    sget v2, Lm5/g0;->a:I

    const/4 v2, -0x1

    .line 3
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v1, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    :goto_1
    if-ge v5, v1, :cond_e

    aget-object v7, p0, v5

    const-string v8, ""

    .line 5
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_7

    .line 6
    :cond_1
    sget-object v8, Lw4/o;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    .line 8
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x2

    .line 10
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x3

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string v12, "z"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xe

    goto/16 :goto_3

    :pswitch_2
    const-string v12, "v"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v3

    goto/16 :goto_3

    :pswitch_3
    const-string v12, "u"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v13

    goto/16 :goto_3

    :pswitch_4
    const-string v12, "t"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x9

    goto/16 :goto_3

    :pswitch_5
    const-string v12, "s"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v11

    goto/16 :goto_3

    :pswitch_6
    const-string v12, "r"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xd

    goto/16 :goto_3

    :pswitch_7
    const-string v12, "p"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x6

    goto :goto_3

    :pswitch_8
    const-string v12, "o"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v9

    goto :goto_3

    :pswitch_9
    const-string v12, "m"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xc

    goto :goto_3

    :pswitch_a
    const-string v12, "k"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xa

    goto :goto_3

    :pswitch_b
    const-string v12, "i"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v10, v14

    goto :goto_3

    :pswitch_c
    const-string v12, "e"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x5

    goto :goto_3

    :pswitch_d
    const-string v12, "c"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x7

    goto :goto_3

    :pswitch_e
    const-string v12, "b"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x8

    goto :goto_3

    :pswitch_f
    const-string v12, "a"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0xb

    goto :goto_3

    :cond_2
    :goto_2
    move v10, v2

    :goto_3
    packed-switch v10, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_10
    if-eqz v6, :cond_3

    .line 13
    :try_start_0
    invoke-virtual {v6}, Lw4/a$b;->a()Lw4/a;

    move-result-object v6

    .line 14
    iget-object v7, v0, Lw4/n$a;->b:Lu6/v$a;

    invoke-virtual {v7, v6}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    .line 15
    :goto_4
    invoke-static {v4, p0}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0

    .line 16
    :cond_3
    :goto_5
    sget-object v6, Lw4/o;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 17
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    const-string v10, "Malformed SDP media description line: "

    if-eqz v7, :cond_4

    .line 18
    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 19
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v6, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 23
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-virtual {v6, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :try_start_1
    new-instance v12, Lw4/a$b;

    .line 27
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 28
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v12, v7, v9, v11, v6}, Lw4/a$b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v12

    goto/16 :goto_7

    :catch_2
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0

    .line 30
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0

    .line 31
    :pswitch_11
    sget-object v10, Lw4/o;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 32
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 33
    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lt6/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v6, :cond_5

    .line 36
    iget-object v9, v0, Lw4/n$a;->a:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 37
    :cond_5
    iget-object v9, v6, Lw4/a$b;->e:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 38
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Malformed Attribute line: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0

    :pswitch_12
    if-nez v6, :cond_7

    .line 39
    iput-object v8, v0, Lw4/n$a;->i:Ljava/lang/String;

    goto/16 :goto_7

    .line 40
    :cond_7
    iput-object v8, v6, Lw4/a$b;->i:Ljava/lang/String;

    goto/16 :goto_7

    .line 41
    :pswitch_13
    iput-object v8, v0, Lw4/n$a;->f:Ljava/lang/String;

    goto/16 :goto_7

    :pswitch_14
    const-string v7, ":\\s?"

    .line 42
    invoke-virtual {v8, v7, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 43
    array-length v8, v7

    if-ne v8, v11, :cond_8

    move v8, v9

    goto :goto_6

    :cond_8
    move v8, v3

    :goto_6
    invoke-static {v8}, Lm5/a;->a(Z)V

    .line 44
    aget-object v7, v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-nez v6, :cond_9

    mul-int/lit16 v7, v7, 0x3e8

    .line 45
    iput v7, v0, Lw4/n$a;->c:I

    goto :goto_7

    :cond_9
    mul-int/lit16 v7, v7, 0x3e8

    .line 46
    iput v7, v6, Lw4/a$b;->f:I

    goto :goto_7

    :pswitch_15
    if-nez v6, :cond_a

    .line 47
    iput-object v8, v0, Lw4/n$a;->h:Ljava/lang/String;

    goto :goto_7

    .line 48
    :cond_a
    iput-object v8, v6, Lw4/a$b;->h:Ljava/lang/String;

    goto :goto_7

    .line 49
    :pswitch_16
    iput-object v8, v0, Lw4/n$a;->l:Ljava/lang/String;

    goto :goto_7

    .line 50
    :pswitch_17
    iput-object v8, v0, Lw4/n$a;->k:Ljava/lang/String;

    goto :goto_7

    .line 51
    :pswitch_18
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 52
    iput-object v7, v0, Lw4/n$a;->g:Landroid/net/Uri;

    goto :goto_7

    :pswitch_19
    if-nez v6, :cond_b

    .line 53
    iput-object v8, v0, Lw4/n$a;->j:Ljava/lang/String;

    goto :goto_7

    .line 54
    :cond_b
    iput-object v8, v6, Lw4/a$b;->g:Ljava/lang/String;

    goto :goto_7

    .line 55
    :pswitch_1a
    iput-object v8, v0, Lw4/n$a;->d:Ljava/lang/String;

    goto :goto_7

    .line 56
    :pswitch_1b
    iput-object v8, v0, Lw4/n$a;->e:Ljava/lang/String;

    goto :goto_7

    :pswitch_1c
    const-string v7, "0"

    .line 57
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_7

    :cond_c
    new-array p0, v9, [Ljava/lang/Object;

    aput-object v8, p0, v3

    const-string v0, "SDP version %s is not supported."

    .line 58
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-static {p0, v4}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 60
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Malformed SDP line: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0

    :cond_e
    if-eqz v6, :cond_f

    .line 61
    :try_start_2
    invoke-virtual {v6}, Lw4/a$b;->a()Lw4/a;

    move-result-object p0

    .line 62
    iget-object v1, v0, Lw4/n$a;->b:Lu6/v$a;

    invoke-virtual {v1, p0}, Lu6/v$a;->c(Ljava/lang/Object;)Lu6/v$a;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_9

    :catch_3
    move-exception p0

    goto :goto_8

    :catch_4
    move-exception p0

    .line 63
    :goto_8
    invoke-static {v4, p0}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0

    .line 64
    :cond_f
    :goto_9
    :try_start_3
    new-instance p0, Lw4/n;

    invoke-direct {p0, v0}, Lw4/n;-><init>(Lw4/n$a;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    goto :goto_a

    :catch_6
    move-exception p0

    .line 65
    :goto_a
    invoke-static {v4, p0}, Ln3/i1;->b(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
