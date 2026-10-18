.class public final Ln3/o1$b;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lm5/j;


# direct methods
.method public constructor <init>(Lm5/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/o1$b;->a:Lm5/j;

    return-void
.end method


# virtual methods
.method public final varargs a([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/o1$b;->a:Lm5/j;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, p1, v3

    .line 3
    invoke-virtual {v0, v4}, Lm5/j;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Ln3/o1$b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Ln3/o1$b;

    .line 3
    iget-object v0, p0, Ln3/o1$b;->a:Lm5/j;

    iget-object p1, p1, Ln3/o1$b;->a:Lm5/j;

    invoke-virtual {v0, p1}, Lm5/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Ln3/o1$b;->a:Lm5/j;

    invoke-virtual {v0}, Lm5/j;->hashCode()I

    move-result v0

    return v0
.end method
