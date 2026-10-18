.class public final Ln3/y0;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y0$i;,
        Ln3/y0$d;,
        Ln3/y0$c;,
        Ln3/y0$j;,
        Ln3/y0$k;,
        Ln3/y0$f;,
        Ln3/y0$h;,
        Ln3/y0$g;,
        Ln3/y0$e;,
        Ln3/y0$b;
    }
.end annotation


# static fields
.field public static final n:Ln3/y0;

.field public static final o:Ly0/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Ln3/y0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Ljava/lang/String;

.field public final i:Ln3/y0$h;

.field public final j:Ln3/y0$f;

.field public final k:Ln3/a1;

.field public final l:Ln3/y0$d;

.field public final m:Ln3/y0$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/y0$b;

    invoke-direct {v0}, Ln3/y0$b;-><init>()V

    invoke-virtual {v0}, Ln3/y0$b;->a()Ln3/y0;

    move-result-object v0

    sput-object v0, Ln3/y0;->n:Ln3/y0;

    .line 2
    sget-object v0, Ly0/i;->c:Ly0/i;

    sput-object v0, Ln3/y0;->o:Ly0/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ln3/y0$d;Ln3/y0$f;Ln3/a1;Ln3/y0$i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y0;->h:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Ln3/y0;->i:Ln3/y0$h;

    .line 4
    iput-object p3, p0, Ln3/y0;->j:Ln3/y0$f;

    .line 5
    iput-object p4, p0, Ln3/y0;->k:Ln3/a1;

    .line 6
    iput-object p2, p0, Ln3/y0;->l:Ln3/y0$d;

    .line 7
    iput-object p5, p0, Ln3/y0;->m:Ln3/y0$i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ln3/y0$d;Ln3/y0$h;Ln3/y0$f;Ln3/a1;Ln3/y0$i;Ln3/y0$a;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Ln3/y0;->h:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Ln3/y0;->i:Ln3/y0$h;

    .line 11
    iput-object p4, p0, Ln3/y0;->j:Ln3/y0$f;

    .line 12
    iput-object p5, p0, Ln3/y0;->k:Ln3/a1;

    .line 13
    iput-object p2, p0, Ln3/y0;->l:Ln3/y0$d;

    .line 14
    iput-object p6, p0, Ln3/y0;->m:Ln3/y0$i;

    return-void
.end method

