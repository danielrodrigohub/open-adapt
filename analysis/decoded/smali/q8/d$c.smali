.class public final Lq8/d$c;
.super Lrd/o;
.source "BatteryEventAnimator.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq8/d;->a(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/lang/Integer;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lq8/d;


# direct methods
.method public constructor <init>(Lq8/d;)V
    .locals 0

    iput-object p1, p0, Lq8/d$c;->h:Lq8/d;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lq8/d$c;->h:Lq8/d;

    .line 3
    iput p1, v0, Lq8/d;->e:I

    .line 4
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
