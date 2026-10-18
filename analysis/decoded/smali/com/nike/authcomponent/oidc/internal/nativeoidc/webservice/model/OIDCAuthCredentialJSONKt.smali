.class public final Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt;
.super Ljava/lang/Object;
.source "OIDCAuthCredentialJSON.kt"


# direct methods
.method public static final toInternal(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;Led/e;)Lob/c;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetryProvider"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;

    invoke-direct {v0, p0, p1}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSONKt$toInternal$1;-><init>(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/model/OIDCAuthCredentialJSON;Led/e;)V

    return-object v0
.end method
