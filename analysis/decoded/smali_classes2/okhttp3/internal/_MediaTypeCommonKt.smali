.class public final Lokhttp3/internal/_MediaTypeCommonKt;
.super Ljava/lang/Object;
.source "-MediaTypeCommon.kt"


# static fields
.field private static final PARAMETER:Lyd/g;

.field private static final QUOTED:Ljava/lang/String; = "\"([^\"]*)\""

.field private static final TOKEN:Ljava/lang/String; = "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

.field private static final TYPE_SUBTYPE:Lyd/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyd/g;

    const-string v1, "([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)"

    invoke-direct {v0, v1}, Lyd/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/_MediaTypeCommonKt;->TYPE_SUBTYPE:Lyd/g;

    .line 2
    new-instance v0, Lyd/g;

    const-string v1, ";\\s*(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&\'*+.^_`{|}~]+)|\"([^\"]*)\"))?"

    invoke-direct {v0, v1}, Lyd/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lokhttp3/internal/_MediaTypeCommonKt;->PARAMETER:Lyd/g;

    return-void
.end method

.method public static final commonEquals(Lokhttp3/MediaType;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokhttp3/MediaType;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/MediaType;

    invoke-virtual {p1}, Lokhttp3/MediaType;->getMediaType$okhttp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/MediaType;->getMediaType$okhttp()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final commonHashCode(Lokhttp3/MediaType;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/MediaType;->getMediaType$okhttp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final commonParameter(Lokhttp3/MediaType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lokhttp3/MediaType;->getParameterNamesAndValues$okhttp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lg7/b;->g(III)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2
    :goto_0
    invoke-virtual {p0}, Lokhttp3/MediaType;->getParameterNamesAndValues$okhttp()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lyd/o;->Z(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lokhttp3/MediaType;->getParameterNamesAndValues$okhttp()[Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    aget-object p0, p0, v1

    return-object p0

    :cond_0
    if-eq v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final commonToMediaType(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/internal/_MediaTypeCommonKt;->TYPE_SUBTYPE:Lyd/g;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lokhttp3/internal/_UtilCommonKt;->matchAtPolyfill(Lyd/g;Ljava/lang/CharSequence;I)Lyd/e;

    move-result-object v0

    const/16 v2, 0x22

    if-eqz v0, :cond_8

    .line 2
    invoke-interface {v0}, Lyd/e;->a()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "ROOT"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {v0}, Lyd/e;->a()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5
    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {v0}, Lyd/e;->c()Lvd/e;

    move-result-object v0

    .line 8
    iget v0, v0, Lvd/c;->i:I

    :goto_0
    add-int/2addr v0, v4

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_7

    .line 10
    sget-object v7, Lokhttp3/internal/_MediaTypeCommonKt;->PARAMETER:Lyd/g;

    invoke-static {v7, p0, v0}, Lokhttp3/internal/_UtilCommonKt;->matchAtPolyfill(Lyd/g;Ljava/lang/CharSequence;I)Lyd/e;

    move-result-object v7

    if-eqz v7, :cond_0

    move v8, v4

    goto :goto_1

    :cond_0
    move v8, v1

    :goto_1
    if-eqz v8, :cond_6

    .line 11
    invoke-interface {v7}, Lyd/e;->b()Lyd/d;

    move-result-object v0

    invoke-interface {v0, v4}, Lyd/d;->get(I)Lyd/c;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v0, Lyd/c;->a:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object v0, v8

    :goto_2
    if-nez v0, :cond_2

    .line 13
    invoke-interface {v7}, Lyd/e;->c()Lvd/e;

    move-result-object v0

    .line 14
    iget v0, v0, Lvd/c;->i:I

    goto :goto_0

    .line 15
    :cond_2
    invoke-interface {v7}, Lyd/e;->b()Lyd/d;

    move-result-object v10

    invoke-interface {v10, v9}, Lyd/d;->get(I)Lyd/c;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 16
    iget-object v8, v10, Lyd/c;->a:Ljava/lang/String;

    :cond_3
    if-nez v8, :cond_4

    .line 17
    invoke-interface {v7}, Lyd/e;->b()Lyd/d;

    move-result-object v8

    const/4 v10, 0x3

    invoke-interface {v8, v10}, Lyd/d;->get(I)Lyd/c;

    move-result-object v8

    invoke-static {v8}, Lp4/h;->g(Ljava/lang/Object;)V

    .line 18
    iget-object v8, v8, Lyd/c;->a:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const-string v10, "\'"

    .line 19
    invoke-static {v8, v10, v1}, Lyd/o;->g0(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 20
    invoke-static {v8, v10, v1}, Lyd/o;->Y(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 21
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v9, :cond_5

    .line 22
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v10, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v8, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    :cond_5
    :goto_3
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-interface {v7}, Lyd/e;->c()Lvd/e;

    move-result-object v0

    .line 26
    iget v0, v0, Lvd/c;->i:I

    goto :goto_0

    :cond_6
    const-string v1, "Parameter is not formatted correctly: \""

    .line 27
    invoke-static {v1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" for: \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_7
    new-instance v0, Lokhttp3/MediaType;

    new-array v1, v1, [Ljava/lang/String;

    .line 31
    invoke-interface {v6, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 32
    invoke-direct {v0, p0, v3, v5, v1}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 33
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No subtype found for: \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final commonToMediaTypeOrNull(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lokhttp3/internal/_MediaTypeCommonKt;->commonToMediaType(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final commonToString(Lokhttp3/MediaType;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/MediaType;->getMediaType$okhttp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
