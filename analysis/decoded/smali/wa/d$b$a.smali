.class public final Lwa/d$b$a;
.super Ljava/lang/Object;
.source "AdaptKitRemoteBroadcastReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lia/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lia/a<",
            "***>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lwa/d$b$a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/j;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lwa/d$b$a$a;
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
.method public constructor <init>(Lia/a;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lia/a<",
            "***>;",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/d$b$a;->a:Lia/a;

    .line 3
    iput-object p2, p0, Lwa/d$b$a;->b:Ljava/util/concurrent/CompletableFuture;

    .line 4
    new-instance p1, Lwa/d$b$a$b;

    invoke-direct {p1, p0}, Lwa/d$b$a$b;-><init>(Lwa/d$b$a;)V

    iput-object p1, p0, Lwa/d$b$a;->c:Lwa/d$b$a$b;

    .line 5
    new-instance p1, Lwa/d$b$a$a;

    invoke-direct {p1, p0}, Lwa/d$b$a$a;-><init>(Lwa/d$b$a;)V

    iput-object p1, p0, Lwa/d$b$a;->d:Lwa/d$b$a$a;

    return-void
.end method
