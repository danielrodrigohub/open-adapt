.class public final Ll5/q;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Ll5/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/q$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll5/j0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ll5/j;

.field public d:Ll5/v;

.field public e:Ll5/c;

.field public f:Ll5/g;

.field public g:Ll5/j;

.field public h:Ll5/k0;

.field public i:Ll5/i;

.field public j:Ll5/g0;

.field public k:Ll5/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll5/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ll5/q;->a:Landroid/content/Context;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Ll5/q;->c:Ll5/j;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll5/q;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/q;->k:Ll5/j;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Ll5/h;->b([BII)I

    move-result p1

    return p1
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/q;->k:Ll5/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ll5/j;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Ll5/q;->k:Ll5/j;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Ll5/q;->k:Ll5/j;

    .line 4
    throw v0

    :cond_0
    :goto_0
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

    iget-object v0, p0, Ll5/q;->k:Ll5/j;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ll5/j;->h()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final j(Ll5/j0;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll5/q;->c:Ll5/j;

    invoke-interface {v0, p1}, Ll5/j;->j(Ll5/j0;)V

    .line 3
    iget-object v0, p0, Ll5/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Ll5/q;->d:Ll5/v;

    invoke-virtual {p0, v0, p1}, Ll5/q;->v(Ll5/j;Ll5/j0;)V

    .line 5
    iget-object v0, p0, Ll5/q;->e:Ll5/c;

    invoke-virtual {p0, v0, p1}, Ll5/q;->v(Ll5/j;Ll5/j0;)V

    .line 6
    iget-object v0, p0, Ll5/q;->f:Ll5/g;

    invoke-virtual {p0, v0, p1}, Ll5/q;->v(Ll5/j;Ll5/j0;)V

    .line 7
    iget-object v0, p0, Ll5/q;->g:Ll5/j;

    invoke-virtual {p0, v0, p1}, Ll5/q;->v(Ll5/j;Ll5/j0;)V

    .line 8
    iget-object v0, p0, Ll5/q;->h:Ll5/k0;

    invoke-virtual {p0, v0, p1}, Ll5/q;->v(Ll5/j;Ll5/j0;)V

    .line 9
    iget-object v0, p0, Ll5/q;->i:Ll5/i;

    invoke-virtual {p0, v0, p1}, Ll5/q;->v(Ll5/j;Ll5/j0;)V

    .line 10
    iget-object v0, p0, Ll5/q;->j:Ll5/g0;

    invoke-virtual {p0, v0, p1}, Ll5/q;->v(Ll5/j;Ll5/j0;)V

    return-void
.end method

.method public final l(Ll5/m;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/q;->k:Ll5/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p1, Ll5/m;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v3, p1, Ll5/m;->a:Landroid/net/Uri;

    sget v4, Lm5/g0;->a:I

    .line 4
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 6
    iget-object v0, p1, Ll5/m;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "/android_asset/"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Ll5/q;->e:Ll5/c;

    if-nez v0, :cond_3

    .line 9
    new-instance v0, Ll5/c;

    iget-object v1, p0, Ll5/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ll5/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ll5/q;->e:Ll5/c;

    .line 10
    invoke-virtual {p0, v0}, Ll5/q;->m(Ll5/j;)V

    .line 11
    :cond_3
    iget-object v0, p0, Ll5/q;->e:Ll5/c;

    .line 12
    iput-object v0, p0, Ll5/q;->k:Ll5/j;

    goto/16 :goto_4

    .line 13
    :cond_4
    iget-object v0, p0, Ll5/q;->d:Ll5/v;

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Ll5/v;

    invoke-direct {v0}, Ll5/v;-><init>()V

    iput-object v0, p0, Ll5/q;->d:Ll5/v;

    .line 15
    invoke-virtual {p0, v0}, Ll5/q;->m(Ll5/j;)V

    .line 16
    :cond_5
    iget-object v0, p0, Ll5/q;->d:Ll5/v;

    .line 17
    iput-object v0, p0, Ll5/q;->k:Ll5/j;

    goto/16 :goto_4

    :cond_6
    const-string v1, "asset"

    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 19
    iget-object v0, p0, Ll5/q;->e:Ll5/c;

    if-nez v0, :cond_7

    .line 20
    new-instance v0, Ll5/c;

    iget-object v1, p0, Ll5/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ll5/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ll5/q;->e:Ll5/c;

    .line 21
    invoke-virtual {p0, v0}, Ll5/q;->m(Ll5/j;)V

    .line 22
    :cond_7
    iget-object v0, p0, Ll5/q;->e:Ll5/c;

    .line 23
    iput-object v0, p0, Ll5/q;->k:Ll5/j;

    goto/16 :goto_4

    :cond_8
    const-string v1, "content"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 25
    iget-object v0, p0, Ll5/q;->f:Ll5/g;

    if-nez v0, :cond_9

    .line 26
    new-instance v0, Ll5/g;

    iget-object v1, p0, Ll5/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ll5/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ll5/q;->f:Ll5/g;

    .line 27
    invoke-virtual {p0, v0}, Ll5/q;->m(Ll5/j;)V

    .line 28
    :cond_9
    iget-object v0, p0, Ll5/q;->f:Ll5/g;

    .line 29
    iput-object v0, p0, Ll5/q;->k:Ll5/j;

    goto/16 :goto_4

    :cond_a
    const-string v1, "rtmp"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 31
    iget-object v0, p0, Ll5/q;->g:Ll5/j;

    if-nez v0, :cond_b

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 32
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll5/j;

    iput-object v0, p0, Ll5/q;->g:Ll5/j;

    .line 34
    invoke-virtual {p0, v0}, Ll5/q;->m(Ll5/j;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 36
    invoke-static {v0, v1}, Lm5/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_2
    iget-object v0, p0, Ll5/q;->g:Ll5/j;

    if-nez v0, :cond_b

    .line 38
    iget-object v0, p0, Ll5/q;->c:Ll5/j;

    iput-object v0, p0, Ll5/q;->g:Ll5/j;

    .line 39
    :cond_b
    iget-object v0, p0, Ll5/q;->g:Ll5/j;

    .line 40
    iput-object v0, p0, Ll5/q;->k:Ll5/j;

    goto :goto_4

    :cond_c
    const-string v1, "udp"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 42
    iget-object v0, p0, Ll5/q;->h:Ll5/k0;

    if-nez v0, :cond_d

    .line 43
    new-instance v0, Ll5/k0;

    invoke-direct {v0}, Ll5/k0;-><init>()V

    iput-object v0, p0, Ll5/q;->h:Ll5/k0;

    .line 44
    invoke-virtual {p0, v0}, Ll5/q;->m(Ll5/j;)V

    .line 45
    :cond_d
    iget-object v0, p0, Ll5/q;->h:Ll5/k0;

    .line 46
    iput-object v0, p0, Ll5/q;->k:Ll5/j;

    goto :goto_4

    :cond_e
    const-string v1, "data"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 48
    iget-object v0, p0, Ll5/q;->i:Ll5/i;

    if-nez v0, :cond_f

    .line 49
    new-instance v0, Ll5/i;

    invoke-direct {v0}, Ll5/i;-><init>()V

    iput-object v0, p0, Ll5/q;->i:Ll5/i;

    .line 50
    invoke-virtual {p0, v0}, Ll5/q;->m(Ll5/j;)V

    .line 51
    :cond_f
    iget-object v0, p0, Ll5/q;->i:Ll5/i;

    .line 52
    iput-object v0, p0, Ll5/q;->k:Ll5/j;

    goto :goto_4

    :cond_10
    const-string v1, "rawresource"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3

    .line 54
    :cond_11
    iget-object v0, p0, Ll5/q;->c:Ll5/j;

    iput-object v0, p0, Ll5/q;->k:Ll5/j;

    goto :goto_4

    .line 55
    :cond_12
    :goto_3
    iget-object v0, p0, Ll5/q;->j:Ll5/g0;

    if-nez v0, :cond_13

    .line 56
    new-instance v0, Ll5/g0;

    iget-object v1, p0, Ll5/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Ll5/g0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ll5/q;->j:Ll5/g0;

    .line 57
    invoke-virtual {p0, v0}, Ll5/q;->m(Ll5/j;)V

    .line 58
    :cond_13
    iget-object v0, p0, Ll5/q;->j:Ll5/g0;

    .line 59
    iput-object v0, p0, Ll5/q;->k:Ll5/j;

    .line 60
    :goto_4
    iget-object v0, p0, Ll5/q;->k:Ll5/j;

    invoke-interface {v0, p1}, Ll5/j;->l(Ll5/m;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m(Ll5/j;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Ll5/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Ll5/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll5/j0;

    invoke-interface {p1, v1}, Ll5/j;->j(Ll5/j0;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final o()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Ll5/q;->k:Ll5/j;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ll5/j;->o()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final v(Ll5/j;Ll5/j0;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ll5/j;->j(Ll5/j0;)V

    :cond_0
    return-void
.end method
