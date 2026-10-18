.class public final Landroidx/fragment/app/h;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Landroidx/fragment/app/p0$b;

.field public final synthetic i:Landroidx/fragment/app/p0$b;

.field public final synthetic j:Z

.field public final synthetic k:Lp/a;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p0$b;Landroidx/fragment/app/p0$b;ZLp/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/h;->h:Landroidx/fragment/app/p0$b;

    iput-object p2, p0, Landroidx/fragment/app/h;->i:Landroidx/fragment/app/p0$b;

    iput-boolean p3, p0, Landroidx/fragment/app/h;->j:Z

    iput-object p4, p0, Landroidx/fragment/app/h;->k:Lp/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/h;->h:Landroidx/fragment/app/p0$b;

    .line 2
    iget-object v0, v0, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 3
    iget-object v1, p0, Landroidx/fragment/app/h;->i:Landroidx/fragment/app/p0$b;

    .line 4
    iget-object v1, v1, Landroidx/fragment/app/p0$b;->c:Landroidx/fragment/app/m;

    .line 5
    iget-boolean v2, p0, Landroidx/fragment/app/h;->j:Z

    .line 6
    invoke-static {v0, v1, v2}, Landroidx/fragment/app/h0;->a(Landroidx/fragment/app/m;Landroidx/fragment/app/m;Z)V

    return-void
.end method
