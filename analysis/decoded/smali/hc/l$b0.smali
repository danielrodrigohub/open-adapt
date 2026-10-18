.class public final Lhc/l$b0;
.super Lrd/o;
.source "CoreRFBigfoot.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/l;->g(Lnc/d;)Lhc/a;
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
.field public final synthetic h:Lnc/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/d<",
            "Ljava/lang/Boolean;",
            "[B",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lhc/l$b0;->h:Lnc/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhc/l$b0;->h:Lnc/d;

    sget-object v1, Lfd/o;->a:Lfd/o;

    invoke-interface {v0, v1}, Llc/a;->b(Ljava/lang/Object;)V

    return-object v1
.end method
