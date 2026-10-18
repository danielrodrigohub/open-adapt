.class public final Ll5/l;
.super Ljava/io/InputStream;
.source "DataSourceInputStream.java"


# instance fields
.field public final h:Ll5/j;

.field public final i:Ll5/m;

.field public final j:[B

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Ll5/j;Ll5/m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ll5/l;->k:Z

    .line 3
    iput-boolean v0, p0, Ll5/l;->l:Z

    .line 4
    iput-object p1, p0, Ll5/l;->h:Ll5/j;

    .line 5
    iput-object p2, p0, Ll5/l;->i:Ll5/m;

    const/4 p1, 0x1

    new-array p1, p1, [B

    .line 6
    iput-object p1, p0, Ll5/l;->j:[B

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ll5/l;->l:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Ll5/l;->h:Ll5/j;

    invoke-interface {v0}, Ll5/j;->close()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ll5/l;->l:Z

    :cond_0
    return-void
.end method

.method public final read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ll5/l;->j:[B

    invoke-virtual {p0, v0}, Ll5/l;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ll5/l;->j:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    :goto_0
    return v1
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ll5/l;->read([BII)I

    move-result p1

    return p1
.end method

.method public final read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-boolean v0, p0, Ll5/l;->l:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 5
    iget-boolean v0, p0, Ll5/l;->k:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Ll5/l;->h:Ll5/j;

    iget-object v2, p0, Ll5/l;->i:Ll5/m;

    invoke-interface {v0, v2}, Ll5/j;->l(Ll5/m;)J

    .line 7
    iput-boolean v1, p0, Ll5/l;->k:Z

    .line 8
    :cond_0
    iget-object v0, p0, Ll5/l;->h:Ll5/j;

    invoke-interface {v0, p1, p2, p3}, Ll5/h;->b([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method
