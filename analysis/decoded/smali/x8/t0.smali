.class public final Lx8/t0;
.super Lrd/o;
.source "ShoeControllerUiHelper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lx8/q0;


# direct methods
.method public constructor <init>(Lx8/q0;)V
    .locals 0

    iput-object p1, p0, Lx8/t0;->h:Lx8/q0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lx8/t0;->h:Lx8/q0;

    invoke-static {v0}, Lx8/q0;->c(Lx8/q0;)Lq7/l1;

    move-result-object v0

    iget-object v0, v0, Lq7/l1;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method
