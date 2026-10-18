.class public final Lh7/b;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Le7/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh7/b$a;
    }
.end annotation


# instance fields
.field public final h:Lg7/e;


# direct methods
.method public constructor <init>(Lg7/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh7/b;->h:Lg7/e;

    return-void
.end method


# virtual methods
.method public final a(Le7/h;Ll7/a;)Le7/x;
    .locals 3
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
    iget-object v0, p2, Ll7/a;->b:Ljava/lang/reflect/Type;

    .line 2
    iget-object v1, p2, Ll7/a;->a:Ljava/lang/Class;

    .line 3
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    const-class v2, Ljava/util/Collection;

    invoke-static {v0, v1, v2}, Lg7/a;->g(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 5
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    .line 7
    :cond_1
    const-class v0, Ljava/lang/Object;

    .line 8
    :goto_0
    new-instance v1, Ll7/a;

    invoke-direct {v1, v0}, Ll7/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 9
    invoke-virtual {p1, v1}, Le7/h;->f(Ll7/a;)Le7/x;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lh7/b;->h:Lg7/e;

    invoke-virtual {v2, p2}, Lg7/e;->a(Ll7/a;)Lg7/q;

    move-result-object p2

    .line 11
    new-instance v2, Lh7/b$a;

    invoke-direct {v2, p1, v0, v1, p2}, Lh7/b$a;-><init>(Le7/h;Ljava/lang/reflect/Type;Le7/x;Lg7/q;)V

    return-object v2
.end method
