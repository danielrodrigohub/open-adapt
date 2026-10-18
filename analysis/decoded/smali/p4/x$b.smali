.class public final Lp4/x$b;
.super Lp4/w;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp4/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v6}, Lp4/w;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 7

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 4
    invoke-direct/range {v0 .. v6}, Lp4/w;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 2
    invoke-direct/range {v0 .. v6}, Lp4/w;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    .line 3
    invoke-direct/range {v0 .. v6}, Lp4/w;-><init>(Ljava/lang/Object;IIJI)V

    return-void
.end method

.method public constructor <init>(Lp4/w;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lp4/w;-><init>(Lp4/w;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lp4/x$b;
    .locals 9

    .line 1
    new-instance v0, Lp4/x$b;

    .line 2
    iget-object v1, p0, Lp4/w;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Lp4/w;

    iget v4, p0, Lp4/w;->b:I

    iget v5, p0, Lp4/w;->c:I

    iget-wide v6, p0, Lp4/w;->d:J

    iget v8, p0, Lp4/w;->e:I

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lp4/w;-><init>(Ljava/lang/Object;IIJI)V

    .line 4
    :goto_0
    invoke-direct {v0, v1}, Lp4/x$b;-><init>(Lp4/w;)V

    return-object v0
.end method
