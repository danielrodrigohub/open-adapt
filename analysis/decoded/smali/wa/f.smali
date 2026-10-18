.class public final Lwa/f;
.super Lrd/o;
.source "AdaptKitRemoteBroadcastReceiver.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/h2<",
        "Lv9/g;",
        ">;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lia/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lia/a<",
            "***>;"
        }
    .end annotation
.end field

.field public final synthetic i:Lwa/d$b;


# direct methods
.method public constructor <init>(Lia/a;Lwa/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lia/a<",
            "***>;",
            "Lwa/d$b;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lwa/f;->h:Lia/a;

    iput-object p2, p0, Lwa/f;->i:Lwa/d$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lv9/h2;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lwa/e;

    iget-object v1, p0, Lwa/f;->h:Lia/a;

    iget-object v2, p0, Lwa/f;->i:Lwa/d$b;

    invoke-direct {v0, v1, v2}, Lwa/e;-><init>(Lia/a;Lwa/d$b;)V

    .line 4
    iput-object v0, p1, Lv9/h2;->c:Lqd/p;

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
