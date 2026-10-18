.class public final Lya/r;
.super Lrd/o;
.source "AdaptKitControlsRepositories.kt"

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
.field public final synthetic h:Lv9/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lv9/f;


# direct methods
.method public constructor <init>(Lv9/p0;Lv9/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv9/p0<",
            "Lv9/g;",
            "Lv9/f;",
            ">;",
            "Lv9/f;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lya/r;->h:Lv9/p0;

    iput-object p2, p0, Lya/r;->i:Lv9/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lya/r;->h:Lv9/p0;

    iget-object v1, p0, Lya/r;->i:Lv9/f;

    invoke-interface {v0, v1}, Lv9/p0;->b(Lv9/m;)V

    .line 2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
