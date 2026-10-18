.class public final Lw9/x$p;
.super Lrd/o;
.source "AdaptKitPairDevicesController.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw9/x;->H(Lw9/a;Lqd/l;Lqd/l;)V
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
.field public final synthetic h:Lw9/x;

.field public final synthetic i:Lw9/a;

.field public final synthetic j:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/h;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw9/x;Lw9/a;Lqd/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/x;",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/h;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/x$p;->h:Lw9/x;

    iput-object p2, p0, Lw9/x$p;->i:Lw9/a;

    iput-object p3, p0, Lw9/x$p;->j:Lqd/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lw9/x$p;->h:Lw9/x;

    iget-object v1, p0, Lw9/x$p;->i:Lw9/a;

    iget-object v2, p0, Lw9/x$p;->j:Lqd/l;

    invoke-virtual {v0, v1, v2}, Lw9/x;->o(Lw9/a;Lqd/l;)V

    .line 2
    sget-object v0, Lfd/o;->a:Lfd/o;

    return-object v0
.end method
