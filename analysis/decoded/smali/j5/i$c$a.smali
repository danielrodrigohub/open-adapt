.class public final Lj5/i$c$a;
.super Lj5/q$a;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/i$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public final N:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lp4/u0;",
            "Lj5/i$d;",
            ">;>;"
        }
    .end annotation
.end field

.field public final O:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7
    invoke-direct {p0}, Lj5/q$a;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lj5/i$c$a;->N:Landroid/util/SparseArray;

    .line 9
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lj5/i$c$a;->O:Landroid/util/SparseBooleanArray;

    .line 10
    invoke-virtual {p0}, Lj5/i$c$a;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj5/q$a;-><init>()V

    .line 2
    invoke-super {p0, p1}, Lj5/q$a;->b(Landroid/content/Context;)Lj5/q$a;

    .line 3
    invoke-super {p0, p1}, Lj5/q$a;->d(Landroid/content/Context;)Lj5/q$a;

    .line 4
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lj5/i$c$a;->N:Landroid/util/SparseArray;

    .line 5
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lj5/i$c$a;->O:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-virtual {p0}, Lj5/i$c$a;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 10

    .line 11
    invoke-direct {p0, p1}, Lj5/q$a;-><init>(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Lj5/i$c$a;->f()V

    .line 13
    sget-object v0, Lj5/i$c;->X:Lj5/i$c;

    const/16 v1, 0x3e8

    .line 14
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->I:Z

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 16
    iput-boolean v1, p0, Lj5/i$c$a;->A:Z

    const/16 v1, 0x3e9

    .line 17
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->J:Z

    .line 18
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 19
    iput-boolean v1, p0, Lj5/i$c$a;->B:Z

    const/16 v1, 0x3ea

    .line 20
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->K:Z

    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 22
    iput-boolean v1, p0, Lj5/i$c$a;->C:Z

    const/16 v1, 0x3f6

    .line 23
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->L:Z

    .line 24
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 25
    iput-boolean v1, p0, Lj5/i$c$a;->D:Z

    const/16 v1, 0x3eb

    .line 26
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->M:Z

    .line 27
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    iput-boolean v1, p0, Lj5/i$c$a;->E:Z

    const/16 v1, 0x3ec

    .line 29
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->N:Z

    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 31
    iput-boolean v1, p0, Lj5/i$c$a;->F:Z

    const/16 v1, 0x3ed

    .line 32
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->O:Z

    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 34
    iput-boolean v1, p0, Lj5/i$c$a;->G:Z

    const/16 v1, 0x3ee

    .line 35
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->P:Z

    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 37
    iput-boolean v1, p0, Lj5/i$c$a;->H:Z

    const/16 v1, 0x3f7

    .line 38
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->Q:Z

    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 40
    iput-boolean v1, p0, Lj5/i$c$a;->I:Z

    const/16 v1, 0x3f8

    .line 41
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->R:Z

    .line 42
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 43
    iput-boolean v1, p0, Lj5/i$c$a;->J:Z

    const/16 v1, 0x3ef

    .line 44
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->S:Z

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 46
    iput-boolean v1, p0, Lj5/i$c$a;->K:Z

    const/16 v1, 0x3f0

    .line 47
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lj5/i$c;->T:Z

    .line 48
    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 49
    iput-boolean v1, p0, Lj5/i$c$a;->L:Z

    const/16 v1, 0x3f1

    .line 50
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lj5/i$c;->U:Z

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    iput-boolean v0, p0, Lj5/i$c$a;->M:Z

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lj5/i$c$a;->N:Landroid/util/SparseArray;

    const/16 v0, 0x3f2

    .line 54
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    const/16 v1, 0x3f3

    .line 56
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Lu6/p0;->l:Lu6/p0;

    goto :goto_0

    .line 59
    :cond_0
    sget-object v2, Lp4/u0;->l:Ln3/z0;

    invoke-static {v2, v1}, Lm5/b;->a(Ln3/h$a;Ljava/util/List;)Lu6/v;

    move-result-object v1

    :goto_0
    const/16 v2, 0x3f4

    .line 60
    invoke-static {v2}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 62
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    goto :goto_2

    .line 63
    :cond_1
    sget-object v4, Lj5/i$d;->k:Ln3/r0;

    .line 64
    new-instance v5, Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    move v6, v3

    .line 65
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 66
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    invoke-virtual {v4, v8}, Ln3/r0;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_2
    if-eqz v0, :cond_6

    .line 67
    array-length v4, v0

    move-object v5, v1

    check-cast v5, Lu6/p0;

    .line 68
    iget v5, v5, Lu6/p0;->k:I

    if-eq v4, v5, :cond_3

    goto :goto_5

    :cond_3
    move v4, v3

    .line 69
    :goto_3
    array-length v5, v0

    if-ge v4, v5, :cond_6

    .line 70
    aget v5, v0, v4

    .line 71
    move-object v6, v1

    check-cast v6, Lu6/p0;

    invoke-virtual {v6, v4}, Lu6/p0;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp4/u0;

    .line 72
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lj5/i$d;

    .line 73
    iget-object v8, p0, Lj5/i$c$a;->N:Landroid/util/SparseArray;

    .line 74
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    if-nez v8, :cond_4

    .line 75
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 76
    iget-object v9, p0, Lj5/i$c$a;->N:Landroid/util/SparseArray;

    invoke-virtual {v9, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    :cond_4
    invoke-interface {v8, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v7}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    .line 78
    :cond_5
    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    :goto_5
    const/16 v0, 0x3f5

    .line 79
    invoke-static {v0}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-nez p1, :cond_7

    .line 81
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    goto :goto_7

    .line 82
    :cond_7
    new-instance v0, Landroid/util/SparseBooleanArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 83
    array-length v1, p1

    :goto_6
    if-ge v3, v1, :cond_8

    aget v2, p1, v3

    const/4 v4, 0x1

    .line 84
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    move-object p1, v0

    .line 85
    :goto_7
    iput-object p1, p0, Lj5/i$c$a;->O:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final c(II)Lj5/q$a;
    .locals 0

    .line 1
    iput p1, p0, Lj5/q$a;->i:I

    .line 2
    iput p2, p0, Lj5/q$a;->j:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lj5/q$a;->k:Z

    return-object p0
.end method

.method public final e()Lj5/i$c;
    .locals 1

    new-instance v0, Lj5/i$c;

    invoke-direct {v0, p0}, Lj5/i$c;-><init>(Lj5/i$c$a;)V

    return-object v0
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lj5/i$c$a;->A:Z

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lj5/i$c$a;->B:Z

    .line 3
    iput-boolean v0, p0, Lj5/i$c$a;->C:Z

    .line 4
    iput-boolean v1, p0, Lj5/i$c$a;->D:Z

    .line 5
    iput-boolean v0, p0, Lj5/i$c$a;->E:Z

    .line 6
    iput-boolean v1, p0, Lj5/i$c$a;->F:Z

    .line 7
    iput-boolean v1, p0, Lj5/i$c$a;->G:Z

    .line 8
    iput-boolean v1, p0, Lj5/i$c$a;->H:Z

    .line 9
    iput-boolean v1, p0, Lj5/i$c$a;->I:Z

    .line 10
    iput-boolean v0, p0, Lj5/i$c$a;->J:Z

    .line 11
    iput-boolean v0, p0, Lj5/i$c$a;->K:Z

    .line 12
    iput-boolean v1, p0, Lj5/i$c$a;->L:Z

    .line 13
    iput-boolean v0, p0, Lj5/i$c$a;->M:Z

    return-void
.end method
