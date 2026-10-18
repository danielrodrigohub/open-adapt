.class public final Lcom/nike/adapt/ui/modes/ModeEditActivity$a;
.super Lrd/o;
.source "ModeEditActivity.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nike/adapt/ui/modes/ModeEditActivity;-><init>()V
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
.field public final synthetic h:Lcom/nike/adapt/ui/modes/ModeEditActivity;


# direct methods
.method public constructor <init>(Lcom/nike/adapt/ui/modes/ModeEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity$a;->h:Lcom/nike/adapt/ui/modes/ModeEditActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nike/adapt/ui/modes/ModeEditActivity$a;->h:Lcom/nike/adapt/ui/modes/ModeEditActivity;

    invoke-virtual {v0}, Lp8/q;->onBackPressed()V

    .line 2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
