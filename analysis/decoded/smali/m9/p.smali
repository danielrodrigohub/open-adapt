.class public final Lm9/p;
.super Lrd/o;
.source "FirmwareUpdateAvailableFragment.kt"

# interfaces
.implements Lqd/l;


# annotations
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
.field public final synthetic h:Lm9/o;


# direct methods
.method public constructor <init>(Lm9/o;)V
    .locals 0

    iput-object p1, p0, Lm9/p;->h:Lm9/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroidx/appcompat/app/d;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lf/n;->dismiss()V

    .line 4
    iget-object p1, p0, Lm9/p;->h:Lm9/o;

    sget-object v0, Lm9/o;->p0:Lm9/o$a;

    .line 5
    invoke-virtual {p1}, Lm9/o;->u0()V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
