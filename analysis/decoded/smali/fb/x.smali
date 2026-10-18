.class public final Lfb/x;
.super Lrd/o;
.source "SessionDownload.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lfb/s$a;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lfb/s;

.field public final synthetic i:F

.field public final synthetic j:I

.field public final synthetic k:Lla/c;

.field public final synthetic l:Lmc/b0;

.field public final synthetic m:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfb/s;FILla/c;Lmc/b0;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfb/s;",
            "FI",
            "Lla/c;",
            "Lmc/b0;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lfb/x;->h:Lfb/s;

    iput p2, p0, Lfb/x;->i:F

    iput p3, p0, Lfb/x;->j:I

    iput-object p4, p0, Lfb/x;->k:Lla/c;

    iput-object p5, p0, Lfb/x;->l:Lmc/b0;

    iput-object p6, p0, Lfb/x;->m:Ljava/util/concurrent/CompletableFuture;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    move-object v4, p1

    check-cast v4, Lfb/s$a;

    const-string p1, "command"

    .line 2
    invoke-static {v4, p1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lfb/x;->h:Lfb/s;

    .line 4
    iget-object p1, v1, Lfb/s;->d:Lhc/l0;

    .line 5
    iget-object v0, v1, Lfb/s;->c:Lla/b;

    .line 6
    iget v6, v0, Lla/b;->h:I

    .line 7
    iget v0, p0, Lfb/x;->i:F

    float-to-int v7, v0

    .line 8
    iget v8, p0, Lfb/x;->j:I

    .line 9
    new-instance v9, Lfb/w;

    iget-object v2, p0, Lfb/x;->k:Lla/c;

    iget-object v3, p0, Lfb/x;->l:Lmc/b0;

    iget-object v5, p0, Lfb/x;->m:Ljava/util/concurrent/CompletableFuture;

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lfb/w;-><init>(Lfb/s;Lla/c;Lmc/b0;Lfb/s$a;Ljava/util/concurrent/CompletableFuture;)V

    .line 10
    invoke-interface {p1, v6, v7, v8, v9}, Lhc/l0;->x(IIILnc/b;)Lhc/a;

    .line 11
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
