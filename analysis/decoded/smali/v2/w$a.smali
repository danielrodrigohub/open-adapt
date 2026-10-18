.class public final Lv2/w$a;
.super Ljava/lang/Object;
.source "UrlUriLoader.java"

# interfaces
.implements Lv2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv2/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lv2/r;)Lv2/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/r;",
            ")",
            "Lv2/n<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lv2/w;

    const-class v1, Lv2/f;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lv2/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Lv2/n;

    move-result-object p1

    invoke-direct {v0, p1}, Lv2/w;-><init>(Lv2/n;)V

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
