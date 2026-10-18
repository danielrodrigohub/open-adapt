.class public final Ln3/o1$a;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Ln3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/o1$a$a;
    }
.end annotation


# static fields
.field public static final i:Ln3/o1$a;


# instance fields
.field public final h:Lm5/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2
    new-instance v1, Ln3/o1$a;

    const/4 v2, 0x0

    xor-int/lit8 v2, v2, 0x1

    .line 3
    invoke-static {v2}, Lm5/a;->e(Z)V

    .line 4
    new-instance v2, Lm5/j;

    invoke-direct {v2, v0}, Lm5/j;-><init>(Landroid/util/SparseBooleanArray;)V

    .line 5
    invoke-direct {v1, v2}, Ln3/o1$a;-><init>(Lm5/j;)V

    .line 6
    sput-object v1, Ln3/o1$a;->i:Ln3/o1$a;

    .line 7
    sget-object v0, Ln3/n1;->b:Ln3/n1;

    return-void
.end method

.method public constructor <init>(Lm5/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/o1$a;->h:Lm5/j;

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    iget-object v4, p0, Ln3/o1$a;->h:Lm5/j;

    invoke-virtual {v4}, Lm5/j;->c()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4
    iget-object v4, p0, Ln3/o1$a;->h:Lm5/j;

    invoke-virtual {v4, v3}, Lm5/j;->b(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x24

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Ln3/o1$a;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Ln3/o1$a;

    .line 3
    iget-object v0, p0, Ln3/o1$a;->h:Lm5/j;

    iget-object p1, p1, Ln3/o1$a;->h:Lm5/j;

    invoke-virtual {v0, p1}, Lm5/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ln3/o1$a;->h:Lm5/j;

    invoke-virtual {v0}, Lm5/j;->hashCode()I

    move-result v0

    return v0
.end method
