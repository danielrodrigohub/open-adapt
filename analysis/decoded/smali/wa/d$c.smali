.class public final Lwa/d$c;
.super Lrd/o;
.source "AdaptKitRemoteBroadcastReceiver.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/d;->g(Lv9/l;Lwa/d$b;Lia/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/i;",
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

    iput-object p1, p0, Lwa/d$c;->h:Lia/a;

    iput-object p2, p0, Lwa/d$c;->i:Lwa/d$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lv9/i;

    const-string v0, "$this$deviceControllerListener"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lwa/f;

    iget-object v1, p0, Lwa/d$c;->h:Lia/a;

    iget-object v2, p0, Lwa/d$c;->i:Lwa/d$b;

    invoke-direct {v0, v1, v2}, Lwa/f;-><init>(Lia/a;Lwa/d$b;)V

    .line 4
    iput-object v0, p1, Lv9/i;->e:Lqd/l;

    .line 5
    new-instance v0, Lwa/h;

    iget-object v1, p0, Lwa/d$c;->h:Lia/a;

    iget-object v2, p0, Lwa/d$c;->i:Lwa/d$b;

    invoke-direct {v0, v1, v2}, Lwa/h;-><init>(Lia/a;Lwa/d$b;)V

    .line 6
    iput-object v0, p1, Lv9/i;->f:Lqd/l;

    .line 7
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
