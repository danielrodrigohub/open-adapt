.class public final Lcom/bumptech/glide/integration/okhttp3/b;
.super Ljava/lang/Object;
.source "OkHttpUrlLoader.java"

# interfaces
.implements Lv2/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/okhttp3/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv2/n<",
        "Lv2/f;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lokhttp3/Call$Factory;


# direct methods
.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/integration/okhttp3/b;->a:Lokhttp3/Call$Factory;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILp2/h;)Lv2/n$a;
    .locals 0

    .line 1
    check-cast p1, Lv2/f;

    .line 2
    new-instance p2, Lv2/n$a;

    new-instance p3, Lo2/a;

    iget-object p4, p0, Lcom/bumptech/glide/integration/okhttp3/b;->a:Lokhttp3/Call$Factory;

    invoke-direct {p3, p4, p1}, Lo2/a;-><init>(Lokhttp3/Call$Factory;Lv2/f;)V

    invoke-direct {p2, p1, p3}, Lv2/n$a;-><init>(Lp2/f;Lcom/bumptech/glide/load/data/d;)V

    return-object p2
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lv2/f;

    const/4 p1, 0x1

    return p1
.end method
