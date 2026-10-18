.class public Lpc/b;
.super Lpc/c;
.source "BooleanCommandResponse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpc/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Llc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llc/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lpc/c;-><init>(Llc/b;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lpc/b;->d([B)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c([B)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lpc/b;->d([B)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lpc/c;->a:Llc/b;

    .line 3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Llc/b;->j(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lpc/c;->a:Llc/b;

    .line 5
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Response was NAK\'d"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    iget-object v0, p0, Lpc/c;->a:Llc/b;

    .line 7
    invoke-interface {v0, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final d([B)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lhc/m0;->a([B)Lhc/m0;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lhc/m0;->b:Lhc/m0$a;

    sget-object v0, Lhc/m0$a;->k:Lhc/m0$a;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Response was empty"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
