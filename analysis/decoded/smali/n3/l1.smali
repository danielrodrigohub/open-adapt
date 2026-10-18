.class public final Ln3/l1;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# static fields
.field public static final s:Lp4/x$b;


# instance fields
.field public final a:Ln3/b2;

.field public final b:Lp4/x$b;

.field public final c:J

.field public final d:J

.field public final e:I

.field public final f:Ln3/q;

.field public final g:Z

.field public final h:Lp4/u0;

.field public final i:Lj5/t;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf4/a;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lp4/x$b;

.field public final l:Z

.field public final m:I

.field public final n:Ln3/m1;

.field public final o:Z

.field public volatile p:J

.field public volatile q:J

.field public volatile r:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp4/x$b;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lp4/x$b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ln3/l1;->s:Lp4/x$b;

    return-void
.end method

.method public constructor <init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/b2;",
            "Lp4/x$b;",
            "JJI",
            "Ln3/q;",
            "Z",
            "Lp4/u0;",
            "Lj5/t;",
            "Ljava/util/List<",
            "Lf4/a;",
            ">;",
            "Lp4/x$b;",
            "ZI",
            "Ln3/m1;",
            "JJJZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Ln3/l1;->a:Ln3/b2;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Ln3/l1;->b:Lp4/x$b;

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Ln3/l1;->c:J

    move-wide v1, p5

    .line 5
    iput-wide v1, v0, Ln3/l1;->d:J

    move v1, p7

    .line 6
    iput v1, v0, Ln3/l1;->e:I

    move-object v1, p8

    .line 7
    iput-object v1, v0, Ln3/l1;->f:Ln3/q;

    move v1, p9

    .line 8
    iput-boolean v1, v0, Ln3/l1;->g:Z

    move-object v1, p10

    .line 9
    iput-object v1, v0, Ln3/l1;->h:Lp4/u0;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Ln3/l1;->i:Lj5/t;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Ln3/l1;->j:Ljava/util/List;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Ln3/l1;->k:Lp4/x$b;

    move/from16 v1, p14

    .line 13
    iput-boolean v1, v0, Ln3/l1;->l:Z

    move/from16 v1, p15

    .line 14
    iput v1, v0, Ln3/l1;->m:I

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Ln3/l1;->n:Ln3/m1;

    move-wide/from16 v1, p17

    .line 16
    iput-wide v1, v0, Ln3/l1;->p:J

    move-wide/from16 v1, p19

    .line 17
    iput-wide v1, v0, Ln3/l1;->q:J

    move-wide/from16 v1, p21

    .line 18
    iput-wide v1, v0, Ln3/l1;->r:J

    move/from16 v1, p23

    .line 19
    iput-boolean v1, v0, Ln3/l1;->o:Z

    return-void
.end method

.method public static h(Lj5/t;)Ln3/l1;
    .locals 25

    move-object/from16 v11, p0

    .line 1
    new-instance v24, Ln3/l1;

    move-object/from16 v0, v24

    sget-object v1, Ln3/b2;->h:Ln3/b2$a;

    sget-object v13, Ln3/l1;->s:Lp4/x$b;

    move-object v2, v13

    sget-object v10, Lp4/u0;->k:Lp4/u0;

    .line 2
    sget-object v12, Lu6/p0;->l:Lu6/p0;

    .line 3
    sget-object v16, Ln3/m1;->k:Ln3/m1;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v0 .. v23}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    return-object v24
.end method


# virtual methods
.method public final a(Lp4/x$b;)Ln3/l1;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    new-instance v25, Ln3/l1;

    move-object/from16 v1, v25

    iget-object v2, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v3, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v4, v0, Ln3/l1;->c:J

    iget-wide v6, v0, Ln3/l1;->d:J

    iget v8, v0, Ln3/l1;->e:I

    iget-object v9, v0, Ln3/l1;->f:Ln3/q;

    iget-boolean v10, v0, Ln3/l1;->g:Z

    iget-object v11, v0, Ln3/l1;->h:Lp4/u0;

    iget-object v12, v0, Ln3/l1;->i:Lj5/t;

    iget-object v13, v0, Ln3/l1;->j:Ljava/util/List;

    iget-boolean v15, v0, Ln3/l1;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Ln3/l1;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Ln3/l1;->n:Ln3/m1;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Ln3/l1;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Ln3/l1;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Ln3/l1;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Ln3/l1;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    return-object v25
.end method

.method public final b(Lp4/x$b;JJJJLp4/u0;Lj5/t;Ljava/util/List;)Ln3/l1;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp4/x$b;",
            "JJJJ",
            "Lp4/u0;",
            "Lj5/t;",
            "Ljava/util/List<",
            "Lf4/a;",
            ">;)",
            "Ln3/l1;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v20, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    new-instance v25, Ln3/l1;

    move-object/from16 v1, v25

    iget-object v2, v0, Ln3/l1;->a:Ln3/b2;

    iget v8, v0, Ln3/l1;->e:I

    iget-object v9, v0, Ln3/l1;->f:Ln3/q;

    iget-boolean v10, v0, Ln3/l1;->g:Z

    iget-object v14, v0, Ln3/l1;->k:Lp4/x$b;

    iget-boolean v15, v0, Ln3/l1;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Ln3/l1;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Ln3/l1;->n:Ln3/m1;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Ln3/l1;->p:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Ln3/l1;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v24}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    return-object v25
.end method

