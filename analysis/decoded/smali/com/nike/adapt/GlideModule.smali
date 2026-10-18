.class public final Lcom/nike/adapt/GlideModule;
.super Lf3/a;
.source "GlideModule.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/adapt/GlideModule$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/nike/adapt/GlideModule$a;

.field private static final IMAGE_CACHE_DIR:Ljava/lang/String; = "adapt_image_cache"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/adapt/GlideModule$a;

    invoke-direct {v0}, Lcom/nike/adapt/GlideModule$a;-><init>()V

    sput-object v0, Lcom/nike/adapt/GlideModule;->Companion:Lcom/nike/adapt/GlideModule$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf3/a;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lf3/a;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/d;)V

    .line 2
    new-instance v0, Lt2/f;

    const-string v1, "adapt_image_cache"

    const-wide/32 v2, 0x6400000

    invoke-direct {v0, p1, v1, v2, v3}, Lt2/f;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3
    iput-object v0, p2, Lcom/bumptech/glide/d;->i:Lt2/a$a;

    return-void
.end method

.method public isManifestParsingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "glide"

    invoke-static {p2, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "registry"

    invoke-static {p3, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 2
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 3
    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/b$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/integration/okhttp3/b$a;-><init>(Lokhttp3/Call$Factory;)V

    invoke-virtual {p3, p2, v0}, Lcom/bumptech/glide/h;->j(Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    return-void
.end method
