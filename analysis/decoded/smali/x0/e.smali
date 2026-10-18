.class public final Lx0/e;
.super Landroidx/recyclerview/widget/h0;
.source "PreferenceRecyclerViewAccessibilityDelegate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final f:Landroidx/recyclerview/widget/RecyclerView;

.field public final g:Landroidx/recyclerview/widget/h0$a;

.field public final h:Lx0/e$a;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/h0;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/h0;->e:Landroidx/recyclerview/widget/h0$a;

    .line 3
    iput-object v0, p0, Lx0/e;->g:Landroidx/recyclerview/widget/h0$a;

    .line 4
    new-instance v0, Lx0/e$a;

    invoke-direct {v0, p0}, Lx0/e$a;-><init>(Lx0/e;)V

    iput-object v0, p0, Lx0/e;->h:Lx0/e$a;

    .line 5
    iput-object p1, p0, Lx0/e;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final j()Lj0/a;
    .locals 1

    iget-object v0, p0, Lx0/e;->h:Lx0/e$a;

    return-object v0
.end method
