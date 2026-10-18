.class public final Lx8/n;
.super Ljava/lang/Object;
.source "BadgeViewHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx8/n$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Lh8/a;

.field public final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lx8/n$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls9/b;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 6

    .line 1
    sget-object v0, Lh8/c;->b:Lh8/c;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8/n;->a:Landroid/widget/TextView;

    iput-object v0, p0, Lx8/n;->b:Lh8/a;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lx8/n;->c:Ljava/util/HashMap;

    .line 4
    sget-object p1, Ls9/b;->a:Ls9/b;

    iput-object p1, p0, Lx8/n;->d:Ls9/b;

    .line 5
    invoke-static {}, Lx8/n$a;->values()[Lx8/n$a;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lx8/n;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lx8/n;Lx8/n$a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lx8/n;->d:Ls9/b;

    sget-object v2, Ls9/b;->a:Ls9/b;

    .line 3
    sget-object v2, Lcom/nike/adapt/adk/api/PairDataRepository;->INSTANCE:Lcom/nike/adapt/adk/api/PairDataRepository;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Lcom/nike/adapt/adk/api/PairDataRepository;->getDefaultAndConnectedId$default(Lcom/nike/adapt/adk/api/PairDataRepository;Lh8/a;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls9/b;->d(Ljava/lang/String;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lx8/n;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lx8/n;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lx8/n;->b:Lh8/a;

    invoke-interface {v1}, Lh8/a;->i0()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lx8/n;->d:Ls9/b;

    invoke-static {v0}, Ls9/b;->c(Ls9/b;)Z

    move-result v0

    .line 7
    iget-object v1, p0, Lx8/n;->c:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lx8/n;->c:Ljava/util/HashMap;

    sget-object v1, Lcom/nike/adapt/adk/InMemoryCache;->INSTANCE:Lcom/nike/adapt/adk/InMemoryCache;

    invoke-virtual {v1}, Lcom/nike/adapt/adk/InMemoryCache;->getHasShoeUpdates()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :goto_0
    iget-object p1, p0, Lx8/n;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "typeCountMap.values"

    invoke-static {p1, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Lx8/n;->a:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p0, p0, Lx8/n;->a:Landroid/widget/TextView;

    if-lez v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
