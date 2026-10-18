.class public final Lba/g$a;
.super Ljava/lang/Object;
.source "AdaptKitCurrentAnimation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lba/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmc/j;)Lba/g;
    .locals 9

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lba/g;

    .line 2
    iget v1, p1, Lmc/j;->h:I

    .line 3
    iget v2, p1, Lmc/j;->i:I

    .line 4
    div-int/lit16 v2, v2, 0x3e8

    .line 5
    iget v3, p1, Lmc/j;->j:I

    const-string v4, "state"

    .line 6
    invoke-static {v3, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 7
    invoke-static {v3}, Lq/g;->a(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    .line 8
    sget-object v3, Lba/g$d;->l:Lba/g$d;

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 9
    :cond_1
    sget-object v3, Lba/g$d;->k:Lba/g$d;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Lba/g$d;->j:Lba/g$d;

    goto :goto_0

    .line 11
    :cond_3
    sget-object v3, Lba/g$d;->i:Lba/g$d;

    goto :goto_0

    .line 12
    :cond_4
    sget-object v3, Lba/g$d;->h:Lba/g$d;

    .line 13
    :goto_0
    iget p1, p1, Lmc/j;->k:I

    const-string v8, "endStatus"

    .line 14
    invoke-static {p1, v8}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 15
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v7, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-ne p1, v4, :cond_5

    .line 16
    sget-object p1, Lba/g$c;->m:Lba/g$c;

    goto :goto_1

    :cond_5
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 17
    :cond_6
    sget-object p1, Lba/g$c;->l:Lba/g$c;

    goto :goto_1

    .line 18
    :cond_7
    sget-object p1, Lba/g$c;->k:Lba/g$c;

    goto :goto_1

    .line 19
    :cond_8
    sget-object p1, Lba/g$c;->j:Lba/g$c;

    goto :goto_1

    .line 20
    :cond_9
    sget-object p1, Lba/g$c;->i:Lba/g$c;

    goto :goto_1

    .line 21
    :cond_a
    sget-object p1, Lba/g$c;->h:Lba/g$c;

    .line 22
    :goto_1
    invoke-direct {v0, v1, v2, v3, p1}, Lba/g;-><init>(IILba/g$d;Lba/g$c;)V

    return-object v0
.end method

.method public final b(Lmc/g0;)Lba/g;
    .locals 9

    const-string v0, "animation"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lba/g;

    .line 2
    iget v1, p1, Lmc/g0;->h:I

    .line 3
    iget v2, p1, Lmc/g0;->i:I

    .line 4
    iget v3, p1, Lmc/g0;->j:I

    const-string v4, "runningState"

    .line 5
    invoke-static {v3, v4}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 6
    invoke-static {v3}, Lq/g;->a(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    .line 7
    sget-object v3, Lba/g$d;->l:Lba/g$d;

    goto :goto_0

    :cond_0
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 8
    :cond_1
    sget-object v3, Lba/g$d;->k:Lba/g$d;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v3, Lba/g$d;->j:Lba/g$d;

    goto :goto_0

    .line 10
    :cond_3
    sget-object v3, Lba/g$d;->i:Lba/g$d;

    goto :goto_0

    .line 11
    :cond_4
    sget-object v3, Lba/g$d;->h:Lba/g$d;

    .line 12
    :goto_0
    iget p1, p1, Lmc/g0;->k:I

    const-string v8, "endStatus"

    .line 13
    invoke-static {p1, v8}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 14
    invoke-static {p1}, Lq/g;->a(I)I

    move-result p1

    if-eqz p1, :cond_a

    if-eq p1, v7, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    const/4 v4, 0x5

    if-ne p1, v4, :cond_5

    .line 15
    sget-object p1, Lba/g$c;->m:Lba/g$c;

    goto :goto_1

    :cond_5
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1

    .line 16
    :cond_6
    sget-object p1, Lba/g$c;->l:Lba/g$c;

    goto :goto_1

    .line 17
    :cond_7
    sget-object p1, Lba/g$c;->k:Lba/g$c;

    goto :goto_1

    .line 18
    :cond_8
    sget-object p1, Lba/g$c;->j:Lba/g$c;

    goto :goto_1

    .line 19
    :cond_9
    sget-object p1, Lba/g$c;->i:Lba/g$c;

    goto :goto_1

    .line 20
    :cond_a
    sget-object p1, Lba/g$c;->h:Lba/g$c;

    .line 21
    :goto_1
    invoke-direct {v0, v1, v2, v3, p1}, Lba/g;-><init>(IILba/g$d;Lba/g$c;)V

    return-object v0
.end method
