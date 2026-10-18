.class public final Lokhttp3/internal/connection/TlsHandshakeKt;
.super Ljava/lang/Object;
.source "tlsHandshake.kt"


# direct methods
.method public static final retryTlsHandshake(Ljava/io/IOException;)Z
    .locals 2

    const-string v0, "e"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 5
    :cond_3
    instance-of p0, p0, Ljavax/net/ssl/SSLException;

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method
