.class public final synthetic Ly0/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Lm5/f;
.implements Lr3/l$b;
.implements Ls3/l;


# static fields
.field public static final synthetic c:Ly0/g;

.field public static final synthetic d:Ly0/g;

.field public static final synthetic e:Ly0/g;

.field public static final synthetic f:Ly0/g;

.field public static final synthetic g:Ly0/g;

.field public static final synthetic h:Ly0/g;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ly0/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly0/g;-><init>(I)V

    sput-object v0, Ly0/g;->c:Ly0/g;

    new-instance v0, Ly0/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly0/g;-><init>(I)V

    sput-object v0, Ly0/g;->d:Ly0/g;

    new-instance v0, Ly0/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0/g;-><init>(I)V

    sput-object v0, Ly0/g;->e:Ly0/g;

    new-instance v0, Ly0/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0/g;-><init>(I)V

    sput-object v0, Ly0/g;->f:Ly0/g;

    new-instance v0, Ly0/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0/g;-><init>(I)V

    sput-object v0, Ly0/g;->g:Ly0/g;

    new-instance v0, Ly0/g;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ly0/g;-><init>(I)V

    sput-object v0, Ly0/g;->h:Ly0/g;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ly0/g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->a()V

    return-void
.end method

.method public final c()[Ls3/h;
    .locals 3

    iget v0, p0, Ly0/g;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [Ls3/h;

    .line 1
    new-instance v2, Lv3/b;

    .line 2
    invoke-direct {v2}, Lv3/b;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    :goto_0
    new-array v0, v2, [Ls3/h;

    .line 3
    new-instance v2, Lb4/c;

    invoke-direct {v2}, Lb4/c;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 2

    sget-object v0, Ln3/r1;->h:Ly0/g;

    const/4 v0, 0x0

    const/16 v1, 0x24

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Ln3/a2;->k:Ly0/h;

    invoke-virtual {v0, p1}, Ly0/h;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object p1

    check-cast p1, Ln3/r1;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown RatingType: "

    .line 5
    invoke-static {v1, v0}, Landroidx/appcompat/widget/e0;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    sget-object v0, Ln3/y1;->k:Ly0/i;

    invoke-virtual {v0, p1}, Ly0/i;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object p1

    check-cast p1, Ln3/r1;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Ln3/j1;->j:Ly0/l;

    invoke-virtual {v0, p1}, Ly0/l;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object p1

    check-cast p1, Ln3/r1;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Ln3/u0;->k:Ln3/t0;

    invoke-virtual {v0, p1}, Ln3/t0;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object p1

    check-cast p1, Ln3/r1;

    :goto_0
    return-object p1
.end method
