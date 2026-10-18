.class public final Lw4/n;
.super Ljava/lang/Object;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/n$a;
    }
.end annotation


# instance fields
.field public final a:Lu6/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/x<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lu6/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/v<",
            "Lw4/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Landroid/net/Uri;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lw4/n$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lw4/n$a;->a:Ljava/util/HashMap;

    .line 3
    invoke-static {v0}, Lu6/x;->a(Ljava/util/Map;)Lu6/x;

    move-result-object v0

    iput-object v0, p0, Lw4/n;->a:Lu6/x;

    .line 4
    iget-object v0, p1, Lw4/n$a;->b:Lu6/v$a;

    .line 5
    invoke-virtual {v0}, Lu6/v$a;->e()Lu6/v;

    move-result-object v0

    check-cast v0, Lu6/p0;

    iput-object v0, p0, Lw4/n;->b:Lu6/p0;

    .line 6
    iget-object v0, p1, Lw4/n$a;->d:Ljava/lang/String;

    .line 7
    sget v1, Lm5/g0;->a:I

    iput-object v0, p0, Lw4/n;->c:Ljava/lang/String;

    .line 8
    iget-object v0, p1, Lw4/n$a;->e:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lw4/n;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lw4/n$a;->f:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lw4/n;->e:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lw4/n$a;->g:Landroid/net/Uri;

    .line 13
    iput-object v0, p0, Lw4/n;->g:Landroid/net/Uri;

    .line 14
    iget-object v0, p1, Lw4/n$a;->h:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lw4/n;->h:Ljava/lang/String;

    .line 16
    iget v0, p1, Lw4/n$a;->c:I

    .line 17
    iput v0, p0, Lw4/n;->f:I

    .line 18
    iget-object v0, p1, Lw4/n$a;->i:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lw4/n;->i:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lw4/n$a;->k:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lw4/n;->j:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lw4/n$a;->l:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lw4/n;->k:Ljava/lang/String;

    .line 24
    iget-object p1, p1, Lw4/n$a;->j:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lw4/n;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lw4/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    check-cast p1, Lw4/n;

    .line 3
    iget v2, p0, Lw4/n;->f:I

    iget v3, p1, Lw4/n;->f:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lw4/n;->a:Lu6/x;

    iget-object v3, p1, Lw4/n;->a:Lu6/x;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v2, v3}, Lu6/h0;->a(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    iget-object v2, p0, Lw4/n;->b:Lu6/p0;

    iget-object v3, p1, Lw4/n;->b:Lu6/p0;

    .line 7
    invoke-virtual {v2, v3}, Lu6/v;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/n;->d:Ljava/lang/String;

    iget-object v3, p1, Lw4/n;->d:Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/n;->c:Ljava/lang/String;

    iget-object v3, p1, Lw4/n;->c:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/n;->e:Ljava/lang/String;

    iget-object v3, p1, Lw4/n;->e:Ljava/lang/String;

    .line 10
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/n;->l:Ljava/lang/String;

    iget-object v3, p1, Lw4/n;->l:Ljava/lang/String;

    .line 11
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/n;->g:Landroid/net/Uri;

    iget-object v3, p1, Lw4/n;->g:Landroid/net/Uri;

    .line 12
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/n;->j:Ljava/lang/String;

    iget-object v3, p1, Lw4/n;->j:Ljava/lang/String;

    .line 13
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/n;->k:Ljava/lang/String;

    iget-object v3, p1, Lw4/n;->k:Ljava/lang/String;

    .line 14
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/n;->h:Ljava/lang/String;

    iget-object v3, p1, Lw4/n;->h:Ljava/lang/String;

    .line 15
    invoke-static {v2, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw4/n;->i:Ljava/lang/String;

    iget-object p1, p1, Lw4/n;->i:Ljava/lang/String;

    .line 16
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

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lw4/n;->a:Lu6/x;

    invoke-virtual {v0}, Lu6/x;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0xd9

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lw4/n;->b:Lu6/p0;

    invoke-virtual {v1}, Lu6/v;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lw4/n;->d:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lw4/n;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Lw4/n;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget v0, p0, Lw4/n;->f:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Lw4/n;->l:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-object v0, p0, Lw4/n;->g:Landroid/net/Uri;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v0, p0, Lw4/n;->j:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-object v0, p0, Lw4/n;->k:Ljava/lang/String;

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 11
    iget-object v0, p0, Lw4/n;->h:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget-object v0, p0, Lw4/n;->i:Ljava/lang/String;

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v1, v2

    return v1
.end method
