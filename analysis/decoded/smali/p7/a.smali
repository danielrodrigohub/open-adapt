.class public final Lp7/a;
.super Ljava/lang/Object;
.source "AssetsRequester.kt"


# static fields
.field public static final a:Lp7/a;

.field public static final b:Lfd/d;

.field public static c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lp7/a;

    invoke-direct {v0}, Lp7/a;-><init>()V

    sput-object v0, Lp7/a;->a:Lp7/a;

    .line 1
    sget-object v0, Lp7/a$a;->h:Lp7/a$a;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Landroidx/lifecycle/o;->w(ILqd/a;)Lfd/d;

    move-result-object v0

    sput-object v0, Lp7/a;->b:Lfd/d;

    const/4 v0, 0x4

    .line 2
    sput v0, Lp7/a;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lh8/a;
    .locals 1

    sget-object v0, Lp7/a;->b:Lfd/d;

    invoke-interface {v0}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh8/a;

    return-object v0
.end method


# virtual methods
.method public final b(Ljd/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/network/assets/model/Manifest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lp7/a$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lp7/a$b;

    iget v1, v0, Lp7/a$b;->k:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lp7/a$b;->k:I

    goto :goto_0

    :cond_0
    new-instance v0, Lp7/a$b;

    invoke-direct {v0, p0, p1}, Lp7/a$b;-><init>(Lp7/a;Ljd/d;)V

    :goto_0
    iget-object p1, v0, Lp7/a$b;->i:Ljava/lang/Object;

    sget-object v1, Lkd/a;->h:Lkd/a;

    .line 1
    iget v2, v0, Lp7/a$b;->k:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lp7/a$b;->h:Lp7/a;

    :try_start_0
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_2

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
    sget-object p1, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {p1}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_5

    const/4 p1, 0x3

    goto :goto_1

    :cond_5
    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_6

    const/4 p1, 0x4

    goto :goto_1

    :cond_6
    const/4 p1, 0x5

    .line 5
    :goto_1
    sput p1, Lp7/a;->c:I

    const-wide/16 v4, 0xbb8

    .line 6
    :try_start_1
    new-instance p1, Lp7/a$c;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lp7/a$c;-><init>(Ljd/d;)V

    iput-object p0, v0, Lp7/a$b;->h:Lp7/a;

    iput v3, v0, Lp7/a$b;->k:I

    invoke-static {v4, v5, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout(JLqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p0

    :goto_2
    :try_start_2
    check-cast p1, Lcom/nike/adapt/network/assets/model/Manifest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-object v0, p0

    .line 7
    :catchall_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Lp7/a;->b:Lfd/d;

    invoke-interface {p1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh8/a;

    .line 9
    invoke-interface {p1}, Lh8/a;->K()Lcom/nike/adapt/network/assets/model/Manifest;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method public final c(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "assetUrlMap"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lp7/a;->c:I

    .line 2
    invoke-static {v0}, Landroidx/appcompat/widget/e0;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    sget v0, Lp7/a;->c:I

    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    .line 5
    invoke-static {v1}, Lq/g;->b(I)[I

    move-result-object v2

    .line 6
    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 7
    invoke-static {v1}, Lq/g;->b(I)[I

    move-result-object v2

    .line 8
    aget v0, v2, v0

    .line 9
    invoke-static {v0}, Landroidx/appcompat/widget/e0;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object v0

    .line 11
    :cond_1
    sget v0, Lp7/a;->c:I

    invoke-static {v0}, Lq/g;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 12
    invoke-static {v1}, Lq/g;->b(I)[I

    move-result-object v1

    .line 13
    aget v0, v1, v0

    .line 14
    invoke-static {v0}, Landroidx/appcompat/widget/e0;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lp7/a;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Lt7/b;->a:Lt7/b$a;

    invoke-virtual {p2}, Lt7/b$a;->a()Lt7/b;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lt7/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
