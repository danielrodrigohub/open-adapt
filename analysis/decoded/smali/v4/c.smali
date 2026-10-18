.class public final Lv4/c;
.super Ljava/lang/Object;
.source "FilteringHlsPlaylistParserFactory.java"

# interfaces
.implements Lv4/i;


# instance fields
.field public final a:Lv4/i;

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
.method public constructor <init>(Lv4/i;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/i;",
            "Ljava/util/List<",
            "Lo4/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv4/c;->a:Lv4/i;

    .line 3
    iput-object p2, p0, Lv4/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lv4/f;Lv4/e;)Ll5/f0$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/f;",
            "Lv4/e;",
            ")",
            "Ll5/f0$a<",
            "Lv4/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo4/b;

    iget-object v1, p0, Lv4/c;->a:Lv4/i;

    .line 2
    invoke-interface {v1, p1, p2}, Lv4/i;->a(Lv4/f;Lv4/e;)Ll5/f0$a;

    move-result-object p1

    iget-object p2, p0, Lv4/c;->b:Ljava/util/List;

    invoke-direct {v0, p1, p2}, Lo4/b;-><init>(Ll5/f0$a;Ljava/util/List;)V

    return-object v0
.end method

.method public final b()Ll5/f0$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll5/f0$a<",
            "Lv4/g;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lo4/b;

    iget-object v1, p0, Lv4/c;->a:Lv4/i;

    .line 2
    invoke-interface {v1}, Lv4/i;->b()Ll5/f0$a;

    move-result-object v1

    iget-object v2, p0, Lv4/c;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lo4/b;-><init>(Ll5/f0$a;Ljava/util/List;)V

    return-object v0
.end method
