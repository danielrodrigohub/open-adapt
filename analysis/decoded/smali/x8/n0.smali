.class public final Lx8/n0;
.super Lx8/q0;
.source "ShoeControllerUiHelper.kt"


# direct methods
.method public constructor <init>(Lcom/nike/adapt/adk/IDeviceController;Lq7/m1;Lx8/q0$a;ZLqd/p;I)V
    .locals 9

    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v4, p3

    and-int/lit8 p3, p6, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    const/4 p3, 0x2

    move v5, p3

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, p4

    :goto_1
    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_3

    .line 1
    sget-object p5, Lx8/m0;->h:Lx8/m0;

    :cond_3
    move-object v8, p5

    const-string p3, "uiState"

    .line 2
    invoke-static {v5, p3}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    const-string p3, "lacingPosition"

    invoke-static {v8, p3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/nike/adapt/adk/Shoe;->RIGHT:Lcom/nike/adapt/adk/Shoe;

    const v7, 0x7f0801c6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lx8/q0;-><init>(Lcom/nike/adapt/adk/IDeviceController;Lcom/nike/adapt/adk/Shoe;Lq7/m1;Lx8/q0$a;IZILqd/p;)V

    return-void
.end method
