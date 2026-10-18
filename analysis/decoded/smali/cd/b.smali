.class public final Lcd/b;
.super Ljava/lang/Object;
.source "SecureFile.kt"

# interfaces
.implements Lcd/f;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lc1/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcd/b;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcd/b;->b:Lc1/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcd/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/io/FileOutputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lcd/b;->b:Lc1/a;

    .line 2
    iget-object v1, v0, Lc1/a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, v0, Lc1/a;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 4
    iget-object v2, v0, Lc1/a;->b:Ly6/n;

    iget-object v0, v0, Lc1/a;->a:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 6
    invoke-interface {v2, v1, v0}, Ly6/n;->a(Ljava/io/OutputStream;[B)Ljava/io/OutputStream;

    move-result-object v0

    .line 7
    new-instance v2, Lc1/a$b;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lc1/a$b;-><init>(Ljava/io/FileDescriptor;Ljava/io/OutputStream;)V

    return-object v2

    .line 8
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "output file already exists, please use a new file: "

    .line 9
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    iget-object v0, v0, Lc1/a;->a:Ljava/io/File;

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Ljava/io/FileInputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lcd/b;->b:Lc1/a;

    .line 2
    iget-object v1, v0, Lc1/a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, v0, Lc1/a;->a:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    iget-object v2, v0, Lc1/a;->b:Ly6/n;

    iget-object v0, v0, Lc1/a;->a:Ljava/io/File;

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 6
    invoke-interface {v2, v1, v0}, Ly6/n;->b(Ljava/io/InputStream;[B)Ljava/io/InputStream;

    move-result-object v0

    .line 7
    new-instance v2, Lc1/a$a;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lc1/a$a;-><init>(Ljava/io/FileDescriptor;Ljava/io/InputStream;)V

    return-object v2

    .line 8
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "file doesn\'t exist: "

    .line 9
    invoke-static {v2}, La0/b;->c(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    iget-object v0, v0, Lc1/a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
