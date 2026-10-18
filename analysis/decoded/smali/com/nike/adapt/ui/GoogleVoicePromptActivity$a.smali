.class public final Lcom/nike/adapt/ui/GoogleVoicePromptActivity$a;
.super Lrd/o;
.source "GoogleVoicePromptActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/GoogleVoicePromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/GoogleVoicePromptActivity$a;->h:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/GoogleVoicePromptActivity$a;->h:Lcom/nike/adapt/ui/GoogleVoicePromptActivity;

    sget v1, Lcom/nike/adapt/ui/GoogleVoicePromptActivity;->F:I

    .line 2
    iget-object v2, v0, Lp8/q;->A:Lcom/nike/adapt/coroutine/MainCoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    new-instance v5, Lo8/h;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lo8/h;-><init>(Lcom/nike/adapt/ui/GoogleVoicePromptActivity;Ljd/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Ljd/f;Lkotlinx/coroutines/CoroutineStart;Lqd/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 4
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
