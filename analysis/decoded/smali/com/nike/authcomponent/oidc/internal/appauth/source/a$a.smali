.class public final Lcom/nike/authcomponent/oidc/internal/appauth/source/a$a;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/authcomponent/oidc/internal/appauth/source/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/nike/authcomponent/oidc/internal/appauth/source/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x3e8

    const-string v1, "invalid_request"

    .line 1
    invoke-static {v0, v1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v0

    const/16 v1, 0x3e9

    const-string v2, "unauthorized_client"

    .line 2
    invoke-static {v1, v2}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v1

    const/16 v2, 0x3ea

    const-string v3, "access_denied"

    .line 3
    invoke-static {v2, v3}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v2

    const/16 v3, 0x3eb

    const-string v4, "unsupported_response_type"

    .line 4
    invoke-static {v3, v4}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v3

    const/16 v4, 0x3ec

    const-string v5, "invalid_scope"

    .line 5
    invoke-static {v4, v5}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v4

    const/16 v5, 0x3ed

    const-string v6, "server_error"

    .line 6
    invoke-static {v5, v6}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v5

    const/16 v6, 0x3ee

    const-string v7, "temporarily_unavailable"

    .line 7
    invoke-static {v6, v7}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v6

    const/16 v7, 0x3ef

    const/4 v8, 0x0

    .line 8
    invoke-static {v7, v8}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v7

    const/16 v9, 0x3f0

    .line 9
    invoke-static {v9, v8}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->b(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v8

    sput-object v8, Lcom/nike/authcomponent/oidc/internal/appauth/source/a$a;->a:Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/16 v9, 0x9

    const-string v10, "Response state param did not match request state"

    .line 10
    invoke-static {v9, v10}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->a(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    new-array v10, v9, [Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v0, 0x1

    aput-object v1, v10, v0

    const/4 v0, 0x2

    aput-object v2, v10, v0

    const/4 v0, 0x3

    aput-object v3, v10, v0

    const/4 v0, 0x4

    aput-object v4, v10, v0

    const/4 v0, 0x5

    aput-object v5, v10, v0

    const/4 v0, 0x6

    aput-object v6, v10, v0

    const/4 v0, 0x7

    aput-object v7, v10, v0

    const/16 v0, 0x8

    aput-object v8, v10, v0

    .line 11
    new-instance v0, Lp/a;

    .line 12
    invoke-direct {v0, v9}, Lp/a;-><init>(I)V

    :goto_0
    if-ge v11, v9, :cond_1

    .line 13
    aget-object v1, v10, v11

    .line 14
    iget-object v2, v1, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {v0, v2, v1}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 17
    sput-object v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a$a;->b:Ljava/util/Map;

    return-void
.end method
