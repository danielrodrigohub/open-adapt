.class public final Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$b;
.super Lrd/o;
.source "AdaptUniteLoginActivity.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroidx/appcompat/app/d;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/AdaptUniteLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$b;->h:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "dialog"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/nike/adapt/ui/AdaptUniteLoginActivity$a$a$b;->h:Lcom/nike/adapt/ui/AdaptUniteLoginActivity;

    invoke-virtual {p1}, Lcom/nike/adapt/ui/AdaptUniteLoginActivity;->onBackPressed()V

    .line 5
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
