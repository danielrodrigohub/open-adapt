.class public final Landroidx/fragment/app/s;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field public final a:Landroidx/fragment/app/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/u<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/u;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/u<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/s;->a:Landroidx/fragment/app/u;

    iget-object v0, v0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    invoke-virtual {v0}, Landroidx/fragment/app/x;->R()V

    return-void
.end method
