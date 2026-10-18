.class public interface abstract Lcom/nike/adapt/network/identity/AdaptIdentityServiceApi;
.super Ljava/lang/Object;
.source "AdaptIdentityServiceApi.kt"


# virtual methods
.method public abstract getIdentity(Ljava/lang/String;Le8/c;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "upmId"
        .end annotation
    .end param
    .param p2    # Le8/c;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le8/c;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/nike/adapt/network/identity/model/AdaptIdentity;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept:application/json; charset=utf-8",
            "Accept-Charset:utf-8",
            "x-nike-ux-id:com.nike.bigfoot.droid"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "identity/user/v1/{upmId}/read"
    .end annotation
.end method
