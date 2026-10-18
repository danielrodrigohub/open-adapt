.class public final Lee/g$b;
.super Lrd/o;
.source "zip.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/g;->c(Lde/f;)Lee/f;
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
.field public final synthetic h:Lrd/u;

.field public final synthetic i:J

.field public final synthetic j:Lrd/v;

.field public final synthetic k:Lde/f;

.field public final synthetic l:Lrd/v;

.field public final synthetic m:Lrd/v;


# direct methods
.method public constructor <init>(Lrd/u;JLrd/v;Lde/f;Lrd/v;Lrd/v;)V
    .locals 0

    iput-object p1, p0, Lee/g$b;->h:Lrd/u;

    iput-wide p2, p0, Lee/g$b;->i:J

    iput-object p4, p0, Lee/g$b;->j:Lrd/v;

    iput-object p5, p0, Lee/g$b;->k:Lde/f;

    iput-object p6, p0, Lee/g$b;->l:Lrd/v;

    iput-object p7, p0, Lee/g$b;->m:Lrd/v;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 2
    iget-object p1, p0, Lee/g$b;->h:Lrd/u;

    iget-boolean v2, p1, Lrd/u;->h:Z

    if-nez v2, :cond_4

    .line 3
    iput-boolean p2, p1, Lrd/u;->h:Z

    .line 4
    iget-wide p1, p0, Lee/g$b;->i:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_3

    .line 5
    iget-object p1, p0, Lee/g$b;->j:Lrd/v;

    iget-wide v0, p1, Lrd/v;->h:J

    const-wide v2, 0xffffffffL

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iget-object p2, p0, Lee/g$b;->k:Lde/f;

    invoke-interface {p2}, Lde/f;->I()J

    move-result-wide v0

    :cond_0
    iput-wide v0, p1, Lrd/v;->h:J

    .line 6
    iget-object p1, p0, Lee/g$b;->l:Lrd/v;

    iget-wide v0, p1, Lrd/v;->h:J

    cmp-long p2, v0, v2

    const-wide/16 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lee/g$b;->k:Lde/f;

    invoke-interface {p2}, Lde/f;->I()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v0

    :goto_0
    iput-wide v4, p1, Lrd/v;->h:J

    .line 7
    iget-object p1, p0, Lee/g$b;->m:Lrd/v;

    iget-wide v4, p1, Lrd/v;->h:J

    cmp-long p2, v4, v2

    if-nez p2, :cond_2

    iget-object p2, p0, Lee/g$b;->k:Lde/f;

    invoke-interface {p2}, Lde/f;->I()J

    move-result-wide v0

    :cond_2
    iput-wide v0, p1, Lrd/v;->h:J

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_5
    :goto_1
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
