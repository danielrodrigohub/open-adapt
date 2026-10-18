.class public final Lpb/a;
.super Ljava/lang/Object;
.source "OIDCAuthManagerImpl.kt"


# instance fields
.field public final synthetic a:Lpb/b;


# direct methods
.method public constructor <init>(Lpb/b;)V
    .locals 0

    iput-object p1, p0, Lpb/a;->a:Lpb/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/fragment/app/p;Ljd/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/p;",
            "Ljd/d<",
            "-",
            "Lob/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lpb/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lpb/a$a;

    iget v1, v0, Lpb/a$a;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lpb/a$a;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lpb/a$a;

    invoke-direct {v0, p0, p2}, Lpb/a$a;-><init>(Lpb/a;Ljd/d;)V

    :goto_0
    iget-object p2, v0, Lpb/a$a;->i:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lpb/a$a;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lpb/a$a;->h:Lpb/a;

    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lpb/a;->a:Lpb/b;

    .line 5
    iget-object p2, p2, Lpb/b;->a:Lcc/a;

    .line 6
    iput-object p0, v0, Lpb/a$a;->h:Lpb/a;

    iput v3, v0, Lpb/a$a;->k:I

    invoke-interface {p2, p1, v0}, Lcc/a;->c(Landroidx/fragment/app/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Lob/c;

    iget-object p1, p1, Lpb/a;->a:Lpb/b;

    .line 7
    invoke-virtual {p1}, Lpb/b;->b()Led/e;

    move-result-object p1

    const-string v0, "<this>"

    .line 8
    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetryProvider"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {p2, p1}, Lob/d;->a(Lob/c;Led/e;)Lxb/a;

    move-result-object p1

    invoke-virtual {p1}, Lxb/a;->b()I

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, -0x1

    goto :goto_2

    :cond_4
    sget-object v0, Lpb/c;->a:[I

    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    aget p1, v0, p1

    :goto_2
    if-eq p1, v3, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    .line 10
    new-instance p1, Lob/g$b;

    invoke-direct {p1, p2}, Lob/g$b;-><init>(Lob/b;)V

    goto :goto_3

    .line 11
    :cond_5
    new-instance p1, Lob/g$b;

    invoke-direct {p1, p2}, Lob/g$b;-><init>(Lob/b;)V

    goto :goto_3

    .line 12
    :cond_6
    new-instance p1, Lob/g$b;

    invoke-direct {p1, p2}, Lob/g$b;-><init>(Lob/b;)V

    goto :goto_3

    .line 13
    :cond_7
    new-instance p1, Lob/g$a;

    invoke-direct {p1, p2}, Lob/g$a;-><init>(Lob/b;)V

    goto :goto_3

    .line 14
    :cond_8
    new-instance p1, Lob/g$b;

    invoke-direct {p1, p2}, Lob/g$b;-><init>(Lob/b;)V

    :goto_3
    return-object p1
.end method
