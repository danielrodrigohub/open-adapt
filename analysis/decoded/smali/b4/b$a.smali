.class public final Lb4/b$a;
.super Ljava/lang/Object;
.source "FlacReader.java"

# interfaces
.implements Lb4/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ls3/p;

.field public b:Ls3/p$a;

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>(Ls3/p;Ls3/p$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb4/b$a;->a:Ls3/p;

    .line 3
    iput-object p2, p0, Lb4/b$a;->b:Ls3/p$a;

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lb4/b$a;->c:J

    .line 5
    iput-wide p1, p0, Lb4/b$a;->d:J

    return-void
.end method


# virtual methods
.method public final a()Ls3/u;
    .locals 4

    .line 1
    iget-wide v0, p0, Lb4/b$a;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    new-instance v0, Ls3/o;

    iget-object v1, p0, Lb4/b$a;->a:Ls3/p;

    iget-wide v2, p0, Lb4/b$a;->c:J

    invoke-direct {v0, v1, v2, v3}, Ls3/o;-><init>(Ls3/p;J)V

    return-object v0
.end method

.method public final b(Ls3/i;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lb4/b$a;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const-wide/16 v2, -0x1

    if-ltz p1, :cond_0

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    neg-long v0, v0

    .line 2
    iput-wide v2, p0, Lb4/b$a;->d:J

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public final c(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb4/b$a;->b:Ls3/p$a;

    iget-object v0, v0, Ls3/p$a;->a:[J

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, p1, p2, v1}, Lm5/g0;->f([JJZ)I

    move-result p1

    .line 3
    aget-wide p1, v0, p1

    iput-wide p1, p0, Lb4/b$a;->d:J

    return-void
.end method
