.class public final synthetic Lj5/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic i:Lj5/e;

.field public static final synthetic j:Lj5/e;


# instance fields
.field public final synthetic h:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lj5/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj5/e;-><init>(I)V

    sput-object v0, Lj5/e;->i:Lj5/e;

    new-instance v0, Lj5/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj5/e;-><init>(I)V

    sput-object v0, Lj5/e;->j:Lj5/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj5/e;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lj5/e;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj5/i$a;

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj5/i$a;

    invoke-virtual {p1, p2}, Lj5/i$a;->i(Lj5/i$a;)I

    move-result p1

    return p1

    .line 2
    :goto_0
    check-cast p1, Lya/h0;

    check-cast p2, Lya/h0;

    const-string v0, "o2"

    .line 3
    invoke-static {p2, v0}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lya/h0;->l(Lya/h0;)I

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
