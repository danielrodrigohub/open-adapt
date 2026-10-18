.class public final synthetic Ly1/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ly1/e0$b;


# instance fields
.field public final synthetic a:Ly1/e0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ly1/e0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/a0;->a:Ly1/e0;

    iput p2, p0, Ly1/a0;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ly1/a0;->a:Ly1/e0;

    iget v1, p0, Ly1/a0;->b:I

    invoke-virtual {v0, v1}, Ly1/e0;->r(I)V

    return-void
.end method
