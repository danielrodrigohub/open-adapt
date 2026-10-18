.class public final Lr7/g;
.super Ljava/lang/Object;
.source "DeepLinkActions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr7/g$a;
    }
.end annotation


# static fields
.field public static final a:Lr7/g;

.field public static b:Lcom/nike/adapt/adk/IDeviceController;

.field public static c:Lrd/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lrd/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lrd/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqd/a<",
            "Lfd/o;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lr7/a;

.field public static g:Z

.field public static h:Lcom/nike/adapt/adk/Shoe;

.field public static i:Lcom/nike/adapt/adk/model/AdaptShoeColor;

.field public static j:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr7/g;

    invoke-direct {v0}, Lr7/g;-><init>()V

    sput-object v0, Lr7/g;->a:Lr7/g;

    .line 1
    sget-object v0, Lr7/g$c;->h:Lr7/g$c;

    sput-object v0, Lr7/g;->c:Lrd/o;

    .line 2
    sget-object v0, Lr7/g$d;->h:Lr7/g$d;

    sput-object v0, Lr7/g;->d:Lrd/o;

    .line 3
    sget-object v0, Lr7/g$b;->h:Lr7/g$b;

    sput-object v0, Lr7/g;->e:Lrd/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lp8/l;Lp8/l;)V
    .locals 2

    .line 1
    sget-object v0, Lr7/g;->h:Lcom/nike/adapt/adk/Shoe;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lr7/g$a;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Lr7/g$g;

    invoke-direct {v0, p1, p2}, Lr7/g$g;-><init>(Lp8/l;Lp8/l;)V

    sput-object v0, Lr7/g;->e:Lrd/o;

    goto :goto_1

    .line 3
    :cond_2
    new-instance p1, Lr7/g$f;

    invoke-direct {p1, p2}, Lr7/g$f;-><init>(Lp8/l;)V

    sput-object p1, Lr7/g;->d:Lrd/o;

    goto :goto_1

    .line 4
    :cond_3
    new-instance p2, Lr7/g$e;

    invoke-direct {p2, p1}, Lr7/g$e;-><init>(Lp8/l;)V

    sput-object p2, Lr7/g;->c:Lrd/o;

    :goto_1
    return-void
.end method

.method public final b(ZZ)V
    .locals 4

    .line 1
    sget-boolean v0, Lr7/g;->g:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lr7/g;->h:Lcom/nike/adapt/adk/Shoe;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    .line 4
    sget-object v3, Lr7/g;->d:Lrd/o;

    invoke-interface {v3}, Lqd/a;->invoke()Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    .line 6
    sget-object v3, Lr7/g;->c:Lrd/o;

    invoke-interface {v3}, Lqd/a;->invoke()Ljava/lang/Object;

    :cond_4
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 7
    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isBoth()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    if-eqz v3, :cond_6

    .line 8
    sget-object v3, Lr7/g;->e:Lrd/o;

    invoke-interface {v3}, Lqd/a;->invoke()Ljava/lang/Object;

    :cond_6
    if-eqz p1, :cond_7

    .line 9
    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isRight()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_3

    :cond_7
    move v3, v1

    :goto_3
    if-nez v3, :cond_a

    if-eqz p2, :cond_8

    .line 10
    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isLeft()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    if-nez v3, :cond_a

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 11
    invoke-virtual {v0}, Lcom/nike/adapt/adk/Shoe;->isBoth()Z

    move-result p1

    if-eqz p1, :cond_9

    move p1, v2

    goto :goto_5

    :cond_9
    move p1, v1

    :goto_5
    if-eqz p1, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    xor-int/lit8 p1, v1, 0x1

    .line 12
    sput-boolean p1, Lr7/g;->g:Z

    :cond_c
    return-void
.end method

.method public final c(ZZ)V
    .locals 2

    .line 1
    sget-object v0, Lr7/g;->f:Lr7/a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lr7/g$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2}, Lr7/g;->b(ZZ)V

    :goto_1
    return-void
.end method

