.class public final synthetic Lm5/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic h:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic i:I

.field public final synthetic j:Lm5/o$a;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILm5/o$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/n;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lm5/n;->i:I

    iput-object p3, p0, Lm5/n;->j:Lm5/o$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lm5/n;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lm5/n;->i:I

    iget-object v2, p0, Lm5/n;->j:Lm5/o$a;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm5/o$c;

    .line 2
    iget-boolean v4, v3, Lm5/o$c;->d:Z

    if-nez v4, :cond_0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 3
    iget-object v4, v3, Lm5/o$c;->b:Lm5/j$a;

    invoke-virtual {v4, v1}, Lm5/j$a;->a(I)Lm5/j$a;

    :cond_1
    const/4 v4, 0x1

    .line 4
    iput-boolean v4, v3, Lm5/o$c;->c:Z

    .line 5
    iget-object v3, v3, Lm5/o$c;->a:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lm5/o$a;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method
