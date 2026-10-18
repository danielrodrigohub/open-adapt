.class public final synthetic Lhc/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:[B

.field public final synthetic i:Lhc/l;

.field public final synthetic j:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>([BLhc/l;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/i;->h:[B

    iput-object p2, p0, Lhc/i;->i:Lhc/l;

    iput-object p3, p0, Lhc/i;->j:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lhc/i;->h:[B

    iget-object v1, p0, Lhc/i;->i:Lhc/l;

    iget-object v2, p0, Lhc/i;->j:Ljava/util/concurrent/CompletableFuture;

    const-string v3, "$nonce"

    .line 1
    invoke-static {v0, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "this$0"

    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$completableFuture"

    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lgc/e0;->z()Lgc/e0$a;

    move-result-object v3

    .line 3
    array-length v4, v0

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lm7/i;->l([BII)Lm7/i;

    move-result-object v0

    .line 4
    invoke-virtual {v3}, Lm7/w$a;->k()V

    .line 5
    iget-object v4, v3, Lm7/w$a;->i:Lm7/w;

    check-cast v4, Lgc/e0;

    invoke-static {v4, v0}, Lgc/e0;->x(Lgc/e0;Lm7/i;)V

    .line 6
    invoke-virtual {v3}, Lm7/w$a;->h()Lm7/w;

    move-result-object v0

    check-cast v0, Lgc/e0;

    .line 7
    new-instance v3, Lhc/m0;

    .line 8
    sget-object v4, Lhc/d;->E:Lhc/d;

    const/16 v4, 0x70

    int-to-byte v4, v4

    .line 9
    sget-object v5, Lhc/m0$a;->i:Lhc/m0$a;

    .line 10
    invoke-virtual {v0}, Lm7/a;->m()[B

    move-result-object v0

    .line 11
    invoke-direct {v3, v4, v5, v0}, Lhc/m0;-><init>(BLhc/m0$a;[B)V

    .line 12
    new-instance v0, Lhc/w;

    invoke-direct {v0, v1, v2}, Lhc/w;-><init>(Lhc/l;Ljava/util/concurrent/CompletableFuture;)V

    .line 13
    iget-object v1, v1, Lhc/l;->k:Lhc/e;

    .line 14
    new-instance v2, Lhc/v;

    invoke-direct {v2, v0}, Lhc/v;-><init>(Lhc/w;)V

    const-string v0, "Start Authentication Challenge"

    .line 15
    invoke-virtual {v1, v0, v3, v2}, Lhc/e;->j(Ljava/lang/String;Lhc/m0;Lpc/c;)V

    return-void
.end method
