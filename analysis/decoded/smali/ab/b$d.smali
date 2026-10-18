.class public final Lab/b$d;
.super Ljava/lang/Object;
.source "AdaptKitPairedDevicesRepository.kt"

# interfaces
.implements Lta/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lab/b;->i(Lv9/a;Ljava/util/List;Lv9/p0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lta/a<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Lpa/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lea/m;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lv9/a;

.field public final synthetic c:Lv9/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lv9/a;Lv9/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lea/m;",
            ">;",
            "Lv9/a;",
            "Lv9/p0<",
            "Lea/p;",
            "Lea/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lab/b$d;->a:Ljava/util/List;

    iput-object p2, p0, Lab/b$d;->b:Lv9/a;

    iput-object p3, p0, Lab/b$d;->c:Lv9/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    sget-object v0, Lpa/g;->j:Lpa/g;

    const-string v1, "response"

    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lab/b$d;->a:Ljava/util/List;

    invoke-static {v1}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lab/b$d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lea/m;

    .line 5
    iget-object v4, v3, Lea/m;->h:Ljava/lang/String;

    .line 6
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 7
    move-object v4, v1

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_2

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lgd/n;->l0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz v0, :cond_5

    sget-object v0, Lab/b;->b:Lab/b;

    .line 14
    invoke-virtual {v0}, Lab/b;->h()Ldb/a;

    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Ldb/a;->a(Ljava/util/List;)V

    .line 16
    :cond_5
    sget-object p1, Lab/b;->b:Lab/b;

    .line 17
    invoke-virtual {p1}, Lab/b;->g()Lpa/e;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lab/b$d;->b:Lv9/a;

    iget-object v2, p0, Lab/b$d;->c:Lv9/p0;

    .line 19
    new-instance v3, Lab/h;

    invoke-direct {v3, v2, v0}, Lab/h;-><init>(Lv9/p0;Lv9/a;)V

    .line 20
    invoke-interface {p1, v1, v3}, Lpa/e;->d(Ljava/util/List;Lta/a;)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Lab/b$d;->c:Lv9/p0;

    new-instance v1, Lea/o;

    iget-object v2, p0, Lab/b$d;->b:Lv9/a;

    invoke-direct {v1, v2, p1}, Lea/o;-><init>(Lv9/a;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lv9/p0;->b(Lv9/m;)V

    return-void
.end method
