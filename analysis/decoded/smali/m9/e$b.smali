.class public final Lm9/e$b;
.super Lrd/o;
.source "FirmwareCheckForUpdatesFragment.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm9/e;-><init>()V
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
        "Lu8/q;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lm9/e;


# direct methods
.method public constructor <init>(Lm9/e;)V
    .locals 0

    iput-object p1, p0, Lm9/e$b;->h:Lm9/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Lu8/q;

    .line 1
    new-instance v7, Lu8/q;

    .line 2
    iget-object v1, p0, Lm9/e$b;->h:Lm9/e;

    invoke-virtual {v1}, Landroidx/fragment/app/m;->d0()Landroidx/fragment/app/p;

    move-result-object v2

    .line 3
    new-instance v3, Lm9/f;

    iget-object v1, p0, Lm9/e$b;->h:Lm9/e;

    invoke-direct {v3, v1}, Lm9/f;-><init>(Lm9/e;)V

    const-wide/16 v4, 0x2710

    const/16 v6, 0xc

    move-object v1, v7

    .line 4
    invoke-direct/range {v1 .. v6}, Lu8/q;-><init>(Landroid/app/Activity;Lqd/a;JI)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    .line 5
    invoke-static {v0}, Landroidx/lifecycle/o;->e([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
