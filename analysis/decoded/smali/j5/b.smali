.class public final synthetic Lj5/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic i:Lj5/b;

.field public static final synthetic j:Lj5/b;


# instance fields
.field public final synthetic h:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lj5/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj5/b;-><init>(I)V

    sput-object v0, Lj5/b;->i:Lj5/b;

    new-instance v0, Lj5/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj5/b;-><init>(I)V

    sput-object v0, Lj5/b;->j:Lj5/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj5/b;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lj5/b;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ln3/s0;

    check-cast p2, Ln3/s0;

    .line 1
    iget p2, p2, Ln3/s0;->o:I

    iget p1, p1, Ln3/s0;->o:I

    sub-int/2addr p2, p1

    return p2

    .line 2
    :goto_0
    check-cast p1, Lj5/i$h;

    check-cast p2, Lj5/i$h;

    invoke-static {p1, p2}, Lj5/i$h;->i(Lj5/i$h;Lj5/i$h;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
