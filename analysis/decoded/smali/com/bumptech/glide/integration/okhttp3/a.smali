.class public final Lcom/bumptech/glide/integration/okhttp3/a;
.super Lf3/d;
.source "OkHttpLibraryGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lf3/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final registerComponents(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;)V
    .locals 0

    const-class p1, Ljava/io/InputStream;

    new-instance p2, Lcom/bumptech/glide/integration/okhttp3/b$a;

    invoke-direct {p2}, Lcom/bumptech/glide/integration/okhttp3/b$a;-><init>()V

    invoke-virtual {p3, p1, p2}, Lcom/bumptech/glide/h;->j(Ljava/lang/Class;Lv2/o;)Lcom/bumptech/glide/h;

    return-void
.end method
