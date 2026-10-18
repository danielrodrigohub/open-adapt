.class public final synthetic Ly1/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/m;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Ly1/m;->b:Landroid/content/Context;

    iput p3, p0, Ly1/m;->c:I

    iput-object p4, p0, Ly1/m;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ly1/m;->a:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Ly1/m;->b:Landroid/content/Context;

    iget v2, p0, Ly1/m;->c:I

    iget-object v3, p0, Ly1/m;->d:Ljava/lang/String;

    .line 1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    move-object v1, v0

    .line 2
    :cond_0
    invoke-static {v1, v2, v3}, Ly1/q;->e(Landroid/content/Context;ILjava/lang/String;)Ly1/j0;

    move-result-object v0

    return-object v0
.end method
