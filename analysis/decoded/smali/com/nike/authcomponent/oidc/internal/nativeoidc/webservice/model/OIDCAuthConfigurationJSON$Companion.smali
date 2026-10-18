.class public final Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON$Companion;
.super Ljava/lang/Object;
.source "OIDCAuthConfigurationJSON.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lrd/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON$$serializer;->INSTANCE:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthConfigurationJSON$$serializer;

    return-object v0
.end method
