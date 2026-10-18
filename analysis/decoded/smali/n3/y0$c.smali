.class public Ln3/y0$c;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y0$c$a;
    }
.end annotation


# static fields
.field public static final m:Ly0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Ln3/y0$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:J

.field public final i:J

.field public final j:Z

.field public final k:Z

.field public final l:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/y0$c$a;

    invoke-direct {v0}, Ln3/y0$c$a;-><init>()V

    .line 2
    invoke-virtual {v0}, Ln3/y0$c$a;->a()Ln3/y0$d;

    .line 3
    sget-object v0, Ly0/f;->c:Ly0/f;

    sput-object v0, Ln3/y0$c;->m:Ly0/f;

    return-void
.end method

.method public constructor <init>(Ln3/y0$c$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-wide v0, p1, Ln3/y0$c$a;->a:J

    .line 3
    iput-wide v0, p0, Ln3/y0$c;->h:J

    .line 4
    iget-wide v0, p1, Ln3/y0$c$a;->b:J

    .line 5
    iput-wide v0, p0, Ln3/y0$c;->i:J

    .line 6
    iget-boolean v0, p1, Ln3/y0$c$a;->c:Z

    .line 7
    iput-boolean v0, p0, Ln3/y0$c;->j:Z

    .line 8
    iget-boolean v0, p1, Ln3/y0$c$a;->d:Z

    .line 9
    iput-boolean v0, p0, Ln3/y0$c;->k:Z

    .line 10
    iget-boolean p1, p1, Ln3/y0$c$a;->e:Z

    .line 11
    iput-boolean p1, p0, Ln3/y0$c;->l:Z

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
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/y0$c;->h:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Ln3/y0$c;->i:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/y0$c;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/y0$c;->k:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Ln3/y0$c;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/y0$c;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3/y0$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ln3/y0$c;

    .line 3
    iget-wide v3, p0, Ln3/y0$c;->h:J

    iget-wide v5, p1, Ln3/y0$c;->h:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Ln3/y0$c;->i:J

    iget-wide v5, p1, Ln3/y0$c;->i:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Ln3/y0$c;->j:Z

    iget-boolean v3, p1, Ln3/y0$c;->j:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Ln3/y0$c;->k:Z

    iget-boolean v3, p1, Ln3/y0$c;->k:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Ln3/y0$c;->l:Z

    iget-boolean p1, p1, Ln3/y0$c;->l:Z

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Ln3/y0$c;->h:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v3, p0, Ln3/y0$c;->i:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Ln3/y0$c;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Ln3/y0$c;->k:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean v1, p0, Ln3/y0$c;->l:Z

    add-int/2addr v0, v1

    return v0
.end method
