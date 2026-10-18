.class public final Ll5/i0;
.super Ljava/lang/Object;
.source "StatsDataSource.java"

# interfaces
.implements Ll5/j;


# instance fields
.field public final a:Ll5/j;

.field public b:J

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ll5/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ll5/i0;->a:Ll5/j;

    .line 4
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Ll5/i0;->c:Landroid/net/Uri;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ll5/i0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/i0;->a:Ll5/j;

    invoke-interface {v0, p1, p2, p3}, Ll5/h;->b([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-wide p2, p0, Ll5/i0;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ll5/i0;->b:J

    :cond_0
    return p1
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ll5/i0;->a:Ll5/j;

    invoke-interface {v0}, Ll5/j;->close()V

    return-void
.end method

.method public final h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Ll5/i0;->a:Ll5/j;

    invoke-interface {v0}, Ll5/j;->h()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ll5/j0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll5/i0;->a:Ll5/j;

    invoke-interface {v0, p1}, Ll5/j;->j(Ll5/j0;)V

    return-void
.end method

.method public final l(Ll5/m;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ll5/m;->a:Landroid/net/Uri;

    iput-object v0, p0, Ll5/i0;->c:Landroid/net/Uri;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ll5/i0;->d:Ljava/util/Map;

    .line 3
    iget-object v0, p0, Ll5/i0;->a:Ll5/j;

    invoke-interface {v0, p1}, Ll5/j;->l(Ll5/m;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Ll5/i0;->o()Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Ll5/i0;->c:Landroid/net/Uri;

    .line 7
    invoke-virtual {p0}, Ll5/i0;->h()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Ll5/i0;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public final o()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Ll5/i0;->a:Ll5/j;

    invoke-interface {v0}, Ll5/j;->o()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
