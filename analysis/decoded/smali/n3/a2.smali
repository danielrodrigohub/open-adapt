.class public final Ln3/a2;
.super Ln3/r1;
.source "ThumbRating.java"


# static fields
.field public static final k:Ly0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Ln3/a2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final i:Z

.field public final j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly0/h;->e:Ly0/h;

    sput-object v0, Ln3/a2;->k:Ly0/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/r1;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/a2;->i:Z

    .line 3
    iput-boolean v0, p0, Ln3/a2;->j:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ln3/r1;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Ln3/a2;->i:Z

    .line 6
    iput-boolean p1, p0, Ln3/a2;->j:Z

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
    invoke-static {v1}, Ln3/a2;->b(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ln3/a2;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/a2;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ln3/a2;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Ln3/a2;->j:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ln3/a2;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Ln3/a2;

    .line 3
    iget-boolean v0, p0, Ln3/a2;->j:Z

    iget-boolean v2, p1, Ln3/a2;->j:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Ln3/a2;->i:Z

    iget-boolean p1, p1, Ln3/a2;->i:Z

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-boolean v1, p0, Ln3/a2;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Ln3/a2;->j:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
