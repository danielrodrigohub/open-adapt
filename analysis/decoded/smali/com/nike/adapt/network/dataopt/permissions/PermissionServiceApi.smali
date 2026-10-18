.class public interface abstract Lcom/nike/adapt/network/dataopt/permissions/PermissionServiceApi;
.super Ljava/lang/Object;
.source "PermissionServiceApi.kt"


# virtual methods
.method public abstract getPrivacyCompliance(Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "principal"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/nike/adapt/network/dataopt/permissions/model/Permissions;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "privacy_compliance/user_permissions/v1/"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept:application/json; charset=utf-8",
            "Accept-Charset:utf-8",
            "x-nike-ux-id:com.nike.bigfoot.droid"
        }
    .end annotation
.end method

.method public abstract updatePrivacyCompliance(Lc8/a;Ljd/d;)Ljava/lang/Object;
    .param p1    # Lc8/a;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/a;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept:application/json; charset=utf-8",
            "Accept-Charset:utf-8",
            "x-nike-ux-id:com.nike.bigfoot.droid"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "privacy_compliance/user_permissions/v1/"
    .end annotation
.end method
