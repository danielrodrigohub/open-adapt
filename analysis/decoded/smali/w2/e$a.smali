.class public final Lw2/e$a;
.super Ljava/lang/Object;
.source "UrlLoader.java"

# interfaces
.implements Lv2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv2/o<",
        "Ljava/net/URL;",
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
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw2/e;

    const-class v1, Lv2/f;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Lv2/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Lv2/n;

    move-result-object p1

    invoke-direct {v0, p1}, Lw2/e;-><init>(Lv2/n;)V

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
