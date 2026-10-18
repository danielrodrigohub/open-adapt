.class public final Lee/g$c;
.super Lrd/o;
.source "zip.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/g;->e(Lde/f;Lde/j;)Lde/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lde/f;

.field public final synthetic i:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic j:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:Lrd/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd/w<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lde/f;Lrd/w;Lrd/w;Lrd/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/f;",
            "Lrd/w<",
            "Ljava/lang/Long;",
            ">;",
            "Lrd/w<",
            "Ljava/lang/Long;",
            ">;",
            "Lrd/w<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lee/g$c;->h:Lde/f;

    iput-object p2, p0, Lee/g$c;->i:Lrd/w;

    iput-object p3, p0, Lee/g$c;->j:Lrd/w;

    iput-object p4, p0, Lee/g$c;->k:Lrd/w;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/16 p2, 0x5455

    if-ne p1, p2, :cond_a

    const-wide/16 p1, 0x1

    cmp-long v2, v0, p1

    const-string v3, "bad zip: extended timestamp extra too short"

    if-ltz v2, :cond_9

    .line 2
    iget-object v2, p0, Lee/g$c;->h:Lde/f;

    invoke-interface {v2}, Lde/f;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    and-int/lit8 v7, v2, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    const/4 v8, 0x4

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_2

    move v5, v6

    .line 3
    :cond_2
    iget-object v2, p0, Lee/g$c;->h:Lde/f;

    if-eqz v4, :cond_3

    const-wide/16 p1, 0x5

    :cond_3
    const-wide/16 v8, 0x4

    if-eqz v7, :cond_4

    add-long/2addr p1, v8

    :cond_4
    if-eqz v5, :cond_5

    add-long/2addr p1, v8

    :cond_5
    cmp-long p1, v0, p1

    if-ltz p1, :cond_8

    const-wide/16 p1, 0x3e8

    if-eqz v4, :cond_6

    .line 4
    iget-object v0, p0, Lee/g$c;->i:Lrd/w;

    invoke-interface {v2}, Lde/f;->y()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lrd/w;->h:Ljava/lang/Object;

    :cond_6
    if-eqz v7, :cond_7

    .line 5
    iget-object v0, p0, Lee/g$c;->j:Lrd/w;

    iget-object v1, p0, Lee/g$c;->h:Lde/f;

    invoke-interface {v1}, Lde/f;->y()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lrd/w;->h:Ljava/lang/Object;

    :cond_7
    if-eqz v5, :cond_a

    .line 6
    iget-object v0, p0, Lee/g$c;->k:Lrd/w;

    iget-object v1, p0, Lee/g$c;->h:Lde/f;

    invoke-interface {v1}, Lde/f;->y()I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lrd/w;->h:Ljava/lang/Object;

    goto :goto_2

    .line 7
    :cond_8
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_9
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_a
    :goto_2
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
