.class public final Lq4/a$a;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final o:Ly0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Lq4/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:J

.field public final i:I

.field public final j:[Landroid/net/Uri;

.field public final k:[I

.field public final l:[J

.field public final m:J

.field public final n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/e;->e:Ly0/e;

    sput-object v0, Lq4/a$a;->o:Ly0/e;

    return-void
.end method

.method public constructor <init>(JI[I[Landroid/net/Uri;[JJZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p4

    array-length v1, p5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    iput-wide p1, p0, Lq4/a$a;->h:J

    .line 4
    iput p3, p0, Lq4/a$a;->i:I

    .line 5
    iput-object p4, p0, Lq4/a$a;->k:[I

    .line 6
    iput-object p5, p0, Lq4/a$a;->j:[Landroid/net/Uri;

    .line 7
    iput-object p6, p0, Lq4/a$a;->l:[J

    .line 8
    iput-wide p7, p0, Lq4/a$a;->m:J

    .line 9
    iput-boolean p9, p0, Lq4/a$a;->n:Z

    return-void
.end method

.method public static d(I)Ljava/lang/String;
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
    invoke-static {v1}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lq4/a$a;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lq4/a$a;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lq4/a$a;->j:[Landroid/net/Uri;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lq4/a$a;->k:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x4

    .line 7
    invoke-static {v1}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lq4/a$a;->l:[J

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putLongArray(Ljava/lang/String;[J)V

    const/4 v1, 0x5

    .line 8
    invoke-static {v1}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lq4/a$a;->m:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x6

    .line 9
    invoke-static {v1}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lq4/a$a;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final b(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1
    :goto_0
    iget-object v1, p0, Lq4/a$a;->k:[I

    array-length v2, v1

    if-ge p1, v2, :cond_1

    .line 2
    iget-boolean v2, p0, Lq4/a$a;->n:Z

    if-nez v2, :cond_1

    aget v2, v1, p1

    if-eqz v2, :cond_1

    aget v1, v1, p1

    if-ne v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public final c()Z
    .locals 5

    .line 1
    iget v0, p0, Lq4/a$a;->i:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 2
    :goto_0
    iget v3, p0, Lq4/a$a;->i:I

    if-ge v2, v3, :cond_3

    .line 3
    iget-object v3, p0, Lq4/a$a;->k:[I

    aget v4, v3, v2

    if-eqz v4, :cond_2

    aget v3, v3, v2

    if-ne v3, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    return v0
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
    const-class v2, Lq4/a$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lq4/a$a;

    .line 3
    iget-wide v2, p0, Lq4/a$a;->h:J

    iget-wide v4, p1, Lq4/a$a;->h:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lq4/a$a;->i:I

    iget v3, p1, Lq4/a$a;->i:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lq4/a$a;->j:[Landroid/net/Uri;

    iget-object v3, p1, Lq4/a$a;->j:[Landroid/net/Uri;

    .line 4
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq4/a$a;->k:[I

    iget-object v3, p1, Lq4/a$a;->k:[I

    .line 5
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lq4/a$a;->l:[J

    iget-object v3, p1, Lq4/a$a;->l:[J

    .line 6
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lq4/a$a;->m:J

    iget-wide v4, p1, Lq4/a$a;->m:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lq4/a$a;->n:Z

    iget-boolean p1, p1, Lq4/a$a;->n:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lq4/a$a;->i:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lq4/a$a;->h:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lq4/a$a;->j:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lq4/a$a;->k:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lq4/a$a;->l:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-wide v1, p0, Lq4/a$a;->m:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Lq4/a$a;->n:Z

    add-int/2addr v0, v1

    return v0
.end method
