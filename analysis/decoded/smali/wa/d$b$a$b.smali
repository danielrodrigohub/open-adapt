.class public final Lwa/d$b$a$b;
.super Lrd/o;
.source "AdaptKitRemoteBroadcastReceiver.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/d$b$a;-><init>(Lia/a;Ljava/util/concurrent/CompletableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/j;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lwa/d$b$a;


# direct methods
.method public constructor <init>(Lwa/d$b$a;)V
    .locals 0

    iput-object p1, p0, Lwa/d$b$a$b;->h:Lwa/d$b$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lv9/j;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lwa/d$b$a$b;->h:Lwa/d$b$a;

    .line 4
    iget-object p1, p1, Lv9/j;->k:Ljava/lang/String;

    .line 5
    iget-object v1, v0, Lwa/d$b$a;->a:Lia/a;

    sget-object v2, Lwa/d;->h:Lwa/d;

    invoke-virtual {v2}, Lwa/a;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lia/a;->c(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 6
    iget-object p1, v0, Lwa/d$b$a;->b:Ljava/util/concurrent/CompletableFuture;

    sget-object v0, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-object v0
.end method
