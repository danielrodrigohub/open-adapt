.class public final Ll5/g0;
.super Ll5/f;
.source "RawResourceDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/g0$a;
    }
.end annotation


# instance fields
.field public final e:Landroid/content/res/Resources;

.field public final f:Ljava/lang/String;

.field public g:Landroid/net/Uri;

.field public h:Landroid/content/res/AssetFileDescriptor;

.field public i:Ljava/io/FileInputStream;

.field public j:J

.field public k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ll5/f;-><init>(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Ll5/g0;->e:Landroid/content/res/Resources;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll5/g0;->f:Ljava/lang/String;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ll5/g0$a;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Ll5/g0;->j:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    const/16 v6, 0x7d0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v7, p3

    .line 2
    :try_start_0
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 3
    :goto_0
    iget-object v0, p0, Ll5/g0;->i:Ljava/io/FileInputStream;

    sget v1, Lm5/g0;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_4

    .line 4
    iget-wide p1, p0, Ll5/g0;->j:J

    cmp-long p1, p1, v4

    if-nez p1, :cond_3

    return v3

    .line 5
    :cond_3
    new-instance p1, Ll5/g0$a;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    const-string p3, "End of stream reached having not read sufficient data."

    invoke-direct {p1, p3, p2, v6}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 6
    :cond_4
    iget-wide p2, p0, Ll5/g0;->j:J

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    int-to-long v0, p1

    sub-long/2addr p2, v0

    .line 7
    iput-wide p2, p0, Ll5/g0;->j:J

    .line 8
    :cond_5
    invoke-virtual {p0, p1}, Ll5/f;->v(I)V

    return p1

    :catch_0
    move-exception p1

    .line 9
    new-instance p2, Ll5/g0$a;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, v6}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ll5/g0$a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ll5/g0;->g:Landroid/net/Uri;

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    iget-object v3, p0, Ll5/g0;->i:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :cond_0
    iput-object v0, p0, Ll5/g0;->i:Ljava/io/FileInputStream;

    .line 5
    :try_start_1
    iget-object v3, p0, Ll5/g0;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    iput-object v0, p0, Ll5/g0;->h:Landroid/content/res/AssetFileDescriptor;

    .line 8
    iget-boolean v0, p0, Ll5/g0;->k:Z

    if-eqz v0, :cond_2

    .line 9
    iput-boolean v2, p0, Ll5/g0;->k:Z

    .line 10
    invoke-virtual {p0}, Ll5/f;->w()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 11
    :try_start_2
    new-instance v4, Ll5/g0$a;

    invoke-direct {v4, v0, v3, v1}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :goto_0
    iput-object v0, p0, Ll5/g0;->h:Landroid/content/res/AssetFileDescriptor;

    .line 13
    iget-boolean v0, p0, Ll5/g0;->k:Z

    if-eqz v0, :cond_3

    .line 14
    iput-boolean v2, p0, Ll5/g0;->k:Z

    .line 15
    invoke-virtual {p0}, Ll5/f;->w()V

    .line 16
    :cond_3
    throw v1

    :catchall_1
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 17
    :try_start_3
    new-instance v4, Ll5/g0$a;

    invoke-direct {v4, v0, v3, v1}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 18
    :goto_1
    iput-object v0, p0, Ll5/g0;->i:Ljava/io/FileInputStream;

    .line 19
    :try_start_4
    iget-object v4, p0, Ll5/g0;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 21
    :cond_4
    iput-object v0, p0, Ll5/g0;->h:Landroid/content/res/AssetFileDescriptor;

    .line 22
    iget-boolean v0, p0, Ll5/g0;->k:Z

    if-eqz v0, :cond_5

    .line 23
    iput-boolean v2, p0, Ll5/g0;->k:Z

    .line 24
    invoke-virtual {p0}, Ll5/f;->w()V

    .line 25
    :cond_5
    throw v3

    :catchall_2
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v3

    .line 26
    :try_start_5
    new-instance v4, Ll5/g0$a;

    invoke-direct {v4, v0, v3, v1}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 27
    :goto_2
    iput-object v0, p0, Ll5/g0;->h:Landroid/content/res/AssetFileDescriptor;

    .line 28
    iget-boolean v0, p0, Ll5/g0;->k:Z

    if-eqz v0, :cond_6

    .line 29
    iput-boolean v2, p0, Ll5/g0;->k:Z

    .line 30
    invoke-virtual {p0}, Ll5/f;->w()V

    .line 31
    :cond_6
    throw v1
.end method

