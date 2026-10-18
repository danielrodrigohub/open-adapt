.class final synthetic Lkotlinx/serialization/SerializersKt__SerializersKt;
.super Ljava/lang/Object;
.source "Serializers.kt"


# direct methods
.method private static final builtinSerializer$SerializersKt__SerializersKt(Lkotlinx/serialization/modules/SerializersModule;Ljava/util/List;Lwd/b;Z)Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Ljava/util/List<",
            "+",
            "Lwd/g;",
            ">;",
            "Lwd/b<",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lkotlinx/serialization/KSerializer<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lwd/g;

    .line 4
    invoke-static {p0, v1}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lwd/g;

    .line 8
    invoke-static {p0, v1}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    const-class v0, Ljava/util/Collection;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    const-class v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    goto/16 :goto_9

    .line 10
    :cond_6
    const-class v0, Ljava/util/HashSet;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p0, Lkotlinx/serialization/internal/HashSetSerializer;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/HashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    goto/16 :goto_9

    .line 11
    :cond_7
    const-class v0, Ljava/util/Set;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_5

    :cond_8
    const-class v0, Ljava/util/Set;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_6

    :cond_9
    const-class v0, Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_a

    new-instance p0, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    goto/16 :goto_9

    .line 12
    :cond_a
    const-class v0, Ljava/util/HashMap;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p0, Lkotlinx/serialization/internal/HashMapSerializer;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/KSerializer;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/HashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    goto/16 :goto_9

    .line 13
    :cond_b
    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_7

    :cond_c
    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_8

    :cond_d
    const-class v0, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    if-eqz v0, :cond_e

    new-instance p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    .line 14
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    .line 15
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/KSerializer;

    .line 16
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    goto/16 :goto_9

    .line 17
    :cond_e
    const-class v0, Ljava/util/Map$Entry;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-static {p0, p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->MapEntrySerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    goto/16 :goto_9

    .line 18
    :cond_f
    const-class v0, Lfd/e;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-static {p0, p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->PairSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    goto :goto_9

    .line 19
    :cond_10
    const-class v0, Lfd/i;

    invoke-static {v0}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v0

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    const/4 p2, 0x2

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/KSerializer;

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->TripleSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    goto :goto_9

    .line 20
    :cond_11
    invoke-static {p2}, Lkotlinx/serialization/internal/PlatformKt;->isReferenceArray(Lwd/b;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwd/g;

    invoke-interface {p0}, Lwd/g;->c()Lwd/b;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>"

    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/KSerializer;

    invoke-static {p0, p1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->ArraySerializer(Lwd/b;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :cond_12
    new-array p1, v2, [Lkotlinx/serialization/KSerializer;

    .line 22
    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    check-cast p1, [Lkotlinx/serialization/KSerializer;

    .line 24
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lkotlinx/serialization/KSerializer;

    invoke-static {p2, p1}, Lkotlinx/serialization/internal/PlatformKt;->constructSerializerForGivenTypeArgs(Lwd/b;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-nez p1, :cond_13

    .line 25
    invoke-static {p0, p2, p3}, Lkotlinx/serialization/SerializersKt;->reflectiveOrContextual(Lkotlinx/serialization/modules/SerializersModule;Lwd/b;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    goto :goto_9

    :cond_13
    move-object p0, p1

    :goto_9
    return-object p0
.end method

.method private static final nullable$SerializersKt__SerializersKt(Lkotlinx/serialization/KSerializer;Z)Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;Z)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final reflectiveOrContextual(Lkotlinx/serialization/modules/SerializersModule;Lwd/b;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lwd/b<",
            "TT;>;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeArgumentsSerializers"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lwd/b;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/modules/SerializersModule;->getContextual(Lwd/b;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final serializer(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lwd/g;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializerByKTypeImpl$SerializersKt__SerializersKt(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/internal/Platform_commonKt;->kclass(Lwd/g;)Lwd/b;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lkotlinx/serialization/internal/PlatformKt;->platformSpecificSerializerNotRegistered(Lwd/b;)Ljava/lang/Void;

    new-instance p0, Lfd/b;

    invoke-direct {p0}, Lfd/b;-><init>()V

    throw p0
.end method

.method public static final serializer(Lwd/g;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwd/g;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleKt;->getEmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlinx/serialization/SerializersKt;->serializer(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method private static final serializerByKTypeImpl$SerializersKt__SerializersKt(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;Z)Lkotlinx/serialization/KSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lwd/g;",
            "Z)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlinx/serialization/internal/Platform_commonKt;->kclass(Lwd/g;)Lwd/b;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lwd/g;->b()Z

    move-result v1

    .line 3
    invoke-interface {p1}, Lwd/g;->a()Ljava/util/List;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lwd/h;

    .line 7
    iget-object v4, v4, Lwd/h;->b:Lwd/g;

    if-eqz v4, :cond_0

    .line 8
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "Star projections in type arguments are not allowed, but had "

    invoke-static {p0, p1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lwd/b;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    if-nez p1, :cond_3

    const/4 p1, 0x2

    invoke-static {p0, v0, v2, p1, v2}, Lkotlinx/serialization/modules/SerializersModule;->getContextual$default(Lkotlinx/serialization/modules/SerializersModule;Lwd/b;Ljava/util/List;ILjava/lang/Object;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p0, v3, v0, p2}, Lkotlinx/serialization/SerializersKt__SerializersKt;->builtinSerializer$SerializersKt__SerializersKt(Lkotlinx/serialization/modules/SerializersModule;Ljava/util/List;Lwd/b;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    move-object p1, v2

    :cond_4
    if-nez p1, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    invoke-static {p1, v1}, Lkotlinx/serialization/SerializersKt__SerializersKt;->nullable$SerializersKt__SerializersKt(Lkotlinx/serialization/KSerializer;Z)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method public static final serializerOrNull(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/modules/SerializersModule;",
            "Lwd/g;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lkotlinx/serialization/SerializersKt__SerializersKt;->serializerByKTypeImpl$SerializersKt__SerializersKt(Lkotlinx/serialization/modules/SerializersModule;Lwd/g;Z)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final serializerOrNull(Lwd/b;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lwd/b<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lkotlinx/serialization/internal/PlatformKt;->compiledSerializerImpl(Lwd/b;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlinx/serialization/internal/PrimitivesKt;->builtinSerializerOrNull(Lwd/b;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    :cond_0
    return-object v0
.end method
