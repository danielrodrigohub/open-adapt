.class public final Lw9/p1;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/p<",
        "Lv9/y1;",
        "Lw9/u1;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic i:Lv9/a;

.field public final synthetic j:Ljd/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd/d<",
            "Lba/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lv9/a;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lv9/a;",
            "Ljd/d<",
            "-",
            "Lba/e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/p1;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lw9/p1;->i:Lv9/a;

    iput-object p3, p0, Lw9/p1;->j:Ljd/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lv9/y1;

    check-cast p2, Lw9/u1;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lw9/p1;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    iget-object p2, p1, Lv9/y1;->m:Lv9/a;

    .line 5
    iget-object v0, p0, Lw9/p1;->i:Lv9/a;

    invoke-static {p2, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lw9/p1;->j:Ljd/d;

    .line 7
    iget-object p1, p1, Lv9/y1;->n:Lba/e;

    .line 8
    invoke-interface {p2, p1}, Ljd/d;->resumeWith(Ljava/lang/Object;)V

    .line 9
    :cond_0
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
