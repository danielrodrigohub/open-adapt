.class public final Ln3/y0$i;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y0$i$a;
    }
.end annotation


# static fields
.field public static final k:Ln3/y0$i;

.field public static final l:Ln3/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/h$a<",
            "Ln3/y0$i;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final h:Landroid/net/Uri;

.field public final i:Ljava/lang/String;

.field public final j:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/y0$i$a;

    invoke-direct {v0}, Ln3/y0$i$a;-><init>()V

    .line 2
    new-instance v1, Ln3/y0$i;

    invoke-direct {v1, v0}, Ln3/y0$i;-><init>(Ln3/y0$i$a;)V

    .line 3
    sput-object v1, Ln3/y0$i;->k:Ln3/y0$i;

    .line 4
    sget-object v0, Ln3/z0;->c:Ln3/z0;

    sput-object v0, Ln3/y0$i;->l:Ln3/z0;

    return-void
.end method

.method public constructor <init>(Ln3/y0$i$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Ln3/y0$i$a;->a:Landroid/net/Uri;

    .line 3
    iput-object v0, p0, Ln3/y0$i;->h:Landroid/net/Uri;

    .line 4
    iget-object v0, p1, Ln3/y0$i$a;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Ln3/y0$i;->i:Ljava/lang/String;

    .line 6
    iget-object p1, p1, Ln3/y0$i$a;->c:Landroid/os/Bundle;

    .line 7
    iput-object p1, p0, Ln3/y0$i;->j:Landroid/os/Bundle;

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

    .line 2
    iget-object v1, p0, Ln3/y0$i;->h:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ln3/y0$i;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y0$i;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    :cond_0
    iget-object v1, p0, Ln3/y0$i;->i:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ln3/y0$i;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y0$i;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v1, p0, Ln3/y0$i;->j:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 7
    invoke-static {v1}, Ln3/y0$i;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y0$i;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Ln3/y0$i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Ln3/y0$i;

    .line 3
    iget-object v1, p0, Ln3/y0$i;->h:Landroid/net/Uri;

    iget-object v3, p1, Ln3/y0$i;->h:Landroid/net/Uri;

    invoke-static {v1, v3}, Lm5/g0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ln3/y0$i;->i:Ljava/lang/String;

    iget-object p1, p1, Ln3/y0$i;->i:Ljava/lang/String;

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
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/y0$i;->h:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Ln3/y0$i;->i:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
