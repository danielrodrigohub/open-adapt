.class public final Landroidx/lifecycle/a0;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/q;


# static fields
.field public static final m:Landroidx/lifecycle/a0;


# instance fields
.field public h:I

.field public i:I

.field public j:Z

.field public final k:Landroidx/lifecycle/r;

.field public l:Landroidx/lifecycle/a0$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0}, Landroidx/lifecycle/a0;-><init>()V

    sput-object v0, Landroidx/lifecycle/a0;->m:Landroidx/lifecycle/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/lifecycle/a0;->h:I

    .line 3
    iput v0, p0, Landroidx/lifecycle/a0;->i:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/lifecycle/a0;->j:Z

    .line 5
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0, p0}, Landroidx/lifecycle/r;-><init>(Landroidx/lifecycle/q;)V

    iput-object v0, p0, Landroidx/lifecycle/a0;->k:Landroidx/lifecycle/r;

    .line 6
    new-instance v0, Landroidx/lifecycle/a0$a;

    invoke-direct {v0, p0}, Landroidx/lifecycle/a0$a;-><init>(Landroidx/lifecycle/a0;)V

    iput-object v0, p0, Landroidx/lifecycle/a0;->l:Landroidx/lifecycle/a0$a;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/i;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/a0;->k:Landroidx/lifecycle/r;

    return-object v0
.end method