.method public final d(Landroid/content/Intent;Lcom/nike/adapt/adk/IDeviceController;)V
    .locals 5

    .line 1
    sput-object p2, Lr7/g;->b:Lcom/nike/adapt/adk/IDeviceController;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "deep_link_action"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    instance-of v1, v0, Lr7/a;

    if-eqz v1, :cond_1

    check-cast v0, Lr7/a;

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    sput-object v0, Lr7/g;->f:Lr7/a;

    if-eqz p1, :cond_2

    const-string v0, "deep_link_unlace_shoe_side"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p2

    :goto_2
    instance-of v1, v0, Lcom/nike/adapt/adk/Shoe;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/nike/adapt/adk/Shoe;

    goto :goto_3

    :cond_3
    move-object v0, p2

    :goto_3
    sput-object v0, Lr7/g;->h:Lcom/nike/adapt/adk/Shoe;

    if-eqz p1, :cond_4

    const-string v0, "deep_link_change_lights_color"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    goto :goto_4

    :cond_4
    move-object v0, p2

    :goto_4
    sput-object v0, Lr7/g;->i:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, "deep_link_percent_position"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_5

    :cond_5
    move-object p1, p2

    :goto_5
    sput-object p1, Lr7/g;->j:Ljava/lang/Integer;

    .line 6
    sget-object p1, Lr7/g;->f:Lr7/a;

    const/4 v1, 0x1

    if-nez p1, :cond_6

    goto :goto_6

    .line 7
    :cond_6
    sget-object v2, Lr7/a;->k:Lr7/a;

    if-eq p1, v2, :cond_7

    sget-object p1, Lr7/g;->f:Lr7/a;

    sget-object v2, Lr7/a;->m:Lr7/a;

    if-eq p1, v2, :cond_7

    sget-object p1, Lr7/g;->f:Lr7/a;

    sget-object v2, Lr7/a;->n:Lr7/a;

    if-ne p1, v2, :cond_8

    :cond_7
    sget-object p1, Lr7/g;->h:Lcom/nike/adapt/adk/Shoe;

    if-nez p1, :cond_8

    goto :goto_6

    .line 8
    :cond_8
    sget-object p1, Lr7/g;->f:Lr7/a;

    sget-object v2, Lr7/a;->l:Lr7/a;

    if-ne p1, v2, :cond_9

    sget-object p1, Lr7/g;->i:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    if-nez p1, :cond_9

    goto :goto_6

    .line 9
    :cond_9
    sget-object p1, Lr7/g;->f:Lr7/a;

    sget-object v2, Lr7/a;->o:Lr7/a;

    if-ne p1, v2, :cond_a

    sget-object p1, Lr7/g;->j:Ljava/lang/Integer;

    if-nez p1, :cond_a

    :goto_6
    move p1, v0

    goto :goto_7

    :cond_a
    move p1, v1

    :goto_7
    if-nez p1, :cond_b

    return-void

    .line 10
    :cond_b
    sput-boolean v1, Lr7/g;->g:Z

    .line 11
    sget-object p1, Lr7/g;->f:Lr7/a;

    if-nez p1, :cond_c

    const/4 p1, -0x1

    goto :goto_8

    :cond_c
    sget-object v2, Lr7/g$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    :goto_8
    if-eq p1, v1, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v1, 0x3

    if-eq p1, v1, :cond_f

    const/4 p2, 0x4

    if-eq p1, p2, :cond_e

    const/4 p2, 0x5

    if-eq p1, p2, :cond_d

    goto :goto_9

    .line 12
    :cond_d
    new-instance p1, Lp8/c0;

    invoke-direct {p1, p2}, Lp8/c0;-><init>(I)V

    new-instance v0, Lp8/c0;

    invoke-direct {v0, p2}, Lp8/c0;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lr7/g;->a(Lp8/l;Lp8/l;)V

    goto :goto_9

    .line 13
    :cond_e
    new-instance p1, Lp8/c0;

    const/4 p2, -0x5

    invoke-direct {p1, p2}, Lp8/c0;-><init>(I)V

    new-instance v0, Lp8/c0;

    invoke-direct {v0, p2}, Lp8/c0;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lr7/g;->a(Lp8/l;Lp8/l;)V

    goto :goto_9

    .line 14
    :cond_f
    sget-object p1, Lr7/g;->i:Lcom/nike/adapt/adk/model/AdaptShoeColor;

    if-eqz p1, :cond_13

    sget-object v1, Lr7/g;->a:Lr7/g;

    new-instance v2, Lp8/j;

    new-instance v3, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getLeftAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object v4

    invoke-direct {v3, v4, p2, v0, p2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    invoke-direct {v2, v3}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    new-instance v3, Lp8/j;

    new-instance v4, Lcom/nike/adapt/adk/model/AdaptDeviceColor;

    invoke-virtual {p1}, Lcom/nike/adapt/adk/model/AdaptShoeColor;->getRightAdaptPreset()Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    move-result-object p1

    invoke-direct {v4, p1, p2, v0, p2}, Lcom/nike/adapt/adk/model/AdaptDeviceColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    invoke-direct {v3, v4}, Lp8/j;-><init>(Lcom/nike/adapt/adk/model/AdaptDeviceColor;)V

    invoke-virtual {v1, v2, v3}, Lr7/g;->a(Lp8/l;Lp8/l;)V

    goto :goto_9

    .line 15
    :cond_10
    sget-object p1, Lr7/g;->j:Ljava/lang/Integer;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sget-object p2, Lr7/g;->a:Lr7/g;

    new-instance v0, Lp8/d0;

    invoke-direct {v0, p1, v1}, Lp8/d0;-><init>(II)V

    new-instance v2, Lp8/d0;

    invoke-direct {v2, p1, v1}, Lp8/d0;-><init>(II)V

    invoke-virtual {p2, v0, v2}, Lr7/g;->a(Lp8/l;Lp8/l;)V

    .line 16
    :cond_11
    sget-object p1, Lh8/c;->b:Lh8/c;

    .line 17
    invoke-virtual {p1}, Lh8/c;->x()V

    goto :goto_9

    .line 18
    :cond_12
    new-instance p1, Lp8/d0;

    invoke-direct {p1, v0, v1}, Lp8/d0;-><init>(II)V

    new-instance p2, Lp8/d0;

    invoke-direct {p2, v0, v1}, Lp8/d0;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lr7/g;->a(Lp8/l;Lp8/l;)V

    :cond_13
    :goto_9
    return-void
.end method