.method public static c(Landroid/net/Uri;)Ln3/y0;
    .locals 1

    .line 1
    new-instance v0, Ln3/y0$b;

    invoke-direct {v0}, Ln3/y0$b;-><init>()V

    .line 2
    iput-object p0, v0, Ln3/y0$b;->b:Landroid/net/Uri;

    .line 3
    invoke-virtual {v0}, Ln3/y0$b;->a()Ln3/y0;

    move-result-object p0

    return-object p0
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
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y0;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y0;->j:Ln3/y0$f;

    invoke-virtual {v2}, Ln3/y0$f;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y0;->k:Ln3/a1;

    invoke-virtual {v2}, Ln3/a1;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y0;->l:Ln3/y0$d;

    invoke-virtual {v2}, Ln3/y0$c;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y0;->m:Ln3/y0$i;

    invoke-virtual {v2}, Ln3/y0$i;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final b()Ln3/y0$b;
    .locals 3

    .line 1
    new-instance v0, Ln3/y0$b;

    .line 2
    invoke-direct {v0}, Ln3/y0$b;-><init>()V

    .line 3
    iget-object v1, p0, Ln3/y0;->l:Ln3/y0$d;

    .line 4
    new-instance v2, Ln3/y0$c$a;

    invoke-direct {v2, v1}, Ln3/y0$c$a;-><init>(Ln3/y0$c;)V

    .line 5
    iput-object v2, v0, Ln3/y0$b;->d:Ln3/y0$c$a;

    .line 6
    iget-object v1, p0, Ln3/y0;->h:Ljava/lang/String;

    iput-object v1, v0, Ln3/y0$b;->a:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Ln3/y0;->k:Ln3/a1;

    iput-object v1, v0, Ln3/y0$b;->j:Ln3/a1;

    .line 8
    iget-object v1, p0, Ln3/y0;->j:Ln3/y0$f;

    .line 9
    new-instance v2, Ln3/y0$f$a;

    invoke-direct {v2, v1}, Ln3/y0$f$a;-><init>(Ln3/y0$f;)V

    .line 10
    iput-object v2, v0, Ln3/y0$b;->k:Ln3/y0$f$a;

    .line 11
    iget-object v1, p0, Ln3/y0;->m:Ln3/y0$i;

    iput-object v1, v0, Ln3/y0$b;->l:Ln3/y0$i;

    .line 12
    iget-object v1, p0, Ln3/y0;->i:Ln3/y0$h;

    if-eqz v1, :cond_1

    .line 13
    iget-object v2, v1, Ln3/y0$g;->e:Ljava/lang/String;

    iput-object v2, v0, Ln3/y0$b;->g:Ljava/lang/String;

    .line 14
    iget-object v2, v1, Ln3/y0$g;->b:Ljava/lang/String;

    iput-object v2, v0, Ln3/y0$b;->c:Ljava/lang/String;

    .line 15
    iget-object v2, v1, Ln3/y0$g;->a:Landroid/net/Uri;

    iput-object v2, v0, Ln3/y0$b;->b:Landroid/net/Uri;

    .line 16
    iget-object v2, v1, Ln3/y0$g;->d:Ljava/util/List;

    iput-object v2, v0, Ln3/y0$b;->f:Ljava/util/List;

    .line 17
    iget-object v2, v1, Ln3/y0$g;->f:Lu6/v;

    iput-object v2, v0, Ln3/y0$b;->h:Lu6/v;

    .line 18
    iget-object v2, v1, Ln3/y0$g;->g:Ljava/lang/Object;

    iput-object v2, v0, Ln3/y0$b;->i:Ljava/lang/Object;

    .line 19
    iget-object v1, v1, Ln3/y0$g;->c:Ln3/y0$e;

    if-eqz v1, :cond_0

    .line 20
    new-instance v2, Ln3/y0$e$a;

    invoke-direct {v2, v1}, Ln3/y0$e$a;-><init>(Ln3/y0$e;)V

    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Ln3/y0$e$a;

    invoke-direct {v2}, Ln3/y0$e$a;-><init>()V

    :goto_0
    iput-object v2, v0, Ln3/y0$b;->e:Ln3/y0$e$a;

    :cond_1
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3/y0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ln3/y0;

    .line 3
    iget-object v1, p0, Ln3/y0;->h:Ljava/lang/String;

    iget-object v3, p1, Ln3/y0;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0;->l:Ln3/y0$d;

    iget-object v3, p1, Ln3/y0;->l:Ln3/y0$d;

    .line 4
    invoke-virtual {v1, v3}, Ln3/y0$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0;->i:Ln3/y0$h;

    iget-object v3, p1, Ln3/y0;->i:Ln3/y0$h;

    .line 5
    invoke-static {v1, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0;->j:Ln3/y0$f;

    iget-object v3, p1, Ln3/y0;->j:Ln3/y0$f;

    .line 6
    invoke-static {v1, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0;->k:Ln3/a1;

    iget-object v3, p1, Ln3/y0;->k:Ln3/a1;

    .line 7
    invoke-static {v1, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0;->m:Ln3/y0$i;

    iget-object p1, p1, Ln3/y0;->m:Ln3/y0$i;

    .line 8
    invoke-static {v1, p1}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y0;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Ln3/y0;->i:Ln3/y0$h;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ln3/y0$g;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Ln3/y0;->j:Ln3/y0$f;

    invoke-virtual {v1}, Ln3/y0$f;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Ln3/y0;->l:Ln3/y0$d;

    invoke-virtual {v0}, Ln3/y0$c;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Ln3/y0;->k:Ln3/a1;

    invoke-virtual {v1}, Ln3/a1;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v0, p0, Ln3/y0;->m:Ln3/y0$i;

    invoke-virtual {v0}, Ln3/y0$i;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
