.class public final Lee/l;
.super Ljava/lang/Object;
.source "-Path.kt"


# static fields
.field public static final a:Lde/g;

.field public static final b:Lde/g;

.field public static final c:Lde/g;

.field public static final d:Lde/g;

.field public static final e:Lde/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lde/g;->k:Lde/g$a;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lde/g$a;->c(Ljava/lang/String;)Lde/g;

    move-result-object v1

    sput-object v1, Lee/l;->a:Lde/g;

    const-string v1, "\\"

    .line 2
    invoke-virtual {v0, v1}, Lde/g$a;->c(Ljava/lang/String;)Lde/g;

    move-result-object v1

    sput-object v1, Lee/l;->b:Lde/g;

    const-string v1, "/\\"

    .line 3
    invoke-virtual {v0, v1}, Lde/g$a;->c(Ljava/lang/String;)Lde/g;

    move-result-object v1

    sput-object v1, Lee/l;->c:Lde/g;

    const-string v1, "."

    .line 4
    invoke-virtual {v0, v1}, Lde/g$a;->c(Ljava/lang/String;)Lde/g;

    move-result-object v1

    sput-object v1, Lee/l;->d:Lde/g;

    const-string v1, ".."

    .line 5
    invoke-virtual {v0, v1}, Lde/g$a;->c(Ljava/lang/String;)Lde/g;

    move-result-object v0

    sput-object v0, Lee/l;->e:Lde/g;

    return-void
.end method

