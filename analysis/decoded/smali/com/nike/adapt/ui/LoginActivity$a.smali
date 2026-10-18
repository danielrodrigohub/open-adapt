.class public final Lcom/nike/adapt/ui/LoginActivity$a;
.super Lld/i;
.source "LoginActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/LoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.LoginActivity$onCreate$1"
    f = "LoginActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/LoginActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/LoginActivity;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/LoginActivity;",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/LoginActivity$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/LoginActivity$a;->h:Lcom/nike/adapt/ui/LoginActivity;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/nike/adapt/ui/LoginActivity$a;

    iget-object v0, p0, Lcom/nike/adapt/ui/LoginActivity$a;->h:Lcom/nike/adapt/ui/LoginActivity;

    invoke-direct {p1, v0, p2}, Lcom/nike/adapt/ui/LoginActivity$a;-><init>(Lcom/nike/adapt/ui/LoginActivity;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/LoginActivity$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/LoginActivity$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/LoginActivity$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V
    iget-object v0, p0, Lcom/nike/adapt/ui/LoginActivity$a;->h:Lcom/nike/adapt/ui/LoginActivity;
    new-instance v1, Landroid/content/Intent;
    const-class v2, Lcom/nike/adapt/SplashScreenActivity;
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    sget-object v0, Lfd/o;->a:Lfd/o;
    return-object v0
.end method
