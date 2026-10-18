.class public abstract Landroidx/fragment/app/u;
.super Landroidx/fragment/app/r;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/r;"
    }
.end annotation


# instance fields
.field public final h:Landroid/app/Activity;

.field public final i:Landroid/content/Context;

.field public final j:Landroid/os/Handler;

.field public final k:Landroidx/fragment/app/y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/p;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/r;-><init>()V

    .line 3
    new-instance v1, Landroidx/fragment/app/y;

    invoke-direct {v1}, Landroidx/fragment/app/y;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/u;->k:Landroidx/fragment/app/y;

    .line 4
    iput-object p1, p0, Landroidx/fragment/app/u;->h:Landroid/app/Activity;

    const-string v1, "context == null"

    .line 5
    invoke-static {p1, v1}, Lc3/d;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/fragment/app/u;->i:Landroid/content/Context;

    .line 6
    iput-object v0, p0, Landroidx/fragment/app/u;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract k()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract l()Landroid/view/LayoutInflater;
.end method

.method public abstract m()V
.end method
