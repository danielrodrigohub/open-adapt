.class public final Lt7/a$a;
.super Li3/c;
.source "GlideImageLoader.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt7/a;->b(Ljava/lang/String;Ljava/lang/Object;Landroid/view/View;Landroid/graphics/drawable/Drawable;Lqd/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li3/c<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:Landroid/view/View;

.field public final synthetic m:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lt7/a$a;->k:Ljava/lang/String;

    iput-object p2, p0, Lt7/a$a;->l:Landroid/view/View;

    iput-object p3, p0, Lt7/a$a;->m:Landroid/graphics/drawable/Drawable;

    const/high16 p1, -0x80000000

    invoke-direct {p0, p1, p1}, Li3/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Glide"

    const-string v1, "onLoadFailed"

    invoke-virtual {p1, v0, v1}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lt7/a$a;->l:Landroid/view/View;

    iget-object v0, p0, Lt7/a$a;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    sget-object p1, Lo7/x;->a:Lo7/x;

    const-string v0, "Glide"

    const-string v1, "onLoadCleared"

    invoke-virtual {p1, v0, v1}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    sget-object v0, Lo7/x;->a:Lo7/x;

    iget-object v1, p0, Lt7/a$a;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResourceReady : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Glide image url"

    invoke-virtual {v0, v2, v1}, Lo7/x;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lt7/a$a;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
