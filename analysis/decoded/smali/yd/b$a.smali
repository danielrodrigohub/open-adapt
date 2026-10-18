.class public final Lyd/b$a;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lsd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyd/b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lvd/e;",
        ">;",
        "Lsd/a;"
    }
.end annotation


# instance fields
.field public h:I

.field public i:I

.field public j:I

.field public k:Lvd/e;

.field public l:I

.field public final synthetic m:Lyd/b;


# direct methods
.method public constructor <init>(Lyd/b;)V
    .locals 4

    iput-object p1, p0, Lyd/b$a;->m:Lyd/b;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lyd/b$a;->h:I

    .line 3
    iget v0, p1, Lyd/b;->b:I

    const/4 v1, 0x0

    .line 4
    iget-object p1, p1, Lyd/b;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ltz p1, :cond_2

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    if-le v0, p1, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    iput v0, p0, Lyd/b$a;->i:I

    .line 6
    iput v0, p0, Lyd/b$a;->j:I

    return-void

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is less than minimum "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, Lyd/b$a;->j:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Lyd/b$a;->h:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lyd/b$a;->k:Lvd/e;

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lyd/b$a;->m:Lyd/b;

    .line 5
    iget v3, v2, Lyd/b;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    .line 6
    iget v6, p0, Lyd/b$a;->l:I

    add-int/2addr v6, v5

    iput v6, p0, Lyd/b$a;->l:I

    if-ge v6, v3, :cond_2

    .line 7
    :cond_1
    iget-object v2, v2, Lyd/b;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 9
    :cond_2
    new-instance v0, Lvd/e;

    iget v1, p0, Lyd/b$a;->i:I

    iget-object v2, p0, Lyd/b$a;->m:Lyd/b;

    .line 10
    iget-object v2, v2, Lyd/b;->a:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v2}, Lyd/s;->l0(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lvd/e;-><init>(II)V

    iput-object v0, p0, Lyd/b$a;->k:Lvd/e;

    .line 12
    iput v4, p0, Lyd/b$a;->j:I

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lyd/b$a;->m:Lyd/b;

    .line 14
    iget-object v2, v0, Lyd/b;->d:Lqd/p;

    .line 15
    iget-object v0, v0, Lyd/b;->a:Ljava/lang/CharSequence;

    .line 16
    iget v3, p0, Lyd/b$a;->j:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lqd/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfd/e;

    if-nez v0, :cond_4

    .line 17
    new-instance v0, Lvd/e;

    iget v1, p0, Lyd/b$a;->i:I

    iget-object v2, p0, Lyd/b$a;->m:Lyd/b;

    .line 18
    iget-object v2, v2, Lyd/b;->a:Ljava/lang/CharSequence;

    .line 19
    invoke-static {v2}, Lyd/s;->l0(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lvd/e;-><init>(II)V

    iput-object v0, p0, Lyd/b$a;->k:Lvd/e;

    .line 20
    iput v4, p0, Lyd/b$a;->j:I

    goto :goto_0

    .line 21
    :cond_4
    iget-object v2, v0, Lfd/e;->h:Ljava/lang/Object;

    .line 22
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 23
    iget-object v0, v0, Lfd/e;->i:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 25
    iget v3, p0, Lyd/b$a;->i:I

    invoke-static {v3, v2}, Landroidx/activity/k;->w(II)Lvd/e;

    move-result-object v3

    iput-object v3, p0, Lyd/b$a;->k:Lvd/e;

    add-int/2addr v2, v0

    .line 26
    iput v2, p0, Lyd/b$a;->i:I

    if-nez v0, :cond_5

    move v1, v5

    :cond_5
    add-int/2addr v2, v1

    .line 27
    iput v2, p0, Lyd/b$a;->j:I

    .line 28
    :goto_0
    iput v5, p0, Lyd/b$a;->h:I

    :goto_1
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lyd/b$a;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lyd/b$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lyd/b$a;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lyd/b$a;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lyd/b$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lyd/b$a;->h:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lyd/b$a;->k:Lvd/e;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Lp4/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lyd/b$a;->k:Lvd/e;

    .line 6
    iput v1, p0, Lyd/b$a;->h:I

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
