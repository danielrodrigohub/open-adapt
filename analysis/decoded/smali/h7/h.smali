.class public final Lh7/h;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Le7/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/h$a;
    }
.end annotation


# instance fields
.field public final h:Lg7/e;

.field public final i:Z


# direct methods
.method public constructor <init>(Lg7/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh7/h;->h:Lg7/e;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lh7/h;->i:Z

    return-void
.end method


# virtual methods
.method public final a(Le7/h;Ll7/a;)Le7/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le7/h;",
            "Ll7/a<",
            "TT;>;)",
            "Le7/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v1, p2, Ll7/a;->b:Ljava/lang/reflect/Type;

    .line 2
    iget-object v3, p2, Ll7/a;->a:Ljava/lang/Class;

    .line 3
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    const-class v4, Ljava/lang/Object;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/util/Properties;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v6, :cond_1

    new-array v1, v7, [Ljava/lang/reflect/Type;

    aput-object v5, v1, v8

    aput-object v5, v1, v9

    goto :goto_0

    .line 5
    :cond_1
    const-class v5, Ljava/util/Map;

    invoke-static {v1, v3, v5}, Lg7/a;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 6
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    .line 7
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 8
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-array v1, v7, [Ljava/lang/reflect/Type;

    aput-object v4, v1, v8

    aput-object v4, v1, v9

    .line 9
    :goto_0
    aget-object v3, v1, v8

    .line 10
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_4

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance v4, Ll7/a;

    invoke-direct {v4, v3}, Ll7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 12
    invoke-virtual {p1, v4}, Le7/h;->f(Ll7/a;)Le7/x;

    move-result-object v3

    goto :goto_2

    .line 13
    :cond_4
    :goto_1
    sget-object v3, Lh7/q;->f:Lh7/q$y;

    :goto_2
    move-object v4, v3

    .line 14
    aget-object v3, v1, v9

    .line 15
    new-instance v5, Ll7/a;

    invoke-direct {v5, v3}, Ll7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 16
    invoke-virtual {p1, v5}, Le7/h;->f(Ll7/a;)Le7/x;

    move-result-object v6

    .line 17
    iget-object v3, p0, Lh7/h;->h:Lg7/e;

    invoke-virtual {v3, p2}, Lg7/e;->a(Ll7/a;)Lg7/q;

    move-result-object v7

    .line 18
    new-instance v10, Lh7/h$a;

    aget-object v3, v1, v8

    aget-object v5, v1, v9

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lh7/h$a;-><init>(Lh7/h;Le7/h;Ljava/lang/reflect/Type;Le7/x;Ljava/lang/reflect/Type;Le7/x;Lg7/q;)V

    return-object v10
.end method
