.class public final Lkb/a;
.super Ljava/lang/Object;
.source "TelemetryInfo.kt"


# instance fields
.field public a:J

.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public o:Z

.field public p:Z

.field public q:I

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;ZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p16

    move-object/from16 v12, p20

    const-string v13, "message"

    invoke-static {v1, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "eventType"

    invoke-static {v2, v13}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const-string v13, "sessionId"

    invoke-static {v3, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "appId"

    invoke-static {v4, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "appVersion"

    invoke-static {v5, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "deviceModel"

    invoke-static {v6, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "osVersion"

    invoke-static {v7, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "libraryId"

    invoke-static {v8, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "libraryVersion"

    invoke-static {v9, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "timezone"

    invoke-static {v10, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "attributes"

    invoke-static {v11, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "uuid"

    invoke-static {v12, v13}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide/from16 v13, p1

    .line 2
    iput-wide v13, v0, Lkb/a;->a:J

    move-wide/from16 v13, p3

    .line 3
    iput-wide v13, v0, Lkb/a;->b:J

    .line 4
    iput-object v1, v0, Lkb/a;->c:Ljava/lang/String;

    .line 5
    iput v2, v0, Lkb/a;->d:I

    .line 6
    iput-object v3, v0, Lkb/a;->e:Ljava/lang/String;

    .line 7
    iput-object v4, v0, Lkb/a;->f:Ljava/lang/String;

    .line 8
    iput-object v5, v0, Lkb/a;->g:Ljava/lang/String;

    .line 9
    iput-object v6, v0, Lkb/a;->h:Ljava/lang/String;

    .line 10
    iput-object v7, v0, Lkb/a;->i:Ljava/lang/String;

    .line 11
    iput-object v8, v0, Lkb/a;->j:Ljava/lang/String;

    .line 12
    iput-object v9, v0, Lkb/a;->k:Ljava/lang/String;

    .line 13
    iput-object v10, v0, Lkb/a;->l:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lkb/a;->m:Ljava/lang/String;

    .line 15
    iput-object v11, v0, Lkb/a;->n:Ljava/util/Map;

    move/from16 v1, p17

    .line 16
    iput-boolean v1, v0, Lkb/a;->o:Z

    move/from16 v1, p18

    .line 17
    iput-boolean v1, v0, Lkb/a;->p:Z

    move/from16 v1, p19

    .line 18
    iput v1, v0, Lkb/a;->q:I

    .line 19
    iput-object v12, v0, Lkb/a;->r:Ljava/lang/String;

    return-void
.end method

.method public static a(Lkb/a;ZZII)Lkb/a;
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p4

    and-int/lit8 v2, v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iget-wide v5, v0, Lkb/a;->a:J

    move-wide v8, v5

    goto :goto_0

    :cond_0
    move-wide v8, v3

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-wide v3, v0, Lkb/a;->b:J

    :cond_1
    move-wide v10, v3

    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Lkb/a;->c:Ljava/lang/String;

    move-object v12, v2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    iget v2, v0, Lkb/a;->d:I

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    move v13, v2

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, v0, Lkb/a;->e:Ljava/lang/String;

    move-object v14, v2

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    :goto_3
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-object v2, v0, Lkb/a;->f:Ljava/lang/String;

    move-object v15, v2

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_6

    iget-object v2, v0, Lkb/a;->g:Ljava/lang/String;

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    and-int/lit16 v4, v1, 0x80

    if-eqz v4, :cond_7

    iget-object v4, v0, Lkb/a;->h:Ljava/lang/String;

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    and-int/lit16 v5, v1, 0x100

    if-eqz v5, :cond_8

    iget-object v5, v0, Lkb/a;->i:Ljava/lang/String;

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    :goto_7
    and-int/lit16 v6, v1, 0x200

    if-eqz v6, :cond_9

    iget-object v6, v0, Lkb/a;->j:Ljava/lang/String;

    goto :goto_8

    :cond_9
    const/4 v6, 0x0

    :goto_8
    and-int/lit16 v7, v1, 0x400

    if-eqz v7, :cond_a

    iget-object v7, v0, Lkb/a;->k:Ljava/lang/String;

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    and-int/lit16 v3, v1, 0x800

    if-eqz v3, :cond_b

    iget-object v3, v0, Lkb/a;->l:Ljava/lang/String;

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    :goto_a
    move-wide/from16 v17, v10

    and-int/lit16 v10, v1, 0x1000

    if-eqz v10, :cond_c

    iget-object v10, v0, Lkb/a;->m:Ljava/lang/String;

    move-object/from16 v22, v10

    goto :goto_b

    :cond_c
    const/16 v22, 0x0

    :goto_b
    and-int/lit16 v10, v1, 0x2000

    if-eqz v10, :cond_d

    iget-object v10, v0, Lkb/a;->n:Ljava/util/Map;

    goto :goto_c

    :cond_d
    const/4 v10, 0x0

    :goto_c
    and-int/lit16 v11, v1, 0x4000

    if-eqz v11, :cond_e

    iget-boolean v11, v0, Lkb/a;->o:Z

    move/from16 v24, v11

    goto :goto_d

    :cond_e
    move/from16 v24, p1

    :goto_d
    const v11, 0x8000

    and-int/2addr v11, v1

    if-eqz v11, :cond_f

    iget-boolean v11, v0, Lkb/a;->p:Z

    move/from16 v25, v11

    goto :goto_e

    :cond_f
    move/from16 v25, p2

    :goto_e
    const/high16 v11, 0x10000

    and-int/2addr v11, v1

    if-eqz v11, :cond_10

    iget v11, v0, Lkb/a;->q:I

    move/from16 v26, v11

    goto :goto_f

    :cond_10
    move/from16 v26, p3

    :goto_f
    const/high16 v11, 0x20000

    and-int/2addr v1, v11

    if-eqz v1, :cond_11

    iget-object v1, v0, Lkb/a;->r:Ljava/lang/String;

    goto :goto_10

    :cond_11
    const/4 v1, 0x0

    :goto_10
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "message"

    invoke-static {v12, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventType"

    invoke-static {v13, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {v14, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appId"

    invoke-static {v15, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-static {v2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceModel"

    invoke-static {v4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osVersion"

    invoke-static {v5, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryId"

    invoke-static {v6, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryVersion"

    invoke-static {v7, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timezone"

    invoke-static {v3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {v10, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuid"

    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkb/a;

    move-object/from16 v20, v7

    move-object v7, v0

    move-object/from16 v23, v10

    move-wide/from16 v10, v17

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v21, v3

    move-object/from16 v27, v1

    invoke-direct/range {v7 .. v27}, Lkb/a;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkb/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lkb/a;

    iget-wide v3, p0, Lkb/a;->a:J

    iget-wide v5, p1, Lkb/a;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lkb/a;->b:J

    iget-wide v5, p1, Lkb/a;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lkb/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lkb/a;->d:I

    iget v3, p1, Lkb/a;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lkb/a;->e:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lkb/a;->f:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lkb/a;->g:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lkb/a;->h:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lkb/a;->i:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lkb/a;->j:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lkb/a;->k:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lkb/a;->l:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lkb/a;->m:Ljava/lang/String;

    iget-object v3, p1, Lkb/a;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lkb/a;->n:Ljava/util/Map;

    iget-object v3, p1, Lkb/a;->n:Ljava/util/Map;

    invoke-static {v1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lkb/a;->o:Z

    iget-boolean v3, p1, Lkb/a;->o:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lkb/a;->p:Z

    iget-boolean v3, p1, Lkb/a;->p:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lkb/a;->q:I

    iget v3, p1, Lkb/a;->q:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lkb/a;->r:Ljava/lang/String;

    iget-object p1, p1, Lkb/a;->r:Ljava/lang/String;

    invoke-static {v1, p1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lkb/a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lkb/a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lkb/a;->c:Ljava/lang/String;

    const/16 v2, 0x1f

    .line 1
    invoke-static {v0, v1, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 2
    iget v1, p0, Lkb/a;->d:I

    invoke-static {v1}, Lq/g;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lkb/a;->e:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lkb/a;->f:Ljava/lang/String;

    .line 5
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 6
    iget-object v1, p0, Lkb/a;->g:Ljava/lang/String;

    .line 7
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 8
    iget-object v1, p0, Lkb/a;->h:Ljava/lang/String;

    .line 9
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 10
    iget-object v1, p0, Lkb/a;->i:Ljava/lang/String;

    .line 11
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 12
    iget-object v1, p0, Lkb/a;->j:Ljava/lang/String;

    .line 13
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 14
    iget-object v1, p0, Lkb/a;->k:Ljava/lang/String;

    .line 15
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 16
    iget-object v1, p0, Lkb/a;->l:Ljava/lang/String;

    .line 17
    invoke-static {v1, v0, v2}, La1/f;->c(Ljava/lang/String;II)I

    move-result v0

    .line 18
    iget-object v1, p0, Lkb/a;->m:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkb/a;->n:Ljava/util/Map;

    const/16 v2, 0x1f

    .line 19
    invoke-static {v1, v0, v2}, Lfa/m;->d(Ljava/util/Map;II)I

    move-result v0

    .line 20
    iget-boolean v1, p0, Lkb/a;->o:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lkb/a;->p:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lkb/a;->q:I

    const/16 v2, 0x1f

    .line 21
    invoke-static {v1, v0, v2}, Landroidx/fragment/app/r0;->e(III)I

    move-result v0

    .line 22
    iget-object v1, p0, Lkb/a;->r:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    iget-wide v1, v0, Lkb/a;->a:J

    iget-wide v3, v0, Lkb/a;->b:J

    iget-object v5, v0, Lkb/a;->c:Ljava/lang/String;

    iget v6, v0, Lkb/a;->d:I

    iget-object v7, v0, Lkb/a;->e:Ljava/lang/String;

    iget-object v8, v0, Lkb/a;->f:Ljava/lang/String;

    iget-object v9, v0, Lkb/a;->g:Ljava/lang/String;

    iget-object v10, v0, Lkb/a;->h:Ljava/lang/String;

    iget-object v11, v0, Lkb/a;->i:Ljava/lang/String;

    iget-object v12, v0, Lkb/a;->j:Ljava/lang/String;

    iget-object v13, v0, Lkb/a;->k:Ljava/lang/String;

    iget-object v14, v0, Lkb/a;->l:Ljava/lang/String;

    iget-object v15, v0, Lkb/a;->m:Ljava/lang/String;

    move-object/from16 v16, v14

    iget-object v14, v0, Lkb/a;->n:Ljava/util/Map;

    move-object/from16 v17, v14

    iget-boolean v14, v0, Lkb/a;->o:Z

    move/from16 v18, v14

    iget-boolean v14, v0, Lkb/a;->p:Z

    move/from16 v19, v14

    iget v14, v0, Lkb/a;->q:I

    move/from16 v20, v14

    iget-object v14, v0, Lkb/a;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v14

    const-string v14, "TelemetryInfo(id="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, La1/f;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersion="

    const-string v2, ", deviceModel="

    .line 1
    invoke-static {v0, v8, v1, v9, v2}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", osVersion="

    const-string v2, ", libraryId="

    invoke-static {v0, v10, v1, v11, v2}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", libraryVersion="

    const-string v2, ", timezone="

    invoke-static {v0, v12, v1, v13, v2}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", userID="

    const-string v2, ", attributes="

    move-object/from16 v3, v16

    invoke-static {v0, v3, v1, v15, v2}, La1/d;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v17

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", syncInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", promptedSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", attemptsToSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    move-object/from16 v2, v21

    .line 3
    invoke-static {v0, v2, v1}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
