.class public final Lxb/b;
.super Ljava/lang/Object;
.source "JWT.kt"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lxb/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v0, "token"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "."

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lyd/s;->B0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    .line 3
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    check-cast v1, [Ljava/lang/String;

    .line 5
    array-length v3, v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 6
    invoke-static {p1, v0, v2}, Lyd/o;->Y(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v4, [Ljava/lang/String;

    .line 7
    aget-object v0, v1, v2

    aput-object v0, p1, v2

    aget-object v0, v1, v5

    aput-object v0, p1, v5

    const-string v0, ""

    aput-object v0, p1, v6

    move-object v1, p1

    .line 8
    :cond_0
    array-length p1, v1

    if-ne p1, v4, :cond_1

    .line 9
    aget-object p1, v1, v2

    invoke-virtual {p0, p1}, Lxb/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    const-class v0, Ljava/lang/String;

    :try_start_0
    sget-object v2, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 11
    invoke-static {v0}, Lrd/x;->b(Ljava/lang/Class;)Lwd/g;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/serialization/SerializersKt;->serializer(Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v0}, Lrd/x;->b(Ljava/lang/Class;)Lwd/g;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/SerializersKt;->serializer(Lwd/g;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 12
    invoke-static {v3, v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->MapSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-virtual {v2, v0, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    iput-object p1, p0, Lxb/b;->a:Ljava/util/Map;

    .line 14
    aget-object p1, v1, v5

    invoke-virtual {p0, p1}, Lxb/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    :try_start_1
    new-instance v0, Lxb/c;

    invoke-direct {v0, p1}, Lxb/c;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    iput-object v0, p0, Lxb/b;->b:Lxb/c;

    .line 17
    aget-object p1, v1, v6

    return-void

    :catchall_0
    move-exception p1

    .line 18
    new-instance v0, Lob/e$e;

    const-string v1, "The token\'s payload had an invalid JSON format."

    invoke-direct {v0, v1, p1}, Lob/e$e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_1
    move-exception p1

    .line 19
    new-instance v0, Lob/e$e;

    const-string v1, "The token\'s header had an invalid JSON format."

    invoke-direct {v0, v1, p1}, Lob/e$e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 20
    :cond_1
    new-instance p1, Lob/e$e;

    const-string v0, "The token was expected to have 3 parts, but got "

    .line 21
    invoke-static {v0}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    array-length v1, v1

    const/16 v2, 0x2e

    .line 23
    invoke-static {v0, v1, v2}, La0/b;->b(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    invoke-direct {p1, v0, v1}, Lob/e$e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xb

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v0, "bytes"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "defaultCharset()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Lob/e$e;

    const-string v1, "Received bytes didn\'t correspond to a valid Base64 encoded string."

    invoke-direct {v0, v1, p1}, Lob/e$e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxb/b;->b:Lxb/c;

    .line 2
    iget-object v0, v0, Lxb/c;->d:Lkotlinx/serialization/json/JsonObject;

    .line 3
    invoke-static {v0}, Lgd/z;->E(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
