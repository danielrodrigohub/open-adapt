.class public final synthetic Ly1/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ly1/e0$b;


# instance fields
.field public final synthetic a:Ly1/e0;

.field public final synthetic b:Ld2/e;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ll2/c;


# direct methods
.method public synthetic constructor <init>(Ly1/e0;Ld2/e;Ljava/lang/Object;Ll2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/d0;->a:Ly1/e0;

    iput-object p2, p0, Ly1/d0;->b:Ld2/e;

    iput-object p3, p0, Ly1/d0;->c:Ljava/lang/Object;

    iput-object p4, p0, Ly1/d0;->d:Ll2/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Ly1/d0;->a:Ly1/e0;

    iget-object v1, p0, Ly1/d0;->b:Ld2/e;

    iget-object v2, p0, Ly1/d0;->c:Ljava/lang/Object;

    iget-object v3, p0, Ly1/d0;->d:Ll2/c;

    invoke-virtual {v0, v1, v2, v3}, Ly1/e0;->a(Ld2/e;Ljava/lang/Object;Ll2/c;)V

    return-void
.end method
