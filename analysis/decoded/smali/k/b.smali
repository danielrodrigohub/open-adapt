.class public abstract Lk/b;
.super Ljava/lang/Object;
.source "BaseMenuWrapper.java"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lp/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/g<",
            "Lc0/b;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lp/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/g<",
            "Lc0/c;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final c(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    instance-of v0, p1, Lc0/b;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lc0/b;

    .line 3
    iget-object v0, p0, Lk/b;->b:Lp/g;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    iput-object v0, p0, Lk/b;->b:Lp/g;

    .line 5
    :cond_0
    iget-object v0, p0, Lk/b;->b:Lp/g;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/MenuItem;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lk/c;

    iget-object v1, p0, Lk/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lk/c;-><init>(Landroid/content/Context;Lc0/b;)V

    .line 9
    iget-object v1, p0, Lk/b;->b:Lp/g;

    invoke-virtual {v1, p1, v0}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public final d(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 2

    .line 1
    instance-of v0, p1, Lc0/c;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Lc0/c;

    .line 3
    iget-object v0, p0, Lk/b;->c:Lp/g;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    iput-object v0, p0, Lk/b;->c:Lp/g;

    .line 5
    :cond_0
    iget-object v0, p0, Lk/b;->c:Lp/g;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lp/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/SubMenu;

    if-nez v0, :cond_1

    .line 8
    new-instance v0, Lk/g;

    iget-object v1, p0, Lk/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lk/g;-><init>(Landroid/content/Context;Lc0/c;)V

    .line 9
    iget-object v1, p0, Lk/b;->c:Lp/g;

    invoke-virtual {v1, p1, v0}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method
