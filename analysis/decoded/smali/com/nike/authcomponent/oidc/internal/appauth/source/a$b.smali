.class public final Lcom/nike/authcomponent/oidc/internal/appauth/source/a$b;
.super Ljava/lang/Object;
.source "AuthorizationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/authcomponent/oidc/internal/appauth/source/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

.field public static final b:Lcom/nike/authcomponent/oidc/internal/appauth/source/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "Invalid discovery document"

    .line 1
    invoke-static {v0, v1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->a(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/4 v0, 0x1

    const-string v1, "User cancelled flow"

    .line 2
    invoke-static {v0, v1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->a(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v0

    sput-object v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a$b;->a:Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/4 v0, 0x2

    const-string v1, "Flow cancelled programmatically"

    .line 3
    invoke-static {v0, v1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->a(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/4 v0, 0x3

    const-string v1, "Network error"

    .line 4
    invoke-static {v0, v1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->a(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/4 v0, 0x4

    const-string v1, "Server error"

    .line 5
    invoke-static {v0, v1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->a(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/4 v0, 0x5

    const-string v1, "JSON deserialization error"

    .line 6
    invoke-static {v0, v1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->a(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    const/4 v0, 0x6

    const-string v1, "Browser not found"

    .line 7
    invoke-static {v0, v1}, Lcom/nike/authcomponent/oidc/internal/appauth/source/a;->a(ILjava/lang/String;)Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    move-result-object v0

    sput-object v0, Lcom/nike/authcomponent/oidc/internal/appauth/source/a$b;->b:Lcom/nike/authcomponent/oidc/internal/appauth/source/a;

    return-void
.end method
