.class public final Li5/c;
.super Ljava/lang/Object;
.source "WebvttCssParser.java"


# static fields
.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lm5/w;

.field public final b:Ljava/lang/StringBuilder;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[voice=\"([^\"]*)\"\\]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Li5/c;->c:Ljava/util/regex/Pattern;

    const-string v0, "^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Li5/c;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lm5/w;

    invoke-direct {v0}, Lm5/w;-><init>()V

    iput-object v0, p0, Li5/c;->a:Lm5/w;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Li5/c;->b:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget v1, p0, Lm5/w;->b:I

    .line 3
    iget v2, p0, Lm5/w;->c:I

    :goto_0
    if-ge v1, v2, :cond_5

    if-nez v0, :cond_5

    .line 4
    iget-object v3, p0, Lm5/w;->a:[B

    .line 5
    aget-byte v3, v3, v1

    int-to-char v3, v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-le v3, v4, :cond_4

    :cond_0
    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7a

    if-le v3, v4, :cond_4

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x23

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_4

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x5f

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_5
    iget v0, p0, Lm5/w;->b:I

    sub-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lm5/w;->E(I)V

    .line 9
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Li5/c;->d(Lm5/w;)V

    .line 2
    iget v0, p0, Lm5/w;->c:I

    iget v1, p0, Lm5/w;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Li5/c;->b(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p1

    .line 5
    :cond_1
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Lm5/w;->t()I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lm5/w;)V
    .locals 8

    const/4 v0, 0x1

    :cond_0
    :goto_0
    move v1, v0

    .line 1
    :goto_1
    iget v2, p0, Lm5/w;->c:I

    iget v3, p0, Lm5/w;->b:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_6

    if-eqz v1, :cond_6

    .line 2
    iget-object v1, p0, Lm5/w;->a:[B

    .line 3
    aget-byte v1, v1, v3

    int-to-char v1, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    move v1, v3

    goto :goto_2

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lm5/w;->E(I)V

    move v1, v0

    :goto_2
    if-nez v1, :cond_0

    .line 5
    iget v1, p0, Lm5/w;->b:I

    .line 6
    iget v2, p0, Lm5/w;->c:I

    .line 7
    iget-object v4, p0, Lm5/w;->a:[B

    add-int/lit8 v5, v1, 0x2

    if-gt v5, v2, :cond_4

    add-int/lit8 v5, v1, 0x1

    .line 8
    aget-byte v1, v4, v1

    const/16 v6, 0x2f

    if-ne v1, v6, :cond_4

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, v4, v5

    const/16 v7, 0x2a

    if-ne v5, v7, :cond_4

    :goto_3
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v2, :cond_3

    .line 9
    aget-byte v1, v4, v1

    int-to-char v1, v1

    if-ne v1, v7, :cond_2

    .line 10
    aget-byte v1, v4, v5

    int-to-char v1, v1

    if-ne v1, v6, :cond_2

    add-int/lit8 v2, v5, 0x1

    move v1, v2

    goto :goto_3

    :cond_2
    move v1, v5

    goto :goto_3

    .line 11
    :cond_3
    iget v1, p0, Lm5/w;->b:I

    sub-int/2addr v2, v1

    .line 12
    invoke-virtual {p0, v2}, Lm5/w;->E(I)V

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Lm5/w;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm5/w;",
            ")",
            "Ljava/util/List<",
            "Li5/d;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Li5/c;->b:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget v2, v1, Lm5/w;->b:I

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lm5/w;->f()Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, v0, Li5/c;->a:Lm5/w;

    .line 6
    iget-object v5, v1, Lm5/w;->a:[B

    .line 7
    iget v1, v1, Lm5/w;->b:I

    .line 8
    invoke-virtual {v4, v5, v1}, Lm5/w;->B([BI)V

    .line 9
    iget-object v1, v0, Li5/c;->a:Lm5/w;

    invoke-virtual {v1, v2}, Lm5/w;->D(I)V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    :goto_0
    iget-object v2, v0, Li5/c;->a:Lm5/w;

    iget-object v4, v0, Li5/c;->b:Ljava/lang/StringBuilder;

    .line 12
    invoke-static {v2}, Li5/c;->d(Lm5/w;)V

    .line 13
    iget v5, v2, Lm5/w;->c:I

    iget v6, v2, Lm5/w;->b:I

    sub-int/2addr v5, v6

    const/4 v6, 0x5

    const-string v7, "{"

    const-string v8, ""

    const/4 v10, 0x1

    if-ge v5, v6, :cond_1

    :goto_1
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 14
    :cond_1
    invoke-virtual {v2, v6}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "::cue"

    .line 15
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    iget v5, v2, Lm5/w;->b:I

    .line 17
    invoke-static {v2, v4}, Li5/c;->c(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 19
    invoke-virtual {v2, v5}, Lm5/w;->D(I)V

    move-object v5, v8

    goto :goto_5

    :cond_4
    const-string v5, "("

    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 21
    iget v5, v2, Lm5/w;->b:I

    .line 22
    iget v6, v2, Lm5/w;->c:I

    move v11, v3

    :goto_2
    if-ge v5, v6, :cond_6

    if-nez v11, :cond_6

    .line 23
    iget-object v11, v2, Lm5/w;->a:[B

    add-int/lit8 v12, v5, 0x1

    .line 24
    aget-byte v5, v11, v5

    int-to-char v5, v5

    const/16 v11, 0x29

    if-ne v5, v11, :cond_5

    move v11, v10

    goto :goto_3

    :cond_5
    move v11, v3

    :goto_3
    move v5, v12

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, -0x1

    .line 25
    iget v6, v2, Lm5/w;->b:I

    sub-int/2addr v5, v6

    .line 26
    invoke-virtual {v2, v5}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    const/4 v5, 0x0

    .line 27
    :goto_4
    invoke-static {v2, v4}, Li5/c;->c(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ")"

    .line 28
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    :goto_5
    if-eqz v5, :cond_2c

    .line 29
    iget-object v2, v0, Li5/c;->a:Lm5/w;

    iget-object v4, v0, Li5/c;->b:Ljava/lang/StringBuilder;

    invoke-static {v2, v4}, Li5/c;->c(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return-object v1

    .line 30
    :cond_9
    new-instance v2, Li5/d;

    invoke-direct {v2}, Li5/d;-><init>()V

    .line 31
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, -0x1

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    const/16 v4, 0x5b

    .line 32
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v6, :cond_c

    .line 33
    sget-object v7, Li5/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 34
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 35
    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iput-object v7, v2, Li5/d;->d:Ljava/lang/String;

    .line 38
    :cond_b
    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 39
    :cond_c
    sget v4, Lm5/g0;->a:I

    const-string v4, "\\."

    .line 40
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 41
    aget-object v5, v4, v3

    const/16 v7, 0x23

    .line 42
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v6, :cond_d

    .line 43
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 44
    iput-object v11, v2, Li5/d;->b:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    .line 45
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    iput-object v5, v2, Li5/d;->a:Ljava/lang/String;

    goto :goto_6

    .line 47
    :cond_d
    iput-object v5, v2, Li5/d;->b:Ljava/lang/String;

    .line 48
    :goto_6
    array-length v5, v4

    if-le v5, v10, :cond_f

    .line 49
    array-length v5, v4

    .line 50
    array-length v7, v4

    if-gt v5, v7, :cond_e

    move v7, v10

    goto :goto_7

    :cond_e
    move v7, v3

    :goto_7
    invoke-static {v7}, Lm5/a;->a(Z)V

    .line 51
    invoke-static {v4, v10, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v4

    .line 52
    check-cast v4, [Ljava/lang/String;

    .line 53
    new-instance v5, Ljava/util/HashSet;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v5, v2, Li5/d;->c:Ljava/util/Set;

    :cond_f
    :goto_8
    move v4, v3

    const/4 v5, 0x0

    :goto_9
    const-string v7, "}"

    if-nez v4, :cond_2a

    .line 54
    iget-object v4, v0, Li5/c;->a:Lm5/w;

    .line 55
    iget v5, v4, Lm5/w;->b:I

    .line 56
    iget-object v11, v0, Li5/c;->b:Ljava/lang/StringBuilder;

    invoke-static {v4, v11}, Li5/c;->c(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 57
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    goto :goto_a

    :cond_10
    move v11, v3

    goto :goto_b

    :cond_11
    :goto_a
    move v11, v10

    :goto_b
    if-nez v11, :cond_29

    .line 58
    iget-object v12, v0, Li5/c;->a:Lm5/w;

    invoke-virtual {v12, v5}, Lm5/w;->D(I)V

    .line 59
    iget-object v5, v0, Li5/c;->a:Lm5/w;

    iget-object v12, v0, Li5/c;->b:Ljava/lang/StringBuilder;

    .line 60
    invoke-static {v5}, Li5/c;->d(Lm5/w;)V

    .line 61
    invoke-static {v5, v12}, Li5/c;->b(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    .line 62
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    goto/16 :goto_16

    .line 63
    :cond_12
    invoke-static {v5, v12}, Li5/c;->c(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    goto/16 :goto_16

    .line 64
    :cond_13
    invoke-static {v5}, Li5/c;->d(Lm5/w;)V

    .line 65
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move v15, v3

    :goto_c
    const-string v3, ";"

    if-nez v15, :cond_17

    .line 66
    iget v6, v5, Lm5/w;->b:I

    .line 67
    invoke-static {v5, v12}, Li5/c;->c(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_14

    const/4 v6, 0x0

    goto :goto_f

    .line 68
    :cond_14
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_16

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_d

    .line 69
    :cond_15
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 70
    :cond_16
    :goto_d
    invoke-virtual {v5, v6}, Lm5/w;->D(I)V

    move v15, v10

    :goto_e
    const/4 v6, -0x1

    goto :goto_c

    .line 71
    :cond_17
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_f
    if-eqz v6, :cond_29

    .line 72
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    goto/16 :goto_16

    .line 73
    :cond_18
    iget v9, v5, Lm5/w;->b:I

    .line 74
    invoke-static {v5, v12}, Li5/c;->c(Lm5/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    .line 75
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_10

    .line 76
    :cond_19
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 77
    invoke-virtual {v5, v9}, Lm5/w;->D(I)V

    :goto_10
    const-string v3, "color"

    .line 78
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 79
    invoke-static {v6, v10}, Lm5/d;->a(Ljava/lang/String;Z)I

    move-result v3

    .line 80
    iput v3, v2, Li5/d;->f:I

    .line 81
    iput-boolean v10, v2, Li5/d;->g:Z

    goto/16 :goto_16

    :cond_1a
    const-string v3, "background-color"

    .line 82
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 83
    invoke-static {v6, v10}, Lm5/d;->a(Ljava/lang/String;Z)I

    move-result v3

    .line 84
    iput v3, v2, Li5/d;->h:I

    .line 85
    iput-boolean v10, v2, Li5/d;->i:Z

    goto/16 :goto_16

    :cond_1b
    const-string v3, "ruby-position"

    .line 86
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_1d

    const-string v3, "over"

    .line 87
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 88
    iput v10, v2, Li5/d;->p:I

    goto/16 :goto_16

    :cond_1c
    const-string v3, "under"

    .line 89
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 90
    iput v5, v2, Li5/d;->p:I

    goto/16 :goto_16

    :cond_1d
    const-string v3, "text-combine-upright"

    .line 91
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "all"

    .line 92
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "digits"

    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    goto :goto_12

    :cond_1f
    :goto_11
    move v3, v10

    .line 93
    :goto_12
    iput-boolean v3, v2, Li5/d;->q:Z

    goto/16 :goto_16

    :cond_20
    const-string v3, "text-decoration"

    .line 94
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "underline"

    .line 95
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 96
    iput v10, v2, Li5/d;->k:I

    goto/16 :goto_16

    :cond_21
    const-string v3, "font-family"

    .line 97
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 98
    invoke-static {v6}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Li5/d;->e:Ljava/lang/String;

    goto/16 :goto_16

    :cond_22
    const-string v3, "font-weight"

    .line 99
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const-string v3, "bold"

    .line 100
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 101
    iput v10, v2, Li5/d;->l:I

    goto/16 :goto_16

    :cond_23
    const-string v3, "font-style"

    .line 102
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v3, "italic"

    .line 103
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 104
    iput v10, v2, Li5/d;->m:I

    goto/16 :goto_16

    :cond_24
    const-string v3, "font-size"

    .line 105
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 106
    sget-object v3, Li5/c;->d:Ljava/util/regex/Pattern;

    invoke-static {v6}, Landroidx/activity/k;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 107
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_25

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid font-size: \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WebvttCssParser"

    invoke-static {v5, v3}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 109
    :cond_25
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_13
    const/4 v6, -0x1

    goto :goto_14

    :sswitch_0
    const-string v7, "px"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_26

    goto :goto_13

    :cond_26
    move v6, v5

    goto :goto_14

    :sswitch_1
    const-string v7, "em"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    goto :goto_13

    :cond_27
    move v6, v10

    goto :goto_14

    :sswitch_2
    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_13

    :cond_28
    const/4 v6, 0x0

    :goto_14
    packed-switch v6, :pswitch_data_0

    .line 112
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 113
    :pswitch_0
    iput v10, v2, Li5/d;->n:I

    goto :goto_15

    .line 114
    :pswitch_1
    iput v5, v2, Li5/d;->n:I

    goto :goto_15

    :pswitch_2
    const/4 v5, 0x3

    .line 115
    iput v5, v2, Li5/d;->n:I

    .line 116
    :goto_15
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 119
    iput v3, v2, Li5/d;->o:F

    :cond_29
    :goto_16
    move-object v5, v4

    move v4, v11

    const/4 v3, 0x0

    const/4 v6, -0x1

    goto/16 :goto_9

    .line 120
    :cond_2a
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 121
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2c
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
