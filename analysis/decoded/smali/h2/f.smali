.class public final Lh2/f;
.super Ljava/lang/Object;
.source "NetworkFetcher.java"


# instance fields
.field public final a:Lh2/e;

.field public final b:Lh2/b;


# direct methods
.method public constructor <init>(Lh2/e;Lh2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh2/f;->a:Lh2/e;

    .line 3
    iput-object p2, p0, Lh2/f;->b:Lh2/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ly1/j0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ly1/j0<",
            "Ly1/i;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const-string p3, "application/json"

    :cond_0
    const-string v0, "application/zip"

    .line 1
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "application/x-zip"

    .line 2
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/x-zip-compressed"

    .line 3
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "\\?"

    .line 4
    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aget-object p3, p3, v0

    const-string v0, ".lottie"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lk2/c;->a()V

    .line 6
    sget-object p3, Lh2/c;->i:Lh2/c;

    if-nez p4, :cond_2

    .line 7
    invoke-static {p2, v1}, Ly1/q;->c(Ljava/io/InputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object p2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lh2/f;->a:Lh2/e;

    invoke-virtual {v0, p1, p2, p3}, Lh2/e;->c(Ljava/lang/String;Ljava/io/InputStream;Lh2/c;)Ljava/io/File;

    move-result-object p2

    .line 9
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Ly1/q;->c(Ljava/io/InputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-static {}, Lk2/c;->a()V

    .line 11
    sget-object p3, Lh2/c;->j:Lh2/c;

    if-nez p4, :cond_4

    .line 12
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Ly1/q;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object p2

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lh2/f;->a:Lh2/e;

    invoke-virtual {v0, p1, p2, p3}, Lh2/e;->c(Ljava/lang/String;Ljava/io/InputStream;Lh2/c;)Ljava/io/File;

    move-result-object p2

    .line 14
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Ly1/q;->f(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object p2

    :goto_1
    if-eqz p4, :cond_5

    .line 15
    iget-object p4, p2, Ly1/j0;->a:Ljava/lang/Object;

    if-eqz p4, :cond_5

    .line 16
    iget-object p4, p0, Lh2/f;->a:Lh2/e;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 17
    invoke-static {p1, p3, v0}, Lh2/e;->a(Ljava/lang/String;Lh2/c;Z)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p3, Ljava/io/File;

    invoke-virtual {p4}, Lh2/e;->b()Ljava/io/File;

    move-result-object p4

    invoke-direct {p3, p4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p4, ".temp"

    const-string v0, ""

    invoke-virtual {p1, p4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p3, p4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    .line 22
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lk2/c;->a()V

    if-nez p1, :cond_5

    const-string p1, "Unable to rename cache file "

    .line 23
    invoke-static {p1}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 24
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk2/c;->b(Ljava/lang/String;)V

    :cond_5
    return-object p2
.end method
