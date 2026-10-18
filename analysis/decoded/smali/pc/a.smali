.class public final Lpc/a;
.super Lpc/b;
.source "BasicUpdatingCommandResponse.kt"


# instance fields
.field public final b:Llc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llc/a<",
            "Ljava/lang/Boolean;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Llc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llc/a<",
            "Ljava/lang/Boolean;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "updatingRequest"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lpc/b;-><init>(Llc/b;)V

    iput-object p1, p0, Lpc/a;->b:Llc/a;

    return-void
.end method
