.class public final Lq8/d$e;
.super Lld/c;
.source "BatteryEventAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq8/d;->c(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.adapt.ui.battery.BatteryEventAnimator"
    f = "BatteryEventAnimator.kt"
    l = {
        0x4f
    }
    m = "animateInCharging"
.end annotation


# instance fields
.field public h:Lq8/d;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lq8/d;

.field public k:I


# direct methods
.method public constructor <init>(Lq8/d;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq8/d;",
            "Ljd/d<",
            "-",
            "Lq8/d$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq8/d$e;->j:Lq8/d;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lq8/d$e;->i:Ljava/lang/Object;

    iget p1, p0, Lq8/d$e;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lq8/d$e;->k:I

    iget-object p1, p0, Lq8/d$e;->j:Lq8/d;

    invoke-virtual {p1, p0}, Lq8/d;->c(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
