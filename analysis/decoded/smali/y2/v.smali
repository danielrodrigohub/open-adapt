.class public final Ly2/v;
.super Ljava/lang/Object;
.source "LazyBitmapDrawableResource.java"

# interfaces
.implements Lr2/w;
.implements Lr2/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lr2/w<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;",
        "Lr2/s;"
    }
.end annotation


# instance fields
.field public final h:Landroid/content/res/Resources;

.field public final i:Lr2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr2/w<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lr2/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lr2/w<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ly2/v;->h:Landroid/content/res/Resources;

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Ly2/v;->i:Lr2/w;

    return-void
.end method

.method public static d(Landroid/content/res/Resources;Lr2/w;)Lr2/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lr2/w<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lr2/w<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ly2/v;

    invoke-direct {v0, p0, p1}, Ly2/v;-><init>(Landroid/content/res/Resources;Lr2/w;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ly2/v;->i:Lr2/w;

    invoke-interface {v0}, Lr2/w;->a()I

    move-result v0

    return v0
.end method

.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Ly2/v;->i:Lr2/w;

    invoke-interface {v0}, Lr2/w;->c()V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Ly2/v;->h:Landroid/content/res/Resources;

    iget-object v2, p0, Ly2/v;->i:Lr2/w;

    invoke-interface {v2}, Lr2/w;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Ly2/v;->i:Lr2/w;

    instance-of v1, v0, Lr2/s;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lr2/s;

    invoke-interface {v0}, Lr2/s;->initialize()V

    :cond_0
    return-void
.end method
