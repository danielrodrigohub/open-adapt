.class public final synthetic Ly1/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ly1/i;


# direct methods
.method public synthetic constructor <init>(Ly1/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/n;->a:Ly1/i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly1/n;->a:Ly1/i;

    new-instance v1, Ly1/j0;

    invoke-direct {v1, v0}, Ly1/j0;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
