.class public final Lv9/g0;
.super Lrd/o;
.source "AdaptKitPairing.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lya/b;

.field public final synthetic i:Lv9/g;


# direct methods
.method public constructor <init>(Lya/b;Lv9/g;)V
    .locals 0

    iput-object p1, p0, Lv9/g0;->h:Lya/b;

    iput-object p2, p0, Lv9/g0;->i:Lv9/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0xc8

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    iget-object v0, p0, Lv9/g0;->h:Lya/b;

    iget-object v1, p0, Lv9/g0;->i:Lv9/g;

    invoke-virtual {v1}, Lv9/g;->a()Lv9/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lya/b;->s(Lv9/a;)V

    .line 3
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
