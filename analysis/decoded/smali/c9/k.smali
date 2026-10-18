.class public final Lc9/k;
.super Lrd/o;
.source "ModeSelectionActivity.kt"

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
.field public final synthetic h:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/modes/ModeSelectionActivity;)V
    .locals 0

    iput-object p1, p0, Lc9/k;->h:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p0, Lc9/k;->h:Lcom/nike/adapt/ui/modes/ModeSelectionActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No Device Found : "

    .line 2
    invoke-static {v2, v1, v0}, La1/d;->d(Ljava/lang/String;Ljava/lang/String;Lo7/x;)V

    .line 3
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
