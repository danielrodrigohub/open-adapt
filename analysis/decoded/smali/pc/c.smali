.class public abstract Lpc/c;
.super Ljava/lang/Object;
.source "ByteArrayCommandResponse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Llc/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llc/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llc/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llc/b<",
            "TResponse;>;)V"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc/c;->a:Llc/b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "throwable"

    .line 1
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lpc/c;->a:Llc/b;

    invoke-interface {v0, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c([B)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lpc/c;->a:Llc/b;

    .line 2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Response not present"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lpc/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lpc/c;->a:Llc/b;

    .line 5
    invoke-interface {v0, p1}, Llc/b;->j(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lpc/c;->a:Llc/b;

    .line 7
    new-instance v0, Lqc/a;

    invoke-direct {v0}, Lqc/a;-><init>()V

    invoke-interface {p1, v0}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iget-object v0, p0, Lpc/c;->a:Llc/b;

    .line 9
    invoke-interface {v0, p1}, Llc/b;->k(Ljava/lang/Throwable;)V

    return-void
.end method
