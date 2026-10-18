.class public interface abstract Lcom/nike/adapt/network/assets/ManifestServiceApi;
.super Ljava/lang/Object;
.source "ManifestServiceApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/network/assets/ManifestServiceApi$a;
    }
.end annotation


# virtual methods
.method public abstract getManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "app_version"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            encoded = true
            value = "locale"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/network/assets/model/Manifest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "plus/v3/client-config/com.nike.adapt.appconfig.{type}/{app_version}/{locale}?platform=droid"
    .end annotation
.end method
