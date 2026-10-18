.class public final Lx9/g;
.super Lx9/b;
.source "LacingPercentInBoundsConditionalCheck.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx9/b<",
        "Lv9/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lw9/a;

.field public final b:Lqd/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/l<",
            "Lv9/r;",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lv9/r;

.field public final d:Z


# direct methods
.method public constructor <init>(Lw9/a;Lea/h$a;Lqd/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/a;",
            "Lea/h$a;",
            "Lqd/l<",
            "-",
            "Lv9/r;",
            "Lfd/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "absolute"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publishConditionError"

    invoke-static {p3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lx9/b;-><init>()V

    .line 2
    iput-object p1, p0, Lx9/g;->a:Lw9/a;

    .line 3
    iput-object p3, p0, Lx9/g;->b:Lqd/l;

    .line 4
    new-instance p3, Lv9/r;

    .line 5
    iget-object v0, p1, Lw9/a;->h:Lv9/a;

    .line 6
    iget-object p1, p1, Lw9/a;->i:Lw9/u1;

    .line 7
    iget v1, p2, Lea/h$a;->j:I

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "For shoe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " The lacing command attempted to execute an absolute percent of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not within the bounds of -1 < percent && percent < 101"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-direct {p3, v0, p1}, Lv9/r;-><init>(Lv9/a;Ljava/lang/String;)V

    iput-object p3, p0, Lx9/g;->c:Lv9/r;

    .line 10
    iget p1, p2, Lea/h$a;->j:I

    if-ltz p1, :cond_1

    const/16 p2, 0x64

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 11
    :goto_1
    iput-boolean p1, p0, Lx9/g;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lw9/a;
    .locals 1

    iget-object v0, p0, Lx9/g;->a:Lw9/a;

    return-object v0
.end method

.method public final b()Lv9/m;
    .locals 1

    iget-object v0, p0, Lx9/g;->c:Lv9/r;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "LacingPercentInBoundsConditionalCheck"

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lx9/g;->d:Z

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

    iget-object v0, p0, Lx9/g;->b:Lqd/l;

    return-object v0
.end method
