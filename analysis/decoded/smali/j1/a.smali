.class public abstract Lj1/a;
.super Ljava/lang/Object;
.source "PagerAdapter.java"


# instance fields
.field public final a:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lj1/a;->a:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end method

.method public abstract e(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public abstract h(Ljava/lang/Object;)V
.end method

.method public abstract i(Landroid/view/ViewGroup;)V
.end method
