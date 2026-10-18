.class public final Li9/t$c;
.super Lrd/o;
.source "CalibrateOrthoticsFragment.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li9/t;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/util/ArrayList<",
        "Lu8/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Li9/t;


# direct methods
.method public constructor <init>(Li9/t;)V
    .locals 0

    iput-object p1, p0, Li9/t$c;->h:Li9/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Lu8/g;

    new-instance v7, Lu8/q;

    iget-object v1, p0, Li9/t$c;->h:Li9/t;

    invoke-virtual {v1}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x1e

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lu8/c;

    iget-object v2, p0, Li9/t$c;->h:Li9/t;

    const v3, 0x7f0a021b

    invoke-direct {v1, v3, v2}, Lu8/c;-><init>(ILandroidx/fragment/app/m;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
