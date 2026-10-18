.class public final Lz4/d;
.super Ljava/lang/Object;
.source "ExoplayerCuesDecoder.java"

# interfaces
.implements Lz4/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4/d$b;
    }
.end annotation


# instance fields
.field public final a:Lz4/b;

.field public final b:Lz4/l;

.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lz4/m;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lz4/b;

    invoke-direct {v0}, Lz4/b;-><init>()V

    iput-object v0, p0, Lz4/d;->a:Lz4/b;

    .line 3
    new-instance v0, Lz4/l;

    invoke-direct {v0}, Lz4/l;-><init>()V

    iput-object v0, p0, Lz4/d;->b:Lz4/l;

    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lz4/d;->c:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lz4/d;->c:Ljava/util/ArrayDeque;

    new-instance v3, Lz4/d$a;

    invoke-direct {v3, p0}, Lz4/d$a;-><init>(Lz4/d;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iput v0, p0, Lz4/d;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lz4/d;->e:Z

    return-void
.end method

.method public final b(J)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    .line 1
    check-cast p1, Lz4/l;

    .line 2
    iget-boolean v0, p0, Lz4/d;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 3
    iget v0, p0, Lz4/d;->d:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 4
    iget-object v0, p0, Lz4/d;->b:Lz4/l;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lm5/a;->a(Z)V

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lz4/d;->d:I

    return-void
.end method

.method public final d()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lz4/d;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget v0, p0, Lz4/d;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lz4/d;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lz4/d;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz4/m;

    .line 4
    iget-object v1, p0, Lz4/d;->b:Lz4/l;

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v1, v2}, Lq3/a;->l(I)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lq3/a;->k(I)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v4, Lz4/d$b;

    iget-object v1, p0, Lz4/d;->b:Lz4/l;

    iget-wide v2, v1, Lq3/g;->l:J

    iget-object v5, p0, Lz4/d;->a:Lz4/b;

    iget-object v1, v1, Lq3/g;->j:Ljava/nio/ByteBuffer;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 11
    array-length v6, v1

    invoke-virtual {v5, v1, v7, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 12
    invoke-virtual {v5, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 13
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v1

    .line 14
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    const-string v5, "c"

    .line 15
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v5, Lz4/a;->z:Ly0/e;

    invoke-static {v5, v1}, Lm5/b;->a(Ln3/h$a;Ljava/util/List;)Lu6/v;

    move-result-object v1

    .line 18
    invoke-direct {v4, v2, v3, v1}, Lz4/d$b;-><init>(JLu6/v;)V

    .line 19
    iget-object v1, p0, Lz4/d;->b:Lz4/l;

    iget-wide v2, v1, Lq3/g;->l:J

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lz4/m;->q(JLz4/g;J)V

    .line 20
    :goto_0
    iget-object v1, p0, Lz4/d;->b:Lz4/l;

    invoke-virtual {v1}, Lq3/g;->o()V

    .line 21
    iput v7, p0, Lz4/d;->d:I

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lq3/f;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lz4/d;->e:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget v0, p0, Lz4/d;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lz4/d;->d:I

    .line 4
    iget-object v0, p0, Lz4/d;->b:Lz4/l;

    :goto_0
    return-object v0
.end method

.method public final flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lz4/d;->e:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lm5/a;->e(Z)V

    .line 2
    iget-object v0, p0, Lz4/d;->b:Lz4/l;

    invoke-virtual {v0}, Lq3/g;->o()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lz4/d;->d:I

    return-void
.end method
