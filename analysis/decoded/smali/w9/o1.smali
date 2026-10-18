.class public final Lw9/o1;
.super Lld/c;
.source "AdaptKitPairDevicesController.kt"


# annotations
.annotation runtime Lld/e;
    c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl"
    f = "AdaptKitPairDevicesController.kt"
    l = {
        0x8ab
    }
    m = "syncBatteryCheck"
.end annotation


# instance fields
.field public h:Lya/b;

.field public i:Lrd/w;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lw9/x;

.field public l:I


# direct methods
.method public constructor <init>(Lw9/x;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/x;",
            "Ljd/d<",
            "-",
            "Lw9/o1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lw9/o1;->k:Lw9/x;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lw9/o1;->j:Ljava/lang/Object;

    iget p1, p0, Lw9/o1;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lw9/o1;->l:I

    iget-object p1, p0, Lw9/o1;->k:Lw9/x;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lw9/x;->s0(Lw9/x;Lya/b;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
