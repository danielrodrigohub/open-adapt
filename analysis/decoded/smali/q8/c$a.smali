.class public final Lq8/c$a;
.super Lld/c;
.source "BatteryAnimationUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq8/c;->a(Landroid/widget/ImageView;Lq8/e;Lq8/e;Lqd/l;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.battery.BatteryAnimationUtil"
    f = "BatteryAnimationUtil.kt"
    l = {
        0x20,
        0x36
    }
    m = "animateBattery"
.end annotation


# instance fields
.field public h:Landroid/widget/ImageView;

.field public i:Landroid/animation/ValueAnimator;

.field public j:F

.field public k:F

.field public l:I

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lq8/c;

.field public p:I


# direct methods
.method public constructor <init>(Lq8/c;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq8/c;",
            "Ljd/d<",
            "-",
            "Lq8/c$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq8/c$a;->o:Lq8/c;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lq8/c$a;->n:Ljava/lang/Object;

    iget p1, p0, Lq8/c$a;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lq8/c$a;->p:I

    iget-object v0, p0, Lq8/c$a;->o:Lq8/c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lq8/c;->a(Landroid/widget/ImageView;Lq8/e;Lq8/e;Lqd/l;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
