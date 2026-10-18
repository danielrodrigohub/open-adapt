.class public abstract Landroidx/appcompat/view/menu/a;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/i;


# instance fields
.field public h:Landroid/content/Context;

.field public i:Landroid/content/Context;

.field public j:Landroidx/appcompat/view/menu/e;

.field public k:Landroid/view/LayoutInflater;

.field public l:Landroidx/appcompat/view/menu/i$a;

.field public m:I

.field public n:I

.field public o:Landroidx/appcompat/view/menu/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->h:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->k:Landroid/view/LayoutInflater;

    .line 4
    iput p2, p0, Landroidx/appcompat/view/menu/a;->m:I

    .line 5
    iput p3, p0, Landroidx/appcompat/view/menu/a;->n:I

    return-void
.end method


# virtual methods
.method public final d(Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final j(Landroidx/appcompat/view/menu/i$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/a;->l:Landroidx/appcompat/view/menu/i$a;

    return-void
.end method

.method public final k(Landroidx/appcompat/view/menu/g;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
