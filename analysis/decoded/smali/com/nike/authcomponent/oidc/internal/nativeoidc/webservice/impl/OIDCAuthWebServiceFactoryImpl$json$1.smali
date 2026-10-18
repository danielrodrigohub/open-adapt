.class final Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl$json$1;
.super Lrd/o;
.source "OIDCAuthWebServiceFactoryImpl.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl;-><init>(Lob/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lkotlinx/serialization/json/JsonBuilder;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl$json$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl$json$1;

    invoke-direct {v0}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl$json$1;-><init>()V

    sput-object v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl$json$1;->INSTANCE:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl$json$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/serialization/json/JsonBuilder;

    invoke-virtual {p0, p1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/impl/OIDCAuthWebServiceFactoryImpl$json$1;->invoke(Lkotlinx/serialization/json/JsonBuilder;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lkotlinx/serialization/json/JsonBuilder;)V
    .locals 1

    const-string v0, "$this$Json"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setLenient(Z)V

    .line 3
    invoke-virtual {p1, v0}, Lkotlinx/serialization/json/JsonBuilder;->setIgnoreUnknownKeys(Z)V

    return-void
.end method