.method public final l(Ll5/m;)J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ll5/g0$a;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Ll5/m;->a:Landroid/net/Uri;

    .line 2
    iput-object v0, p0, Ll5/g0;->g:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rawresource"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x7d5

    const/16 v5, 0x3ec

    if-nez v1, :cond_5

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v6, "android.resource"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "\\d+"

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "/"

    .line 12
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v5, ""

    goto :goto_0

    :cond_2
    const-string v7, ":"

    .line 16
    invoke-static {v5, v7}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    :goto_0
    invoke-static {v6, v5, v1}, La1/f;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    iget-object v5, p0, Ll5/g0;->e:Landroid/content/res/Resources;

    iget-object v6, p0, Ll5/g0;->f:Ljava/lang/String;

    const-string v7, "raw"

    .line 19
    invoke-virtual {v5, v1, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 20
    :cond_3
    new-instance p1, Ll5/g0$a;

    const-string v0, "Resource not found."

    invoke-direct {p1, v0, v3, v4}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 21
    :cond_4
    new-instance p1, Ll5/g0$a;

    const-string v0, "URI must either use scheme rawresource or android.resource"

    invoke-direct {p1, v0, v3, v5}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 22
    :cond_5
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    .line 25
    :goto_2
    invoke-virtual {p0, p1}, Ll5/f;->x(Ll5/m;)V

    .line 26
    :try_start_1
    iget-object v5, p0, Ll5/g0;->e:Landroid/content/res/Resources;

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 27
    iput-object v1, p0, Ll5/g0;->h:Landroid/content/res/AssetFileDescriptor;

    if-eqz v1, :cond_10

    .line 28
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 29
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 30
    iput-object v0, p0, Ll5/g0;->i:Ljava/io/FileInputStream;

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    const/16 v9, 0x7d8

    if-eqz v8, :cond_7

    .line 31
    :try_start_2
    iget-wide v10, p1, Ll5/m;->f:J

    cmp-long v10, v10, v4

    if-gtz v10, :cond_6

    goto :goto_3

    .line 32
    :cond_6
    new-instance p1, Ll5/g0$a;

    invoke-direct {p1, v3, v3, v9}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    .line 33
    :cond_7
    :goto_3
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10

    .line 34
    iget-wide v12, p1, Ll5/m;->f:J

    add-long/2addr v12, v10

    .line 35
    invoke-virtual {v0, v12, v13}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v12

    sub-long/2addr v12, v10

    .line 36
    iget-wide v10, p1, Ll5/m;->f:J

    cmp-long v1, v12, v10

    if-nez v1, :cond_f

    const-wide/16 v10, 0x0

    if-nez v8, :cond_a

    .line 37
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v1, v4, v10

    if-nez v1, :cond_8

    .line 39
    iput-wide v6, p0, Ll5/g0;->j:J

    goto :goto_4

    .line 40
    :cond_8
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    sub-long/2addr v4, v0

    iput-wide v4, p0, Ll5/g0;->j:J

    cmp-long v0, v4, v10

    if-ltz v0, :cond_9

    goto :goto_4

    .line 41
    :cond_9
    new-instance p1, Ll5/g0$a;

    invoke-direct {p1, v3, v3, v9}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_a
    sub-long/2addr v4, v12

    .line 42
    iput-wide v4, p0, Ll5/g0;->j:J
    :try_end_2
    .catch Ll5/g0$a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    cmp-long v0, v4, v10

    if-ltz v0, :cond_e

    .line 43
    :goto_4
    iget-wide v0, p1, Ll5/m;->g:J

    cmp-long v3, v0, v6

    if-eqz v3, :cond_c

    .line 44
    iget-wide v3, p0, Ll5/g0;->j:J

    cmp-long v5, v3, v6

    if-nez v5, :cond_b

    goto :goto_5

    :cond_b
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_5
    iput-wide v0, p0, Ll5/g0;->j:J

    .line 45
    :cond_c
    iput-boolean v2, p0, Ll5/g0;->k:Z

    .line 46
    invoke-virtual {p0, p1}, Ll5/f;->y(Ll5/m;)V

    .line 47
    iget-wide v0, p1, Ll5/m;->g:J

    cmp-long p1, v0, v6

    if-eqz p1, :cond_d

    goto :goto_6

    :cond_d
    iget-wide v0, p0, Ll5/g0;->j:J

    :goto_6
    return-wide v0

    .line 48
    :cond_e
    :try_start_3
    new-instance p1, Ll5/k;

    invoke-direct {p1, v9}, Ll5/k;-><init>(I)V

    throw p1

    .line 49
    :cond_f
    new-instance p1, Ll5/g0$a;

    invoke-direct {p1, v3, v3, v9}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
    :try_end_3
    .catch Ll5/g0$a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 50
    new-instance v0, Ll5/g0$a;

    const/16 v1, 0x7d0

    invoke-direct {v0, v3, p1, v1}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_1
    move-exception p1

    .line 51
    throw p1

    .line 52
    :cond_10
    new-instance p1, Ll5/g0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource is compressed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-direct {p1, v0, v3, v1}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :catch_2
    move-exception p1

    .line 53
    new-instance v0, Ll5/g0$a;

    invoke-direct {v0, v3, p1, v4}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    .line 54
    :catch_3
    new-instance p1, Ll5/g0$a;

    const-string v0, "Resource identifier must be an integer."

    invoke-direct {p1, v0, v3, v5}, Ll5/g0$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1
.end method

.method public final o()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Ll5/g0;->g:Landroid/net/Uri;

    return-object v0
.end method
