.class public final La4/h;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"

# interfaces
.implements Ls3/h;
.implements Ls3/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La4/h$a;
    }
.end annotation


# static fields
.field public static final synthetic y:I


# instance fields
.field public final a:I

.field public final b:Lm5/w;

.field public final c:Lm5/w;

.field public final d:Lm5/w;

.field public final e:Lm5/w;

.field public final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "La4/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:La4/j;

.field public final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf4/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:I

.field public k:J

.field public l:I

.field public m:Lm5/w;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Ls3/j;

.field public s:[La4/h$a;

.field public t:[[J

.field public u:I

.field public v:J

.field public w:I

.field public x:Ll4/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln3/r0;->e:Ln3/r0;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, La4/h;->a:I

    .line 3
    iput p1, p0, La4/h;->i:I

    .line 4
    new-instance v0, La4/j;

    invoke-direct {v0}, La4/j;-><init>()V

    iput-object v0, p0, La4/h;->g:La4/j;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La4/h;->h:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Lm5/w;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lm5/w;-><init>(I)V

    iput-object v0, p0, La4/h;->e:Lm5/w;

    .line 7
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, La4/h;->f:Ljava/util/ArrayDeque;

    .line 8
    new-instance v0, Lm5/w;

    sget-object v1, Lm5/t;->a:[B

    invoke-direct {v0, v1}, Lm5/w;-><init>([B)V

    iput-object v0, p0, La4/h;->b:Lm5/w;

    .line 9
    new-instance v0, Lm5/w;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lm5/w;-><init>(I)V

    iput-object v0, p0, La4/h;->c:Lm5/w;

    .line 10
    new-instance v0, Lm5/w;

    invoke-direct {v0}, Lm5/w;-><init>()V

    iput-object v0, p0, La4/h;->d:Lm5/w;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, La4/h;->n:I

    .line 12
    sget-object v0, Ls3/j;->g:Ls3/j$a;

    iput-object v0, p0, La4/h;->r:Ls3/j;

    new-array p1, p1, [La4/h$a;

    .line 13
    iput-object p1, p0, La4/h;->s:[La4/h$a;

    return-void
.end method

.method public static l(La4/o;JJ)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, La4/o;->a(J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, La4/o;->b(J)I

    move-result v0

    :cond_0
    if-ne v0, v1, :cond_1

    return-wide p3

    .line 3
    :cond_1
    iget-object p0, p0, La4/o;->c:[J

    aget-wide p1, p0, v0

    .line 4
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(JJ)V
    .locals 6

    .line 1
    iget-object v0, p0, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La4/h;->l:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, La4/h;->n:I

    .line 4
    iput v0, p0, La4/h;->o:I

    .line 5
    iput v0, p0, La4/h;->p:I

    .line 6
    iput v0, p0, La4/h;->q:I

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    .line 7
    iget p1, p0, La4/h;->i:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 8
    invoke-virtual {p0}, La4/h;->k()V

    goto :goto_1

    .line 9
    :cond_0
    iget-object p1, p0, La4/h;->g:La4/j;

    .line 10
    iget-object p2, p1, La4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput v0, p1, La4/j;->b:I

    .line 12
    iget-object p1, p0, La4/h;->h:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, La4/h;->s:[La4/h$a;

    array-length p2, p1

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_4

    aget-object v3, p1, v2

    .line 14
    iget-object v4, v3, La4/h$a;->b:La4/o;

    .line 15
    invoke-virtual {v4, p3, p4}, La4/o;->a(J)I

    move-result v5

    if-ne v5, v1, :cond_2

    .line 16
    invoke-virtual {v4, p3, p4}, La4/o;->b(J)I

    move-result v5

    .line 17
    :cond_2
    iput v5, v3, La4/h$a;->e:I

    .line 18
    iget-object v3, v3, La4/h$a;->d:Ls3/x;

    if-eqz v3, :cond_3

    .line 19
    iput-boolean v0, v3, Ls3/x;->b:Z

    .line 20
    iput v0, v3, Ls3/x;->c:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final e(Ls3/i;Ls3/t;)I
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    :cond_0
    iget v3, v1, La4/h;->i:I

    const v4, 0x66747970

    const/4 v7, 0x4

    const/4 v12, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_44

    const-wide/32 v16, 0x40000

    if-eq v3, v14, :cond_37

    const-wide/16 v18, 0x8

    if-eq v3, v12, :cond_1f

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1e

    .line 2
    iget-object v3, v1, La4/h;->g:La4/j;

    iget-object v9, v1, La4/h;->h:Ljava/util/ArrayList;

    .line 3
    iget v5, v3, La4/j;->b:I

    if-eqz v5, :cond_1a

    if-eq v5, v14, :cond_18

    const/16 v6, 0xb00

    const/16 v13, 0x890

    if-eq v5, v12, :cond_12

    if-ne v5, v4, :cond_11

    .line 4
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v17

    .line 5
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v21

    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v23

    sub-long v21, v21, v23

    iget v5, v3, La4/j;->c:I

    int-to-long v10, v5

    sub-long v10, v21, v10

    long-to-int v5, v10

    .line 6
    new-instance v10, Lm5/w;

    invoke-direct {v10, v5}, Lm5/w;-><init>(I)V

    .line 7
    iget-object v11, v10, Lm5/w;->a:[B

    .line 8
    invoke-interface {v0, v11, v15, v5}, Ls3/i;->readFully([BII)V

    move v0, v15

    .line 9
    :goto_0
    iget-object v5, v3, La4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_10

    .line 10
    iget-object v5, v3, La4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La4/j$a;

    move-object/from16 v24, v9

    .line 11
    iget-wide v8, v5, La4/j$a;->a:J

    sub-long v8, v8, v17

    long-to-int v8, v8

    .line 12
    invoke-virtual {v10, v8}, Lm5/w;->D(I)V

    .line 13
    invoke-virtual {v10, v7}, Lm5/w;->E(I)V

    .line 14
    invoke-virtual {v10}, Lm5/w;->g()I

    move-result v8

    .line 15
    invoke-virtual {v10, v8}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v9

    .line 16
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "Super_SlowMotion_BGM"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    move v9, v7

    goto :goto_2

    :sswitch_1
    const-string v11, "Super_SlowMotion_Deflickering_On"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    move v9, v4

    goto :goto_2

    :sswitch_2
    const-string v11, "Super_SlowMotion_Data"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_1

    :cond_3
    move v9, v12

    goto :goto_2

    :sswitch_3
    const-string v11, "Super_SlowMotion_Edit_Data"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    move v9, v14

    goto :goto_2

    :sswitch_4
    const-string v11, "SlowMotion_Data"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    move v9, v15

    goto :goto_2

    :goto_1
    const/4 v9, -0x1

    :goto_2
    if-eqz v9, :cond_a

    if-eq v9, v14, :cond_9

    if-eq v9, v12, :cond_8

    if-eq v9, v4, :cond_7

    if-ne v9, v7, :cond_6

    const/16 v9, 0xb01

    goto :goto_3

    :cond_6
    const-string v0, "Invalid SEF name"

    const/4 v2, 0x0

    .line 17
    invoke-static {v0, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_7
    const/16 v9, 0xb04

    goto :goto_3

    :cond_8
    move v9, v6

    goto :goto_3

    :cond_9
    const/16 v9, 0xb03

    goto :goto_3

    :cond_a
    move v9, v13

    .line 18
    :goto_3
    iget v5, v5, La4/j$a;->b:I

    add-int/lit8 v8, v8, 0x8

    sub-int/2addr v5, v8

    if-eq v9, v13, :cond_d

    if-eq v9, v6, :cond_c

    const/16 v5, 0xb01

    if-eq v9, v5, :cond_c

    const/16 v5, 0xb03

    if-eq v9, v5, :cond_c

    const/16 v5, 0xb04

    if-ne v9, v5, :cond_b

    goto :goto_4

    .line 19
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_c
    :goto_4
    move-object/from16 v7, v24

    goto :goto_6

    .line 20
    :cond_d
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-virtual {v10, v5}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    sget-object v9, La4/j;->e:Lt6/m;

    invoke-virtual {v9, v5}, Lt6/m;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v5

    move v9, v15

    .line 23
    :goto_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_f

    .line 24
    sget-object v11, La4/j;->d:Lt6/m;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v7, v21

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v11, v7}, Lt6/m;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v7

    .line 25
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v4, :cond_e

    .line 26
    :try_start_0
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 27
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    .line 28
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v7, v14

    shl-int v31, v14, v7

    .line 29
    new-instance v7, Ll4/c$b;

    move-object/from16 v26, v7

    invoke-direct/range {v26 .. v31}, Ll4/c$b;-><init>(JJI)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v9, 0x1

    const/4 v7, 0x4

    goto :goto_5

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    .line 30
    invoke-static {v2, v0}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    :cond_e
    const/4 v2, 0x0

    .line 31
    invoke-static {v2, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 32
    :cond_f
    new-instance v5, Ll4/c;

    invoke-direct {v5, v8}, Ll4/c;-><init>(Ljava/util/List;)V

    move-object/from16 v7, v24

    .line 33
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v0, v0, 0x1

    move-object v9, v7

    const/4 v7, 0x4

    goto/16 :goto_0

    :cond_10
    const-wide/16 v8, 0x0

    .line 34
    iput-wide v8, v2, Ls3/t;->a:J

    move v0, v14

    goto/16 :goto_d

    .line 35
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 36
    :cond_12
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v7

    .line 37
    iget v5, v3, La4/j;->c:I

    add-int/lit8 v5, v5, -0xc

    const/16 v9, 0x8

    sub-int/2addr v5, v9

    .line 38
    new-instance v9, Lm5/w;

    invoke-direct {v9, v5}, Lm5/w;-><init>(I)V

    .line 39
    iget-object v10, v9, Lm5/w;->a:[B

    .line 40
    invoke-interface {v0, v10, v15, v5}, Ls3/i;->readFully([BII)V

    move v0, v15

    .line 41
    :goto_7
    div-int/lit8 v10, v5, 0xc

    if-ge v0, v10, :cond_16

    .line 42
    invoke-virtual {v9, v12}, Lm5/w;->E(I)V

    .line 43
    invoke-virtual {v9}, Lm5/w;->i()S

    move-result v10

    if-eq v10, v13, :cond_14

    if-eq v10, v6, :cond_14

    const/16 v11, 0xb01

    if-eq v10, v11, :cond_13

    const/16 v6, 0xb03

    if-eq v10, v6, :cond_13

    const/16 v6, 0xb04

    if-eq v10, v6, :cond_15

    const/16 v10, 0x8

    .line 44
    invoke-virtual {v9, v10}, Lm5/w;->E(I)V

    move-wide/from16 v20, v7

    goto :goto_9

    :cond_13
    const/16 v6, 0xb04

    goto :goto_8

    :cond_14
    const/16 v6, 0xb04

    const/16 v11, 0xb01

    .line 45
    :cond_15
    :goto_8
    iget v10, v3, La4/j;->c:I

    int-to-long v13, v10

    sub-long v13, v7, v13

    invoke-virtual {v9}, Lm5/w;->g()I

    move-result v10

    move-wide/from16 v20, v7

    int-to-long v6, v10

    sub-long/2addr v13, v6

    .line 46
    invoke-virtual {v9}, Lm5/w;->g()I

    move-result v6

    .line 47
    iget-object v7, v3, La4/j;->a:Ljava/util/ArrayList;

    new-instance v10, La4/j$a;

    invoke-direct {v10, v13, v14, v6}, La4/j$a;-><init>(JI)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v20

    const/16 v6, 0xb00

    const/16 v13, 0x890

    const/4 v14, 0x1

    goto :goto_7

    .line 48
    :cond_16
    iget-object v0, v3, La4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    const-wide/16 v5, 0x0

    .line 49
    iput-wide v5, v2, Ls3/t;->a:J

    goto :goto_a

    .line 50
    :cond_17
    iput v4, v3, La4/j;->b:I

    .line 51
    iget-object v0, v3, La4/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/j$a;

    iget-wide v3, v0, La4/j$a;->a:J

    iput-wide v3, v2, Ls3/t;->a:J

    goto :goto_a

    .line 52
    :cond_18
    new-instance v4, Lm5/w;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lm5/w;-><init>(I)V

    .line 53
    iget-object v6, v4, Lm5/w;->a:[B

    .line 54
    invoke-interface {v0, v6, v15, v5}, Ls3/i;->readFully([BII)V

    .line 55
    invoke-virtual {v4}, Lm5/w;->g()I

    move-result v6

    add-int/2addr v6, v5

    iput v6, v3, La4/j;->c:I

    .line 56
    invoke-virtual {v4}, Lm5/w;->e()I

    move-result v4

    const v5, 0x53454654

    if-eq v4, v5, :cond_19

    const-wide/16 v4, 0x0

    .line 57
    iput-wide v4, v2, Ls3/t;->a:J

    goto :goto_a

    .line 58
    :cond_19
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v4

    iget v0, v3, La4/j;->c:I

    add-int/lit8 v0, v0, -0xc

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, v2, Ls3/t;->a:J

    .line 59
    iput v12, v3, La4/j;->b:I

    :goto_a
    const/4 v0, 0x1

    goto :goto_d

    .line 60
    :cond_1a
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1c

    cmp-long v0, v4, v18

    if-gez v0, :cond_1b

    goto :goto_b

    :cond_1b
    sub-long v4, v4, v18

    goto :goto_c

    :cond_1c
    :goto_b
    const-wide/16 v4, 0x0

    .line 61
    :goto_c
    iput-wide v4, v2, Ls3/t;->a:J

    const/4 v0, 0x1

    .line 62
    iput v0, v3, La4/j;->b:I

    .line 63
    :goto_d
    iget-wide v2, v2, Ls3/t;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1d

    .line 64
    invoke-virtual/range {p0 .. p0}, La4/h;->k()V

    :cond_1d
    return v0

    .line 65
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 66
    :cond_1f
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v3

    .line 67
    iget v5, v1, La4/h;->n:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2a

    const-wide v5, 0x7fffffffffffffffL

    move-wide/from16 v21, v5

    move-wide/from16 v26, v21

    move-wide/from16 v28, v26

    move v13, v15

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    .line 68
    :goto_e
    iget-object v14, v1, La4/h;->s:[La4/h$a;

    array-length v11, v14

    if-ge v13, v11, :cond_27

    .line 69
    aget-object v11, v14, v13

    .line 70
    iget v14, v11, La4/h$a;->e:I

    .line 71
    iget-object v11, v11, La4/h$a;->b:La4/o;

    iget v12, v11, La4/o;->b:I

    if-ne v14, v12, :cond_20

    goto :goto_11

    .line 72
    :cond_20
    iget-object v11, v11, La4/o;->c:[J

    aget-wide v30, v11, v14

    .line 73
    iget-object v11, v1, La4/h;->t:[[J

    sget v12, Lm5/g0;->a:I

    aget-object v11, v11, v13

    aget-wide v32, v11, v14

    sub-long v30, v30, v3

    const-wide/16 v11, 0x0

    cmp-long v14, v30, v11

    if-ltz v14, :cond_22

    cmp-long v11, v30, v16

    if-ltz v11, :cond_21

    goto :goto_f

    :cond_21
    move v11, v15

    goto :goto_10

    :cond_22
    :goto_f
    const/4 v11, 0x1

    :goto_10
    if-nez v11, :cond_23

    if-nez v10, :cond_24

    :cond_23
    if-ne v11, v10, :cond_25

    cmp-long v12, v30, v28

    if-gez v12, :cond_25

    :cond_24
    move v10, v11

    move v8, v13

    move-wide/from16 v28, v30

    move-wide/from16 v26, v32

    :cond_25
    cmp-long v12, v32, v21

    if-gez v12, :cond_26

    move v9, v11

    move v7, v13

    move-wide/from16 v21, v32

    :cond_26
    :goto_11
    add-int/lit8 v13, v13, 0x1

    const/4 v12, 0x2

    goto :goto_e

    :cond_27
    cmp-long v5, v21, v5

    if-eqz v5, :cond_28

    if-eqz v9, :cond_28

    const-wide/32 v5, 0xa00000

    add-long v21, v21, v5

    cmp-long v5, v26, v21

    if-gez v5, :cond_29

    :cond_28
    move v7, v8

    .line 74
    :cond_29
    iput v7, v1, La4/h;->n:I

    const/4 v5, -0x1

    if-ne v7, v5, :cond_2a

    const/4 v9, -0x1

    goto/16 :goto_17

    .line 75
    :cond_2a
    iget-object v5, v1, La4/h;->s:[La4/h$a;

    iget v6, v1, La4/h;->n:I

    aget-object v5, v5, v6

    .line 76
    iget-object v6, v5, La4/h$a;->c:Ls3/w;

    .line 77
    iget v7, v5, La4/h$a;->e:I

    .line 78
    iget-object v8, v5, La4/h$a;->b:La4/o;

    iget-object v9, v8, La4/o;->c:[J

    aget-wide v10, v9, v7

    .line 79
    iget-object v8, v8, La4/o;->d:[I

    aget v8, v8, v7

    .line 80
    iget-object v9, v5, La4/h$a;->d:Ls3/x;

    sub-long v3, v10, v3

    .line 81
    iget v12, v1, La4/h;->o:I

    int-to-long v12, v12

    add-long/2addr v3, v12

    const-wide/16 v12, 0x0

    cmp-long v12, v3, v12

    if-ltz v12, :cond_36

    cmp-long v12, v3, v16

    if-ltz v12, :cond_2b

    goto/16 :goto_16

    .line 82
    :cond_2b
    iget-object v2, v5, La4/h$a;->a:La4/l;

    iget v2, v2, La4/l;->g:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_2c

    add-long v3, v3, v18

    add-int/lit8 v8, v8, -0x8

    :cond_2c
    long-to-int v2, v3

    .line 83
    invoke-interface {v0, v2}, Ls3/i;->k(I)V

    .line 84
    iget-object v2, v5, La4/h$a;->a:La4/l;

    iget v3, v2, La4/l;->j:I

    if-eqz v3, :cond_30

    .line 85
    iget-object v2, v1, La4/h;->c:Lm5/w;

    .line 86
    iget-object v2, v2, Lm5/w;->a:[B

    .line 87
    aput-byte v15, v2, v15

    const/4 v4, 0x1

    .line 88
    aput-byte v15, v2, v4

    const/4 v4, 0x2

    .line 89
    aput-byte v15, v2, v4

    rsub-int/lit8 v4, v3, 0x4

    .line 90
    :goto_12
    iget v10, v1, La4/h;->p:I

    if-ge v10, v8, :cond_2f

    .line 91
    iget v10, v1, La4/h;->q:I

    if-nez v10, :cond_2e

    .line 92
    invoke-interface {v0, v2, v4, v3}, Ls3/i;->readFully([BII)V

    .line 93
    iget v10, v1, La4/h;->o:I

    add-int/2addr v10, v3

    iput v10, v1, La4/h;->o:I

    .line 94
    iget-object v10, v1, La4/h;->c:Lm5/w;

    invoke-virtual {v10, v15}, Lm5/w;->D(I)V

    .line 95
    iget-object v10, v1, La4/h;->c:Lm5/w;

    invoke-virtual {v10}, Lm5/w;->e()I

    move-result v10

    if-ltz v10, :cond_2d

    .line 96
    iput v10, v1, La4/h;->q:I

    .line 97
    iget-object v10, v1, La4/h;->b:Lm5/w;

    invoke-virtual {v10, v15}, Lm5/w;->D(I)V

    .line 98
    iget-object v10, v1, La4/h;->b:Lm5/w;

    const/4 v11, 0x4

    invoke-interface {v6, v10, v11}, Ls3/w;->f(Lm5/w;I)V

    .line 99
    iget v10, v1, La4/h;->p:I

    add-int/2addr v10, v11

    iput v10, v1, La4/h;->p:I

    add-int/2addr v8, v4

    goto :goto_12

    :cond_2d
    const-string v0, "Invalid NAL length"

    const/4 v2, 0x0

    .line 100
    invoke-static {v0, v2}, Ln3/i1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ln3/i1;

    move-result-object v0

    throw v0

    .line 101
    :cond_2e
    invoke-interface {v6, v0, v10, v15}, Ls3/w;->d(Ll5/h;IZ)I

    move-result v10

    .line 102
    iget v12, v1, La4/h;->o:I

    add-int/2addr v12, v10

    iput v12, v1, La4/h;->o:I

    .line 103
    iget v12, v1, La4/h;->p:I

    add-int/2addr v12, v10

    iput v12, v1, La4/h;->p:I

    .line 104
    iget v12, v1, La4/h;->q:I

    sub-int/2addr v12, v10

    iput v12, v1, La4/h;->q:I

    goto :goto_12

    :cond_2f
    move v10, v8

    goto :goto_14

    .line 105
    :cond_30
    iget-object v2, v2, La4/l;->f:Ln3/s0;

    iget-object v2, v2, Ln3/s0;->s:Ljava/lang/String;

    const-string v3, "audio/ac4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 106
    iget v2, v1, La4/h;->p:I

    if-nez v2, :cond_31

    .line 107
    iget-object v2, v1, La4/h;->d:Lm5/w;

    invoke-static {v8, v2}, Lp3/c;->a(ILm5/w;)V

    .line 108
    iget-object v2, v1, La4/h;->d:Lm5/w;

    const/4 v3, 0x7

    invoke-interface {v6, v2, v3}, Ls3/w;->f(Lm5/w;I)V

    .line 109
    iget v2, v1, La4/h;->p:I

    add-int/2addr v2, v3

    iput v2, v1, La4/h;->p:I

    :cond_31
    add-int/lit8 v8, v8, 0x7

    goto :goto_13

    :cond_32
    if-eqz v9, :cond_33

    .line 110
    invoke-virtual {v9, v0}, Ls3/x;->c(Ls3/i;)V

    .line 111
    :cond_33
    :goto_13
    iget v2, v1, La4/h;->p:I

    if-ge v2, v8, :cond_2f

    sub-int v2, v8, v2

    .line 112
    invoke-interface {v6, v0, v2, v15}, Ls3/w;->d(Ll5/h;IZ)I

    move-result v2

    .line 113
    iget v3, v1, La4/h;->o:I

    add-int/2addr v3, v2

    iput v3, v1, La4/h;->o:I

    .line 114
    iget v3, v1, La4/h;->p:I

    add-int/2addr v3, v2

    iput v3, v1, La4/h;->p:I

    .line 115
    iget v3, v1, La4/h;->q:I

    sub-int/2addr v3, v2

    iput v3, v1, La4/h;->q:I

    goto :goto_13

    .line 116
    :goto_14
    iget-object v0, v5, La4/h$a;->b:La4/o;

    iget-object v2, v0, La4/o;->f:[J

    aget-wide v3, v2, v7

    .line 117
    iget-object v0, v0, La4/o;->g:[I

    aget v0, v0, v7

    if-eqz v9, :cond_34

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v26, v9

    move-object/from16 v27, v6

    move-wide/from16 v28, v3

    move/from16 v30, v0

    move/from16 v31, v10

    .line 118
    invoke-virtual/range {v26 .. v33}, Ls3/x;->b(Ls3/w;JIIILs3/w$a;)V

    const/4 v0, 0x1

    add-int/2addr v7, v0

    .line 119
    iget-object v0, v5, La4/h$a;->b:La4/o;

    iget v0, v0, La4/o;->b:I

    if-ne v7, v0, :cond_35

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v9, v6, v2}, Ls3/x;->a(Ls3/w;Ls3/w$a;)V

    goto :goto_15

    :cond_34
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide v7, v3

    move v9, v0

    .line 121
    invoke-interface/range {v6 .. v12}, Ls3/w;->c(JIIILs3/w$a;)V

    .line 122
    :cond_35
    :goto_15
    iget v0, v5, La4/h$a;->e:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v5, La4/h$a;->e:I

    const/4 v0, -0x1

    .line 123
    iput v0, v1, La4/h;->n:I

    .line 124
    iput v15, v1, La4/h;->o:I

    .line 125
    iput v15, v1, La4/h;->p:I

    .line 126
    iput v15, v1, La4/h;->q:I

    move v9, v15

    goto :goto_17

    .line 127
    :cond_36
    :goto_16
    iput-wide v10, v2, Ls3/t;->a:J

    const/4 v9, 0x1

    :goto_17
    return v9

    .line 128
    :cond_37
    iget-wide v5, v1, La4/h;->k:J

    iget v3, v1, La4/h;->l:I

    int-to-long v7, v3

    sub-long/2addr v5, v7

    .line 129
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 130
    iget-object v3, v1, La4/h;->m:Lm5/w;

    if-eqz v3, :cond_40

    .line 131
    iget-object v9, v3, Lm5/w;->a:[B

    .line 132
    iget v10, v1, La4/h;->l:I

    long-to-int v5, v5

    invoke-interface {v0, v9, v10, v5}, Ls3/i;->readFully([BII)V

    .line 133
    iget v5, v1, La4/h;->j:I

    if-ne v5, v4, :cond_3f

    const/16 v4, 0x8

    .line 134
    invoke-virtual {v3, v4}, Lm5/w;->D(I)V

    .line 135
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v4

    const v5, 0x71742020

    const v6, 0x68656963

    if-eq v4, v6, :cond_39

    if-eq v4, v5, :cond_38

    move v4, v15

    goto :goto_18

    :cond_38
    const/4 v4, 0x1

    goto :goto_18

    :cond_39
    const/4 v4, 0x2

    :goto_18
    if-eqz v4, :cond_3a

    goto :goto_1a

    :cond_3a
    const/4 v4, 0x4

    .line 136
    invoke-virtual {v3, v4}, Lm5/w;->E(I)V

    .line 137
    :cond_3b
    iget v4, v3, Lm5/w;->c:I

    iget v9, v3, Lm5/w;->b:I

    sub-int/2addr v4, v9

    if-lez v4, :cond_3e

    .line 138
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v4

    if-eq v4, v6, :cond_3d

    if-eq v4, v5, :cond_3c

    move v4, v15

    goto :goto_19

    :cond_3c
    const/4 v4, 0x1

    goto :goto_19

    :cond_3d
    const/4 v4, 0x2

    :goto_19
    if-eqz v4, :cond_3b

    goto :goto_1a

    :cond_3e
    move v4, v15

    .line 139
    :goto_1a
    iput v4, v1, La4/h;->w:I

    goto :goto_1b

    .line 140
    :cond_3f
    iget-object v4, v1, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    .line 141
    iget-object v4, v1, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La4/a$a;

    new-instance v5, La4/a$b;

    iget v6, v1, La4/h;->j:I

    invoke-direct {v5, v6, v3}, La4/a$b;-><init>(ILm5/w;)V

    .line 142
    iget-object v3, v4, La4/a$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_40
    cmp-long v3, v5, v16

    if-gez v3, :cond_42

    long-to-int v3, v5

    .line 143
    invoke-interface {v0, v3}, Ls3/i;->k(I)V

    :cond_41
    :goto_1b
    move v3, v15

    goto :goto_1c

    .line 144
    :cond_42
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v3

    add-long/2addr v3, v5

    iput-wide v3, v2, Ls3/t;->a:J

    const/4 v3, 0x1

    .line 145
    :goto_1c
    invoke-virtual {v1, v7, v8}, La4/h;->m(J)V

    if-eqz v3, :cond_43

    .line 146
    iget v3, v1, La4/h;->i:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_43

    const/4 v15, 0x1

    :cond_43
    if-eqz v15, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_44
    move v3, v14

    .line 147
    iget v5, v1, La4/h;->l:I

    if-nez v5, :cond_48

    .line 148
    iget-object v5, v1, La4/h;->e:Lm5/w;

    .line 149
    iget-object v5, v5, Lm5/w;->a:[B

    const/16 v6, 0x8

    .line 150
    invoke-interface {v0, v5, v15, v6, v3}, Ls3/i;->e([BIIZ)Z

    move-result v5

    if-nez v5, :cond_47

    .line 151
    iget v3, v1, La4/h;->w:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_46

    iget v3, v1, La4/h;->a:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_46

    .line 152
    iget-object v3, v1, La4/h;->r:Ls3/j;

    const/4 v4, 0x4

    invoke-interface {v3, v15, v4}, Ls3/j;->p(II)Ls3/w;

    move-result-object v3

    .line 153
    iget-object v4, v1, La4/h;->x:Ll4/b;

    if-nez v4, :cond_45

    const/4 v8, 0x0

    goto :goto_1d

    :cond_45
    new-instance v8, Lf4/a;

    const/4 v5, 0x1

    new-array v5, v5, [Lf4/a$b;

    aput-object v4, v5, v15

    invoke-direct {v8, v5}, Lf4/a;-><init>([Lf4/a$b;)V

    .line 154
    :goto_1d
    new-instance v4, Ln3/s0$a;

    invoke-direct {v4}, Ln3/s0$a;-><init>()V

    .line 155
    iput-object v8, v4, Ln3/s0$a;->i:Lf4/a;

    .line 156
    new-instance v5, Ln3/s0;

    invoke-direct {v5, v4}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 157
    invoke-interface {v3, v5}, Ls3/w;->b(Ln3/s0;)V

    .line 158
    iget-object v3, v1, La4/h;->r:Ls3/j;

    invoke-interface {v3}, Ls3/j;->b()V

    .line 159
    iget-object v3, v1, La4/h;->r:Ls3/j;

    new-instance v4, Ls3/u$b;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v4, v5, v6}, Ls3/u$b;-><init>(J)V

    invoke-interface {v3, v4}, Ls3/j;->j(Ls3/u;)V

    :cond_46
    move v14, v15

    goto/16 :goto_27

    :cond_47
    const/16 v3, 0x8

    .line 160
    iput v3, v1, La4/h;->l:I

    .line 161
    iget-object v3, v1, La4/h;->e:Lm5/w;

    invoke-virtual {v3, v15}, Lm5/w;->D(I)V

    .line 162
    iget-object v3, v1, La4/h;->e:Lm5/w;

    invoke-virtual {v3}, Lm5/w;->u()J

    move-result-wide v5

    iput-wide v5, v1, La4/h;->k:J

    .line 163
    iget-object v3, v1, La4/h;->e:Lm5/w;

    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v3

    iput v3, v1, La4/h;->j:I

    .line 164
    :cond_48
    iget-wide v5, v1, La4/h;->k:J

    const-wide/16 v7, 0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_49

    .line 165
    iget-object v3, v1, La4/h;->e:Lm5/w;

    .line 166
    iget-object v3, v3, Lm5/w;->a:[B

    const/16 v5, 0x8

    .line 167
    invoke-interface {v0, v3, v5, v5}, Ls3/i;->readFully([BII)V

    .line 168
    iget v3, v1, La4/h;->l:I

    add-int/2addr v3, v5

    iput v3, v1, La4/h;->l:I

    .line 169
    iget-object v3, v1, La4/h;->e:Lm5/w;

    invoke-virtual {v3}, Lm5/w;->x()J

    move-result-wide v5

    iput-wide v5, v1, La4/h;->k:J

    goto :goto_1e

    :cond_49
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4b

    .line 170
    invoke-interface/range {p1 .. p1}, Ls3/i;->a()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_4a

    .line 171
    iget-object v3, v1, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La4/a$a;

    if-eqz v3, :cond_4a

    .line 172
    iget-wide v5, v3, La4/a$a;->b:J

    :cond_4a
    cmp-long v3, v5, v7

    if-eqz v3, :cond_4b

    .line 173
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v3, v1, La4/h;->l:I

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v1, La4/h;->k:J

    .line 174
    :cond_4b
    :goto_1e
    iget-wide v5, v1, La4/h;->k:J

    iget v3, v1, La4/h;->l:I

    int-to-long v7, v3

    cmp-long v5, v5, v7

    if-ltz v5, :cond_57

    .line 175
    iget v5, v1, La4/h;->j:I

    const v6, 0x6d6f6f76

    const v7, 0x6d657461

    if-eq v5, v6, :cond_4d

    const v6, 0x7472616b

    if-eq v5, v6, :cond_4d

    const v6, 0x6d646961

    if-eq v5, v6, :cond_4d

    const v6, 0x6d696e66

    if-eq v5, v6, :cond_4d

    const v6, 0x7374626c

    if-eq v5, v6, :cond_4d

    const v6, 0x65647473

    if-eq v5, v6, :cond_4d

    if-ne v5, v7, :cond_4c

    goto :goto_1f

    :cond_4c
    move v6, v15

    goto :goto_20

    :cond_4d
    :goto_1f
    const/4 v6, 0x1

    :goto_20
    if-eqz v6, :cond_50

    .line 176
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v3

    iget-wide v5, v1, La4/h;->k:J

    add-long/2addr v3, v5

    iget v8, v1, La4/h;->l:I

    int-to-long v8, v8

    sub-long/2addr v3, v8

    cmp-long v5, v5, v8

    if-eqz v5, :cond_4e

    .line 177
    iget v5, v1, La4/h;->j:I

    if-ne v5, v7, :cond_4e

    .line 178
    iget-object v5, v1, La4/h;->d:Lm5/w;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lm5/w;->A(I)V

    .line 179
    iget-object v5, v1, La4/h;->d:Lm5/w;

    .line 180
    iget-object v5, v5, Lm5/w;->a:[B

    .line 181
    invoke-interface {v0, v5, v15, v6}, Ls3/i;->s([BII)V

    .line 182
    iget-object v5, v1, La4/h;->d:Lm5/w;

    invoke-static {v5}, La4/b;->a(Lm5/w;)V

    .line 183
    iget-object v5, v1, La4/h;->d:Lm5/w;

    .line 184
    iget v5, v5, Lm5/w;->b:I

    .line 185
    invoke-interface {v0, v5}, Ls3/i;->k(I)V

    .line 186
    invoke-interface/range {p1 .. p1}, Ls3/i;->i()V

    .line 187
    :cond_4e
    iget-object v5, v1, La4/h;->f:Ljava/util/ArrayDeque;

    new-instance v6, La4/a$a;

    iget v7, v1, La4/h;->j:I

    invoke-direct {v6, v7, v3, v4}, La4/a$a;-><init>(IJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 188
    iget-wide v5, v1, La4/h;->k:J

    iget v7, v1, La4/h;->l:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_4f

    .line 189
    invoke-virtual {v1, v3, v4}, La4/h;->m(J)V

    goto :goto_21

    .line 190
    :cond_4f
    invoke-virtual/range {p0 .. p0}, La4/h;->k()V

    :goto_21
    const/4 v3, 0x1

    goto/16 :goto_26

    :cond_50
    const v6, 0x6d646864

    if-eq v5, v6, :cond_52

    const v6, 0x6d766864

    if-eq v5, v6, :cond_52

    const v6, 0x68646c72

    if-eq v5, v6, :cond_52

    const v6, 0x73747364

    if-eq v5, v6, :cond_52

    const v6, 0x73747473

    if-eq v5, v6, :cond_52

    const v6, 0x73747373

    if-eq v5, v6, :cond_52

    const v6, 0x63747473

    if-eq v5, v6, :cond_52

    const v6, 0x656c7374

    if-eq v5, v6, :cond_52

    const v6, 0x73747363

    if-eq v5, v6, :cond_52

    const v6, 0x7374737a

    if-eq v5, v6, :cond_52

    const v6, 0x73747a32

    if-eq v5, v6, :cond_52

    const v6, 0x7374636f

    if-eq v5, v6, :cond_52

    const v6, 0x636f3634

    if-eq v5, v6, :cond_52

    const v6, 0x746b6864

    if-eq v5, v6, :cond_52

    if-eq v5, v4, :cond_52

    const v4, 0x75647461

    if-eq v5, v4, :cond_52

    const v4, 0x6b657973

    if-eq v5, v4, :cond_52

    const v4, 0x696c7374

    if-ne v5, v4, :cond_51

    goto :goto_22

    :cond_51
    move v4, v15

    goto :goto_23

    :cond_52
    :goto_22
    const/4 v4, 0x1

    :goto_23
    if-eqz v4, :cond_55

    const/16 v4, 0x8

    if-ne v3, v4, :cond_53

    const/4 v3, 0x1

    goto :goto_24

    :cond_53
    move v3, v15

    .line 191
    :goto_24
    invoke-static {v3}, Lm5/a;->e(Z)V

    .line 192
    iget-wide v3, v1, La4/h;->k:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v3, v3, v5

    if-gtz v3, :cond_54

    const/4 v3, 0x1

    goto :goto_25

    :cond_54
    move v3, v15

    :goto_25
    invoke-static {v3}, Lm5/a;->e(Z)V

    .line 193
    new-instance v3, Lm5/w;

    iget-wide v4, v1, La4/h;->k:J

    long-to-int v4, v4

    invoke-direct {v3, v4}, Lm5/w;-><init>(I)V

    .line 194
    iget-object v4, v1, La4/h;->e:Lm5/w;

    .line 195
    iget-object v4, v4, Lm5/w;->a:[B

    iget-object v5, v3, Lm5/w;->a:[B

    const/16 v6, 0x8

    .line 196
    invoke-static {v4, v15, v5, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iput-object v3, v1, La4/h;->m:Lm5/w;

    const/4 v3, 0x1

    .line 198
    iput v3, v1, La4/h;->i:I

    goto :goto_26

    .line 199
    :cond_55
    invoke-interface/range {p1 .. p1}, Ls3/i;->u()J

    move-result-wide v3

    iget v5, v1, La4/h;->l:I

    int-to-long v5, v5

    sub-long v27, v3, v5

    .line 200
    iget v3, v1, La4/h;->j:I

    const v4, 0x6d707664

    if-ne v3, v4, :cond_56

    .line 201
    new-instance v3, Ll4/b;

    const-wide/16 v25, 0x0

    const-wide v29, -0x7fffffffffffffffL    # -4.9E-324

    add-long v31, v27, v5

    iget-wide v7, v1, La4/h;->k:J

    sub-long v33, v7, v5

    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v34}, Ll4/b;-><init>(JJJJJ)V

    iput-object v3, v1, La4/h;->x:Ll4/b;

    :cond_56
    const/4 v3, 0x0

    .line 202
    iput-object v3, v1, La4/h;->m:Lm5/w;

    const/4 v3, 0x1

    .line 203
    iput v3, v1, La4/h;->i:I

    :goto_26
    move v14, v3

    :goto_27
    if-nez v14, :cond_0

    const/4 v3, -0x1

    return v3

    :cond_57
    const-string v0, "Atom size less than header length (unsupported)."

    .line 204
    invoke-static {v0}, Ln3/i1;->c(Ljava/lang/String;)Ln3/i1;

    move-result-object v0

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6604662e -> :sswitch_4
        -0x4f6659e5 -> :sswitch_3
        -0x4a96a712 -> :sswitch_2
        -0x3182f331 -> :sswitch_1
        0x68f2d704 -> :sswitch_0
    .end sparse-switch
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g(Ls3/j;)V
    .locals 0

    iput-object p1, p0, La4/h;->r:Ls3/j;

    return-void
.end method

.method public final h(J)Ls3/u$a;
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    iget-object v3, v0, La4/h;->s:[La4/h$a;

    array-length v4, v3

    if-nez v4, :cond_0

    .line 2
    new-instance v1, Ls3/u$a;

    sget-object v2, Ls3/v;->c:Ls3/v;

    .line 3
    invoke-direct {v1, v2, v2}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    goto/16 :goto_3

    :cond_0
    const-wide/16 v4, -0x1

    .line 4
    iget v6, v0, La4/h;->u:I

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, -0x1

    if-eq v6, v9, :cond_4

    .line 5
    aget-object v3, v3, v6

    iget-object v3, v3, La4/h$a;->b:La4/o;

    .line 6
    invoke-virtual {v3, v1, v2}, La4/o;->a(J)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 7
    invoke-virtual {v3, v1, v2}, La4/o;->b(J)I

    move-result v6

    :cond_1
    if-ne v6, v9, :cond_2

    .line 8
    new-instance v1, Ls3/u$a;

    sget-object v2, Ls3/v;->c:Ls3/v;

    .line 9
    invoke-direct {v1, v2, v2}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    goto/16 :goto_3

    .line 10
    :cond_2
    iget-object v10, v3, La4/o;->f:[J

    aget-wide v11, v10, v6

    .line 11
    iget-object v10, v3, La4/o;->c:[J

    aget-wide v13, v10, v6

    cmp-long v10, v11, v1

    if-gez v10, :cond_3

    .line 12
    iget v10, v3, La4/o;->b:I

    add-int/2addr v10, v9

    if-ge v6, v10, :cond_3

    .line 13
    invoke-virtual {v3, v1, v2}, La4/o;->b(J)I

    move-result v1

    if-eq v1, v9, :cond_3

    if-eq v1, v6, :cond_3

    .line 14
    iget-object v2, v3, La4/o;->f:[J

    aget-wide v4, v2, v1

    .line 15
    iget-object v2, v3, La4/o;->c:[J

    aget-wide v1, v2, v1

    move-wide v15, v1

    move-wide v1, v4

    move-wide v4, v15

    goto :goto_1

    :cond_3
    move-wide v1, v11

    goto :goto_0

    :cond_4
    const-wide v13, 0x7fffffffffffffffL

    :goto_0
    move-wide v11, v1

    move-wide v1, v7

    :goto_1
    const/4 v3, 0x0

    .line 16
    :goto_2
    iget-object v6, v0, La4/h;->s:[La4/h$a;

    array-length v9, v6

    if-ge v3, v9, :cond_7

    .line 17
    iget v9, v0, La4/h;->u:I

    if-eq v3, v9, :cond_6

    .line 18
    aget-object v6, v6, v3

    iget-object v6, v6, La4/h$a;->b:La4/o;

    .line 19
    invoke-static {v6, v11, v12, v13, v14}, La4/h;->l(La4/o;JJ)J

    move-result-wide v9

    cmp-long v13, v1, v7

    if-eqz v13, :cond_5

    .line 20
    invoke-static {v6, v1, v2, v4, v5}, La4/h;->l(La4/o;JJ)J

    move-result-wide v4

    :cond_5
    move-wide v13, v9

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 21
    :cond_7
    new-instance v3, Ls3/v;

    invoke-direct {v3, v11, v12, v13, v14}, Ls3/v;-><init>(JJ)V

    cmp-long v6, v1, v7

    if-nez v6, :cond_8

    .line 22
    new-instance v1, Ls3/u$a;

    .line 23
    invoke-direct {v1, v3, v3}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    goto :goto_3

    .line 24
    :cond_8
    new-instance v6, Ls3/v;

    invoke-direct {v6, v1, v2, v4, v5}, Ls3/v;-><init>(JJ)V

    .line 25
    new-instance v1, Ls3/u$a;

    invoke-direct {v1, v3, v6}, Ls3/u$a;-><init>(Ls3/v;Ls3/v;)V

    :goto_3
    return-object v1
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, La4/h;->v:J

    return-wide v0
.end method

.method public final j(Ls3/i;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, La4/h;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-static {p1, v1, v0}, La4/k;->a(Ls3/i;ZZ)Z

    move-result p1

    return p1
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, La4/h;->i:I

    .line 2
    iput v0, p0, La4/h;->l:I

    return-void
.end method

.method public final m(J)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/i1;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    :cond_0
    :goto_0
    iget-object v0, v1, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, v1, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/a$a;

    iget-wide v2, v0, La4/a$a;->b:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_57

    .line 2
    iget-object v0, v1, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, La4/a$a;

    .line 3
    iget v0, v2, La4/a;->a:I

    const v3, 0x6d6f6f76

    if-ne v0, v3, :cond_56

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget v3, v1, La4/h;->w:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v8, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move v8, v3

    .line 6
    :goto_1
    new-instance v10, Ls3/q;

    invoke-direct {v10}, Ls3/q;-><init>()V

    const v3, 0x75647461

    .line 7
    invoke-virtual {v2, v3}, La4/a$a;->c(I)La4/a$b;

    move-result-object v3

    const v4, 0x696c7374

    const v5, 0x6d657461

    const/16 v6, 0x8

    if-eqz v3, :cond_37

    .line 8
    sget-object v7, La4/b;->a:[B

    .line 9
    iget-object v3, v3, La4/a$b;->b:Lm5/w;

    .line 10
    invoke-virtual {v3, v6}, Lm5/w;->D(I)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 11
    :goto_2
    iget v11, v3, Lm5/w;->c:I

    iget v12, v3, Lm5/w;->b:I

    sub-int/2addr v11, v12

    if-lt v11, v6, :cond_35

    .line 12
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v11

    .line 13
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v13

    if-ne v13, v5, :cond_2e

    .line 14
    invoke-virtual {v3, v12}, Lm5/w;->D(I)V

    add-int v5, v12, v11

    .line 15
    invoke-virtual {v3, v6}, Lm5/w;->E(I)V

    .line 16
    invoke-static {v3}, La4/b;->a(Lm5/w;)V

    .line 17
    :goto_3
    iget v7, v3, Lm5/w;->b:I

    if-ge v7, v5, :cond_2d

    .line 18
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v13

    .line 19
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v14

    if-ne v14, v4, :cond_2c

    .line 20
    invoke-virtual {v3, v7}, Lm5/w;->D(I)V

    add-int/2addr v7, v13

    .line 21
    invoke-virtual {v3, v6}, Lm5/w;->E(I)V

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :goto_4
    iget v5, v3, Lm5/w;->b:I

    if-ge v5, v7, :cond_2a

    .line 24
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v6

    add-int/2addr v6, v5

    .line 25
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v5

    shr-int/lit8 v13, v5, 0x18

    and-int/lit16 v13, v13, 0xff

    const/16 v14, 0xa9

    const-string v15, "TCON"

    move/from16 v16, v7

    const-string v7, "MetadataUtil"

    if-eq v13, v14, :cond_1b

    const/16 v14, 0xfd

    if-ne v13, v14, :cond_2

    goto/16 :goto_a

    :cond_2
    const v13, 0x676e7265

    if-ne v5, v13, :cond_5

    .line 26
    :try_start_0
    invoke-static {v3}, La4/f;->f(Lm5/w;)I

    move-result v5

    if-lez v5, :cond_3

    .line 27
    sget-object v13, La4/f;->a:[Ljava/lang/String;

    const/16 v14, 0xc0

    if-gt v5, v14, :cond_3

    add-int/lit8 v5, v5, -0x1

    .line 28
    aget-object v5, v13, v5

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    :goto_5
    if-eqz v5, :cond_4

    .line 29
    new-instance v7, Lk4/l;

    const/4 v13, 0x0

    invoke-direct {v7, v15, v13, v5}, Lk4/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    const-string v5, "Failed to parse standard genre code"

    .line 30
    invoke-static {v7, v5}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v0

    goto/16 :goto_c

    :cond_5
    const/4 v13, 0x0

    const v14, 0x6469736b

    if-ne v5, v14, :cond_6

    const-string v7, "TPOS"

    .line 31
    invoke-static {v5, v7, v3}, La4/f;->c(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto/16 :goto_7

    :cond_6
    const v14, 0x74726b6e

    if-ne v5, v14, :cond_7

    const-string v7, "TRCK"

    .line 32
    invoke-static {v5, v7, v3}, La4/f;->c(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto/16 :goto_7

    :cond_7
    const v14, 0x746d706f

    if-ne v5, v14, :cond_8

    const-string v7, "TBPM"

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 33
    invoke-static {v5, v7, v3, v14, v13}, La4/f;->e(ILjava/lang/String;Lm5/w;ZZ)Lk4/h;

    move-result-object v5

    :goto_6
    move-object v7, v5

    goto/16 :goto_7

    :cond_8
    const v14, 0x6370696c

    if-ne v5, v14, :cond_9

    const-string v7, "TCMP"

    const/4 v13, 0x1

    .line 34
    invoke-static {v5, v7, v3, v13, v13}, La4/f;->e(ILjava/lang/String;Lm5/w;ZZ)Lk4/h;

    move-result-object v5

    goto :goto_6

    :cond_9
    const v14, 0x636f7672

    if-ne v5, v14, :cond_a

    .line 35
    invoke-static {v3}, La4/f;->b(Lm5/w;)Lk4/a;

    move-result-object v7

    goto/16 :goto_7

    :cond_a
    const v14, 0x61415254

    if-ne v5, v14, :cond_b

    const-string v7, "TPE2"

    .line 36
    invoke-static {v5, v7, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto/16 :goto_7

    :cond_b
    const v14, 0x736f6e6d

    if-ne v5, v14, :cond_c

    const-string v7, "TSOT"

    .line 37
    invoke-static {v5, v7, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_7

    :cond_c
    const v14, 0x736f616c

    if-ne v5, v14, :cond_d

    const-string v7, "TSO2"

    .line 38
    invoke-static {v5, v7, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_7

    :cond_d
    const v14, 0x736f6172

    if-ne v5, v14, :cond_e

    const-string v7, "TSOA"

    .line 39
    invoke-static {v5, v7, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_7

    :cond_e
    const v14, 0x736f6161

    if-ne v5, v14, :cond_f

    const-string v7, "TSOP"

    .line 40
    invoke-static {v5, v7, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_7

    :cond_f
    const v14, 0x736f636f

    if-ne v5, v14, :cond_10

    const-string v7, "TSOC"

    .line 41
    invoke-static {v5, v7, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_7

    :cond_10
    const v14, 0x72746e67

    if-ne v5, v14, :cond_11

    const-string v7, "ITUNESADVISORY"

    const/4 v13, 0x0

    .line 42
    invoke-static {v5, v7, v3, v13, v13}, La4/f;->e(ILjava/lang/String;Lm5/w;ZZ)Lk4/h;

    move-result-object v5

    goto :goto_6

    :cond_11
    const v14, 0x70676170

    if-ne v5, v14, :cond_12

    const-string v7, "ITUNESGAPLESS"

    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 43
    invoke-static {v5, v7, v3, v13, v14}, La4/f;->e(ILjava/lang/String;Lm5/w;ZZ)Lk4/h;

    move-result-object v5

    goto :goto_6

    :cond_12
    const v14, 0x736f736e

    if-ne v5, v14, :cond_13

    const-string v7, "TVSHOWSORT"

    .line 44
    invoke-static {v5, v7, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_7

    :cond_13
    const v14, 0x74767368

    if-ne v5, v14, :cond_14

    const-string v7, "TVSHOW"

    .line 45
    invoke-static {v5, v7, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    :goto_7
    move-object/from16 v19, v0

    goto/16 :goto_f

    :cond_14
    const v14, 0x2d2d2d2d

    if-ne v5, v14, :cond_1a

    const/4 v5, -0x1

    const/4 v7, -0x1

    move-object v14, v13

    .line 46
    :goto_8
    iget v15, v3, Lm5/w;->b:I

    if-ge v15, v6, :cond_18

    .line 47
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v17

    move/from16 v18, v15

    .line 48
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v15

    move-object/from16 v19, v0

    const/4 v0, 0x4

    .line 49
    invoke-virtual {v3, v0}, Lm5/w;->E(I)V

    const v0, 0x6d65616e

    if-ne v15, v0, :cond_15

    add-int/lit8 v0, v17, -0xc

    .line 50
    invoke-virtual {v3, v0}, Lm5/w;->o(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_9

    :cond_15
    const v0, 0x6e616d65

    if-ne v15, v0, :cond_16

    add-int/lit8 v0, v17, -0xc

    .line 51
    invoke-virtual {v3, v0}, Lm5/w;->o(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_9

    :cond_16
    const v0, 0x64617461

    if-ne v15, v0, :cond_17

    move/from16 v7, v17

    move/from16 v5, v18

    :cond_17
    add-int/lit8 v0, v17, -0xc

    .line 52
    invoke-virtual {v3, v0}, Lm5/w;->E(I)V

    :goto_9
    move-object/from16 v0, v19

    goto :goto_8

    :cond_18
    move-object/from16 v19, v0

    if-eqz v13, :cond_26

    if-eqz v14, :cond_26

    const/4 v0, -0x1

    if-ne v5, v0, :cond_19

    goto/16 :goto_c

    .line 53
    :cond_19
    invoke-virtual {v3, v5}, Lm5/w;->D(I)V

    const/16 v0, 0x10

    .line 54
    invoke-virtual {v3, v0}, Lm5/w;->E(I)V

    add-int/lit8 v7, v7, -0x10

    .line 55
    invoke-virtual {v3, v7}, Lm5/w;->o(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v7, Lk4/i;

    invoke-direct {v7, v13, v14, v0}, Lk4/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_1a
    move-object/from16 v19, v0

    goto/16 :goto_b

    :cond_1b
    :goto_a
    move-object/from16 v19, v0

    const v0, 0xffffff

    and-int/2addr v0, v5

    const v13, 0x636d74

    if-ne v0, v13, :cond_1c

    .line 57
    invoke-static {v5, v3}, La4/f;->a(ILm5/w;)Lk4/e;

    move-result-object v7

    goto/16 :goto_f

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_1c
    const v13, 0x6e616d

    if-eq v0, v13, :cond_28

    const v13, 0x74726b

    if-ne v0, v13, :cond_1d

    goto/16 :goto_e

    :cond_1d
    const v13, 0x636f6d

    if-eq v0, v13, :cond_27

    const v13, 0x777274

    if-ne v0, v13, :cond_1e

    goto/16 :goto_d

    :cond_1e
    const v13, 0x646179

    if-ne v0, v13, :cond_1f

    const-string v0, "TDRC"

    .line 58
    invoke-static {v5, v0, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto/16 :goto_f

    :cond_1f
    const v13, 0x415254

    if-ne v0, v13, :cond_20

    const-string v0, "TPE1"

    .line 59
    invoke-static {v5, v0, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_f

    :cond_20
    const v13, 0x746f6f

    if-ne v0, v13, :cond_21

    const-string v0, "TSSE"

    .line 60
    invoke-static {v5, v0, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_f

    :cond_21
    const v13, 0x616c62

    if-ne v0, v13, :cond_22

    const-string v0, "TALB"

    .line 61
    invoke-static {v5, v0, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_f

    :cond_22
    const v13, 0x6c7972

    if-ne v0, v13, :cond_23

    const-string v0, "USLT"

    .line 62
    invoke-static {v5, v0, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_f

    :cond_23
    const v13, 0x67656e

    if-ne v0, v13, :cond_24

    .line 63
    invoke-static {v5, v15, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_f

    :cond_24
    const v13, 0x677270

    if-ne v0, v13, :cond_25

    const-string v0, "TIT1"

    .line 64
    invoke-static {v5, v0, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_f

    .line 65
    :cond_25
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipped unknown metadata entry: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, La4/a;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lm5/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_c
    const/4 v7, 0x0

    goto :goto_f

    :cond_27
    :goto_d
    const-string v0, "TCOM"

    .line 66
    invoke-static {v5, v0, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7

    goto :goto_f

    :cond_28
    :goto_e
    const-string v0, "TIT2"

    .line 67
    invoke-static {v5, v0, v3}, La4/f;->d(ILjava/lang/String;Lm5/w;)Lk4/l;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :goto_f
    invoke-virtual {v3, v6}, Lm5/w;->D(I)V

    if-eqz v7, :cond_29

    .line 69
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    move/from16 v7, v16

    move-object/from16 v0, v19

    goto/16 :goto_4

    .line 70
    :goto_10
    invoke-virtual {v3, v6}, Lm5/w;->D(I)V

    .line 71
    throw v0

    :cond_2a
    move-object/from16 v19, v0

    .line 72
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_11

    :cond_2b
    new-instance v0, Lf4/a;

    invoke-direct {v0, v4}, Lf4/a;-><init>(Ljava/util/List;)V

    goto :goto_12

    :cond_2c
    move-object/from16 v19, v0

    add-int/2addr v7, v13

    .line 73
    invoke-virtual {v3, v7}, Lm5/w;->D(I)V

    const v4, 0x696c7374

    const/16 v6, 0x8

    goto/16 :goto_3

    :cond_2d
    move-object/from16 v19, v0

    :goto_11
    const/4 v0, 0x0

    :goto_12
    move-object v7, v0

    goto :goto_16

    :cond_2e
    move-object/from16 v19, v0

    const v0, 0x736d7461

    if-ne v13, v0, :cond_34

    .line 74
    invoke-virtual {v3, v12}, Lm5/w;->D(I)V

    add-int v0, v12, v11

    const/16 v4, 0xc

    .line 75
    invoke-virtual {v3, v4}, Lm5/w;->E(I)V

    .line 76
    :goto_13
    iget v4, v3, Lm5/w;->b:I

    if-ge v4, v0, :cond_33

    .line 77
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v5

    .line 78
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v6

    const v9, 0x73617574

    if-ne v6, v9, :cond_32

    const/16 v0, 0xe

    if-ge v5, v0, :cond_2f

    goto :goto_15

    :cond_2f
    const/4 v0, 0x5

    .line 79
    invoke-virtual {v3, v0}, Lm5/w;->E(I)V

    .line 80
    invoke-virtual {v3}, Lm5/w;->t()I

    move-result v0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_30

    const/16 v5, 0xd

    if-eq v0, v5, :cond_30

    goto :goto_15

    :cond_30
    if-ne v0, v4, :cond_31

    const/high16 v0, 0x43700000    # 240.0f

    goto :goto_14

    :cond_31
    const/high16 v0, 0x42f00000    # 120.0f

    :goto_14
    const/4 v4, 0x1

    .line 81
    invoke-virtual {v3, v4}, Lm5/w;->E(I)V

    .line 82
    invoke-virtual {v3}, Lm5/w;->t()I

    move-result v5

    .line 83
    new-instance v6, Lf4/a;

    new-array v4, v4, [Lf4/a$b;

    new-instance v9, Ll4/e;

    invoke-direct {v9, v0, v5}, Ll4/e;-><init>(FI)V

    const/4 v0, 0x0

    aput-object v9, v4, v0

    invoke-direct {v6, v4}, Lf4/a;-><init>([Lf4/a$b;)V

    move-object v9, v6

    goto :goto_16

    :cond_32
    add-int/2addr v4, v5

    .line 84
    invoke-virtual {v3, v4}, Lm5/w;->D(I)V

    goto :goto_13

    :cond_33
    :goto_15
    const/4 v0, 0x0

    move-object v9, v0

    :cond_34
    :goto_16
    add-int/2addr v12, v11

    .line 85
    invoke-virtual {v3, v12}, Lm5/w;->D(I)V

    const v4, 0x696c7374

    const v5, 0x6d657461

    const/16 v6, 0x8

    move-object/from16 v0, v19

    goto/16 :goto_2

    :cond_35
    move-object/from16 v19, v0

    .line 86
    invoke-static {v7, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 87
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lf4/a;

    .line 88
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lf4/a;

    if-eqz v3, :cond_36

    .line 89
    invoke-virtual {v10, v3}, Ls3/q;->b(Lf4/a;)Z

    :cond_36
    const v5, 0x6d657461

    goto :goto_17

    :cond_37
    move-object/from16 v19, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_17
    move-object v11, v3

    .line 90
    invoke-virtual {v2, v5}, La4/a$a;->b(I)La4/a$a;

    move-result-object v3

    if-eqz v3, :cond_40

    .line 91
    sget-object v4, La4/b;->a:[B

    const v4, 0x68646c72

    .line 92
    invoke-virtual {v3, v4}, La4/a$a;->c(I)La4/a$b;

    move-result-object v4

    const v5, 0x6b657973

    .line 93
    invoke-virtual {v3, v5}, La4/a$a;->c(I)La4/a$b;

    move-result-object v5

    const v6, 0x696c7374

    .line 94
    invoke-virtual {v3, v6}, La4/a$a;->c(I)La4/a$b;

    move-result-object v3

    if-eqz v4, :cond_40

    if-eqz v5, :cond_40

    if-eqz v3, :cond_40

    .line 95
    iget-object v4, v4, La4/a$b;->b:Lm5/w;

    const/16 v6, 0x10

    .line 96
    invoke-virtual {v4, v6}, Lm5/w;->D(I)V

    .line 97
    invoke-virtual {v4}, Lm5/w;->e()I

    move-result v4

    const v6, 0x6d647461

    if-eq v4, v6, :cond_38

    goto/16 :goto_1d

    .line 98
    :cond_38
    iget-object v4, v5, La4/a$b;->b:Lm5/w;

    const/16 v5, 0xc

    .line 99
    invoke-virtual {v4, v5}, Lm5/w;->D(I)V

    .line 100
    invoke-virtual {v4}, Lm5/w;->e()I

    move-result v5

    .line 101
    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_18
    if-ge v7, v5, :cond_39

    .line 102
    invoke-virtual {v4}, Lm5/w;->e()I

    move-result v9

    const/4 v12, 0x4

    .line 103
    invoke-virtual {v4, v12}, Lm5/w;->E(I)V

    add-int/lit8 v9, v9, -0x8

    .line 104
    invoke-virtual {v4, v9}, Lm5/w;->q(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_39
    const/16 v4, 0x8

    .line 105
    iget-object v3, v3, La4/a$b;->b:Lm5/w;

    .line 106
    invoke-virtual {v3, v4}, Lm5/w;->D(I)V

    .line 107
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :goto_19
    iget v9, v3, Lm5/w;->c:I

    iget v12, v3, Lm5/w;->b:I

    sub-int/2addr v9, v12

    if-le v9, v4, :cond_3e

    .line 109
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v4

    .line 110
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ltz v9, :cond_3c

    if-ge v9, v5, :cond_3c

    .line 111
    aget-object v9, v6, v9

    add-int v13, v12, v4

    .line 112
    :goto_1a
    iget v14, v3, Lm5/w;->b:I

    if-ge v14, v13, :cond_3b

    .line 113
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v15

    move/from16 v16, v5

    .line 114
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v5

    move-object/from16 v17, v6

    const v6, 0x64617461

    if-ne v5, v6, :cond_3a

    .line 115
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v5

    .line 116
    invoke-virtual {v3}, Lm5/w;->e()I

    move-result v6

    add-int/lit8 v15, v15, -0x10

    .line 117
    new-array v13, v15, [B

    const/4 v14, 0x0

    .line 118
    invoke-virtual {v3, v13, v14, v15}, Lm5/w;->d([BII)V

    .line 119
    new-instance v14, Ll4/a;

    invoke-direct {v14, v9, v13, v6, v5}, Ll4/a;-><init>(Ljava/lang/String;[BII)V

    goto :goto_1b

    :cond_3a
    add-int/2addr v14, v15

    .line 120
    invoke-virtual {v3, v14}, Lm5/w;->D(I)V

    move/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_1a

    :cond_3b
    move/from16 v16, v5

    move-object/from16 v17, v6

    const/4 v14, 0x0

    :goto_1b
    if-eqz v14, :cond_3d

    .line 121
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3c
    move/from16 v16, v5

    move-object/from16 v17, v6

    const-string v5, "Skipped metadata with unknown key index: "

    const-string v6, "AtomParsers"

    .line 122
    invoke-static {v5, v9, v6}, Lda/c;->b(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3d
    :goto_1c
    add-int/2addr v12, v4

    .line 123
    invoke-virtual {v3, v12}, Lm5/w;->D(I)V

    const/16 v4, 0x8

    move/from16 v5, v16

    move-object/from16 v6, v17

    goto :goto_19

    .line 124
    :cond_3e
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3f

    goto :goto_1d

    :cond_3f
    new-instance v3, Lf4/a;

    invoke-direct {v3, v7}, Lf4/a;-><init>(Ljava/util/List;)V

    goto :goto_1e

    :cond_40
    :goto_1d
    const/4 v3, 0x0

    :goto_1e
    move-object v12, v3

    .line 125
    iget v3, v1, La4/h;->a:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_41

    const/4 v3, 0x1

    goto :goto_1f

    :cond_41
    const/4 v3, 0x0

    :goto_1f
    move v7, v3

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    .line 126
    sget-object v9, La4/g;->a:La4/g;

    move-object v3, v10

    move-wide v4, v13

    .line 127
    invoke-static/range {v2 .. v9}, La4/b;->f(La4/a$a;Ls3/q;JLr3/d;ZZLt6/d;)Ljava/util/List;

    move-result-object v2

    .line 128
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_20
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v4, v3, :cond_50

    .line 129
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, La4/o;

    .line 130
    iget v9, v8, La4/o;->b:I

    if-nez v9, :cond_42

    move-object/from16 v20, v0

    move-object v15, v2

    move/from16 v16, v3

    move-object/from16 v0, v19

    goto/16 :goto_28

    .line 131
    :cond_42
    iget-object v9, v8, La4/o;->a:La4/l;

    move-object v15, v2

    move/from16 v16, v3

    .line 132
    iget-wide v2, v9, La4/l;->e:J

    cmp-long v6, v2, v6

    if-eqz v6, :cond_43

    goto :goto_21

    :cond_43
    iget-wide v2, v8, La4/o;->h:J

    .line 133
    :goto_21
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 134
    new-instance v13, La4/h$a;

    iget-object v14, v1, La4/h;->r:Ls3/j;

    move-wide/from16 v17, v6

    iget v6, v9, La4/l;->b:I

    .line 135
    invoke-interface {v14, v4, v6}, Ls3/j;->p(II)Ls3/w;

    move-result-object v6

    invoke-direct {v13, v9, v8, v6}, La4/h$a;-><init>(La4/l;La4/o;Ls3/w;)V

    .line 136
    iget-object v6, v9, La4/l;->f:Ln3/s0;

    iget-object v6, v6, Ln3/s0;->s:Ljava/lang/String;

    const-string v7, "audio/true-hd"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 137
    iget v6, v8, La4/o;->e:I

    mul-int/lit8 v6, v6, 0x10

    goto :goto_22

    .line 138
    :cond_44
    iget v6, v8, La4/o;->e:I

    add-int/lit8 v6, v6, 0x1e

    .line 139
    :goto_22
    iget-object v7, v9, La4/l;->f:Ln3/s0;

    .line 140
    new-instance v14, Ln3/s0$a;

    invoke-direct {v14, v7}, Ln3/s0$a;-><init>(Ln3/s0;)V

    .line 141
    iput v6, v14, Ln3/s0$a;->l:I

    .line 142
    iget v6, v9, La4/l;->b:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_45

    const-wide/16 v20, 0x0

    cmp-long v7, v2, v20

    if-lez v7, :cond_45

    iget v7, v8, La4/o;->b:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_45

    int-to-float v7, v7

    long-to-float v2, v2

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v2, v3

    div-float/2addr v7, v2

    .line 143
    iput v7, v14, Ln3/s0$a;->r:F

    :cond_45
    const/4 v2, 0x1

    if-ne v6, v2, :cond_47

    .line 144
    iget v2, v10, Ls3/q;->a:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_46

    iget v7, v10, Ls3/q;->b:I

    if-eq v7, v3, :cond_46

    const/4 v3, 0x1

    goto :goto_23

    :cond_46
    const/4 v3, 0x0

    :goto_23
    if-eqz v3, :cond_47

    .line 145
    iput v2, v14, Ln3/s0$a;->A:I

    .line 146
    iget v2, v10, Ls3/q;->b:I

    .line 147
    iput v2, v14, Ln3/s0$a;->B:I

    :cond_47
    const/4 v2, 0x2

    new-array v2, v2, [Lf4/a;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 148
    iget-object v7, v1, La4/h;->h:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_48

    const/4 v7, 0x0

    goto :goto_24

    :cond_48
    new-instance v7, Lf4/a;

    iget-object v8, v1, La4/h;->h:Ljava/util/ArrayList;

    invoke-direct {v7, v8}, Lf4/a;-><init>(Ljava/util/List;)V

    :goto_24
    const/4 v8, 0x1

    aput-object v7, v2, v8

    .line 149
    new-instance v7, Lf4/a;

    new-array v3, v3, [Lf4/a$b;

    invoke-direct {v7, v3}, Lf4/a;-><init>([Lf4/a$b;)V

    if-ne v6, v8, :cond_49

    if-eqz v11, :cond_4c

    move-object/from16 v20, v0

    move-object v7, v11

    goto :goto_26

    :cond_49
    const/4 v3, 0x2

    if-ne v6, v3, :cond_4c

    if-eqz v12, :cond_4c

    const/4 v3, 0x0

    .line 150
    :goto_25
    iget-object v6, v12, Lf4/a;->h:[Lf4/a$b;

    array-length v8, v6

    if-ge v3, v8, :cond_4c

    .line 151
    aget-object v6, v6, v3

    .line 152
    instance-of v8, v6, Ll4/a;

    if-eqz v8, :cond_4a

    .line 153
    check-cast v6, Ll4/a;

    .line 154
    iget-object v8, v6, Ll4/a;->h:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v0, "com.android.capture.fps"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 155
    new-instance v7, Lf4/a;

    const/4 v0, 0x1

    new-array v0, v0, [Lf4/a$b;

    const/4 v3, 0x0

    aput-object v6, v0, v3

    invoke-direct {v7, v0}, Lf4/a;-><init>([Lf4/a$b;)V

    goto :goto_26

    :cond_4a
    move-object/from16 v20, v0

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v20

    goto :goto_25

    :cond_4c
    move-object/from16 v20, v0

    :goto_26
    const/4 v0, 0x0

    :goto_27
    const/4 v3, 0x2

    if-ge v0, v3, :cond_4d

    .line 156
    aget-object v3, v2, v0

    .line 157
    invoke-virtual {v7, v3}, Lf4/a;->b(Lf4/a;)Lf4/a;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 158
    :cond_4d
    iget-object v0, v7, Lf4/a;->h:[Lf4/a$b;

    array-length v0, v0

    if-lez v0, :cond_4e

    .line 159
    iput-object v7, v14, Ln3/s0$a;->i:Lf4/a;

    .line 160
    :cond_4e
    iget-object v0, v13, La4/h$a;->c:Ls3/w;

    .line 161
    new-instance v2, Ln3/s0;

    invoke-direct {v2, v14}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 162
    invoke-interface {v0, v2}, Ls3/w;->b(Ln3/s0;)V

    .line 163
    iget v0, v9, La4/l;->b:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4f

    const/4 v0, -0x1

    if-ne v5, v0, :cond_4f

    .line 164
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v5

    :cond_4f
    move-object/from16 v0, v19

    .line 165
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v13, v17

    :goto_28
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v19, v0

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v0, v20

    goto/16 :goto_20

    :cond_50
    move-object/from16 v0, v19

    const/4 v2, -0x1

    const-wide/16 v3, 0x0

    .line 166
    iput v5, v1, La4/h;->u:I

    .line 167
    iput-wide v13, v1, La4/h;->v:J

    const/4 v5, 0x0

    new-array v5, v5, [La4/h$a;

    .line 168
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La4/h$a;

    iput-object v0, v1, La4/h;->s:[La4/h$a;

    .line 169
    array-length v5, v0

    new-array v5, v5, [[J

    .line 170
    array-length v6, v0

    new-array v6, v6, [I

    .line 171
    array-length v7, v0

    new-array v7, v7, [J

    .line 172
    array-length v8, v0

    new-array v8, v8, [Z

    const/4 v9, 0x0

    .line 173
    :goto_29
    array-length v10, v0

    if-ge v9, v10, :cond_51

    .line 174
    aget-object v10, v0, v9

    iget-object v10, v10, La4/h$a;->b:La4/o;

    iget v10, v10, La4/o;->b:I

    new-array v10, v10, [J

    aput-object v10, v5, v9

    .line 175
    aget-object v10, v0, v9

    iget-object v10, v10, La4/h$a;->b:La4/o;

    iget-object v10, v10, La4/o;->f:[J

    const/4 v11, 0x0

    aget-wide v11, v10, v11

    aput-wide v11, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    :cond_51
    const/4 v9, 0x0

    move v10, v9

    .line 176
    :goto_2a
    array-length v11, v0

    if-ge v10, v11, :cond_55

    const-wide v11, 0x7fffffffffffffffL

    move v14, v2

    move v13, v9

    .line 177
    :goto_2b
    array-length v15, v0

    if-ge v13, v15, :cond_53

    .line 178
    aget-boolean v15, v8, v13

    if-nez v15, :cond_52

    aget-wide v15, v7, v13

    cmp-long v15, v15, v11

    if-gtz v15, :cond_52

    .line 179
    aget-wide v11, v7, v13

    move v14, v13

    :cond_52
    add-int/lit8 v13, v13, 0x1

    goto :goto_2b

    .line 180
    :cond_53
    aget v11, v6, v14

    .line 181
    aget-object v12, v5, v14

    aput-wide v3, v12, v11

    .line 182
    aget-object v12, v0, v14

    iget-object v12, v12, La4/h$a;->b:La4/o;

    iget-object v12, v12, La4/o;->d:[I

    aget v12, v12, v11

    int-to-long v12, v12

    add-long/2addr v3, v12

    const/4 v12, 0x1

    add-int/2addr v11, v12

    .line 183
    aput v11, v6, v14

    .line 184
    aget-object v13, v5, v14

    array-length v13, v13

    if-ge v11, v13, :cond_54

    .line 185
    aget-object v12, v0, v14

    iget-object v12, v12, La4/h$a;->b:La4/o;

    iget-object v12, v12, La4/o;->f:[J

    aget-wide v11, v12, v11

    aput-wide v11, v7, v14

    goto :goto_2a

    .line 186
    :cond_54
    aput-boolean v12, v8, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_2a

    .line 187
    :cond_55
    iput-object v5, v1, La4/h;->t:[[J

    .line 188
    iget-object v0, v1, La4/h;->r:Ls3/j;

    invoke-interface {v0}, Ls3/j;->b()V

    .line 189
    iget-object v0, v1, La4/h;->r:Ls3/j;

    invoke-interface {v0, v1}, Ls3/j;->j(Ls3/u;)V

    .line 190
    iget-object v0, v1, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x2

    .line 191
    iput v0, v1, La4/h;->i:I

    goto/16 :goto_0

    .line 192
    :cond_56
    iget-object v0, v1, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, v1, La4/h;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/a$a;

    .line 194
    iget-object v0, v0, La4/a$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 195
    :cond_57
    iget v0, v1, La4/h;->i:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_58

    .line 196
    invoke-virtual/range {p0 .. p0}, La4/h;->k()V

    :cond_58
    return-void
.end method
