.class public final Ln3/c2$a;
.super Ljava/lang/Object;
.source "Tracks.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final m:Ly0/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Ln3/c2$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:I

.field public final i:Lp4/t0;

.field public final j:Z

.field public final k:[I

.field public final l:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/l;->f:Ly0/l;

    sput-object v0, Ln3/c2$a;->m:Ly0/l;

    return-void
.end method

.method public constructor <init>(Lp4/t0;Z[I[Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p1, Lp4/t0;->h:I

    iput v0, p0, Ln3/c2$a;->h:I

    .line 3
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    array-length v1, p4

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lm5/a;->a(Z)V

    .line 4
    iput-object p1, p0, Ln3/c2$a;->i:Lp4/t0;

    if-eqz p2, :cond_1

    if-le v0, v3, :cond_1

    move v2, v3

    .line 5
    :cond_1
    iput-boolean v2, p0, Ln3/c2$a;->j:Z

    .line 6
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Ln3/c2$a;->k:[I

    .line 7
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Ln3/c2$a;->l:[Z

    return-void
.end method

.method public static b(I)Ljava/lang/String;
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
    invoke-static {v1}, Ln3/c2$a;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/c2$a;->i:Lp4/t0;

    invoke-virtual {v2}, Lp4/t0;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ln3/c2$a;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/c2$a;->k:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Ln3/c2$a;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/c2$a;->l:[Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const/4 v1, 0x4

    .line 5
    invoke-static {v1}, Ln3/c2$a;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/c2$a;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

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
    const-class v2, Ln3/c2$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Ln3/c2$a;

    .line 3
    iget-boolean v2, p0, Ln3/c2$a;->j:Z

    iget-boolean v3, p1, Ln3/c2$a;->j:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ln3/c2$a;->i:Lp4/t0;

    iget-object v3, p1, Ln3/c2$a;->i:Lp4/t0;

    .line 4
    invoke-virtual {v2, v3}, Lp4/t0;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/c2$a;->k:[I

    iget-object v3, p1, Ln3/c2$a;->k:[I

    .line 5
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ln3/c2$a;->l:[Z

    iget-object p1, p1, Ln3/c2$a;->l:[Z

    .line 6
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

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
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/c2$a;->i:Lp4/t0;

    invoke-virtual {v0}, Lp4/t0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Ln3/c2$a;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ln3/c2$a;->k:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Ln3/c2$a;->l:[Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
