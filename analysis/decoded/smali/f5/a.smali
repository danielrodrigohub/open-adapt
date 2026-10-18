.class public final Lf5/a;
.super Lz4/f;
.source "SubripDecoder.java"


# static fields
.field public static final o:Ljava/util/regex/Pattern;

.field public static final p:Ljava/util/regex/Pattern;


# instance fields
.field public final m:Ljava/lang/StringBuilder;

.field public final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf5/a;->o:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\\\.*?\\}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lf5/a;->p:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lz4/f;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lf5/a;->m:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf5/a;->n:Ljava/util/ArrayList;

    return-void
.end method

.method public static l(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x3f6b851f

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3da3d70a

    return p0
.end method

.method public static m(Ljava/util/regex/Matcher;I)J
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3c

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v1

    mul-long/2addr v5, v1

    mul-long/2addr v5, v3

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    add-int/lit8 v0, p1, 0x2

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v1

    mul-long/2addr v7, v3

    add-long/2addr v7, v5

    add-int/lit8 v0, p1, 0x3

    .line 6
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v3

    add-long/2addr v0, v7

    add-int/lit8 p1, p1, 0x4

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_1
    mul-long/2addr v0, v3

    return-wide v0
.end method


# virtual methods
.method public final k([BIZ)Lz4/g;
    .locals 25

    move-object/from16 v0, p0

    const-string v1, "SubripDecoder"

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x20

    new-array v3, v3, [J

    .line 2
    new-instance v4, Lm5/w;

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-direct {v4, v5, v6}, Lm5/w;-><init>([BI)V

    const/4 v5, 0x0

    move v6, v5

    .line 3
    :goto_0
    invoke-virtual {v4}, Lm5/w;->f()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    .line 4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v4}, Lm5/w;->f()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v4, "Unexpected end"

    .line 7
    invoke-static {v1, v4}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 8
    :cond_1
    sget-object v8, Lf5/a;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 9
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v7, 0x1

    .line 10
    invoke-static {v8, v7}, Lf5/a;->m(Ljava/util/regex/Matcher;I)J

    move-result-wide v9

    .line 11
    array-length v7, v3

    if-ne v6, v7, :cond_2

    mul-int/lit8 v7, v6, 0x2

    .line 12
    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    :cond_2
    add-int/lit8 v7, v6, 0x1

    .line 13
    aput-wide v9, v3, v6

    const/4 v6, 0x6

    .line 14
    invoke-static {v8, v6}, Lf5/a;->m(Ljava/util/regex/Matcher;I)J

    move-result-wide v8

    .line 15
    array-length v6, v3

    if-ne v7, v6, :cond_3

    mul-int/lit8 v6, v7, 0x2

    .line 16
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    :cond_3
    add-int/lit8 v6, v7, 0x1

    .line 17
    aput-wide v8, v3, v7

    .line 18
    iget-object v7, v0, Lf5/a;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 19
    iget-object v7, v0, Lf5/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 20
    invoke-virtual {v4}, Lm5/w;->f()Ljava/lang/String;

    move-result-object v7

    .line 21
    :goto_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 22
    iget-object v8, v0, Lf5/a;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 23
    iget-object v8, v0, Lf5/a;->m:Ljava/lang/StringBuilder;

    const-string v9, "<br>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    :cond_4
    iget-object v8, v0, Lf5/a;->m:Ljava/lang/StringBuilder;

    iget-object v9, v0, Lf5/a;->n:Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 26
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    sget-object v11, Lf5/a;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 28
    :goto_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 29
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    .line 30
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->start()I

    move-result v12

    sub-int/2addr v12, v5

    .line 32
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v13, v12, v11

    const-string v14, ""

    .line 33
    invoke-virtual {v10, v12, v13, v14}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v5, v11

    goto :goto_2

    .line 34
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4}, Lm5/w;->f()Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    goto :goto_1

    .line 37
    :cond_6
    iget-object v5, v0, Lf5/a;->m:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 38
    :goto_3
    iget-object v9, v0, Lf5/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_8

    .line 39
    iget-object v9, v0, Lf5/a;->n:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "\\{\\\\an[1-9]\\}"

    .line 40
    invoke-virtual {v9, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v5, v9

    goto :goto_4

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    const/4 v11, 0x0

    const v20, -0x800001

    const/high16 v23, -0x80000000

    const/16 v21, 0x0

    const/high16 v22, -0x1000000

    const/16 v24, 0x0

    if-nez v5, :cond_9

    .line 41
    new-instance v5, Lz4/a;

    move-object v7, v5

    const/high16 v14, -0x80000000

    move v13, v14

    move/from16 v23, v14

    move/from16 v17, v14

    move/from16 v16, v14

    const/16 v24, 0x0

    move-object v9, v11

    move-object v10, v11

    move/from16 v12, v20

    move/from16 v15, v20

    move/from16 v18, v20

    move/from16 v19, v20

    invoke-direct/range {v7 .. v24}, Lz4/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    move-object/from16 p1, v3

    move-object/from16 p3, v4

    goto/16 :goto_b

    .line 42
    :cond_9
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v9, "{\\an9}"

    const-string v10, "{\\an8}"

    const-string v11, "{\\an7}"

    const-string v12, "{\\an6}"

    const-string v13, "{\\an5}"

    const-string v14, "{\\an4}"

    const-string v15, "{\\an3}"

    const-string v0, "{\\an2}"

    move-object/from16 p1, v3

    const-string v3, "{\\an1}"

    const/16 v16, -0x1

    const/16 v17, 0x8

    const/16 v18, 0x7

    sparse-switch v7, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x5

    goto :goto_6

    :sswitch_1
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move/from16 v7, v17

    goto :goto_6

    :sswitch_2
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    goto :goto_6

    :sswitch_3
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x4

    goto :goto_6

    :sswitch_4
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    move/from16 v7, v18

    goto :goto_6

    :sswitch_5
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_6

    :sswitch_6
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x3

    goto :goto_6

    :sswitch_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x6

    goto :goto_6

    :sswitch_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    move/from16 v7, v16

    :goto_6
    move-object/from16 p3, v4

    if-eqz v7, :cond_c

    const/4 v4, 0x1

    if-eq v7, v4, :cond_c

    const/4 v4, 0x2

    if-eq v7, v4, :cond_c

    const/4 v4, 0x3

    if-eq v7, v4, :cond_b

    const/4 v4, 0x4

    if-eq v7, v4, :cond_b

    const/4 v4, 0x5

    if-eq v7, v4, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    const/4 v4, 0x2

    goto :goto_7

    :cond_c
    const/4 v4, 0x0

    .line 43
    :goto_7
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto :goto_8

    :sswitch_9
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v16, 0x5

    goto :goto_8

    :sswitch_a
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v16, 0x4

    goto :goto_8

    :sswitch_b
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v16, 0x3

    goto :goto_8

    :sswitch_c
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v0, v17

    goto :goto_9

    :sswitch_d
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v0, v18

    goto :goto_9

    :sswitch_e
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v16, 0x6

    goto :goto_8

    :sswitch_f
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v16, 0x2

    goto :goto_8

    :sswitch_10
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v16, 0x1

    goto :goto_8

    :sswitch_11
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v16, 0x0

    :cond_d
    :goto_8
    move/from16 v0, v16

    :goto_9
    if-eqz v0, :cond_f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_f

    const/4 v5, 0x2

    if-eq v0, v5, :cond_10

    const/4 v5, 0x3

    if-eq v0, v5, :cond_e

    const/4 v5, 0x4

    if-eq v0, v5, :cond_e

    const/4 v5, 0x5

    if-eq v0, v5, :cond_e

    move v14, v3

    goto :goto_a

    :cond_e
    const/4 v0, 0x0

    move v14, v0

    goto :goto_a

    :cond_f
    const/4 v5, 0x2

    :cond_10
    move v14, v5

    .line 44
    :goto_a
    invoke-static {v4}, Lf5/a;->l(I)F

    move-result v15

    .line 45
    invoke-static {v14}, Lf5/a;->l(I)F

    move-result v12

    const/4 v13, 0x0

    .line 46
    new-instance v5, Lz4/a;

    move-object v7, v5

    const/4 v10, 0x0

    move-object v11, v10

    move-object v9, v10

    const v20, -0x800001

    move/from16 v18, v20

    move/from16 v19, v20

    const/16 v21, 0x0

    const/high16 v22, -0x1000000

    move/from16 v16, v4

    move/from16 v17, v23

    invoke-direct/range {v7 .. v24}, Lz4/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    .line 47
    :goto_b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lz4/a;->y:Lz4/a;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p1

    goto :goto_c

    :cond_11
    move-object/from16 p3, v4

    const-string v0, "Skipping invalid timing: "

    .line 49
    invoke-static {v0, v7, v1}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_0
    move-object/from16 p3, v4

    const-string v0, "Skipping invalid index: "

    .line 50
    invoke-static {v0, v7, v1}, La4/g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p3

    goto/16 :goto_0

    .line 51
    :cond_12
    :goto_d
    new-array v0, v5, [Lz4/a;

    .line 52
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz4/a;

    .line 53
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 54
    new-instance v2, Lf5/b;

    invoke-direct {v2, v0, v1}, Lf5/b;-><init>([Lz4/a;[J)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch
.end method