.method public static final a(Lde/a0;)I
    .locals 5

    .line 1
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 2
    sget-object v1, Lee/l;->a:Lde/g;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lde/g;->q(Lde/g;Lde/g;IILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lde/a0;->h:Lde/g;

    .line 4
    sget-object v0, Lee/l;->b:Lde/g;

    invoke-static {p0, v0, v2, v3, v4}, Lde/g;->q(Lde/g;Lde/g;IILjava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static final b(Lde/a0;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 2
    invoke-virtual {v0}, Lde/g;->j()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v0, v2}, Lde/g;->o(I)B

    move-result v0

    const/16 v3, 0x2f

    int-to-byte v3, v3

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    :cond_1
    move v1, v4

    goto/16 :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 6
    invoke-virtual {v0, v2}, Lde/g;->o(I)B

    move-result v0

    const/16 v3, 0x5c

    int-to-byte v3, v3

    const/4 v5, 0x2

    if-ne v0, v3, :cond_4

    .line 7
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 8
    invoke-virtual {v0}, Lde/g;->j()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 9
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 10
    invoke-virtual {v0, v4}, Lde/g;->o(I)B

    move-result v0

    if-ne v0, v3, :cond_1

    .line 11
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 12
    sget-object v2, Lee/l;->b:Lde/g;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "other"

    .line 13
    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Lde/g;->n()[B

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lde/g;->l([BI)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 15
    iget-object p0, p0, Lde/a0;->h:Lde/g;

    .line 16
    invoke-virtual {p0}, Lde/g;->j()I

    move-result p0

    move v1, p0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 18
    invoke-virtual {v0}, Lde/g;->j()I

    move-result v0

    if-le v0, v5, :cond_8

    .line 19
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 20
    invoke-virtual {v0, v4}, Lde/g;->o(I)B

    move-result v0

    const/16 v6, 0x3a

    int-to-byte v6, v6

    if-ne v0, v6, :cond_8

    .line 21
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 22
    invoke-virtual {v0, v5}, Lde/g;->o(I)B

    move-result v0

    if-ne v0, v3, :cond_8

    .line 23
    iget-object p0, p0, Lde/a0;->h:Lde/g;

    .line 24
    invoke-virtual {p0, v2}, Lde/g;->o(I)B

    move-result p0

    int-to-char p0, p0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_5

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    if-nez v0, :cond_7

    const/16 v0, 0x41

    if-gt v0, p0, :cond_6

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_6

    move v2, v4

    :cond_6
    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    :cond_8
    :goto_1
    return v1
.end method

.method public static final c(Lde/a0;Lde/a0;Z)Lde/a0;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lee/l;->b(Lde/a0;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p1}, Lde/a0;->m()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-static {p0}, Lee/l;->d(Lde/a0;)Lde/g;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lee/l;->d(Lde/a0;)Lde/g;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lde/a0;->j:Ljava/lang/String;

    invoke-static {v0}, Lee/l;->g(Ljava/lang/String;)Lde/g;

    move-result-object v0

    .line 4
    :cond_2
    new-instance v1, Lde/c;

    invoke-direct {v1}, Lde/c;-><init>()V

    .line 5
    iget-object p0, p0, Lde/a0;->h:Lde/g;

    .line 6
    invoke-virtual {v1, p0}, Lde/c;->u0(Lde/g;)Lde/c;

    .line 7
    iget-wide v2, v1, Lde/c;->i:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_3

    .line 8
    invoke-virtual {v1, v0}, Lde/c;->u0(Lde/g;)Lde/c;

    .line 9
    :cond_3
    iget-object p0, p1, Lde/a0;->h:Lde/g;

    .line 10
    invoke-virtual {v1, p0}, Lde/c;->u0(Lde/g;)Lde/c;

    .line 11
    invoke-static {v1, p2}, Lee/l;->e(Lde/c;Z)Lde/a0;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object p1
.end method

.method public static final d(Lde/a0;)Lde/g;
    .locals 6

    .line 1
    iget-object v0, p0, Lde/a0;->h:Lde/g;

    .line 2
    sget-object v1, Lee/l;->a:Lde/g;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lde/g;->m(Lde/g;Lde/g;IILjava/lang/Object;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lde/a0;->h:Lde/g;

    .line 4
    sget-object v1, Lee/l;->b:Lde/g;

    invoke-static {p0, v1, v2, v3, v4}, Lde/g;->m(Lde/g;Lde/g;IILjava/lang/Object;)I

    move-result p0

    if-eq p0, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    return-object v1
.end method

.method public static final e(Lde/c;Z)Lde/a0;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lde/c;

    invoke-direct {v1}, Lde/c;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    .line 2
    :goto_0
    sget-object v5, Lee/l;->a:Lde/g;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7, v5}, Lde/c;->a0(JLde/g;)Z

    move-result v5

    if-nez v5, :cond_1c

    sget-object v5, Lee/l;->b:Lde/g;

    invoke-virtual {v0, v6, v7, v5}, Lde/c;->a0(JLde/g;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_e

    :cond_0
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v4, v8, :cond_1

    .line 3
    invoke-static {v3, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v2

    :goto_1
    const-wide/16 v10, -0x1

    if-eqz v8, :cond_2

    .line 4
    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lde/c;->u0(Lde/g;)Lde/c;

    .line 5
    invoke-virtual {v1, v3}, Lde/c;->u0(Lde/g;)Lde/c;

    goto/16 :goto_8

    :cond_2
    if-lez v4, :cond_3

    .line 6
    invoke-static {v3}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lde/c;->u0(Lde/g;)Lde/c;

    goto/16 :goto_8

    .line 7
    :cond_3
    sget-object v4, Lee/l;->c:Lde/g;

    invoke-virtual {v0, v4}, Lde/c;->S(Lde/g;)J

    move-result-wide v12

    if-nez v3, :cond_5

    cmp-long v3, v12, v10

    if-nez v3, :cond_4

    .line 8
    sget-object v3, Lde/a0;->j:Ljava/lang/String;

    invoke-static {v3}, Lee/l;->g(Ljava/lang/String;)Lde/g;

    move-result-object v3

    goto :goto_2

    .line 9
    :cond_4
    invoke-virtual {v0, v12, v13}, Lde/c;->h0(J)B

    move-result v3

    invoke-static {v3}, Lee/l;->f(B)Lde/g;

    move-result-object v3

    .line 10
    :cond_5
    :goto_2
    invoke-static {v3, v5}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const-wide/16 v14, 0x2

    if-nez v4, :cond_6

    goto :goto_5

    .line 11
    :cond_6
    iget-wide v4, v0, Lde/c;->i:J

    cmp-long v4, v4, v14

    if-gez v4, :cond_7

    goto :goto_5

    :cond_7
    const-wide/16 v4, 0x1

    .line 12
    invoke-virtual {v0, v4, v5}, Lde/c;->h0(J)B

    move-result v4

    const/16 v5, 0x3a

    int-to-byte v5, v5

    if-eq v4, v5, :cond_8

    goto :goto_5

    .line 13
    :cond_8
    invoke-virtual {v0, v6, v7}, Lde/c;->h0(J)B

    move-result v4

    int-to-char v4, v4

    const/16 v5, 0x61

    if-gt v5, v4, :cond_9

    const/16 v5, 0x7b

    if-ge v4, v5, :cond_9

    move v5, v9

    goto :goto_3

    :cond_9
    move v5, v2

    :goto_3
    if-nez v5, :cond_c

    const/16 v5, 0x41

    if-gt v5, v4, :cond_a

    const/16 v5, 0x5b

    if-ge v4, v5, :cond_a

    move v4, v9

    goto :goto_4

    :cond_a
    move v4, v2

    :goto_4
    if-eqz v4, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    move v4, v2

    goto :goto_7

    :cond_c
    :goto_6
    move v4, v9

    :goto_7
    if-eqz v4, :cond_e

    cmp-long v4, v12, v14

    if-nez v4, :cond_d

    const-wide/16 v4, 0x3

    .line 14
    invoke-virtual {v1, v0, v4, v5}, Lde/c;->write(Lde/c;J)V

    goto :goto_8

    .line 15
    :cond_d
    invoke-virtual {v1, v0, v14, v15}, Lde/c;->write(Lde/c;J)V

    .line 16
    :cond_e
    :goto_8
    iget-wide v4, v1, Lde/c;->i:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_f

    move v4, v9

    goto :goto_9

    :cond_f
    move v4, v2

    .line 17
    :goto_9
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 18
    :cond_10
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lde/c;->z()Z

    move-result v12

    if-nez v12, :cond_18

    .line 19
    sget-object v12, Lee/l;->c:Lde/g;

    invoke-virtual {v0, v12}, Lde/c;->S(Lde/g;)J

    move-result-wide v12

    cmp-long v14, v12, v10

    if-nez v14, :cond_11

    .line 20
    invoke-virtual/range {p0 .. p0}, Lde/c;->i()Lde/g;

    move-result-object v12

    goto :goto_b

    .line 21
    :cond_11
    invoke-virtual {v0, v12, v13}, Lde/c;->j(J)Lde/g;

    move-result-object v12

    .line 22
    invoke-virtual/range {p0 .. p0}, Lde/c;->readByte()B

    .line 23
    :goto_b
    sget-object v13, Lee/l;->e:Lde/g;

    invoke-static {v12, v13}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    if-eqz v4, :cond_12

    .line 24
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_10

    :cond_12
    if-eqz p1, :cond_16

    if-nez v4, :cond_13

    .line 25
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_16

    invoke-static {v5}, Lgd/n;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v13}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    goto :goto_c

    :cond_13
    if-eqz v8, :cond_14

    .line 26
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-eq v12, v9, :cond_10

    .line 27
    :cond_14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_15

    goto :goto_a

    :cond_15
    invoke-static {v5}, Landroidx/lifecycle/o;->p(Ljava/util/List;)I

    move-result v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 28
    :cond_16
    :goto_c
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 29
    :cond_17
    sget-object v13, Lee/l;->d:Lde/g;

    invoke-static {v12, v13}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    sget-object v13, Lde/g;->l:Lde/g;

    invoke-static {v12, v13}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 30
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 31
    :cond_18
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_d
    if-ge v2, v0, :cond_1a

    if-lez v2, :cond_19

    .line 32
    invoke-virtual {v1, v3}, Lde/c;->u0(Lde/g;)Lde/c;

    .line 33
    :cond_19
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/g;

    invoke-virtual {v1, v4}, Lde/c;->u0(Lde/g;)Lde/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 34
    :cond_1a
    iget-wide v2, v1, Lde/c;->i:J

    cmp-long v0, v2, v6

    if-nez v0, :cond_1b

    .line 35
    sget-object v0, Lee/l;->d:Lde/g;

    invoke-virtual {v1, v0}, Lde/c;->u0(Lde/g;)Lde/c;

    .line 36
    :cond_1b
    new-instance v0, Lde/a0;

    invoke-virtual {v1}, Lde/c;->i()Lde/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/a0;-><init>(Lde/g;)V

    return-object v0

    .line 37
    :cond_1c
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lde/c;->readByte()B

    move-result v5

    if-nez v3, :cond_1d

    .line 38
    invoke-static {v5}, Lee/l;->f(B)Lde/g;

    move-result-object v3

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public static final f(B)Lde/g;
    .locals 2

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lee/l;->a:Lde/g;

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    .line 2
    sget-object p0, Lee/l;->b:Lde/g;

    :goto_0
    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    .line 4
    invoke-static {v1, p0}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final g(Ljava/lang/String;)Lde/g;
    .locals 2

    const-string v0, "/"

    .line 1
    invoke-static {p0, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lee/l;->a:Lde/g;

    goto :goto_0

    :cond_0
    const-string v0, "\\"

    .line 2
    invoke-static {p0, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lee/l;->b:Lde/g;

    :goto_0
    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    .line 4
    invoke-static {v1, p0}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
