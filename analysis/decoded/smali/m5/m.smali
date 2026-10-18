.class public final synthetic Lm5/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic h:Lm5/o;


# direct methods
.method public synthetic constructor <init>(Lm5/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/m;->h:Lm5/o;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object p1, p0, Lm5/m;->h:Lm5/o;

    .line 1
    iget-object v0, p1, Lm5/o;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm5/o$c;

    .line 2
    iget-object v2, p1, Lm5/o;->c:Lm5/o$b;

    .line 3
    iget-boolean v3, v1, Lm5/o$c;->d:Z

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, v1, Lm5/o$c;->c:Z

    if-eqz v3, :cond_1

    .line 4
    iget-object v3, v1, Lm5/o$c;->b:Lm5/j$a;

    invoke-virtual {v3}, Lm5/j$a;->b()Lm5/j;

    move-result-object v3

    .line 5
    new-instance v5, Lm5/j$a;

    invoke-direct {v5}, Lm5/j$a;-><init>()V

    iput-object v5, v1, Lm5/o$c;->b:Lm5/j$a;

    .line 6
    iput-boolean v4, v1, Lm5/o$c;->c:Z

    .line 7
    iget-object v1, v1, Lm5/o$c;->a:Ljava/lang/Object;

    invoke-interface {v2, v1, v3}, Lm5/o$b;->a(Ljava/lang/Object;Lm5/j;)V

    .line 8
    :cond_1
    iget-object v1, p1, Lm5/o;->b:Lm5/l;

    invoke-interface {v1}, Lm5/l;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
