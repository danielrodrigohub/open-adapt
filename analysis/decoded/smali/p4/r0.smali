.class public final Lp4/r0;
.super Lp4/a;
.source "SingleSampleMediaSource.java"


# instance fields
.field public final o:Ll5/m;

.field public final p:Ll5/j$a;

.field public final q:Ln3/s0;

.field public final r:J

.field public final s:Ll5/c0;

.field public final t:Z

.field public final u:Lp4/p0;

.field public final v:Ln3/y0;

.field public w:Ll5/j0;


# direct methods
.method public constructor <init>(Ln3/y0$k;Ll5/j$a;Ll5/c0;Z)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lp4/a;-><init>()V

    move-object/from16 v2, p2

    .line 2
    iput-object v2, v0, Lp4/r0;->p:Ll5/j$a;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    iput-wide v2, v0, Lp4/r0;->r:J

    move-object/from16 v2, p3

    .line 4
    iput-object v2, v0, Lp4/r0;->s:Ll5/c0;

    move/from16 v2, p4

    .line 5
    iput-boolean v2, v0, Lp4/r0;->t:Z

    .line 6
    new-instance v2, Ln3/y0$b;

    invoke-direct {v2}, Ln3/y0$b;-><init>()V

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 7
    iput-object v3, v2, Ln3/y0$b;->b:Landroid/net/Uri;

    .line 8
    iget-object v3, v1, Ln3/y0$k;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iput-object v3, v2, Ln3/y0$b;->a:Ljava/lang/String;

    .line 12
    invoke-static/range {p1 .. p1}, Lu6/v;->v(Ljava/lang/Object;)Lu6/v;

    move-result-object v3

    .line 13
    invoke-static {v3}, Lu6/v;->s(Ljava/util/Collection;)Lu6/v;

    move-result-object v3

    iput-object v3, v2, Ln3/y0$b;->h:Lu6/v;

    const/4 v3, 0x0

    .line 14
    iput-object v3, v2, Ln3/y0$b;->i:Ljava/lang/Object;

    .line 15
    invoke-virtual {v2}, Ln3/y0$b;->a()Ln3/y0;

    move-result-object v9

    iput-object v9, v0, Lp4/r0;->v:Ln3/y0;

    .line 16
    new-instance v2, Ln3/s0$a;

    invoke-direct {v2}, Ln3/s0$a;-><init>()V

    iget-object v4, v1, Ln3/y0$k;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "text/x-unknown"

    .line 17
    :goto_0
    iput-object v4, v2, Ln3/s0$a;->k:Ljava/lang/String;

    .line 18
    iget-object v4, v1, Ln3/y0$k;->c:Ljava/lang/String;

    .line 19
    iput-object v4, v2, Ln3/s0$a;->c:Ljava/lang/String;

    .line 20
    iget v4, v1, Ln3/y0$k;->d:I

    .line 21
    iput v4, v2, Ln3/s0$a;->d:I

    .line 22
    iget v4, v1, Ln3/y0$k;->e:I

    .line 23
    iput v4, v2, Ln3/s0$a;->e:I

    .line 24
    iget-object v4, v1, Ln3/y0$k;->f:Ljava/lang/String;

    .line 25
    iput-object v4, v2, Ln3/s0$a;->b:Ljava/lang/String;

    .line 26
    iget-object v4, v1, Ln3/y0$k;->g:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v3, v4

    .line 27
    :cond_1
    iput-object v3, v2, Ln3/s0$a;->a:Ljava/lang/String;

    .line 28
    new-instance v3, Ln3/s0;

    invoke-direct {v3, v2}, Ln3/s0;-><init>(Ln3/s0$a;)V

    .line 29
    iput-object v3, v0, Lp4/r0;->q:Ln3/s0;

    const/16 v23, 0x0

    const/16 v21, 0x0

    const-wide/16 v17, 0x0

    const/4 v15, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v16

    const-wide/16 v19, -0x1

    .line 31
    iget-object v11, v1, Ln3/y0$k;->a:Landroid/net/Uri;

    const/16 v22, 0x1

    const-string v1, "The uri must be set."

    .line 32
    invoke-static {v11, v1}, Lm5/a;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Ll5/m;

    move-object v10, v1

    .line 34
    invoke-direct/range {v10 .. v23}, Ll5/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 35
    iput-object v1, v0, Lp4/r0;->o:Ll5/m;

    .line 36
    new-instance v1, Lp4/p0;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lp4/p0;-><init>(JZZLn3/y0;)V

    iput-object v1, v0, Lp4/r0;->u:Lp4/p0;

    return-void
.end method


# virtual methods
.method public final a()Ln3/y0;
    .locals 1

    iget-object v0, p0, Lp4/r0;->v:Ln3/y0;

    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final d(Lp4/v;)V
    .locals 1

    .line 1
    check-cast p1, Lp4/q0;

    .line 2
    iget-object p1, p1, Lp4/q0;->p:Ll5/d0;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ll5/d0;->f(Ll5/d0$e;)V

    return-void
.end method

.method public final q(Lp4/x$b;Ll5/b;J)Lp4/v;
    .locals 10

    .line 1
    new-instance p2, Lp4/q0;

    iget-object v1, p0, Lp4/r0;->o:Ll5/m;

    iget-object v2, p0, Lp4/r0;->p:Ll5/j$a;

    iget-object v3, p0, Lp4/r0;->w:Ll5/j0;

    iget-object v4, p0, Lp4/r0;->q:Ln3/s0;

    iget-wide v5, p0, Lp4/r0;->r:J

    iget-object v7, p0, Lp4/r0;->s:Ll5/c0;

    .line 2
    invoke-virtual {p0, p1}, Lp4/a;->s(Lp4/x$b;)Lp4/e0$a;

    move-result-object v8

    iget-boolean v9, p0, Lp4/r0;->t:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v9}, Lp4/q0;-><init>(Ll5/m;Ll5/j$a;Ll5/j0;Ln3/s0;JLl5/c0;Lp4/e0$a;Z)V

    return-object p2
.end method

.method public final v(Ll5/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp4/r0;->w:Ll5/j0;

    .line 2
    iget-object p1, p0, Lp4/r0;->u:Lp4/p0;

    invoke-virtual {p0, p1}, Lp4/a;->w(Ln3/b2;)V

    return-void
.end method

.method public final x()V
    .locals 0

    return-void
.end method