.method public final c(ZI)Ln3/l1;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    new-instance v25, Ln3/l1;

    move-object/from16 v1, v25

    iget-object v2, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v3, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v4, v0, Ln3/l1;->c:J

    iget-wide v6, v0, Ln3/l1;->d:J

    iget v8, v0, Ln3/l1;->e:I

    iget-object v9, v0, Ln3/l1;->f:Ln3/q;

    iget-boolean v10, v0, Ln3/l1;->g:Z

    iget-object v11, v0, Ln3/l1;->h:Lp4/u0;

    iget-object v12, v0, Ln3/l1;->i:Lj5/t;

    iget-object v13, v0, Ln3/l1;->j:Ljava/util/List;

    iget-object v14, v0, Ln3/l1;->k:Lp4/x$b;

    move-object/from16 p1, v1

    iget-object v1, v0, Ln3/l1;->n:Ln3/m1;

    move-object/from16 v17, v1

    move-object/from16 p2, v2

    iget-wide v1, v0, Ln3/l1;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Ln3/l1;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Ln3/l1;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Ln3/l1;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v24}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    return-object v25
.end method

.method public final d(Ln3/q;)Ln3/l1;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    new-instance v25, Ln3/l1;

    move-object/from16 v1, v25

    iget-object v2, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v3, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v4, v0, Ln3/l1;->c:J

    iget-wide v6, v0, Ln3/l1;->d:J

    iget v8, v0, Ln3/l1;->e:I

    iget-boolean v10, v0, Ln3/l1;->g:Z

    iget-object v11, v0, Ln3/l1;->h:Lp4/u0;

    iget-object v12, v0, Ln3/l1;->i:Lj5/t;

    iget-object v13, v0, Ln3/l1;->j:Ljava/util/List;

    iget-object v14, v0, Ln3/l1;->k:Lp4/x$b;

    iget-boolean v15, v0, Ln3/l1;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Ln3/l1;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Ln3/l1;->n:Ln3/m1;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Ln3/l1;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Ln3/l1;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Ln3/l1;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Ln3/l1;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    return-object v25
.end method

.method public final e(Ln3/m1;)Ln3/l1;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    new-instance v25, Ln3/l1;

    move-object/from16 v1, v25

    iget-object v2, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v3, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v4, v0, Ln3/l1;->c:J

    iget-wide v6, v0, Ln3/l1;->d:J

    iget v8, v0, Ln3/l1;->e:I

    iget-object v9, v0, Ln3/l1;->f:Ln3/q;

    iget-boolean v10, v0, Ln3/l1;->g:Z

    iget-object v11, v0, Ln3/l1;->h:Lp4/u0;

    iget-object v12, v0, Ln3/l1;->i:Lj5/t;

    iget-object v13, v0, Ln3/l1;->j:Ljava/util/List;

    iget-object v14, v0, Ln3/l1;->k:Lp4/x$b;

    iget-boolean v15, v0, Ln3/l1;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Ln3/l1;->m:I

    move/from16 v16, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Ln3/l1;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Ln3/l1;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Ln3/l1;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Ln3/l1;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    return-object v25
.end method

.method public final f(I)Ln3/l1;
    .locals 27

    move-object/from16 v0, p0

    move/from16 v8, p1

    new-instance v25, Ln3/l1;

    move-object/from16 v1, v25

    iget-object v2, v0, Ln3/l1;->a:Ln3/b2;

    iget-object v3, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v4, v0, Ln3/l1;->c:J

    iget-wide v6, v0, Ln3/l1;->d:J

    iget-object v9, v0, Ln3/l1;->f:Ln3/q;

    iget-boolean v10, v0, Ln3/l1;->g:Z

    iget-object v11, v0, Ln3/l1;->h:Lp4/u0;

    iget-object v12, v0, Ln3/l1;->i:Lj5/t;

    iget-object v13, v0, Ln3/l1;->j:Ljava/util/List;

    iget-object v14, v0, Ln3/l1;->k:Lp4/x$b;

    iget-boolean v15, v0, Ln3/l1;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Ln3/l1;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Ln3/l1;->n:Ln3/m1;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Ln3/l1;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Ln3/l1;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Ln3/l1;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Ln3/l1;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    return-object v25
.end method

.method public final g(Ln3/b2;)Ln3/l1;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    new-instance v25, Ln3/l1;

    move-object/from16 v1, v25

    iget-object v3, v0, Ln3/l1;->b:Lp4/x$b;

    iget-wide v4, v0, Ln3/l1;->c:J

    iget-wide v6, v0, Ln3/l1;->d:J

    iget v8, v0, Ln3/l1;->e:I

    iget-object v9, v0, Ln3/l1;->f:Ln3/q;

    iget-boolean v10, v0, Ln3/l1;->g:Z

    iget-object v11, v0, Ln3/l1;->h:Lp4/u0;

    iget-object v12, v0, Ln3/l1;->i:Lj5/t;

    iget-object v13, v0, Ln3/l1;->j:Ljava/util/List;

    iget-object v14, v0, Ln3/l1;->k:Lp4/x$b;

    iget-boolean v15, v0, Ln3/l1;->l:Z

    move-object/from16 p1, v1

    iget v1, v0, Ln3/l1;->m:I

    move/from16 v16, v1

    iget-object v1, v0, Ln3/l1;->n:Ln3/m1;

    move-object/from16 v17, v1

    move-object/from16 v26, v2

    iget-wide v1, v0, Ln3/l1;->p:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Ln3/l1;->q:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Ln3/l1;->r:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Ln3/l1;->o:Z

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct/range {v1 .. v24}, Ln3/l1;-><init>(Ln3/b2;Lp4/x$b;JJILn3/q;ZLp4/u0;Lj5/t;Ljava/util/List;Lp4/x$b;ZILn3/m1;JJJZ)V

    return-object v25
.end method
