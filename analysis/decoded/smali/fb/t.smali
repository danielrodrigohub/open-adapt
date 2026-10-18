.class public final Lfb/t;
.super Ljava/lang/Object;
.source "SessionDownload.kt"

# interfaces
.implements Lnc/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnc/c<",
        "Lmc/b0;",
        "Lmc/a0;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:Lmc/a0;

.field public final synthetic i:Lfb/s;

.field public final synthetic j:Lfb/s$a;

.field public final synthetic k:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfb/s;Lfb/s$a;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfb/s;",
            "Lfb/s$a;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfb/t;->i:Lfb/s;

    iput-object p2, p0, Lfb/t;->j:Lfb/s$a;

    iput-object p3, p0, Lfb/t;->k:Ljava/util/concurrent/CompletableFuture;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Lmc/a0;

    .line 3
    iget-object p1, p1, Lfb/s;->c:Lla/b;

    .line 4
    iget p1, p1, Lla/b;->h:I

    .line 5
    invoke-direct {p2, p1}, Lmc/a0;-><init>(I)V

    iput-object p2, p0, Lfb/t;->h:Lmc/a0;

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfb/t;->h:Lmc/a0;

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lmc/b0;

    const-string v0, "response"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lfb/t;->j:Lfb/s$a;

    sget-object v1, Lfd/o;->a:Lfd/o;

    invoke-virtual {v0, v1}, Lya/h0;->j(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lfb/t;->i:Lfb/s;

    iget-object v1, p0, Lfb/t;->k:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p1, v1}, Lfb/s;->b(Lfb/s;Lmc/b0;Ljava/util/concurrent/CompletableFuture;)V

    return-void
.end method

.method public final k(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lfb/t;->j:Lfb/s$a;

    invoke-virtual {v0, p1}, Lya/h0;->k(Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lfb/t;->k:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Lfd/o;->a:Lfd/o;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lfb/t;->i:Lfb/s;

    .line 4
    iget-object v0, v0, Lfb/s;->j:Lfb/y;

    .line 5
    invoke-virtual {v0, p1}, Lfb/y;->d(Ljava/lang/Throwable;)V

    return-void
.end method
