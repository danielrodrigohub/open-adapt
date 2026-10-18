.class public final Lpb/b;
.super Ljava/lang/Object;
.source "OIDCAuthManagerImpl.kt"

# interfaces
.implements Lob/f;


# instance fields
.field public final a:Lcc/a;


# direct methods
.method public constructor <init>(Lcc/a;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpb/b;->a:Lcc/a;

    .line 2
    invoke-virtual {p0}, Lpb/b;->b()Led/e;

    move-result-object p1

    const-string v0, "<this>"

    .line 3
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Led/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1f

    .line 5
    invoke-static {v1, v1, v1, v2, v3}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v5

    .line 6
    sget-object v2, Lec/a;->a:Lec/a;

    .line 7
    invoke-virtual {v2, v1}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v2, 0x3

    const-string v3, "Manager_Initialized"

    const-string v4, "OIDCAuthManager initialized"

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v6}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 9
    invoke-interface {p1, v0}, Led/e;->b(Landroid/support/v4/media/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lob/h;
    .locals 1

    iget-object v0, p0, Lpb/b;->a:Lcc/a;

    invoke-interface {v0}, Lcc/a;->e()Lob/h;

    move-result-object v0

    return-object v0
.end method

.method public final b()Led/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lpb/b;->a:Lcc/a;

    invoke-interface {v0}, Lcc/a;->d()Lob/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lob/a;->a:Lob/a$a;

    .line 3
    invoke-interface {v0}, Lob/a$a;->f()Led/e;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljd/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lpb/b$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lpb/b$a;

    iget v1, v0, Lpb/b$a;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lpb/b$a;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lpb/b$a;

    invoke-direct {v0, p0, p1}, Lpb/b$a;-><init>(Lpb/b;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lpb/b$a;->i:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lpb/b$a;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lpb/b$a;->h:Lpb/b;

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lpb/b;->a:Lcc/a;

    .line 5
    iput-object p0, v0, Lpb/b$a;->h:Lpb/b;

    iput v3, v0, Lpb/b$a;->k:I

    invoke-interface {p1, v0}, Lcc/a;->f(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    invoke-virtual {v0}, Lpb/b;->b()Led/e;

    move-result-object p1

    const-string v0, "<this>"

    .line 7
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Led/b;

    const/4 v5, 0x3

    const/16 v1, 0x1f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 9
    invoke-static {v2, v2, v2, v4, v1}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v8

    .line 10
    sget-object v1, Lec/a;->a:Lec/a;

    const/4 v2, 0x2

    new-array v2, v2, [Led/d;

    .line 11
    sget-object v6, Lec/a;->e:Led/d;

    aput-object v6, v2, v4

    .line 12
    sget-object v4, Lec/a;->i:Led/d;

    aput-object v4, v2, v3

    .line 13
    invoke-static {v2}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    const-string v6, "Signed_Out"

    const-string v7, "User signed out"

    move-object v4, v0

    .line 14
    invoke-direct/range {v4 .. v9}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 15
    invoke-interface {p1, v0}, Led/e;->b(Landroid/support/v4/media/a;)V

    .line 16
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
