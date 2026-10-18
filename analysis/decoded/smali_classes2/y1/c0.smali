.class public final synthetic Ly1/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ly1/e0$b;


# instance fields
.field public final synthetic a:Ly1/e0;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ly1/e0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/c0;->a:Ly1/e0;

    iput p2, p0, Ly1/c0;->b:I

    iput p3, p0, Ly1/c0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ly1/c0;->a:Ly1/e0;

    iget v1, p0, Ly1/c0;->b:I

    iget v2, p0, Ly1/c0;->c:I

    invoke-virtual {v0, v1, v2}, Ly1/e0;->u(II)V

    return-void
.end method
