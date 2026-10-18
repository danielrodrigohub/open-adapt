.class public final Lde/w;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lde/h0;)Lde/e;
    .locals 1

    const-string v0, "<this>"

    .line 1
    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lde/c0;

    invoke-direct {v0, p0}, Lde/c0;-><init>(Lde/h0;)V

    return-object v0
.end method

.method public static final b(Lde/j0;)Lde/f;
    .locals 1

    const-string v0, "<this>"

    .line 1
    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lde/d0;

    invoke-direct {v0, p0}, Lde/d0;-><init>(Lde/j0;)V

    return-object v0
.end method

.method public static final c(Ljava/lang/AssertionError;)Z
    .locals 2

    .line 1
    sget-object v0, Lde/x;->a:Ljava/util/logging/Logger;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "getsockname failed"

    invoke-static {p0, v0}, Lyd/s;->i0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static final d(Ljava/io/File;Z)Lde/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    sget-object v0, Lde/x;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 3
    new-instance p0, Lde/z;

    new-instance p1, Lde/k0;

    invoke-direct {p1}, Lde/k0;-><init>()V

    invoke-direct {p0, v0, p1}, Lde/z;-><init>(Ljava/io/OutputStream;Lde/k0;)V

    return-object p0
.end method

.method public static final e(Ljava/net/Socket;)Lde/h0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lde/x;->a:Ljava/util/logging/Logger;

    const-string v0, "<this>"

    .line 2
    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lde/i0;

    invoke-direct {v0, p0}, Lde/i0;-><init>(Ljava/net/Socket;)V

    .line 4
    new-instance v1, Lde/z;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const-string v2, "getOutputStream()"

    invoke-static {p0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lde/z;-><init>(Ljava/io/OutputStream;Lde/k0;)V

    .line 5
    invoke-virtual {v0, v1}, Lde/a;->sink(Lde/h0;)Lde/h0;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/io/InputStream;)Lde/j0;
    .locals 2

    .line 1
    sget-object v0, Lde/x;->a:Ljava/util/logging/Logger;

    const-string v0, "<this>"

    .line 2
    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lde/s;

    new-instance v1, Lde/k0;

    invoke-direct {v1}, Lde/k0;-><init>()V

    invoke-direct {v0, p0, v1}, Lde/s;-><init>(Ljava/io/InputStream;Lde/k0;)V

    return-object v0
.end method

.method public static final g(Ljava/net/Socket;)Lde/j0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lde/x;->a:Ljava/util/logging/Logger;

    const-string v0, "<this>"

    .line 2
    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lde/i0;

    invoke-direct {v0, p0}, Lde/i0;-><init>(Ljava/net/Socket;)V

    .line 4
    new-instance v1, Lde/s;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-string v2, "getInputStream()"

    invoke-static {p0, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lde/s;-><init>(Ljava/io/InputStream;Lde/k0;)V

    .line 5
    invoke-virtual {v0, v1}, Lde/a;->source(Lde/j0;)Lde/j0;

    move-result-object p0

    return-object p0
.end method
