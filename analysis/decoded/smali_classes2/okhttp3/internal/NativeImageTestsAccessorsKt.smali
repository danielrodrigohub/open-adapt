.class public final Lokhttp3/internal/NativeImageTestsAccessorsKt;
.super Ljava/lang/Object;
.source "NativeImageTestsAccessors.kt"


# direct methods
.method public static final buildCache(Lde/a0;JLde/k;)Lokhttp3/Cache;
    .locals 1

    const-string v0, "file"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/Cache;

    invoke-direct {v0, p0, p1, p2, p3}, Lokhttp3/Cache;-><init>(Lde/a0;JLde/k;)V

    return-object v0
.end method

.method public static final finishedAccessor(Lokhttp3/Dispatcher;Lokhttp3/internal/connection/RealCall$AsyncCall;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->finished$okhttp(Lokhttp3/internal/connection/RealCall$AsyncCall;)V

    return-void
.end method

.method public static final getConnectionAccessor(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/connection/RealConnection;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/internal/connection/Exchange;->getConnection$okhttp()Lokhttp3/internal/connection/RealConnection;

    move-result-object p0

    return-object p0
.end method

.method public static final getExchangeAccessor(Lokhttp3/Response;)Lokhttp3/internal/connection/Exchange;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/Response;->exchange()Lokhttp3/internal/connection/Exchange;

    move-result-object p0

    return-object p0
.end method

.method public static final getIdleAtNsAccessor(Lokhttp3/internal/connection/RealConnection;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/internal/connection/RealConnection;->getIdleAtNs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final setIdleAtNsAccessor(Lokhttp3/internal/connection/RealConnection;J)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/connection/RealConnection;->setIdleAtNs(J)V

    return-void
.end method
