.class public final Le4/d$a;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Le4/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lt6/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/o<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lt6/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt6/o<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    new-instance v0, Le4/b;

    invoke-direct {v0, p1}, Le4/b;-><init>(I)V

    new-instance v1, Le4/c;

    invoke-direct {v1, p1}, Le4/c;-><init>(I)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Le4/d$a;->a:Lt6/o;

    .line 4
    iput-object v1, p0, Le4/d$a;->b:Lt6/o;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Le4/l$a;)Le4/l;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Le4/d$a;->b(Le4/l$a;)Le4/d;

    move-result-object p1

    return-object p1
.end method

.method public final b(Le4/l$a;)Le4/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le4/l$a;->a:Le4/n;

    iget-object v0, v0, Le4/n;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCodec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Li0/b;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 4
    :try_start_1
    new-instance v2, Le4/d;

    iget-object v3, p0, Le4/d$a;->a:Lt6/o;

    .line 5
    invoke-interface {v3}, Lt6/o;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/HandlerThread;

    iget-object v4, p0, Le4/d$a;->b:Lt6/o;

    .line 6
    invoke-interface {v4}, Lt6/o;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/HandlerThread;

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Le4/d;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7
    :try_start_2
    invoke-static {}, Li0/b;->g()V

    .line 8
    iget-object v1, p1, Le4/l$a;->b:Landroid/media/MediaFormat;

    iget-object v3, p1, Le4/l$a;->d:Landroid/view/Surface;

    iget-object p1, p1, Le4/l$a;->e:Landroid/media/MediaCrypto;

    invoke-static {v2, v1, v3, p1}, Le4/d;->p(Le4/d;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v0, v1

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v1}, Le4/d;->a()V

    .line 11
    :cond_1
    :goto_1
    throw p1
.end method
