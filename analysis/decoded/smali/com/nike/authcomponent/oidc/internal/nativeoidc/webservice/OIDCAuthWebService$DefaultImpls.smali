.class public final Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService$DefaultImpls;
.super Ljava/lang/Object;
.source "OIDCAuthWebService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic getCredential$default(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    if-nez p9, :cond_1

    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    const-string v0, "authorization_code"

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, p6

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;->getCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: getCredential"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic updateCredential$default(Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-string p4, "refresh_token"

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/nike/authcomponent/oidc/internal/nativeoidc/webservice/OIDCAuthWebService;->updateCredential(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: updateCredential"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
