.class public final Lya/a;
.super Ljava/lang/Object;
.source "AdaptKitControlsRepositories.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lya/a$a;
    }
.end annotation


# static fields
.field public static final a:Lya/a;

.field public static final b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lya/a$a;",
            "Lya/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lya/a;

    invoke-direct {v0}, Lya/a;-><init>()V

    sput-object v0, Lya/a;->a:Lya/a;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lya/a;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lya/a;->b:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lya/b;

    .line 4
    sget-object v2, Lv9/a;->i:Lv9/a$a;

    .line 5
    sget-object v2, Lv9/a;->j:Lv9/a;

    .line 6
    invoke-interface {v1, v2}, Lya/b;->f(Lv9/a;)V

    .line 7
    invoke-interface {v1}, Lya/b;->F()V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lya/a;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final b(Ljava/lang/String;Lea/b;)Lya/b;
    .locals 3

    const-string v0, "pairId"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adaptKitDevice"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lya/a;->b:Ljava/util/LinkedHashMap;

    new-instance v1, Lya/a$a;

    .line 2
    iget-object v2, p2, Lea/b;->j:Ljava/lang/String;

    .line 3
    invoke-direct {v1, p1, v2}, Lya/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lya/d;

    invoke-direct {v2, p1, p2}, Lya/d;-><init>(Ljava/lang/String;Lea/b;)V

    .line 6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    check-cast v2, Lya/b;

    .line 8
    instance-of p1, v2, Lya/d;

    if-eqz p1, :cond_1

    .line 9
    move-object p1, v2

    check-cast p1, Lya/d;

    .line 10
    iput-object p2, p1, Lya/d;->b:Lea/b;

    :cond_1
    return-object v2
.end method
