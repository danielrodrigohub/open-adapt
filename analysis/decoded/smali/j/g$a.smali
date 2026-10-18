.class public final Lj/g$a;
.super Li0/b;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public final synthetic c:Lj/g;


# direct methods
.method public constructor <init>(Lj/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/g$a;->c:Lj/g;

    invoke-direct {p0}, Li0/b;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lj/g$a;->a:Z

    .line 3
    iput p1, p0, Lj/g$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget v0, p0, Lj/g$a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj/g$a;->b:I

    iget-object v1, p0, Lj/g$a;->c:Lj/g;

    iget-object v1, v1, Lj/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lj/g$a;->c:Lj/g;

    iget-object v0, v0, Lj/g;->d:Lj0/h0;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lj0/h0;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lj/g$a;->b:I

    .line 5
    iput-boolean v0, p0, Lj/g$a;->a:Z

    .line 6
    iget-object v1, p0, Lj/g$a;->c:Lj/g;

    .line 7
    iput-boolean v0, v1, Lj/g;->e:Z

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/g$a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj/g$a;->a:Z

    .line 3
    iget-object v0, p0, Lj/g$a;->c:Lj/g;

    iget-object v0, v0, Lj/g;->d:Lj0/h0;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lj0/h0;->c()V

    :cond_1
    return-void
.end method
