.class public final synthetic Ls4/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic i:Ls4/a;

.field public static final synthetic j:Ls4/a;

.field public static final synthetic k:Ls4/a;

.field public static final synthetic l:Ls4/a;


# instance fields
.field public final synthetic h:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ls4/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls4/a;-><init>(I)V

    sput-object v0, Ls4/a;->i:Ls4/a;

    new-instance v0, Ls4/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ls4/a;-><init>(I)V

    sput-object v0, Ls4/a;->j:Ls4/a;

    new-instance v0, Ls4/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ls4/a;-><init>(I)V

    sput-object v0, Ls4/a;->k:Ls4/a;

    new-instance v0, Ls4/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ls4/a;-><init>(I)V

    sput-object v0, Ls4/a;->l:Ls4/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ls4/a;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Ls4/a;->h:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    check-cast p1, Lj5/i$h;

    check-cast p2, Lj5/i$h;

    invoke-static {p1, p2}, Lj5/i$h;->i(Lj5/i$h;Lj5/i$h;)I

    move-result p1

    return p1

    :pswitch_1
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lj5/i$f;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj5/i$f;

    invoke-virtual {p1, p2}, Lj5/i$f;->i(Lj5/i$f;)I

    move-result p1

    return p1

    .line 2
    :pswitch_2
    check-cast p1, Lt4/b;

    check-cast p2, Lt4/b;

    .line 3
    iget v0, p1, Lt4/b;->c:I

    iget v1, p2, Lt4/b;->c:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p1, Lt4/b;->b:Ljava/lang/String;

    iget-object p2, p2, Lt4/b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    .line 5
    :goto_1
    check-cast p1, Ll5/h0$a;

    check-cast p2, Ll5/h0$a;

    sget-object v0, Ll5/h0;->h:Ls4/a;

    .line 6
    iget p1, p1, Ll5/h0$a;->a:I

    iget p2, p2, Ll5/h0$a;->a:I

    sub-int/2addr p1, p2

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
