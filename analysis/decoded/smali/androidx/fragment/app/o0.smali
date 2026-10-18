.class public final Landroidx/fragment/app/o0;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Landroidx/fragment/app/p0$a;

.field public final synthetic i:Landroidx/fragment/app/p0;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p0;Landroidx/fragment/app/p0$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/o0;->i:Landroidx/fragment/app/p0;

    iput-object p2, p0, Landroidx/fragment/app/o0;->h:Landroidx/fragment/app/p0$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/o0;->i:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/o0;->h:Landroidx/fragment/app/p0$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Landroidx/fragment/app/o0;->i:Landroidx/fragment/app/p0;

    iget-object v0, v0, Landroidx/fragment/app/p0;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/o0;->h:Landroidx/fragment/app/p0$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
