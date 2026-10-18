.class public final Lo4/b;
.super Ljava/lang/Object;
.source "FilteringManifestParser.java"

# interfaces
.implements Ll5/f0$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo4/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ll5/f0$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ll5/f0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll5/f0$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo4/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll5/f0$a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll5/f0$a<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lo4/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo4/b;->a:Ll5/f0$a;

    .line 3
    iput-object p2, p0, Lo4/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo4/b;->a:Ll5/f0$a;

    invoke-interface {v0, p1, p2}, Ll5/f0$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo4/a;

    .line 2
    iget-object p2, p0, Lo4/b;->b:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lo4/b;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Lo4/a;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo4/a;

    :cond_1
    :goto_0
    return-object p1
.end method
