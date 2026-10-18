.class public final Le4/t$a;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"

# interfaces
.implements Le4/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le4/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le4/l$a;)Le4/l;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Le4/t$a;->b(Le4/l$a;)Landroid/media/MediaCodec;

    move-result-object v0

    const-string v1, "configureCodec"

    .line 2
    invoke-static {v1}, Li0/b;->d(Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le4/l$a;->b:Landroid/media/MediaFormat;

    iget-object v2, p1, Le4/l$a;->d:Landroid/view/Surface;

    iget-object p1, p1, Le4/l$a;->e:Landroid/media/MediaCrypto;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4
    invoke-static {}, Li0/b;->g()V

    const-string p1, "startCodec"

    .line 5
    invoke-static {p1}, Li0/b;->d(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 7
    invoke-static {}, Li0/b;->g()V

    .line 8
    new-instance p1, Le4/t;

    invoke-direct {p1, v0}, Le4/t;-><init>(Landroid/media/MediaCodec;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 10
    :cond_0
    throw p1
.end method

.method public final b(Le4/l$a;)Landroid/media/MediaCodec;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le4/l$a;->a:Le4/n;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p1, Le4/l$a;->a:Le4/n;

    iget-object p1, p1, Le4/n;->a:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCodec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li0/b;->d(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    .line 6
    invoke-static {}, Li0/b;->g()V

    return-object p1
.end method
