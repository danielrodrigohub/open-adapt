.class public final Ln8/d;
.super Lrd/o;
.source "AdaptAuthenticationService.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lv9/k0;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/service/AdaptAuthenticationService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/AdaptAuthenticationService;)V
    .locals 0

    iput-object p1, p0, Ln8/d;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lv9/k0;

    const-string v0, "$this$pairingListener"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ln8/a;

    iget-object v1, p0, Ln8/d;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    invoke-direct {v0, v1}, Ln8/a;-><init>(Lcom/nike/adapt/service/AdaptAuthenticationService;)V

    .line 4
    iput-object v0, p1, Lv9/k0;->c:Lqd/l;

    .line 5
    new-instance v0, Ln8/b;

    iget-object v1, p0, Ln8/d;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    invoke-direct {v0, v1}, Ln8/b;-><init>(Lcom/nike/adapt/service/AdaptAuthenticationService;)V

    .line 6
    iput-object v0, p1, Lv9/k0;->d:Lqd/l;

    .line 7
    new-instance v0, Ln8/c;

    iget-object v1, p0, Ln8/d;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    invoke-direct {v0, v1}, Ln8/c;-><init>(Lcom/nike/adapt/service/AdaptAuthenticationService;)V

    .line 8
    iput-object v0, p1, Lv9/k0;->e:Lqd/l;

    .line 9
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
