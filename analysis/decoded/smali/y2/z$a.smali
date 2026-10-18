.class public final Ly2/z$a;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Ly2/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ly2/x;

.field public final b:Ll3/d;


# direct methods
.method public constructor <init>(Ly2/x;Ll3/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ly2/z$a;->a:Ly2/x;

    .line 3
    iput-object p2, p0, Ly2/z$a;->b:Ll3/d;

    return-void
.end method


# virtual methods
.method public final a(Ls2/d;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ly2/z$a;->b:Ll3/d;

    .line 2
    iget-object v0, v0, Ll3/d;->i:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1, p2}, Ls2/d;->e(Landroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/z$a;->a:Ly2/x;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Ly2/x;->h:[B

    array-length v1, v1

    iput v1, v0, Ly2/x;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
