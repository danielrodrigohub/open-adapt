.class public final Lcom/nike/adapt/network/assets/ManifestServiceApi$a;
.super Ljava/lang/Object;
.source "ManifestServiceApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/adapt/network/assets/ManifestServiceApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lcom/nike/adapt/network/assets/ManifestServiceApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ENGLISH.language"

    invoke-static {p1, p3}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "prod"

    .line 2
    invoke-interface {p0, p3, p2, p1, p4}, Lcom/nike/adapt/network/assets/ManifestServiceApi;->getManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
