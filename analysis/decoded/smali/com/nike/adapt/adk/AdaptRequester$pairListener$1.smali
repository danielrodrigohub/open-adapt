.class final Lcom/nike/adapt/adk/AdaptRequester$pairListener$1;
.super Lrd/o;
.source "AdaptRequester.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/adk/AdaptRequester;-><init>(Li8/d;Landroidx/lifecycle/i;Ljava/lang/String;Lqd/a;Lqd/a;Lqd/l;)V
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
.field public final synthetic this$0:Lcom/nike/adapt/adk/AdaptRequester;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/AdaptRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lv9/i;

    invoke-virtual {p0, p1}, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1;->invoke(Lv9/i;)V

    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method

.method public final invoke(Lv9/i;)V
    .locals 2

    const-string v0, "$this$deviceControllerListener"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1;

    iget-object v1, p0, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1;->this$0:Lcom/nike/adapt/adk/AdaptRequester;

    invoke-direct {v0, v1}, Lcom/nike/adapt/adk/AdaptRequester$pairListener$1$1;-><init>(Lcom/nike/adapt/adk/AdaptRequester;)V

    .line 3
    iput-object v0, p1, Lv9/i;->c:Lqd/l;

    return-void
.end method
