.class public final synthetic Ly1/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/io/InputStream;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/l;->a:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-object p1, p0, Ly1/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ly1/l;->a:Ljava/io/InputStream;

    iget-object v1, p0, Ly1/l;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ly1/q;->c(Ljava/io/InputStream;Ljava/lang/String;)Ly1/j0;

    move-result-object v0

    return-object v0
.end method
