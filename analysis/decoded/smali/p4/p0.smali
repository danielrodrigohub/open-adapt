.class public final Lp4/p0;
.super Ln3/b2;
.source "SinglePeriodTimeline.java"


# static fields
.field public static final u:Ljava/lang/Object;


# instance fields
.field public final i:J

.field public final j:J

.field public final k:J

.field public final l:J

.field public final m:J

.field public final n:J

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Ljava/lang/Object;

.field public final s:Ln3/y0;

.field public final t:Ln3/y0$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp4/p0;->u:Ljava/lang/Object;

    .line 2
    new-instance v0, Ln3/y0$b;

    invoke-direct {v0}, Ln3/y0$b;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    .line 3
    iput-object v1, v0, Ln3/y0$b;->a:Ljava/lang/String;

    .line 4
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 5
    iput-object v1, v0, Ln3/y0$b;->b:Landroid/net/Uri;

    .line 6
    invoke-virtual {v0}, Ln3/y0$b;->a()Ln3/y0;

    return-void
.end method

.method public constructor <init>(JJJJJJZZZLjava/lang/Object;Ln3/y0;Ln3/y0$f;)V
    .locals 3

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Ln3/b2;-><init>()V

    move-wide v1, p1

    .line 5
    iput-wide v1, v0, Lp4/p0;->i:J

    move-wide v1, p3

    .line 6
    iput-wide v1, v0, Lp4/p0;->j:J

    move-wide v1, p5

    .line 7
    iput-wide v1, v0, Lp4/p0;->k:J

    move-wide v1, p7

    .line 8
    iput-wide v1, v0, Lp4/p0;->l:J

    move-wide v1, p9

    .line 9
    iput-wide v1, v0, Lp4/p0;->m:J

    move-wide v1, p11

    .line 10
    iput-wide v1, v0, Lp4/p0;->n:J

    move/from16 v1, p13

    .line 11
    iput-boolean v1, v0, Lp4/p0;->o:Z

    move/from16 v1, p14

    .line 12
    iput-boolean v1, v0, Lp4/p0;->p:Z

    move/from16 v1, p15

    .line 13
    iput-boolean v1, v0, Lp4/p0;->q:Z

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lp4/p0;->r:Ljava/lang/Object;

    .line 15
    invoke-static/range {p17 .. p17}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p17

    .line 16
    iput-object v1, v0, Lp4/p0;->s:Ln3/y0;

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lp4/p0;->t:Ln3/y0$f;

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Ln3/y0;)V
    .locals 19

    if-eqz p11, :cond_0

    move-object/from16 v14, p13

    .line 2
    iget-object v0, v14, Ln3/y0;->j:Ln3/y0$f;

    goto :goto_0

    :cond_0
    move-object/from16 v14, p13

    const/4 v0, 0x0

    :goto_0
    move-object/from16 v18, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    .line 3
    invoke-direct/range {v0 .. v18}, Lp4/p0;-><init>(JJJJJJZZZLjava/lang/Object;Ln3/y0;Ln3/y0$f;)V

    return-void
.end method

.method public constructor <init>(JZZLn3/y0;)V
    .locals 14

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v11, p4

    move-object/from16 v13, p5

    .line 1
    invoke-direct/range {v0 .. v13}, Lp4/p0;-><init>(JJJJZZZLjava/lang/Object;Ln3/y0;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lp4/p0;->u:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public final i(ILn3/b2$b;Z)Ln3/b2$b;
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lm5/a;->c(II)I

    if-eqz p3, :cond_0

    .line 2
    sget-object p1, Lp4/p0;->u:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    .line 3
    iget-wide v3, p0, Lp4/p0;->k:J

    iget-wide v5, p0, Lp4/p0;->m:J

    neg-long v5, v5

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Ln3/b2$b;->k(Ljava/lang/Object;Ljava/lang/Object;JJ)Ln3/b2$b;

    return-object p2
.end method

.method public final k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, Lm5/a;->c(II)I

    .line 2
    sget-object p1, Lp4/p0;->u:Ljava/lang/Object;

    return-object p1
.end method

.method public final q(ILn3/b2$d;J)Ln3/b2$d;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    .line 1
    invoke-static {v2, v1}, Lm5/a;->c(II)I

    .line 2
    iget-wide v1, v0, Lp4/p0;->n:J

    .line 3
    iget-boolean v14, v0, Lp4/p0;->p:Z

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v14, :cond_1

    iget-boolean v5, v0, Lp4/p0;->q:Z

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-eqz v5, :cond_1

    .line 4
    iget-wide v5, v0, Lp4/p0;->l:J

    cmp-long v7, v5, v3

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    add-long v1, v1, p3

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    :goto_0
    move-wide/from16 v16, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v16, v1

    .line 5
    :goto_1
    sget-object v4, Ln3/b2$d;->y:Ljava/lang/Object;

    iget-object v5, v0, Lp4/p0;->s:Ln3/y0;

    iget-object v6, v0, Lp4/p0;->r:Ljava/lang/Object;

    iget-wide v7, v0, Lp4/p0;->i:J

    iget-wide v9, v0, Lp4/p0;->j:J

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    iget-boolean v13, v0, Lp4/p0;->o:Z

    iget-object v15, v0, Lp4/p0;->t:Ln3/y0$f;

    iget-wide v1, v0, Lp4/p0;->l:J

    move-wide/from16 v18, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-wide v1, v0, Lp4/p0;->m:J

    move-wide/from16 v22, v1

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v23}, Ln3/b2$d;->f(Ljava/lang/Object;Ln3/y0;Ljava/lang/Object;JJJZZLn3/y0$f;JJIIJ)Ln3/b2$d;

    return-object p2
.end method

.method public final r()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
