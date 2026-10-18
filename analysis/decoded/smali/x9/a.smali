.class public final Lx9/a;
.super Lx9/b;
.source "ColorRangeInBoundsConditionalCheck.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/b<",
        "Lv9/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lea/d;

.field public final b:Lw9/a;

.field public final c:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/r;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(Lea/d;Lw9/a;Lqd/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lea/d;",
            "Lw9/a;",
            "Lqd/l<",
            "-",
            "Lv9/r;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "color"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishConditionError"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lx9/b;-><init>()V

    .line 2
    iput-object p1, p0, Lx9/a;->a:Lea/d;

    .line 3
    iput-object p2, p0, Lx9/a;->b:Lw9/a;

    .line 4
    iput-object p3, p0, Lx9/a;->c:Lqd/l;

    const/16 p1, 0xff

    .line 5
    iput p1, p0, Lx9/a;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lw9/a;
    .locals 1

    iget-object v0, p0, Lx9/a;->b:Lw9/a;

    return-object v0
.end method

.method public final b()Lv9/m;
    .locals 9

    .line 1
    new-instance v0, Lv9/r;

    .line 2
    iget-object v1, p0, Lx9/a;->b:Lw9/a;

    .line 3
    iget-object v1, v1, Lw9/a;->h:Lv9/a;

    .line 4
    iget-object v2, p0, Lx9/a;->a:Lea/d;

    .line 5
    iget v2, v2, Lea/d;->h:I

    .line 6
    invoke-virtual {p0, v2}, Lx9/a;->g(I)Z

    move-result v2

    const-string v3, "]"

    const-string v4, ", "

    const-string v5, " is not within range of ["

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lx9/a;->a:Lea/d;

    .line 7
    iget v2, v2, Lea/d;->h:I

    .line 8
    iget v7, p0, Lx9/a;->d:I

    const-string v8, "Red value of "

    .line 9
    invoke-static {v8, v2, v5, v6, v4}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 10
    invoke-static {v2, v7, v3}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lx9/a;->a:Lea/d;

    .line 12
    iget v2, v2, Lea/d;->j:I

    .line 13
    invoke-virtual {p0, v2}, Lx9/a;->g(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lx9/a;->a:Lea/d;

    .line 14
    iget v2, v2, Lea/d;->j:I

    .line 15
    iget v7, p0, Lx9/a;->d:I

    const-string v8, "Blue value of "

    .line 16
    invoke-static {v8, v2, v5, v6, v4}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 17
    invoke-static {v2, v7, v3}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 18
    :cond_1
    iget-object v2, p0, Lx9/a;->a:Lea/d;

    .line 19
    iget v2, v2, Lea/d;->i:I

    .line 20
    iget v7, p0, Lx9/a;->d:I

    const-string v8, "Green value of "

    .line 21
    invoke-static {v8, v2, v5, v6, v4}, Landroidx/recyclerview/widget/s;->b(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 22
    invoke-static {v2, v7, v3}, Landroidx/recyclerview/widget/s;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    :goto_0
    invoke-direct {v0, v1, v2}, Lv9/r;-><init>(Lv9/a;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "ColorRangeInBoundsConditionalCheck"

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lx9/a;->a:Lea/d;

    .line 2
    iget v0, v0, Lea/d;->j:I

    .line 3
    invoke-virtual {p0, v0}, Lx9/a;->g(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lx9/a;->a:Lea/d;

    .line 4
    iget v0, v0, Lea/d;->h:I

    .line 5
    invoke-virtual {p0, v0}, Lx9/a;->g(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lx9/a;->a:Lea/d;

    .line 6
    iget v0, v0, Lea/d;->i:I

    .line 7
    invoke-virtual {p0, v0}, Lx9/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final e()Lqd/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqd/l<",
            "Lv9/r;",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lx9/a;->c:Lqd/l;

    return-object v0
.end method

.method public final g(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lx9/a;->d:I

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
