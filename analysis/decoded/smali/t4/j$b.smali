.class public final Lt4/j$b;
.super Lt4/j;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt4/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Lt4/i;

.field public final j:Lg3/b;


# direct methods
.method public constructor <init>(JLn3/s0;Ljava/util/List;Lt4/k$e;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ln3/s0;",
            "Ljava/util/List<",
            "Lt4/b;",
            ">;",
            "Lt4/k$e;",
            "Ljava/util/List<",
            "Lt4/e;",
            ">;",
            "Ljava/util/List<",
            "Lt4/e;",
            ">;",
            "Ljava/util/List<",
            "Lt4/e;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    .line 1
    invoke-direct/range {v0 .. v6}, Lt4/j;-><init>(Ln3/s0;Ljava/util/List;Lt4/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    const/4 p1, 0x0

    .line 2
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt4/b;

    iget-object p1, p1, Lt4/b;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 3
    iget-wide p6, p5, Lt4/k$e;->e:J

    const-wide/16 p1, 0x0

    cmp-long p1, p6, p1

    const/4 p8, 0x0

    if-gtz p1, :cond_0

    move-object p1, p8

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lt4/i;

    const/4 p3, 0x0

    iget-wide p4, p5, Lt4/k$e;->d:J

    move-object p2, p1

    invoke-direct/range {p2 .. p7}, Lt4/i;-><init>(Ljava/lang/String;JJ)V

    .line 5
    :goto_0
    iput-object p1, p0, Lt4/j$b;->i:Lt4/i;

    .line 6
    iput-object p8, p0, Lt4/j$b;->h:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p8, Lg3/b;

    new-instance p7, Lt4/i;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    const-wide/16 p5, -0x1

    move-object p1, p7

    invoke-direct/range {p1 .. p6}, Lt4/i;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {p8, p7}, Lg3/b;-><init>(Lt4/i;)V

    :goto_1
    iput-object p8, p0, Lt4/j$b;->j:Lg3/b;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt4/j$b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ls4/d;
    .locals 1

    iget-object v0, p0, Lt4/j$b;->j:Lg3/b;

    return-object v0
.end method

.method public final m()Lt4/i;
    .locals 1

    iget-object v0, p0, Lt4/j$b;->i:Lt4/i;

    return-object v0
.end method
