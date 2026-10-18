.class public final Lp4/q0$b;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Ll5/d0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Ll5/m;

.field public final c:Ll5/i0;

.field public d:[B


# direct methods
.method public constructor <init>(Ll5/m;Ll5/j;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lp4/r;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lp4/q0$b;->a:J

    .line 3
    iput-object p1, p0, Lp4/q0$b;->b:Ll5/m;

    .line 4
    new-instance p1, Ll5/i0;

    invoke-direct {p1, p2}, Ll5/i0;-><init>(Ll5/j;)V

    iput-object p1, p0, Lp4/q0$b;->c:Ll5/i0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp4/q0$b;->c:Ll5/i0;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Ll5/i0;->b:J

    .line 3
    :try_start_0
    iget-object v1, p0, Lp4/q0$b;->b:Ll5/m;

    invoke-virtual {v0, v1}, Ll5/i0;->l(Ll5/m;)J

    const/4 v0, 0x0

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lp4/q0$b;->c:Ll5/i0;

    .line 5
    iget-wide v0, v0, Ll5/i0;->b:J

    long-to-int v0, v0

    .line 6
    iget-object v1, p0, Lp4/q0$b;->d:[B

    if-nez v1, :cond_0

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 7
    iput-object v1, p0, Lp4/q0$b;->d:[B

    goto :goto_1

    .line 8
    :cond_0
    array-length v2, v1

    if-ne v0, v2, :cond_1

    .line 9
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lp4/q0$b;->d:[B

    .line 10
    :cond_1
    :goto_1
    iget-object v1, p0, Lp4/q0$b;->c:Ll5/i0;

    iget-object v2, p0, Lp4/q0$b;->d:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ll5/i0;->b([BII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, p0, Lp4/q0$b;->c:Ll5/i0;

    invoke-static {v0}, Lc3/d;->i(Ll5/j;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lp4/q0$b;->c:Ll5/i0;

    invoke-static {v1}, Lc3/d;->i(Ll5/j;)V

    .line 12
    throw v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
