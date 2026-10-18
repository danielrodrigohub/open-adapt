.class public interface abstract Lcom/nike/adapt/network/dataopt/datastream/NspStreamServiceApi;
.super Ljava/lang/Object;
.source "NspStreamServiceApi.kt"


# virtual methods
.method public abstract sendStatsLeft(La8/i;Ljd/d;)Ljava/lang/Object;
    .param p1    # La8/i;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La8/i;",
            "Ljd/d<",
            "-",
            "La8/f;",
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

    .annotation runtime Lretrofit2/http/POST;
        value = "adapt-get-stats_events_aOS/main/"
    .end annotation
.end method

.method public abstract sendStatsRight(La8/j;Ljd/d;)Ljava/lang/Object;
    .param p1    # La8/j;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La8/j;",
            "Ljd/d<",
            "-",
            "La8/f;",
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

    .annotation runtime Lretrofit2/http/POST;
        value = "adapt-get-stats_events_aOS/main/"
    .end annotation
.end method
