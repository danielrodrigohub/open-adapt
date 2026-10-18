.class public final La2/t;
.super Ljava/lang/Object;
.source "TrimPathContent.java"

# interfaces
.implements La2/b;
.implements Lb2/a$a;


# instance fields
.field public final a:Z

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb2/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lb2/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg2/b;Lf2/q;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2/t;->b:Ljava/util/ArrayList;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-boolean v0, p2, Lf2/q;->f:Z

    .line 5
    iput-boolean v0, p0, La2/t;->a:Z

    .line 6
    iget v0, p2, Lf2/q;->b:I

    .line 7
    iput v0, p0, La2/t;->c:I

    .line 8
    iget-object v0, p2, Lf2/q;->c:Le2/b;

    .line 9
    invoke-virtual {v0}, Le2/b;->a()Lb2/a;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb2/d;

    iput-object v1, p0, La2/t;->d:Lb2/d;

    .line 10
    iget-object v1, p2, Lf2/q;->d:Le2/b;

    .line 11
    invoke-virtual {v1}, Le2/b;->a()Lb2/a;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lb2/d;

    iput-object v2, p0, La2/t;->e:Lb2/d;

    .line 12
    iget-object p2, p2, Lf2/q;->e:Le2/b;

    .line 13
    invoke-virtual {p2}, Le2/b;->a()Lb2/a;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lb2/d;

    iput-object v2, p0, La2/t;->f:Lb2/d;

    .line 14
    invoke-virtual {p1, v0}, Lg2/b;->f(Lb2/a;)V

    .line 15
    invoke-virtual {p1, v1}, Lg2/b;->f(Lb2/a;)V

    .line 16
    invoke-virtual {p1, p2}, Lg2/b;->f(Lb2/a;)V

    .line 17
    invoke-virtual {v0, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 18
    invoke-virtual {v1, p0}, Lb2/a;->a(Lb2/a$a;)V

    .line 19
    invoke-virtual {p2, p0}, Lb2/a;->a(Lb2/a$a;)V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, La2/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, La2/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb2/a$a;

    invoke-interface {v1}, Lb2/a$a;->d()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "La2/b;",
            ">;",
            "Ljava/util/List<",
            "La2/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final f(Lb2/a$a;)V
    .locals 1

    iget-object v0, p0, La2/t;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
