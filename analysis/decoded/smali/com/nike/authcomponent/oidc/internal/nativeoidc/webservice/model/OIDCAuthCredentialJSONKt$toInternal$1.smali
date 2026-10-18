.class public final Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;
.super Ljava/lang/Object;
.source "OIDCAuthCredentialJSON.kt"

# interfaces
.implements Lob/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt;->toInternal(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;Led/e;)Lob/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $telemetryProvider:Led/e;

.field public final synthetic $this_toInternal:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;


# direct methods
.method public constructor <init>(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;Led/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;->$this_toInternal:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    iput-object p2, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;->$telemetryProvider:Led/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;->$this_toInternal:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    invoke-virtual {v0}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->getAccess_token()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationDate()J
    .locals 2

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;->$this_toInternal:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    invoke-virtual {v0}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->getExpirationDateMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIdTokenString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;->$this_toInternal:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    invoke-virtual {v0}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->getId_token()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;->$this_toInternal:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    invoke-virtual {v0}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->getRefresh_token()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpmID()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lxb/a;->Companion:Lxb/a$a;

    iget-object v1, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;->$this_toInternal:Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;

    invoke-virtual {v1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;->getId_token()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;->$telemetryProvider:Led/e;

    invoke-virtual {v0, v1, v2}, Lxb/a$a;->a(Ljava/lang/String;Led/e;)Lxb/a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lxb/a;->a:Lxb/b;

    .line 3
    iget-object v0, v0, Lxb/b;->b:Lxb/c;

    .line 4
    iget-object v0, v0, Lxb/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lob/e$e;

    const/4 v1, 0x0

    const-string v2, "Missing subject in JWT (which maps to upmID)"

    .line 6
    invoke-direct {v0, v2, v1}, Lob/e$e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    throw v0
.end method
