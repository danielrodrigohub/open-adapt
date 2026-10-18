.class public final Lp3/d;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/d$b;,
        Lp3/d$a;,
        Lp3/d$c;
    }
.end annotation


# static fields
.field public static final n:Lp3/d;


# instance fields
.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public m:Lp3/d$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v6, Lp3/d;

    const/4 v5, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move v1, v5

    move v2, v5

    move v3, v4

    invoke-direct/range {v0 .. v5}, Lp3/d;-><init>(IIIII)V

    .line 2
    sput-object v6, Lp3/d;->n:Lp3/d;

    .line 3
    sget-object v0, Ly0/l;->g:Ly0/l;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lp3/d;->h:I

    .line 3
    iput p2, p0, Lp3/d;->i:I

    .line 4
    iput p3, p0, Lp3/d;->j:I

    .line 5
    iput p4, p0, Lp3/d;->k:I

    .line 6
    iput p5, p0, Lp3/d;->l:I

    return-void
.end method

.method public static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lp3/d;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lp3/d;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lp3/d;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lp3/d;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lp3/d;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final b()Lp3/d$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/d;->m:Lp3/d$c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lp3/d$c;

    invoke-direct {v0, p0}, Lp3/d$c;-><init>(Lp3/d;)V

    iput-object v0, p0, Lp3/d;->m:Lp3/d$c;

    .line 3
    :cond_0
    iget-object v0, p0, Lp3/d;->m:Lp3/d$c;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lp3/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lp3/d;

    .line 3
    iget v2, p0, Lp3/d;->h:I

    iget v3, p1, Lp3/d;->h:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lp3/d;->i:I

    iget v3, p1, Lp3/d;->i:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lp3/d;->j:I

    iget v3, p1, Lp3/d;->j:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lp3/d;->k:I

    iget v3, p1, Lp3/d;->k:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lp3/d;->l:I

    iget p1, p1, Lp3/d;->l:I

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
    .locals 2

    .line 1
    iget v0, p0, Lp3/d;->h:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget v0, p0, Lp3/d;->i:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget v0, p0, Lp3/d;->j:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Lp3/d;->k:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget v0, p0, Lp3/d;->l:I

    add-int/2addr v1, v0

    return v1
.end method
