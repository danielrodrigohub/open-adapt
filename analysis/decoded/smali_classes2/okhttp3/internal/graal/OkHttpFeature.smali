.class public final Lokhttp3/internal/graal/OkHttpFeature;
.super Ljava/lang/Object;
.source "OkHttpFeature.kt"

# interfaces
.implements Lorg/graalvm/nativeimage/hosted/Feature;


# annotations
.annotation runtime Lcom/oracle/svm/core/annotate/AutomaticFeature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeAnalysis(Lorg/graalvm/nativeimage/hosted/Feature$BeforeAnalysisAccess;)V
    .locals 1

    const-class p1, Lcom/oracle/svm/core/configure/ResourcesRegistry;

    .line 1
    invoke-static {p1}, Lorg/graalvm/nativeimage/ImageSingletons;->lookup(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oracle/svm/core/configure/ResourcesRegistry;

    const-string v0, "\\Qokhttp3/internal/publicsuffix/PublicSuffixDatabase.gz\\E"

    .line 2
    invoke-interface {p1, v0}, Lcom/oracle/svm/core/configure/ResourcesRegistry;->addResources(Ljava/lang/String;)V

    return-void
.end method
