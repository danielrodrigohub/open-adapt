.class public final Lfb/a0;
.super Lrd/o;
.source "SessionDownload.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Lfb/s$a;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lfb/s;


# direct methods
.method public constructor <init>(Lfb/s;)V
    .locals 0

    iput-object p1, p0, Lfb/a0;->h:Lfb/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lfb/s$a;

    const-string v0, "command"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lfb/a0;->h:Lfb/s;

    .line 4
    iget-object v0, v0, Lfb/s;->d:Lhc/l0;

    .line 5
    new-instance v1, Lfb/z;

    invoke-direct {v1, p1}, Lfb/z;-><init>(Lfb/s$a;)V

    invoke-interface {v0, v1}, Lhc/l0;->K(Lnc/a;)V

    .line 6
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
