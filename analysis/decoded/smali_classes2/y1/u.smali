.class public final synthetic Ly1/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ly1/e0$b;


# instance fields
.field public final synthetic a:Ly1/e0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ly1/e0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/u;->a:Ly1/e0;

    iput-object p2, p0, Ly1/u;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ly1/u;->a:Ly1/e0;

    iget-object v1, p0, Ly1/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly1/e0;->v(Ljava/lang/String;)V

    return-void
.end method
