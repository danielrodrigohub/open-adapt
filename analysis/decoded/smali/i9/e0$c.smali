.class public final Li9/e0$c;
.super Lrd/o;
.source "WelcomeOnBoardingFragment.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li9/e0;->I(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Landroid/view/View;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Li9/e0$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Li9/e0$c;

    invoke-direct {v0}, Li9/e0$c;-><init>()V

    sput-object v0, Li9/e0$c;->h:Li9/e0$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    const-string v0, "$this$forAllChildren"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
