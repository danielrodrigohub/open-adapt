.class public final Lq8/d$k;
.super Lld/c;
.source "BatteryEventAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq8/d;->i(Lq8/f;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.battery.BatteryEventAnimator"
    f = "BatteryEventAnimator.kt"
    l = {
        0x2c,
        0x35,
        0x39,
        0x3a,
        0x3d,
        0x40
    }
    m = "performAnimation"
.end annotation


# instance fields
.field public h:Lq8/d;

.field public i:Z

.field public j:Z

.field public k:Z

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lq8/d;

.field public n:I


# direct methods
.method public constructor <init>(Lq8/d;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq8/d;",
            "Ljd/d<",
            "-",
            "Lq8/d$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq8/d$k;->m:Lq8/d;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lq8/d$k;->l:Ljava/lang/Object;

    iget p1, p0, Lq8/d$k;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lq8/d$k;->n:I

    iget-object p1, p0, Lq8/d$k;->m:Lq8/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lq8/d;->i(Lq8/f;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
