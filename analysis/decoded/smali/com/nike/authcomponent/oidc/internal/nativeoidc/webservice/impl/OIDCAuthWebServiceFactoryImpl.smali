.class public final Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl;
.super Ljava/lang/Object;
.source "OIDCAuthWebServiceFactoryImpl.kt"

# interfaces
.implements Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebServiceFactory;


# instance fields
.field private final configuration:Lob/a;

.field private final json:Lkotlinx/serialization/json/Json;


# direct methods
.method public constructor <init>(Lob/a;)V
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl;->configuration:Lob/a;

    .line 2
    sget-object p1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl$json$1;->INSTANCE:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl$json$1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v0}, Lkotlinx/serialization/json/JsonKt;->Json$default(Lkotlinx/serialization/json/Json;Lqd/l;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;

    move-result-object p1

    iput-object p1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl;->json:Lkotlinx/serialization/json/Json;

    return-void
.end method


# virtual methods
.method public create()Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;
    .locals 5

    .line 1
    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl;->configuration:Lob/a;

    .line 3
    iget-object v1, v1, Lob/a;->b:Lob/a$b;

    .line 4
    invoke-interface {v1}, Lob/a$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl;->configuration:Lob/a;

    .line 6
    iget-object v1, v1, Lob/a;->a:Lob/a$a;

    .line 7
    invoke-interface {v1}, Lob/a$a;->e()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl;->json:Lkotlinx/serialization/json/Json;

    sget-object v2, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v3, "application/json"

    invoke-virtual {v2, v3}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    const-string v3, "$this$asConverterFactory"

    .line 9
    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "contentType"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ln7/b;

    new-instance v4, Ln7/d$a;

    invoke-direct {v4, v1}, Ln7/d$a;-><init>(Lkotlinx/serialization/StringFormat;)V

    invoke-direct {v3, v2, v4}, Ln7/b;-><init>(Lokhttp3/MediaType;Ln7/d;)V

    .line 11
    invoke-virtual {v0, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;

    .line 13
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Builder()\n            .baseUrl(configuration.settings.baseUrl)\n            .client(configuration.dependencies.okHttpClient)\n            .addConverterFactory(json.asConverterFactory(\"application/json\".toMediaType()))\n            .build()\n            .create(OIDCAuthWebService::class.java)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;

    return-object v0
.end method
