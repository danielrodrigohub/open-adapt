.class public final Lq8/c$b;
.super Lld/i;
.source "BatteryAnimationUtil.kt"

# interfaces
.implements Lqd/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq8/c;->a(Landroid/widget/ImageView;Lq8/e;Lq8/e;Lqd/l;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lld/i;",
        "Lqd/p<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Ljd/d<",
        "-",
        "Lfd/o;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.battery.BatteryAnimationUtil$animateBattery$2"
    f = "BatteryAnimationUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic h:Landroid/graphics/Canvas;

.field public final synthetic i:Landroid/graphics/Bitmap;

.field public final synthetic j:F

.field public final synthetic k:Landroid/widget/ImageView;

.field public final synthetic l:I

.field public final synthetic m:Landroid/graphics/Paint;

.field public final synthetic n:I

.field public final synthetic o:I

.field public final synthetic p:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FLandroid/widget/ImageView;ILandroid/graphics/Paint;IILandroid/graphics/Bitmap;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap;",
            "F",
            "Landroid/widget/ImageView;",
            "I",
            "Landroid/graphics/Paint;",
            "II",
            "Landroid/graphics/Bitmap;",
            "Ljd/d<",
            "-",
            "Lq8/c$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq8/c$b;->h:Landroid/graphics/Canvas;

    iput-object p2, p0, Lq8/c$b;->i:Landroid/graphics/Bitmap;

    iput p3, p0, Lq8/c$b;->j:F

    iput-object p4, p0, Lq8/c$b;->k:Landroid/widget/ImageView;

    iput p5, p0, Lq8/c$b;->l:I

    iput-object p6, p0, Lq8/c$b;->m:Landroid/graphics/Paint;

    iput p7, p0, Lq8/c$b;->n:I

    iput p8, p0, Lq8/c$b;->o:I

    iput-object p9, p0, Lq8/c$b;->p:Landroid/graphics/Bitmap;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lld/i;-><init>(ILjd/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljd/d;)Ljd/d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljd/d<",
            "*>;)",
            "Ljd/d<",
            "Lfd/o;",
            ">;"
        }
    .end annotation

    new-instance p1, Lq8/c$b;

    iget-object v1, p0, Lq8/c$b;->h:Landroid/graphics/Canvas;

    iget-object v2, p0, Lq8/c$b;->i:Landroid/graphics/Bitmap;

    iget v3, p0, Lq8/c$b;->j:F

    iget-object v4, p0, Lq8/c$b;->k:Landroid/widget/ImageView;

    iget v5, p0, Lq8/c$b;->l:I

    iget-object v6, p0, Lq8/c$b;->m:Landroid/graphics/Paint;

    iget v7, p0, Lq8/c$b;->n:I

    iget v8, p0, Lq8/c$b;->o:I

    iget-object v9, p0, Lq8/c$b;->p:Landroid/graphics/Bitmap;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lq8/c$b;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FLandroid/widget/ImageView;ILandroid/graphics/Paint;IILandroid/graphics/Bitmap;Ljd/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Ljd/d;

    invoke-virtual {p0, p1, p2}, Lq8/c$b;->create(Ljava/lang/Object;Ljd/d;)Ljd/d;

    move-result-object p1

    check-cast p1, Lq8/c$b;

    sget-object p2, Lfd/o;->a:Lfd/o;

    invoke-virtual {p1, p2}, Lq8/c$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Ld3/e;->p(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lq8/c$b;->h:Landroid/graphics/Canvas;

    iget-object v1, p0, Lq8/c$b;->i:Landroid/graphics/Bitmap;

    iget v2, p0, Lq8/c$b;->j:F

    iget-object v3, p0, Lq8/c$b;->k:Landroid/widget/ImageView;

    iget v4, p0, Lq8/c$b;->l:I

    iget-object v5, p0, Lq8/c$b;->m:Landroid/graphics/Paint;

    iget v6, p0, Lq8/c$b;->n:I

    iget v7, p0, Lq8/c$b;->o:I

    iget-object v8, p0, Lq8/c$b;->p:Landroid/graphics/Bitmap;

    const-string p1, "batteryBitmap"

    invoke-static {v8, p1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {v0 .. v8}, Landroidx/lifecycle/o;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FLandroid/widget/ImageView;ILandroid/graphics/Paint;IILandroid/graphics/Bitmap;)V

    .line 3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
