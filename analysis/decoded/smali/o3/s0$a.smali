.class public final Lo3/s0$a;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:Lp4/x$b;

.field public e:Z

.field public f:Z

.field public final synthetic g:Lo3/s0;


# direct methods
.method public constructor <init>(Lo3/s0;Ljava/lang/String;ILp4/x$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo3/s0$a;->g:Lo3/s0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lo3/s0$a;->a:Ljava/lang/String;

    .line 3
    iput p3, p0, Lo3/s0$a;->b:I

    if-nez p4, :cond_0

    const-wide/16 p1, -0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-wide p1, p4, Lp4/w;->d:J

    :goto_0
    iput-wide p1, p0, Lo3/s0$a;->c:J

    if-eqz p4, :cond_1

    .line 5
    invoke-virtual {p4}, Lp4/w;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iput-object p4, p0, Lo3/s0$a;->d:Lp4/x$b;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lo3/b$a;)Z
    .locals 9

    .line 1
    iget-wide v0, p0, Lo3/s0$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2
    :cond_0
    iget-object v2, p1, Lo3/b$a;->d:Lp4/x$b;

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 3
    iget v0, p0, Lo3/s0$a;->b:I

    iget p1, p1, Lo3/b$a;->c:I

    if-eq v0, p1, :cond_1

    move v3, v4

    :cond_1
    return v3

    .line 4
    :cond_2
    iget-wide v5, v2, Lp4/w;->d:J

    cmp-long v0, v5, v0

    if-lez v0, :cond_3

    return v4

    .line 5
    :cond_3
    iget-object v0, p0, Lo3/s0$a;->d:Lp4/x$b;

    if-nez v0, :cond_4

    return v3

    .line 6
    :cond_4
    iget-object v0, p1, Lo3/b$a;->b:Ln3/b2;

    iget-object v1, v2, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v0

    .line 7
    iget-object v1, p1, Lo3/b$a;->b:Ln3/b2;

    iget-object v2, p0, Lo3/s0$a;->d:Lp4/x$b;

    iget-object v2, v2, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v1

    .line 8
    iget-object v2, p1, Lo3/b$a;->d:Lp4/x$b;

    iget-wide v5, v2, Lp4/w;->d:J

    iget-object v7, p0, Lo3/s0$a;->d:Lp4/x$b;

    iget-wide v7, v7, Lp4/w;->d:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_b

    if-ge v0, v1, :cond_5

    goto :goto_0

    :cond_5
    if-le v0, v1, :cond_6

    return v4

    .line 9
    :cond_6
    invoke-virtual {v2}, Lp4/w;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10
    iget-object p1, p1, Lo3/b$a;->d:Lp4/x$b;

    iget v0, p1, Lp4/w;->b:I

    .line 11
    iget p1, p1, Lp4/w;->c:I

    .line 12
    iget-object v1, p0, Lo3/s0$a;->d:Lp4/x$b;

    iget v2, v1, Lp4/w;->b:I

    if-gt v0, v2, :cond_7

    if-ne v0, v2, :cond_8

    iget v0, v1, Lp4/w;->c:I

    if-le p1, v0, :cond_8

    :cond_7
    move v3, v4

    :cond_8
    return v3

    .line 13
    :cond_9
    iget-object p1, p1, Lo3/b$a;->d:Lp4/x$b;

    iget p1, p1, Lp4/w;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lo3/s0$a;->d:Lp4/x$b;

    iget v0, v0, Lp4/w;->b:I

    if-le p1, v0, :cond_b

    :cond_a
    move v3, v4

    :cond_b
    :goto_0
    return v3
.end method

.method public final b(Ln3/b2;Ln3/b2;)Z
    .locals 4

    .line 1
    iget v0, p0, Lo3/s0$a;->b:I

    .line 2
    invoke-virtual {p1}, Ln3/b2;->r()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-lt v0, v1, :cond_1

    .line 3
    invoke-virtual {p2}, Ln3/b2;->r()I

    move-result p1

    if-ge v0, p1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_1

    .line 4
    :cond_1
    iget-object v1, p0, Lo3/s0$a;->g:Lo3/s0;

    .line 5
    iget-object v1, v1, Lo3/s0;->a:Ln3/b2$d;

    .line 6
    invoke-virtual {p1, v0, v1}, Ln3/b2;->p(ILn3/b2$d;)Ln3/b2$d;

    .line 7
    iget-object v0, p0, Lo3/s0$a;->g:Lo3/s0;

    .line 8
    iget-object v0, v0, Lo3/s0;->a:Ln3/b2$d;

    .line 9
    iget v0, v0, Ln3/b2$d;->v:I

    .line 10
    :goto_0
    iget-object v1, p0, Lo3/s0$a;->g:Lo3/s0;

    .line 11
    iget-object v1, v1, Lo3/s0;->a:Ln3/b2$d;

    .line 12
    iget v1, v1, Ln3/b2$d;->w:I

    if-gt v0, v1, :cond_0

    .line 13
    invoke-virtual {p1, v0}, Ln3/b2;->o(I)Ljava/lang/Object;

    move-result-object v1

    .line 14
    invoke-virtual {p2, v1}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 15
    iget-object p1, p0, Lo3/s0$a;->g:Lo3/s0;

    .line 16
    iget-object p1, p1, Lo3/s0;->b:Ln3/b2$b;

    .line 17
    invoke-virtual {p2, v1, p1, v2}, Ln3/b2;->i(ILn3/b2$b;Z)Ln3/b2$b;

    move-result-object p1

    .line 18
    iget v0, p1, Ln3/b2$b;->j:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :goto_1
    iput v0, p0, Lo3/s0$a;->b:I

    if-ne v0, v3, :cond_3

    return v2

    .line 20
    :cond_3
    iget-object p1, p0, Lo3/s0$a;->d:Lp4/x$b;

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 21
    :cond_4
    iget-object p1, p1, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ln3/b2;->d(Ljava/lang/Object;)I

    move-result p1

    if-eq p1, v3, :cond_5

    move v2, v0

    :cond_5
    return v2
.end method
