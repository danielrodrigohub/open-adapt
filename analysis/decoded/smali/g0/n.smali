.class public Lg0/n;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Lw7/a;


# static fields
.field public static b:Z

.field public static final c:Lg0/n;

.field public static d:Lcom/nike/adapt/network/identity/AdaptIdentityServiceApi;

.field public static e:Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;

.field public static f:Lcom/nike/adapt/network/dataopt/datastream/NspStreamServiceApi;

.field public static g:Lcom/nike/adapt/network/assets/ManifestServiceApi;

.field public static h:Lcom/nike/adapt/network/deleteAccount/DeleteAccountServiceApi;

.field public static i:Lokhttp3/OkHttpClient;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg0/n;

    invoke-direct {v0}, Lg0/n;-><init>()V

    sput-object v0, Lg0/n;->c:Lg0/n;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static b(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Ljava/util/List;

    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    .line 6
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 7
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0
.end method

.method public static d(Ljava/util/List;Lt6/i;II)V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-le v0, p3, :cond_1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lt6/i;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, -0x1

    if-lt p3, p2, :cond_2

    .line 4
    invoke-interface {p0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 10

    const-string v0, "baseUrl"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_a

    .line 1
    new-instance p3, Lretrofit2/Retrofit$Builder;

    invoke-direct {p3}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 2
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p3, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p3

    .line 3
    invoke-virtual {p3, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 4
    sget-object p3, Lg0/n;->i:Lokhttp3/OkHttpClient;

    if-nez p3, :cond_9

    .line 5
    sget-object p3, Lg7/b;->h:Lo7/a;

    const-string v0, "adaptConfig"

    const/4 v1, 0x0

    if-eqz p3, :cond_8

    .line 6
    iget-object v2, p3, Lo7/a;->b:Ljava/lang/String;

    .line 7
    iget-object v3, p3, Lo7/a;->d:Ljava/lang/String;

    .line 8
    iget-object v4, p3, Lo7/a;->e:Ljava/lang/String;

    .line 9
    iget v5, p3, Lo7/a;->f:I

    .line 10
    iget-object p3, p3, Lo7/a;->h:Lvc/a;

    .line 11
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "appId"

    .line 13
    invoke-static {v2, v8}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "appName"

    invoke-static {v3, v8}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "appVersion"

    invoke-static {v4, v8}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v8, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v8}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 15
    new-instance v9, Lvc/d;

    invoke-direct {v9, v2}, Lvc/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 16
    new-instance v9, Lvc/e;

    invoke-direct {v9, v2, v4}, Lvc/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    invoke-static {v6, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    new-instance v2, Ltc/a;

    .line 19
    new-instance v9, Lsc/a;

    invoke-direct {v9, v3, v4, v5}, Lsc/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 20
    invoke-direct {v2, v9}, Ltc/a;-><init>(Lsc/a;)V

    .line 21
    invoke-virtual {v8, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    if-nez p3, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {v7, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 23
    new-instance v2, Lvc/b;

    invoke-direct {v2, p3}, Lvc/b;-><init>(Lvc/a;)V

    invoke-virtual {v8, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 24
    :cond_2
    invoke-static {v6, v6}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 25
    new-instance v2, Lvc/c;

    invoke-direct {v2, p3}, Lvc/c;-><init>(Lvc/a;)V

    invoke-virtual {v8, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 26
    new-instance v2, Lvc/f;

    invoke-direct {v2, p3}, Lvc/f;-><init>(Lvc/a;)V

    invoke-virtual {v8, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 27
    :cond_3
    :goto_0
    new-instance p3, Lvc/g;

    invoke-direct {p3}, Lvc/g;-><init>()V

    invoke-virtual {v8, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 28
    sget-object p3, Luc/a;->a:Luc/a;

    .line 29
    sget-object p3, Luc/a;->b:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    .line 31
    invoke-virtual {v8, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_1

    .line 32
    :cond_4
    invoke-virtual {v8}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    .line 33
    sget-boolean v2, Lg7/b;->i:Z

    if-eqz v2, :cond_7

    .line 34
    invoke-virtual {p3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 35
    new-instance v2, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILrd/h;)V

    sget-object v3, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v2, v3}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v2

    invoke-virtual {p3, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 36
    new-instance v2, Lw7/b;

    invoke-direct {v2}, Lw7/b;-><init>()V

    invoke-virtual {p3, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p3

    .line 37
    sget-object v2, Lg7/b;->h:Lo7/a;

    if-eqz v2, :cond_6

    .line 38
    iget-object v0, v2, Lo7/a;->i:Lokhttp3/Interceptor;

    if-eqz v0, :cond_5

    .line 39
    invoke-virtual {p3, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 40
    :cond_5
    invoke-virtual {p3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    goto :goto_2

    .line 41
    :cond_6
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_7
    :goto_2
    sput-object p3, Lg0/n;->i:Lokhttp3/OkHttpClient;

    goto :goto_3

    .line 43
    :cond_8
    invoke-static {v0}, Lp4/h;->C(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_9
    :goto_3
    invoke-virtual {p2, p3}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 45
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p2

    .line 46
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    .line 47
    :cond_a
    new-instance p3, Lretrofit2/Retrofit$Builder;

    invoke-direct {p3}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 48
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p3, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p3

    .line 49
    invoke-virtual {p3, p2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p2

    .line 51
    invoke-virtual {p2, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    :goto_4
    return-object p1
.end method
