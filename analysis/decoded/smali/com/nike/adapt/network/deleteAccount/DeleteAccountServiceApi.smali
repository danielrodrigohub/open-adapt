.class public interface abstract Lcom/nike/adapt/network/deleteAccount/DeleteAccountServiceApi;
.super Ljava/lang/Object;
.source "DeleteAccountServiceApi.kt"


# virtual methods
.method public abstract deleteAccount(Ljd/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lretrofit2/Response<",
            "Lfd/o;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "delete/me/v1"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept:application/json; charset=utf-8",
            "Accept-Charset:utf-8"
        }
    .end annotation
.end method
