.class public final Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;
.super Lld/i;
.source "ModeSelectionActivity.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c;->a(Landroid/content/Context;Lcom/nike/adapt/ui/helper/BottomSheet;)V
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
    c = "com.nike.adapt.ui.modes.ModeSelectionActivity$setBottomSheetDialog$1$onPrimaryButtonClicked$1"
    f = "ModeSelectionActivity.kt"
    l = {
        0x120
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/modes/ModeSelectionActivity;ZLjd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nike/adapt/ui/modes/ModeSelectionActivity;",
            "Z",
            "Ljd/d<",
            "-",
            "Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->i:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

    iput-boolean p2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->j:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 2
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

    new-instance p1, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;

    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->i:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

    iget-boolean v1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->j:Z

    invoke-direct {p1, v0, v1, p2}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;-><init>(Lcom/nike/adapt/ui/modes/ModeSelectionActivity;ZLjd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkd/a;->h:Lkd/a;

    .line 1
    iget v1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    const-wide/16 v3, 0xc8

    .line 4
    iput v2, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->h:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLjd/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->i:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

    iget-boolean v0, p0, Lcom/nike/adapt/ui/modes/ModeSelectionActivity$c$a;->j:Z

    sget v1, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->U:I

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 7
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->presetsUpdated()V

    goto :goto_1

    .line 8
    :cond_3
    sget-object v0, Lcom/nike/adapt/analytics/TrackManager;->INSTANCE:Lcom/nike/adapt/analytics/TrackManager;

    invoke-virtual {v0}, Lcom/nike/adapt/analytics/TrackManager;->presetsCreated()V

    .line 9
    :goto_1
    sget v0, Lh8/d;->a:I

    .line 10
    sget-object v0, Lh8/e;->b:Lh8/e;

    .line 11
    sget-object v1, Ls9/p;->a:Ls9/p;

    iget-object v3, p1, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->R:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ls9/p;->k(Ljava/lang/String;)Ls9/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh8/e;->e(Ls9/r;)V

    .line 12
    iget-object v1, p1, Lcom/nike/adapt/ui/modes/ModeSelectionActivity;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lh8/e;->a(Ljava/lang/String;)V

    .line 13
    sget-object v1, Lv7/h;->o:Lv7/h;

    invoke-virtual {v0, v1}, Lh8/e;->i(Lv7/h;)V

    .line 14
    new-instance v0, Lh9/m;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lh9/m;-><init>(ZILrd/h;)V

    invoke-virtual {v0, p1}, Lh9/a;->e(Landroid/app/Activity;)V

    .line 15
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
