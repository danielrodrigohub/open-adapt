.class public final Lm9/f;
.super Lrd/o;
.source "FirmwareCheckForUpdatesFragment.kt"

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
.field public final synthetic h:Lm9/e;


# direct methods
.method public constructor <init>(Lm9/e;)V
    .locals 0

    iput-object p1, p0, Lm9/f;->h:Lm9/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lm9/f;->h:Lm9/e;

    invoke-virtual {v0}, Landroidx/fragment/app/m;->i()Landroidx/fragment/app/p;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2
    :cond_0
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
