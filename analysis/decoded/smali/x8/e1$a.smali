.class public final Lx8/e1$a;
.super Lrd/o;
.source "ShoeScaleControllerUiHelper.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx8/e1;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Landroid/widget/LinearLayout;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lx8/e1;


# direct methods
.method public constructor <init>(Lx8/e1;)V
    .locals 0

    iput-object p1, p0, Lx8/e1$a;->h:Lx8/e1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/e1$a;->h:Lx8/e1;

    .line 2
    iget-object v0, v0, Lx8/e1;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method
