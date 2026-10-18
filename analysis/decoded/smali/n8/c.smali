.class public final Ln8/c;
.super Lrd/o;
.source "AdaptAuthenticationService.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lha/s;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/service/AdaptAuthenticationService;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/service/AdaptAuthenticationService;)V
    .locals 0

    iput-object p1, p0, Ln8/c;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lha/s;

    const-string v0, "$this$null"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lo7/x;->a:Lo7/x;

    const-string v1, "ResetErrorDialog"

    const-string v2, "In unknownScannerError"

    invoke-virtual {v0, v1, v2}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Ln8/c;->h:Lcom/nike/adapt/service/AdaptAuthenticationService;

    new-instance v1, Ln8/o;

    sget-object v2, Lcom/nike/adapt/adk/Shoe;->BOTH:Lcom/nike/adapt/adk/Shoe;

    invoke-virtual {p1}, Lha/s;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ln8/o;-><init>(Lcom/nike/adapt/adk/Shoe;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nike/adapt/service/AdaptAuthenticationService;->c(Lcom/nike/adapt/service/AdaptAuthenticationService;Li8/b;)V

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
