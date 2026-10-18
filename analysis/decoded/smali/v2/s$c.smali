.class public final Lv2/s$c;
.super Ljava/lang/Object;
.source "ResourceLoader.java"

# interfaces
.implements Lv2/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv2/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv2/o<",
        "Ljava/lang/Integer;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv2/s$c;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final b(Lv2/r;)Lv2/n;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/r;",
            ")",
            "Lv2/n<",
            "Ljava/lang/Integer;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, Lv2/s;

    iget-object v1, p0, Lv2/s$c;->a:Landroid/content/res/Resources;

    const-class v2, Landroid/net/Uri;

    const-class v3, Ljava/io/InputStream;

    invoke-virtual {p1, v2, v3}, Lv2/r;->c(Ljava/lang/Class;Ljava/lang/Class;)Lv2/n;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lv2/s;-><init>(Landroid/content/res/Resources;Lv2/n;)V

    return-object v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
