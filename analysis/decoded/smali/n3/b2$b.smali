.class public final Ln3/b2$b;
.super Ljava/lang/Object;
.source "Timeline.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final o:Ln3/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Ln3/b2$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public k:J

.field public l:J

.field public m:Z

.field public n:Lq4/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln3/n;->g:Ln3/n;

    sput-object v0, Ln3/b2$b;->o:Ln3/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lq4/a;->n:Lq4/a;

    iput-object v0, p0, Ln3/b2$b;->n:Lq4/a;

    return-void
.end method

.method public static i(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Ln3/b2$b;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/b2$b;->k:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/b2$b;->l:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/b2$b;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Ln3/b2$b;->i(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v2}, Lq4/a;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final b(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v0, p1}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object p1

    .line 2
    iget v0, p1, Lq4/a$a;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lq4/a$a;->l:[J

    aget-wide v0, p1, p2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public final c(J)I
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/b2$b;->n:Lq4/a;

    iget-wide v1, p0, Ln3/b2$b;->k:J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, p1, v3

    const/4 v6, -0x1

    if-eqz v5, :cond_6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v7

    if-eqz v5, :cond_0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget v1, v0, Lq4/a;->l:I

    .line 3
    :goto_0
    iget v2, v0, Lq4/a;->i:I

    if-ge v1, v2, :cond_5

    .line 4
    invoke-virtual {v0, v1}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object v2

    iget-wide v7, v2, Lq4/a$a;->h:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object v2

    iget-wide v7, v2, Lq4/a$a;->h:J

    cmp-long v2, v7, p1

    if-lez v2, :cond_4

    .line 6
    :cond_1
    invoke-virtual {v0, v1}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object v2

    .line 7
    iget v5, v2, Lq4/a$a;->i:I

    if-eq v5, v6, :cond_3

    .line 8
    invoke-virtual {v2, v6}, Lq4/a$a;->b(I)I

    move-result v5

    .line 9
    iget v2, v2, Lq4/a$a;->i:I

    if-ge v5, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_5
    iget p1, v0, Lq4/a;->i:I

    if-ge v1, p1, :cond_6

    move v6, v1

    :cond_6
    :goto_3
    return v6
.end method

.method public final d(J)I
    .locals 11

    .line 1
    iget-object v0, p0, Ln3/b2$b;->n:Lq4/a;

    iget-wide v1, p0, Ln3/b2$b;->k:J

    .line 2
    iget v3, v0, Lq4/a;->i:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    :goto_0
    if-ltz v3, :cond_4

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, p1, v5

    const/4 v8, 0x0

    if-nez v7, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v0, v3}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object v7

    iget-wide v9, v7, Lq4/a$a;->h:J

    cmp-long v5, v9, v5

    if-nez v5, :cond_1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v5

    if-eqz v5, :cond_2

    cmp-long v5, p1, v1

    if-gez v5, :cond_3

    goto :goto_1

    :cond_1
    cmp-long v5, p1, v9

    if-gez v5, :cond_3

    :cond_2
    :goto_1
    move v8, v4

    :cond_3
    :goto_2
    if-eqz v8, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    if-ltz v3, :cond_5

    .line 4
    invoke-virtual {v0, v3}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lq4/a$a;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, -0x1

    :goto_3
    return v3
.end method

.method public final e(I)J
    .locals 2

    iget-object v0, p0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v0, p1}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object p1

    iget-wide v0, p1, Lq4/a$a;->h:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Ln3/b2$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/b2$b;

    .line 3
    iget-object v2, p0, Ln3/b2$b;->h:Ljava/lang/Object;

    iget-object v3, p1, Ln3/b2$b;->h:Ljava/lang/Object;

    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/b2$b;->i:Ljava/lang/Object;

    iget-object v3, p1, Ln3/b2$b;->i:Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Ln3/b2$b;->j:I

    iget v3, p1, Ln3/b2$b;->j:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Ln3/b2$b;->k:J

    iget-wide v4, p1, Ln3/b2$b;->k:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Ln3/b2$b;->l:J

    iget-wide v4, p1, Ln3/b2$b;->l:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Ln3/b2$b;->m:Z

    iget-boolean v3, p1, Ln3/b2$b;->m:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ln3/b2$b;->n:Lq4/a;

    iget-object p1, p1, Ln3/b2$b;->n:Lq4/a;

    .line 5
    invoke-static {v2, p1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final f(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v0, p1}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object p1

    .line 2
    iget v0, p1, Lq4/a$a;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3
    iget-object p1, p1, Lq4/a$a;->k:[I

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v0, p1}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object p1

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p1, v0}, Lq4/a$a;->b(I)I

    move-result p1

    return p1
.end method

.method public final h(I)Z
    .locals 1

    iget-object v0, p0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v0, p1}, Lq4/a;->b(I)Lq4/a$a;

    move-result-object p1

    iget-boolean p1, p1, Lq4/a$a;->n:Z

    return p1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/b2$b;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 2
    iget-object v0, p0, Ln3/b2$b;->i:Ljava/lang/Object;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    .line 3
    iget v0, p0, Ln3/b2$b;->j:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 4
    iget-wide v0, p0, Ln3/b2$b;->k:J

    const/16 v3, 0x20

    ushr-long v4, v0, v3

    xor-long/2addr v0, v4

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 5
    iget-wide v0, p0, Ln3/b2$b;->l:J

    ushr-long v3, v0, v3

    xor-long/2addr v0, v3

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 6
    iget-boolean v0, p0, Ln3/b2$b;->m:Z

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 7
    iget-object v0, p0, Ln3/b2$b;->n:Lq4/a;

    invoke-virtual {v0}, Lq4/a;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    return v0
.end method

.method public final j(Ljava/lang/Object;Ljava/lang/Object;IJJLq4/a;Z)Ln3/b2$b;
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b2$b;->h:Ljava/lang/Object;

    .line 2
    iput-object p2, p0, Ln3/b2$b;->i:Ljava/lang/Object;

    .line 3
    iput p3, p0, Ln3/b2$b;->j:I

    .line 4
    iput-wide p4, p0, Ln3/b2$b;->k:J

    .line 5
    iput-wide p6, p0, Ln3/b2$b;->l:J

    .line 6
    iput-object p8, p0, Ln3/b2$b;->n:Lq4/a;

    .line 7
    iput-boolean p9, p0, Ln3/b2$b;->m:Z

    return-object p0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;JJ)Ln3/b2$b;
    .locals 10

    sget-object v8, Lq4/a;->n:Lq4/a;

    const/4 v3, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v9}, Ln3/b2$b;->j(Ljava/lang/Object;Ljava/lang/Object;IJJLq4/a;Z)Ln3/b2$b;

    return-object p0
.end method
