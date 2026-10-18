.class public final Lkotlinx/serialization/internal/PrimitivesKt;
.super Ljava/lang/Object;
.source "Primitives.kt"


# static fields
.field private static final BUILTIN_SERIALIZERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lwd/b<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/serialization/KSerializer<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x12

    new-array v0, v0, [Lfd/e;

    .line 1
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v1

    sget-object v2, Lrd/a0;->a:Lrd/a0;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lrd/a0;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    .line 2
    new-instance v3, Lfd/e;

    invoke-direct {v3, v1, v2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    .line 3
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 4
    sget-object v3, Lrd/e;->a:Lrd/e;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lrd/e;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 5
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x2

    .line 6
    const-class v2, [C

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 7
    invoke-static {}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->CharArraySerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 8
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x3

    .line 9
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 10
    sget-object v3, Lrd/i;->a:Lrd/i;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lrd/i;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 11
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x4

    .line 12
    const-class v2, [D

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 13
    invoke-static {}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->DoubleArraySerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 14
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x5

    .line 15
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 16
    sget-object v3, Lrd/j;->a:Lrd/j;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lrd/j;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 17
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x6

    .line 18
    const-class v2, [F

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 19
    invoke-static {}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->FloatArraySerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 20
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x7

    .line 21
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 22
    sget-object v3, Lrd/p;->a:Lrd/p;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lrd/p;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 23
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x8

    .line 24
    const-class v2, [J

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 25
    invoke-static {}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->LongArraySerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 26
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x9

    .line 27
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 28
    sget-object v3, Lrd/n;->a:Lrd/n;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lrd/n;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 29
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xa

    .line 30
    const-class v2, [I

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 31
    invoke-static {}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->IntArraySerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 32
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xb

    .line 33
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 34
    sget-object v3, Lrd/z;->a:Lrd/z;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lrd/z;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 35
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xc

    .line 36
    const-class v2, [S

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 37
    invoke-static {}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->ShortArraySerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 38
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xd

    .line 39
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 40
    sget-object v3, Lrd/c;->a:Lrd/c;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lrd/c;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 41
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xe

    .line 42
    const-class v2, [B

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 43
    invoke-static {}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->ByteArraySerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 44
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0xf

    .line 45
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 46
    sget-object v3, Lrd/b;->a:Lrd/b;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lrd/b;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 47
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x10

    .line 48
    const-class v2, [Z

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 49
    invoke-static {}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->BooleanArraySerializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 50
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/16 v1, 0x11

    .line 51
    const-class v2, Lfd/o;

    invoke-static {v2}, Lrd/x;->a(Ljava/lang/Class;)Lwd/b;

    move-result-object v2

    .line 52
    sget-object v3, Lfd/o;->a:Lfd/o;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lfd/o;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    .line 53
    new-instance v4, Lfd/e;

    invoke-direct {v4, v2, v3}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    .line 54
    invoke-static {v0}, Lgd/z;->z([Lfd/e;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/internal/PrimitivesKt;->BUILTIN_SERIALIZERS:Ljava/util/Map;

    return-void
.end method

.method public static final PrimitiveDescriptorSafe(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    const-string v0, "serialName"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlinx/serialization/internal/PrimitivesKt;->checkName(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/descriptors/PrimitiveKind;)V

    return-object v0
.end method

.method public static final builtinSerializerOrNull(Lwd/b;)Lkotlinx/serialization/KSerializer;
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

    sget-object v0, Lkotlinx/serialization/internal/PrimitivesKt;->BUILTIN_SERIALIZERS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    return-object p0
.end method

.method private static final capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v4, v5}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v4, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v1, :cond_2

    const/16 v6, 0x149

    if-ne v3, v6, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v3, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 6
    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private static final checkName(Ljava/lang/String;)V
    .locals 14

    .line 1
    sget-object v0, Lkotlinx/serialization/internal/PrimitivesKt;->BUILTIN_SERIALIZERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwd/b;

    .line 3
    invoke-interface {v1}, Lwd/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lp4/h;->g(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlinx/serialization/internal/PrimitivesKt;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "kotlin."

    .line 4
    invoke-static {v2, v1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {p0, v2}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0, v1}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "\n                The name of serial descriptor should uniquely identify associated serializer.\n                For serial name "

    const-string v3, " there already exist "

    .line 7
    invoke-static {v2, p0, v3}, La4/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 8
    invoke-static {v1}, Lkotlinx/serialization/internal/PrimitivesKt;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Serializer.\n                Please refer to SerialDescriptor documentation for additional information.\n            "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "<this>"

    .line 10
    invoke-static {p0, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lyd/s;->t0(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    .line 14
    invoke-static {v7}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v6, v7

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lgd/j;->T(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 17
    check-cast v5, Ljava/lang/String;

    .line 18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    :goto_2
    const/4 v9, -0x1

    if-ge v7, v8, :cond_5

    .line 19
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 20
    invoke-static {v10}, Ld3/e;->m(C)Z

    move-result v10

    xor-int/2addr v10, v6

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move v7, v9

    :goto_3
    if-ne v7, v9, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 21
    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_8

    move-object v4, v5

    goto :goto_5

    .line 24
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    .line 25
    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Comparable;

    .line 27
    invoke-interface {v4, v8}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_9

    move-object v4, v8

    goto :goto_4

    .line 28
    :cond_a
    :goto_5
    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    .line 29
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_6

    :cond_b
    move v3, v7

    .line 30
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v4, v7

    add-int/2addr v4, p0

    invoke-static {}, Lyd/k;->T()Lqd/l;

    move-result-object p0

    .line 31
    invoke-static {v2}, Landroidx/lifecycle/o;->p(Ljava/util/List;)I

    move-result v8

    .line 32
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v10, v7

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-ltz v10, :cond_13

    .line 34
    check-cast v11, Ljava/lang/String;

    if-eqz v10, :cond_c

    if-ne v10, v8, :cond_d

    .line 35
    :cond_c
    invoke-static {v11}, Lyd/o;->b0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    move-object v11, v5

    goto :goto_a

    .line 36
    :cond_d
    invoke-static {v11, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz v3, :cond_e

    move v10, v6

    goto :goto_8

    :cond_e
    move v10, v7

    :goto_8
    if-eqz v10, :cond_12

    .line 37
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    if-le v3, v10, :cond_f

    goto :goto_9

    :cond_f
    move v10, v3

    :goto_9
    invoke-virtual {v11, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v13, "this as java.lang.String).substring(startIndex)"

    invoke-static {v10, v13}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p0, v10}, Lqd/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 39
    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_10

    goto :goto_a

    :cond_10
    move-object v11, v10

    :goto_a
    if-eqz v11, :cond_11

    .line 40
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    move v10, v12

    goto :goto_7

    :cond_12
    const-string p0, "Requested character count "

    const-string v0, " is less than zero."

    .line 41
    invoke-static {p0, v3, v0}, La0/d;->b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_13
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    throw v5

    .line 44
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v9, p0}, Lgd/n;->c0(Ljava/lang/Iterable;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {p0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    return-void
.end method
