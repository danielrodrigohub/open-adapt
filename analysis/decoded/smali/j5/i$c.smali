.class public final Lj5/i$c;
.super Lj5/q;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj5/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj5/i$c$a;
    }
.end annotation


# static fields
.field public static final X:Lj5/i$c;


# instance fields
.field public final I:Z

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final M:Z

.field public final N:Z

.field public final O:Z

.field public final P:Z

.field public final Q:Z

.field public final R:Z

.field public final S:Z

.field public final T:Z

.field public final U:Z

.field public final V:Landroid/util/SparseArray;
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

.field public final W:Landroid/util/SparseBooleanArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lj5/i$c$a;

    invoke-direct {v0}, Lj5/i$c$a;-><init>()V

    invoke-virtual {v0}, Lj5/i$c$a;->e()Lj5/i$c;

    move-result-object v0

    sput-object v0, Lj5/i$c;->X:Lj5/i$c;

    .line 2
    sget-object v0, Ly0/m;->h:Ly0/m;

    return-void
.end method

.method public constructor <init>(Lj5/i$c$a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lj5/q;-><init>(Lj5/q$a;)V

    .line 2
    iget-boolean v0, p1, Lj5/i$c$a;->A:Z

    .line 3
    iput-boolean v0, p0, Lj5/i$c;->I:Z

    .line 4
    iget-boolean v0, p1, Lj5/i$c$a;->B:Z

    .line 5
    iput-boolean v0, p0, Lj5/i$c;->J:Z

    .line 6
    iget-boolean v0, p1, Lj5/i$c$a;->C:Z

    .line 7
    iput-boolean v0, p0, Lj5/i$c;->K:Z

    .line 8
    iget-boolean v0, p1, Lj5/i$c$a;->D:Z

    .line 9
    iput-boolean v0, p0, Lj5/i$c;->L:Z

    .line 10
    iget-boolean v0, p1, Lj5/i$c$a;->E:Z

    .line 11
    iput-boolean v0, p0, Lj5/i$c;->M:Z

    .line 12
    iget-boolean v0, p1, Lj5/i$c$a;->F:Z

    .line 13
    iput-boolean v0, p0, Lj5/i$c;->N:Z

    .line 14
    iget-boolean v0, p1, Lj5/i$c$a;->G:Z

    .line 15
    iput-boolean v0, p0, Lj5/i$c;->O:Z

    .line 16
    iget-boolean v0, p1, Lj5/i$c$a;->H:Z

    .line 17
    iput-boolean v0, p0, Lj5/i$c;->P:Z

    .line 18
    iget-boolean v0, p1, Lj5/i$c$a;->I:Z

    .line 19
    iput-boolean v0, p0, Lj5/i$c;->Q:Z

    .line 20
    iget-boolean v0, p1, Lj5/i$c$a;->J:Z

    .line 21
    iput-boolean v0, p0, Lj5/i$c;->R:Z

    .line 22
    iget-boolean v0, p1, Lj5/i$c$a;->K:Z

    .line 23
    iput-boolean v0, p0, Lj5/i$c;->S:Z

    .line 24
    iget-boolean v0, p1, Lj5/i$c$a;->L:Z

    .line 25
    iput-boolean v0, p0, Lj5/i$c;->T:Z

    .line 26
    iget-boolean v0, p1, Lj5/i$c$a;->M:Z

    .line 27
    iput-boolean v0, p0, Lj5/i$c;->U:Z

    .line 28
    iget-object v0, p1, Lj5/i$c$a;->N:Landroid/util/SparseArray;

    .line 29
    iput-object v0, p0, Lj5/i$c;->V:Landroid/util/SparseArray;

    .line 30
    iget-object p1, p1, Lj5/i$c$a;->O:Landroid/util/SparseBooleanArray;

    .line 31
    iput-object p1, p0, Lj5/i$c;->W:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 12

    .line 1
    invoke-super {p0}, Lj5/q;->a()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 2
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->I:Z

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3e9

    .line 4
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->J:Z

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ea

    .line 6
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->K:Z

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f6

    .line 8
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->L:Z

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3eb

    .line 10
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->M:Z

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ec

    .line 12
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->N:Z

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ed

    .line 14
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->O:Z

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ee

    .line 16
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->P:Z

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f7

    .line 18
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->Q:Z

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f8

    .line 20
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->R:Z

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3ef

    .line 22
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->S:Z

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f0

    .line 24
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->T:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x3f1

    .line 25
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lj5/i$c;->U:Z

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    iget-object v1, p0, Lj5/i$c;->V:Landroid/util/SparseArray;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    .line 31
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 32
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 33
    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lj5/i$d;

    if-eqz v10, :cond_0

    .line 35
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v4, v11, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    :cond_0
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lp4/u0;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/16 v7, 0x3f2

    .line 38
    invoke-static {v7}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Lw6/a;->d(Ljava/util/Collection;)[I

    move-result-object v8

    .line 39
    invoke-virtual {v0, v7, v8}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 v7, 0x3f3

    .line 40
    invoke-static {v7}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v7

    .line 41
    invoke-static {v3}, Lm5/b;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v8

    .line 42
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/16 v7, 0x3f4

    .line 43
    invoke-static {v7}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v7

    .line 44
    new-instance v8, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/util/SparseArray;-><init>(I)V

    move v9, v5

    .line 45
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    .line 46
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ln3/h;

    invoke-interface {v11}, Ln3/h;->a()Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 47
    :cond_2
    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x3f5

    .line 48
    invoke-static {v1}, Lj5/q;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lj5/i$c;->W:Landroid/util/SparseBooleanArray;

    .line 49
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 50
    :goto_3
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v5, v4, :cond_4

    .line 51
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 52
    :cond_4
    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_e

    .line 1
    const-class v2, Lj5/i$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_9

    .line 2
    :cond_1
    check-cast p1, Lj5/i$c;

    .line 3
    invoke-super {p0, p1}, Lj5/q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->I:Z

    iget-boolean v3, p1, Lj5/i$c;->I:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->J:Z

    iget-boolean v3, p1, Lj5/i$c;->J:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->K:Z

    iget-boolean v3, p1, Lj5/i$c;->K:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->L:Z

    iget-boolean v3, p1, Lj5/i$c;->L:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->M:Z

    iget-boolean v3, p1, Lj5/i$c;->M:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->N:Z

    iget-boolean v3, p1, Lj5/i$c;->N:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->O:Z

    iget-boolean v3, p1, Lj5/i$c;->O:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->P:Z

    iget-boolean v3, p1, Lj5/i$c;->P:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->Q:Z

    iget-boolean v3, p1, Lj5/i$c;->Q:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->R:Z

    iget-boolean v3, p1, Lj5/i$c;->R:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->S:Z

    iget-boolean v3, p1, Lj5/i$c;->S:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->T:Z

    iget-boolean v3, p1, Lj5/i$c;->T:Z

    if-ne v2, v3, :cond_d

    iget-boolean v2, p0, Lj5/i$c;->U:Z

    iget-boolean v3, p1, Lj5/i$c;->U:Z

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lj5/i$c;->W:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lj5/i$c;->W:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 5
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-eq v5, v4, :cond_2

    :goto_0
    move v2, v1

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    .line 6
    invoke-virtual {v2, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_2
    if-eqz v2, :cond_d

    .line 7
    iget-object v2, p0, Lj5/i$c;->V:Landroid/util/SparseArray;

    iget-object p1, p1, Lj5/i$c;->V:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 9
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eq v4, v3, :cond_6

    :cond_5
    :goto_3
    move p1, v1

    goto :goto_7

    :cond_6
    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_c

    .line 10
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_5

    .line 11
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 12
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    .line 13
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v8, v7, :cond_7

    goto :goto_5

    .line 14
    :cond_7
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp4/u0;

    .line 16
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_9
    :goto_5
    move v5, v1

    goto :goto_6

    :cond_a
    move v5, v0

    :goto_6
    if-nez v5, :cond_b

    goto :goto_3

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_c
    move p1, v0

    :goto_7
    if-eqz p1, :cond_d

    goto :goto_8

    :cond_d
    move v0, v1

    :goto_8
    return v0

    :cond_e
    :goto_9
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lj5/q;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-boolean v2, p0, Lj5/i$c;->I:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget-boolean v2, p0, Lj5/i$c;->J:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget-boolean v2, p0, Lj5/i$c;->K:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 5
    iget-boolean v2, p0, Lj5/i$c;->L:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 6
    iget-boolean v2, p0, Lj5/i$c;->M:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 7
    iget-boolean v2, p0, Lj5/i$c;->N:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 8
    iget-boolean v2, p0, Lj5/i$c;->O:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 9
    iget-boolean v2, p0, Lj5/i$c;->P:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 10
    iget-boolean v2, p0, Lj5/i$c;->Q:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 11
    iget-boolean v2, p0, Lj5/i$c;->R:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 12
    iget-boolean v2, p0, Lj5/i$c;->S:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 13
    iget-boolean v2, p0, Lj5/i$c;->T:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 14
    iget-boolean v1, p0, Lj5/i$c;->U:Z

    add-int/2addr v0, v1

    return v0
.end method
