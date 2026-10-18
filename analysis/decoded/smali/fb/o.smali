.class public final Lfb/o;
.super Ljava/lang/Object;
.source "FitCalibrateUtil.kt"

# interfaces
.implements Lfb/n;


# instance fields
.field public final a:Lv9/a;

.field public final b:Lya/b;

.field public final c:Lya/b;

.field public final d:Lfb/d;

.field public e:Lba/v;

.field public f:Lba/v;

.field public final g:Lfb/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lfb/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;"
        }
    .end annotation
.end field

.field public final i:J

.field public final j:Ljava/util/Timer;

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Lv9/a;Lya/b;Lya/b;Lfb/d;)V
    .locals 4

    const-string v0, "adaptIdentifier"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfb/o;->a:Lv9/a;

    .line 3
    iput-object p2, p0, Lfb/o;->b:Lya/b;

    .line 4
    iput-object p3, p0, Lfb/o;->c:Lya/b;

    .line 5
    iput-object p4, p0, Lfb/o;->d:Lfb/d;

    .line 6
    new-instance p1, Lba/c0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lba/c0;-><init>(I)V

    iput-object p1, p0, Lfb/o;->e:Lba/v;

    .line 7
    new-instance p1, Lba/c0;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lba/c0;-><init>(I)V

    iput-object p1, p0, Lfb/o;->f:Lba/v;

    const-wide/32 v2, 0x9c40

    .line 8
    iput-wide v2, p0, Lfb/o;->i:J

    .line 9
    new-instance p1, Ljava/util/Timer;

    .line 10
    sget-object v2, Lfb/q;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    const-string v3, "CalibrateFitTimer-"

    .line 12
    invoke-static {v3, v2}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-direct {p1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lfb/o;->j:Ljava/util/Timer;

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lfb/o;->k:I

    .line 15
    iput p1, p0, Lfb/o;->l:I

    .line 16
    new-instance p1, Lba/c0;

    invoke-direct {p1, v0}, Lba/c0;-><init>(I)V

    invoke-interface {p4, p1}, Lfb/d;->a(Lba/v;)V

    .line 17
    new-instance p1, Lba/c0;

    invoke-direct {p1, v1}, Lba/c0;-><init>(I)V

    invoke-interface {p4, p1}, Lfb/d;->a(Lba/v;)V

    .line 18
    new-instance p1, Lfb/o$a;

    invoke-direct {p1, p0}, Lfb/o$a;-><init>(Lfb/o;)V

    .line 19
    iput-object p1, p0, Lfb/o;->g:Lfb/o$a;

    .line 20
    new-instance p4, Lfb/o$b;

    invoke-direct {p4, p0}, Lfb/o$b;-><init>(Lfb/o;)V

    .line 21
    iput-object p4, p0, Lfb/o;->h:Lfb/o$b;

    .line 22
    invoke-interface {p2, p1}, Lya/b;->g(Lv9/p0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2, p1}, Lya/b;->B(Lv9/p0;)V

    .line 23
    :cond_0
    invoke-interface {p3, p1}, Lya/b;->g(Lv9/p0;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p3, p4}, Lya/b;->B(Lv9/p0;)V

    :cond_1
    return-void
.end method

.method public static final a(Lfb/o;Lv9/g;)V
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lv9/f4;

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 3
    move-object v0, p1

    check-cast v0, Lv9/f4;

    .line 4
    iget-object v0, v0, Lv9/f4;->n:Lea/i;

    .line 5
    iget-object v0, v0, Lea/i;->i:Lea/h$a;

    .line 6
    iget v0, v0, Lea/h$a;->j:I

    if-le v0, v1, :cond_1

    .line 7
    iget-boolean p1, p1, Lda/g;->i:Z

    if-eqz p1, :cond_0

    .line 8
    new-instance p1, Lba/b0;

    invoke-direct {p1, v1}, Lba/b0;-><init>(I)V

    .line 9
    iput-object p1, p0, Lfb/o;->e:Lba/v;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lba/b0;

    invoke-direct {p1, v2}, Lba/b0;-><init>(I)V

    .line 11
    iput-object p1, p0, Lfb/o;->f:Lba/v;

    goto :goto_0

    .line 12
    :cond_1
    iget-boolean p1, p1, Lda/g;->i:Z

    if-eqz p1, :cond_2

    .line 13
    new-instance p1, Lba/k;

    invoke-direct {p1, v1}, Lba/k;-><init>(I)V

    .line 14
    iput-object p1, p0, Lfb/o;->e:Lba/v;

    goto :goto_0

    .line 15
    :cond_2
    new-instance p1, Lba/k;

    invoke-direct {p1, v2}, Lba/k;-><init>(I)V

    .line 16
    iput-object p1, p0, Lfb/o;->f:Lba/v;

    .line 17
    :goto_0
    invoke-virtual {p0}, Lfb/o;->d()V

    goto/16 :goto_5

    .line 18
    :cond_3
    instance-of v0, p1, Lv9/n4;

    if-eqz v0, :cond_a

    .line 19
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v3

    move-object v0, p1

    check-cast v0, Lv9/n4;

    .line 20
    iget-object v4, v0, Lv9/n4;->m:Lea/i;

    .line 21
    iget-object v4, v4, Lea/i;->i:Lea/h$a;

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "servoPosition "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "AdaptKitFitCalibrate"

    invoke-static/range {v3 .. v8}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 23
    iget-object v3, v0, Lv9/n4;->m:Lea/i;

    .line 24
    iget-object v3, v3, Lea/i;->i:Lea/h$a;

    .line 25
    iget v3, v3, Lea/h$a;->j:I

    if-nez v3, :cond_6

    .line 26
    iget-object v3, p0, Lfb/o;->e:Lba/v;

    new-instance v4, Lba/a0;

    invoke-direct {v4, v1}, Lba/a0;-><init>(I)V

    invoke-static {v3, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 27
    iget-object v3, p0, Lfb/o;->f:Lba/v;

    new-instance v4, Lba/a0;

    invoke-direct {v4, v2}, Lba/a0;-><init>(I)V

    invoke-static {v3, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 28
    :cond_4
    iget-boolean p1, p1, Lda/g;->i:Z

    if-eqz p1, :cond_5

    .line 29
    new-instance p1, Lba/l;

    invoke-direct {p1, v1}, Lba/l;-><init>(I)V

    .line 30
    iput-object p1, p0, Lfb/o;->e:Lba/v;

    goto :goto_1

    .line 31
    :cond_5
    new-instance p1, Lba/l;

    invoke-direct {p1, v2}, Lba/l;-><init>(I)V

    .line 32
    iput-object p1, p0, Lfb/o;->f:Lba/v;

    .line 33
    :goto_1
    invoke-virtual {p0}, Lfb/o;->d()V

    goto/16 :goto_5

    .line 34
    :cond_6
    iget-object v0, v0, Lv9/n4;->m:Lea/i;

    .line 35
    iget-object v0, v0, Lea/i;->i:Lea/h$a;

    .line 36
    iget v0, v0, Lea/h$a;->j:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_7

    move v0, v3

    .line 37
    :cond_7
    iget-boolean v3, p1, Lda/g;->i:Z

    if-eqz v3, :cond_8

    .line 38
    iget-object v3, p0, Lfb/o;->e:Lba/v;

    new-instance v4, Lba/a0;

    invoke-direct {v4, v1}, Lba/a0;-><init>(I)V

    invoke-static {v3, v4}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 39
    iput v0, p0, Lfb/o;->k:I

    goto :goto_2

    .line 40
    :cond_8
    iget-boolean p1, p1, Lda/g;->j:Z

    if-eqz p1, :cond_9

    .line 41
    iget-object p1, p0, Lfb/o;->f:Lba/v;

    new-instance v3, Lba/a0;

    invoke-direct {v3, v2}, Lba/a0;-><init>(I)V

    invoke-static {p1, v3}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 42
    iput v0, p0, Lfb/o;->l:I

    .line 43
    :cond_9
    :goto_2
    iget-object p1, p0, Lfb/o;->e:Lba/v;

    instance-of p1, p1, Lba/a0;

    if-eqz p1, :cond_f

    iget-object p1, p0, Lfb/o;->f:Lba/v;

    instance-of p1, p1, Lba/a0;

    if-eqz p1, :cond_f

    iget p1, p0, Lfb/o;->l:I

    const/4 v0, -0x1

    if-le p1, v0, :cond_f

    iget p1, p0, Lfb/o;->k:I

    if-le p1, v0, :cond_f

    .line 44
    new-instance v3, Lba/z;

    invoke-direct {v3, v1, p1}, Lba/z;-><init>(II)V

    .line 45
    iput-object v3, p0, Lfb/o;->e:Lba/v;

    .line 46
    new-instance p1, Lba/z;

    iget v1, p0, Lfb/o;->l:I

    invoke-direct {p1, v2, v1}, Lba/z;-><init>(II)V

    .line 47
    iput-object p1, p0, Lfb/o;->f:Lba/v;

    .line 48
    iput v0, p0, Lfb/o;->k:I

    .line 49
    iput v0, p0, Lfb/o;->l:I

    .line 50
    invoke-virtual {p0}, Lfb/o;->d()V

    goto :goto_5

    .line 51
    :cond_a
    instance-of v0, p1, Lv9/a3;

    if-eqz v0, :cond_c

    .line 52
    iget-boolean p1, p1, Lda/g;->i:Z

    if-eqz p1, :cond_b

    .line 53
    new-instance p1, Lba/j0;

    invoke-direct {p1, v1}, Lba/j0;-><init>(I)V

    iput-object p1, p0, Lfb/o;->e:Lba/v;

    goto :goto_3

    .line 54
    :cond_b
    new-instance p1, Lba/j0;

    invoke-direct {p1, v2}, Lba/j0;-><init>(I)V

    .line 55
    iput-object p1, p0, Lfb/o;->f:Lba/v;

    .line 56
    :goto_3
    invoke-virtual {p0}, Lfb/o;->d()V

    goto :goto_5

    .line 57
    :cond_c
    instance-of v0, p1, Lv9/d3;

    if-eqz v0, :cond_d

    .line 58
    new-instance p1, Lba/q;

    invoke-direct {p1, v1}, Lba/q;-><init>(I)V

    iput-object p1, p0, Lfb/o;->e:Lba/v;

    .line 59
    new-instance p1, Lba/q;

    invoke-direct {p1, v2}, Lba/q;-><init>(I)V

    iput-object p1, p0, Lfb/o;->f:Lba/v;

    goto :goto_5

    .line 60
    :cond_d
    instance-of v0, p1, Lv9/f2;

    if-eqz v0, :cond_f

    .line 61
    iget-boolean p1, p1, Lda/g;->i:Z

    if-eqz p1, :cond_e

    .line 62
    new-instance p1, Lba/y;

    invoke-direct {p1, v1}, Lba/y;-><init>(I)V

    .line 63
    iput-object p1, p0, Lfb/o;->e:Lba/v;

    goto :goto_4

    .line 64
    :cond_e
    new-instance p1, Lba/y;

    invoke-direct {p1, v2}, Lba/y;-><init>(I)V

    .line 65
    iput-object p1, p0, Lfb/o;->f:Lba/v;

    .line 66
    :goto_4
    invoke-virtual {p0}, Lfb/o;->d()V

    :cond_f
    :goto_5
    return-void
.end method


# virtual methods
.method public final b(Z)V
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lfb/o;->k:I

    .line 2
    iput v0, p0, Lfb/o;->l:I

    .line 3
    iget-object v0, p0, Lfb/o;->b:Lya/b;

    iget-object v1, p0, Lfb/o;->g:Lfb/o$a;

    invoke-interface {v0, v1}, Lya/b;->h(Lv9/p0;)V

    .line 4
    iget-object v0, p0, Lfb/o;->c:Lya/b;

    iget-object v1, p0, Lfb/o;->h:Lfb/o$b;

    invoke-interface {v0, v1}, Lya/b;->h(Lv9/p0;)V

    .line 5
    invoke-virtual {p0}, Lfb/o;->c()V

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lba/p;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lba/p;-><init>(I)V

    iput-object p1, p0, Lfb/o;->e:Lba/v;

    .line 7
    new-instance p1, Lba/p;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lba/p;-><init>(I)V

    iput-object p1, p0, Lfb/o;->f:Lba/v;

    .line 8
    invoke-virtual {p0}, Lfb/o;->d()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfb/o;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2
    iget-object v0, p0, Lfb/o;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lfb/o;->b(Z)V

    return-void
.end method

.method public final d()V
    .locals 8

    .line 1
    iget-object v0, p0, Lfb/o;->e:Lba/v;

    .line 2
    iget-object v1, p0, Lfb/o;->f:Lba/v;

    .line 3
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "left: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " right: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "AdaptKitFitCalibrate"

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lv9/d$a;->a(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    .line 4
    new-instance v2, Lba/m0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lba/m0;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lba/m0;

    invoke-direct {v2, v4}, Lba/m0;-><init>(I)V

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/m0;

    invoke-direct {v1, v3}, Lba/m0;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 6
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/m0;

    invoke-direct {v1, v4}, Lba/m0;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 7
    iget-object v0, p0, Lfb/o;->b:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    invoke-interface {v0, v1, v5}, Lya/b;->m(Lv9/a;Z)V

    .line 8
    iget-object v0, p0, Lfb/o;->c:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    invoke-interface {v0, v1, v5}, Lya/b;->m(Lv9/a;Z)V

    goto/16 :goto_2

    .line 9
    :cond_0
    new-instance v2, Lba/j0;

    invoke-direct {v2, v3}, Lba/j0;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lba/j0;

    invoke-direct {v2, v4}, Lba/j0;-><init>(I)V

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/j0;

    invoke-direct {v1, v3}, Lba/j0;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 11
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/j0;

    invoke-direct {v1, v4}, Lba/j0;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 12
    iget-object v0, p0, Lfb/o;->b:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    invoke-interface {v0, v1}, Lya/b;->A(Lv9/a;)V

    .line 13
    iget-object v0, p0, Lfb/o;->c:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    invoke-interface {v0, v1}, Lya/b;->A(Lv9/a;)V

    goto/16 :goto_2

    .line 14
    :cond_1
    new-instance v2, Lba/b0;

    invoke-direct {v2, v3}, Lba/b0;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lba/b0;

    invoke-direct {v2, v4}, Lba/b0;-><init>(I)V

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/b0;

    invoke-direct {v1, v3}, Lba/b0;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 16
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/b0;

    invoke-direct {v1, v4}, Lba/b0;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 17
    iget-object v0, p0, Lfb/o;->b:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    new-instance v2, Lea/h$a;

    invoke-direct {v2, v5}, Lea/h$a;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lya/b;->O(Lv9/a;Lea/h$a;)V

    .line 18
    iget-object v0, p0, Lfb/o;->c:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    new-instance v2, Lea/h$a;

    invoke-direct {v2, v5}, Lea/h$a;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lya/b;->O(Lv9/a;Lea/h$a;)V

    goto/16 :goto_2

    .line 19
    :cond_2
    new-instance v2, Lba/b0;

    invoke-direct {v2, v3}, Lba/b0;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lba/k;

    invoke-direct {v2, v4}, Lba/k;-><init>(I)V

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/b0;

    invoke-direct {v1, v3}, Lba/b0;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 21
    new-instance v0, Lba/l;

    invoke-direct {v0, v4}, Lba/l;-><init>(I)V

    iput-object v0, p0, Lfb/o;->f:Lba/v;

    .line 22
    iget-object v0, p0, Lfb/o;->b:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    new-instance v2, Lea/h$a;

    invoke-direct {v2, v5}, Lea/h$a;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lya/b;->O(Lv9/a;Lea/h$a;)V

    goto/16 :goto_2

    .line 23
    :cond_3
    new-instance v2, Lba/k;

    invoke-direct {v2, v3}, Lba/k;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lba/b0;

    invoke-direct {v2, v4}, Lba/b0;-><init>(I)V

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 25
    new-instance v0, Lba/l;

    invoke-direct {v0, v3}, Lba/l;-><init>(I)V

    iput-object v0, p0, Lfb/o;->e:Lba/v;

    .line 26
    iget-object v0, p0, Lfb/o;->c:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    new-instance v2, Lea/h$a;

    invoke-direct {v2, v5}, Lea/h$a;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lya/b;->O(Lv9/a;Lea/h$a;)V

    goto/16 :goto_2

    .line 27
    :cond_4
    new-instance v2, Lba/l;

    invoke-direct {v2, v3}, Lba/l;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lba/l;

    invoke-direct {v2, v4}, Lba/l;-><init>(I)V

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 28
    :cond_5
    new-instance v2, Lba/k;

    invoke-direct {v2, v3}, Lba/k;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lba/k;

    invoke-direct {v2, v4}, Lba/k;-><init>(I)V

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 29
    :cond_6
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/l;

    invoke-direct {v1, v3}, Lba/l;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 30
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/l;

    invoke-direct {v1, v4}, Lba/l;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 31
    new-instance v0, Lba/a0;

    invoke-direct {v0, v3}, Lba/a0;-><init>(I)V

    iput-object v0, p0, Lfb/o;->e:Lba/v;

    .line 32
    new-instance v0, Lba/a0;

    invoke-direct {v0, v4}, Lba/a0;-><init>(I)V

    iput-object v0, p0, Lfb/o;->f:Lba/v;

    .line 33
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    .line 34
    new-instance v1, Lba/a0;

    invoke-direct {v1, v3}, Lba/a0;-><init>(I)V

    .line 35
    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 36
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    .line 37
    new-instance v1, Lba/a0;

    invoke-direct {v1, v4}, Lba/a0;-><init>(I)V

    .line 38
    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 39
    iget-object v0, p0, Lfb/o;->c:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    new-instance v2, Lea/h$a;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lea/h$a;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lya/b;->O(Lv9/a;Lea/h$a;)V

    .line 40
    iget-object v0, p0, Lfb/o;->b:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    new-instance v2, Lea/h$a;

    invoke-direct {v2, v3}, Lea/h$a;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lya/b;->O(Lv9/a;Lea/h$a;)V

    goto/16 :goto_2

    .line 41
    :cond_7
    instance-of v2, v0, Lba/z;

    if-eqz v2, :cond_8

    instance-of v2, v1, Lba/z;

    if-eqz v2, :cond_8

    .line 42
    iget-object v2, p0, Lfb/o;->d:Lfb/d;

    .line 43
    new-instance v5, Lba/z;

    .line 44
    check-cast v0, Lba/z;

    .line 45
    iget v0, v0, Lba/z;->k:I

    .line 46
    invoke-direct {v5, v3, v0}, Lba/z;-><init>(II)V

    .line 47
    invoke-interface {v2, v5}, Lfb/d;->a(Lba/v;)V

    .line 48
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    .line 49
    new-instance v2, Lba/z;

    .line 50
    check-cast v1, Lba/z;

    .line 51
    iget v1, v1, Lba/z;->k:I

    .line 52
    invoke-direct {v2, v4, v1}, Lba/z;-><init>(II)V

    .line 53
    invoke-interface {v0, v2}, Lfb/d;->a(Lba/v;)V

    .line 54
    invoke-virtual {p0}, Lfb/o;->c()V

    .line 55
    iget-object v0, p0, Lfb/o;->b:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    invoke-interface {v0, v1, v3}, Lya/b;->m(Lv9/a;Z)V

    .line 56
    iget-object v0, p0, Lfb/o;->c:Lya/b;

    iget-object v1, p0, Lfb/o;->a:Lv9/a;

    invoke-interface {v0, v1, v3}, Lya/b;->m(Lv9/a;Z)V

    .line 57
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/n0;

    invoke-direct {v1, v3}, Lba/n0;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 58
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/n0;

    invoke-direct {v1, v4}, Lba/n0;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 59
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/q;

    invoke-direct {v1, v3}, Lba/q;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 60
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/q;

    invoke-direct {v1, v4}, Lba/q;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 61
    iget-object v0, p0, Lfb/o;->b:Lya/b;

    iget-object v1, p0, Lfb/o;->g:Lfb/o$a;

    invoke-interface {v0, v1}, Lya/b;->h(Lv9/p0;)V

    .line 62
    iget-object v0, p0, Lfb/o;->c:Lya/b;

    iget-object v1, p0, Lfb/o;->h:Lfb/o$b;

    invoke-interface {v0, v1}, Lya/b;->h(Lv9/p0;)V

    goto/16 :goto_2

    .line 63
    :cond_8
    new-instance v2, Lba/l0;

    invoke-direct {v2, v3}, Lba/l0;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v2, Lba/l0;

    invoke-direct {v2, v4}, Lba/l0;-><init>(I)V

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    .line 64
    :cond_9
    new-instance v2, Lba/y;

    invoke-direct {v2, v3}, Lba/y;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lba/y;

    invoke-direct {v2, v4}, Lba/y;-><init>(I)V

    invoke-static {v1, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_0

    .line 65
    :cond_a
    new-instance v2, Lba/p;

    invoke-direct {v2, v3}, Lba/p;-><init>(I)V

    invoke-static {v0, v2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lba/p;

    invoke-direct {v0, v4}, Lba/p;-><init>(I)V

    invoke-static {v1, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 66
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/p;

    invoke-direct {v1, v3}, Lba/p;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 67
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    new-instance v1, Lba/p;

    invoke-direct {v1, v4}, Lba/p;-><init>(I)V

    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    goto :goto_2

    .line 68
    :cond_b
    :goto_0
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    .line 69
    new-instance v1, Lba/y;

    invoke-direct {v1, v3}, Lba/y;-><init>(I)V

    .line 70
    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 71
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    .line 72
    new-instance v1, Lba/y;

    invoke-direct {v1, v4}, Lba/y;-><init>(I)V

    .line 73
    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 74
    invoke-virtual {p0, v5}, Lfb/o;->b(Z)V

    goto :goto_2

    .line 75
    :cond_c
    :goto_1
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    .line 76
    new-instance v1, Lba/l0;

    invoke-direct {v1, v3}, Lba/l0;-><init>(I)V

    .line 77
    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 78
    iget-object v0, p0, Lfb/o;->d:Lfb/d;

    .line 79
    new-instance v1, Lba/l0;

    invoke-direct {v1, v4}, Lba/l0;-><init>(I)V

    .line 80
    invoke-interface {v0, v1}, Lfb/d;->a(Lba/v;)V

    .line 81
    invoke-virtual {p0, v5}, Lfb/o;->b(Z)V

    :cond_d
    :goto_2
    return-void
.end method
