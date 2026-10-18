.class public final Lx7/b;
.super Ljava/lang/Object;
.source "ManifestApi.kt"

# interfaces
.implements Lx7/a;


# static fields
.field public static final b:Lx7/b;

.field public static final c:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx7/b;

    invoke-direct {v0}, Lx7/b;-><init>()V

    sput-object v0, Lx7/b;->b:Lx7/b;

    sget-object v0, Lx7/b$a;->h:Lx7/b$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lx7/b;->c:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/network/assets/model/Manifest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lx7/b$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lx7/b$b;

    iget v1, v0, Lx7/b$b;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx7/b$b;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx7/b$b;

    invoke-direct {v0, p0, p2}, Lx7/b$b;-><init>(Lx7/b;Ljd/d;)V

    :goto_0
    move-object v5, v0

    iget-object p2, v5, Lx7/b$b;->h:Ljava/lang/Object;

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, v5, Lx7/b$b;->j:I

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    if-eq v1, p1, :cond_2

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :try_start_1
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 4
    check-cast p2, Lcom/nike/adapt/network/assets/model/Manifest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 5
    :cond_3
    invoke-static {p2}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 6
    :try_start_2
    sget-object p2, Lx7/b;->c:Lfd/h;

    invoke-virtual {p2}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/nike/adapt/network/assets/ManifestServiceApi;

    const-string p2, "prod"

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 7
    iput v2, v5, Lx7/b$b;->j:I

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v1 .. v7}, Lcom/nike/adapt/network/assets/ManifestServiceApi$a;->a(Lcom/nike/adapt/network/assets/ManifestServiceApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p2, Lcom/nike/adapt/network/assets/model/Manifest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 8
    :catchall_0
    new-instance p2, Lcom/nike/adapt/network/assets/model/Manifest;

    const/4 p1, 0x3

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, p1, v0}, Lcom/nike/adapt/network/assets/model/Manifest;-><init>(Lcom/nike/adapt/network/assets/model/Configuration;Ljava/util/List;ILrd/h;)V

    :goto_2
    return-object p2
.end method
