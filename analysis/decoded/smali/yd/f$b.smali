.class public final Lyd/f$b;
.super Lgd/a;
.source "Regex.kt"

# interfaces
.implements Lyd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyd/f;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgd/a<",
        "Lyd/c;",
        ">;",
        "Lyd/d;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lyd/f;


# direct methods
.method public constructor <init>(Lyd/f;)V
    .locals 0

    iput-object p1, p0, Lyd/f$b;->h:Lyd/f;

    invoke-direct {p0}, Lgd/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    instance-of v0, p1, Lyd/c;

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lyd/c;

    .line 2
    invoke-super {p0, p1}, Lgd/a;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final get(I)Lyd/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lyd/f$b;->h:Lyd/f;

    .line 2
    iget-object v0, v0, Lyd/f;->a:Ljava/util/regex/Matcher;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    invoke-static {v1, v0}, Landroidx/activity/k;->w(II)Lvd/e;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lvd/e;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 5
    new-instance v1, Lyd/c;

    iget-object v2, p0, Lyd/f$b;->h:Lyd/f;

    .line 6
    iget-object v2, v2, Lyd/f;->a:Ljava/util/regex/Matcher;

    .line 7
    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "matchResult.group(index)"

    invoke-static {p1, v2}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, v0}, Lyd/c;-><init>(Ljava/lang/String;Lvd/e;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lyd/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lvd/e;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lvd/e;-><init>(II)V

    .line 2
    new-instance v1, Lgd/m;

    invoke-direct {v1, v0}, Lgd/m;-><init>(Ljava/lang/Iterable;)V

    .line 3
    new-instance v0, Lyd/f$b$a;

    invoke-direct {v0, p0}, Lyd/f$b$a;-><init>(Lyd/f$b;)V

    invoke-static {v1, v0}, Lxd/g;->m(Lxd/d;Lqd/l;)Lxd/d;

    move-result-object v0

    check-cast v0, Lxd/l;

    .line 4
    new-instance v1, Lxd/l$a;

    invoke-direct {v1, v0}, Lxd/l$a;-><init>(Lxd/l;)V

    return-object v1
.end method

.method public final k()I
    .locals 1

    .line 1
    iget-object v0, p0, Lyd/f$b;->h:Lyd/f;

    .line 2
    iget-object v0, v0, Lyd/f;->a:Ljava/util/regex/Matcher;

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
