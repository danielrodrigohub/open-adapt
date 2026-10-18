.class public final Lwa/d$b;
.super Ljava/lang/Object;
.source "AdaptKitRemoteBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/d$b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Bundle;

.field public final b:Lv9/l;

.field public final c:Lwa/d$a;

.field public final d:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lwa/d$b$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/j;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lwa/d$b$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/r;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lia/a;Lv9/l;Lwa/d$a;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Lia/a<",
            "***>;",
            "Lv9/l;",
            "Lwa/d$a;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/d$b;->a:Landroid/os/Bundle;

    .line 3
    iput-object p3, p0, Lwa/d$b;->b:Lv9/l;

    .line 4
    iput-object p4, p0, Lwa/d$b;->c:Lwa/d$a;

    .line 5
    iput-object p5, p0, Lwa/d$b;->d:Ljava/util/concurrent/CompletableFuture;

    .line 6
    new-instance p1, Lwa/d$b$a;

    invoke-direct {p1, p2, p5}, Lwa/d$b$a;-><init>(Lia/a;Ljava/util/concurrent/CompletableFuture;)V

    .line 7
    iget-object p2, p1, Lwa/d$b$a;->c:Lwa/d$b$a$b;

    .line 8
    iput-object p2, p0, Lwa/d$b;->e:Lwa/d$b$a$b;

    .line 9
    iget-object p1, p1, Lwa/d$b$a;->d:Lwa/d$b$a$a;

    .line 10
    iput-object p1, p0, Lwa/d$b;->f:Lwa/d$b$a$a;

    return-void
.end method
