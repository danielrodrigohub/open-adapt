.class public abstract Lu8/g;
.super Ljava/lang/Object;
.source "ErrorDisplay.kt"


# instance fields
.field public final a:Lqd/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lu8/f;->h:Lu8/f;

    invoke-direct {p0, v0}, Lu8/g;-><init>(Lqd/a;)V

    return-void
.end method

.method public constructor <init>(Lqd/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqd/a<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "runtimeOverride"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu8/g;->a:Lqd/a;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lu8/g;->b:Z

    .line 4
    iput-boolean p1, p0, Lu8/g;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lu8/g;->b:Z

    .line 2
    iput-boolean v0, p0, Lu8/g;->c:Z

    return-void
.end method

.method public abstract b()Z
.end method

.method public final c(ZLv9/e;)Z
    .locals 4

    const-string v0, "connectionState"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lo7/x;->a:Lo7/x;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string v2, "right"

    goto :goto_0

    :cond_0
    const-string v2, "left"

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shoe: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lu8/g;->a:Lqd/a;

    invoke-interface {v0}, Lqd/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lu8/g;->a()V

    return v1

    .line 4
    :cond_1
    sget-object v0, Lv9/e;->o:Lv9/e;

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    iput-boolean v1, p0, Lu8/g;->c:Z

    goto :goto_1

    .line 6
    :cond_3
    iput-boolean v1, p0, Lu8/g;->b:Z

    .line 7
    :goto_1
    invoke-virtual {p0}, Lu8/g;->b()Z

    move-result p1

    return p1
.end method
