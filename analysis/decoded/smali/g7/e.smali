.class public final Lg7/e;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Le7/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Z

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le7/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Le7/i<",
            "*>;>;Z",
            "Ljava/util/List<",
            "Le7/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg7/e;->a:Ljava/util/Map;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lg7/e;->b:Z

    .line 4
    iput-object p2, p0, Lg7/e;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ll7/a;)Lg7/q;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ll7/a<",
            "TT;>;)",
            "Lg7/q<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ll7/a;->b:Ljava/lang/reflect/Type;

    .line 2
    iget-object p1, p1, Ll7/a;->a:Ljava/lang/Class;

    .line 3
    iget-object v1, p0, Lg7/e;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7/i;

    if-eqz v1, :cond_0

    .line 4
    new-instance p1, Lg7/e$a;

    invoke-direct {p1, v1, v0}, Lg7/e$a;-><init>(Le7/i;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 5
    :cond_0
    iget-object v1, p0, Lg7/e;->a:Ljava/util/Map;

    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le7/i;

    if-eqz v1, :cond_1

    .line 7
    new-instance p1, Lg7/e$b;

    invoke-direct {p1, v1, v0}, Lg7/e$b;-><init>(Le7/i;Ljava/lang/reflect/Type;)V

    return-object p1

    .line 8
    :cond_1
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Lg7/g;

    invoke-direct {v1, v0}, Lg7/g;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 10
    :cond_2
    const-class v1, Ljava/util/EnumMap;

    if-ne p1, v1, :cond_3

    .line 11
    new-instance v1, Lg7/h;

    invoke-direct {v1, v0}, Lg7/h;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    return-object v1

    .line 12
    :cond_4
    iget-object v1, p0, Lg7/e;->c:Ljava/util/List;

    invoke-static {v1, p1}, Lg7/r;->a(Ljava/util/List;Ljava/lang/Class;)I

    move-result v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    goto/16 :goto_5

    :cond_5
    :try_start_0
    new-array v3, v4, [Ljava/lang/Class;

    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v1, v5, :cond_7

    .line 15
    sget-object v6, Lg7/r$a;->a:Lg7/r$a;

    invoke-virtual {v6, v3, v2}, Lg7/r$a;->a(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    if-ne v1, v6, :cond_7

    .line 16
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    move v6, v4

    goto :goto_2

    :cond_7
    :goto_1
    move v6, v5

    :goto_2
    if-nez v6, :cond_8

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to invoke no-args constructor of "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 18
    new-instance v6, Lg7/i;

    invoke-direct {v6, v3}, Lg7/i;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    if-ne v1, v5, :cond_b

    .line 19
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v2

    goto :goto_4

    :catch_0
    move-exception v6

    const-string v7, "Failed making constructor \'"

    .line 20
    invoke-static {v7}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 21
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x23

    .line 22
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x28

    .line 24
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    move v10, v4

    .line 26
    :goto_3
    array-length v11, v9

    if-ge v10, v11, :cond_a

    if-lez v10, :cond_9

    const-string v11, ", "

    .line 27
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    :cond_9
    aget-object v11, v9, v10

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    const/16 v9, 0x29

    .line 29
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' accessible; either change its visibility or write a custom InstanceCreator or TypeAdapter for its declaring type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    if-eqz v6, :cond_b

    .line 32
    new-instance v3, Lg7/j;

    invoke-direct {v3, v6}, Lg7/j;-><init>(Ljava/lang/String;)V

    move-object v6, v3

    goto :goto_6

    .line 33
    :cond_b
    new-instance v6, Lg7/k;

    invoke-direct {v6, v3}, Lg7/k;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_6

    :catch_1
    :goto_5
    move-object v6, v2

    :goto_6
    if-eqz v6, :cond_c

    return-object v6

    .line 34
    :cond_c
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 35
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 36
    new-instance v2, Lg7/b;

    invoke-direct {v2}, Lg7/b;-><init>()V

    goto/16 :goto_7

    .line 37
    :cond_d
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    new-instance v2, Lg7/c;

    invoke-direct {v2}, Lg7/c;-><init>()V

    goto/16 :goto_7

    .line 39
    :cond_e
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 40
    new-instance v2, Landroidx/lifecycle/o;

    invoke-direct {v2}, Landroidx/lifecycle/o;-><init>()V

    goto :goto_7

    .line 41
    :cond_f
    new-instance v2, Landroidx/appcompat/widget/p;

    invoke-direct {v2}, Landroidx/appcompat/widget/p;-><init>()V

    goto :goto_7

    .line 42
    :cond_10
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 43
    const-class v2, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 44
    new-instance v2, Lp4/h;

    invoke-direct {v2}, Lp4/h;-><init>()V

    goto :goto_7

    .line 45
    :cond_11
    const-class v2, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 46
    new-instance v2, Lm6/e;

    invoke-direct {v2}, Lm6/e;-><init>()V

    goto :goto_7

    .line 47
    :cond_12
    const-class v2, Ljava/util/SortedMap;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 48
    new-instance v2, Landroidx/lifecycle/k0;

    invoke-direct {v2}, Landroidx/lifecycle/k0;-><init>()V

    goto :goto_7

    .line 49
    :cond_13
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_14

    const-class v2, Ljava/lang/String;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 50
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v4

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {v0}, Lg7/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 53
    invoke-static {v0}, Lg7/a;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 56
    new-instance v2, Landroidx/lifecycle/m0;

    invoke-direct {v2}, Landroidx/lifecycle/m0;-><init>()V

    goto :goto_7

    .line 57
    :cond_14
    new-instance v2, Ld3/e;

    invoke-direct {v2}, Ld3/e;-><init>()V

    :cond_15
    :goto_7
    if-eqz v2, :cond_16

    return-object v2

    .line 58
    :cond_16
    invoke-static {p1}, Lg7/x;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 59
    new-instance p1, Lg7/e$c;

    invoke-direct {p1, v0}, Lg7/e$c;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_17
    const-string v0, "Unable to create instance of "

    if-ne v1, v5, :cond_19

    .line 60
    iget-boolean v1, p0, Lg7/e;->b:Z

    if-eqz v1, :cond_18

    .line 61
    new-instance v0, Lg7/d;

    invoke-direct {v0, p1}, Lg7/d;-><init>(Ljava/lang/Class;)V

    goto :goto_8

    .line 62
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    new-instance v0, Lg7/f;

    invoke-direct {v0, p1}, Lg7/f;-><init>(Ljava/lang/String;)V

    :goto_8
    return-object v0

    .line 64
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    new-instance v0, Lg7/e$d;

    invoke-direct {v0, p1}, Lg7/e$d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg7/e;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
