.class public final synthetic Ln3/r0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Ls3/l;
.implements Le4/r$f;


# static fields
.field public static final synthetic c:Ln3/r0;

.field public static final synthetic d:Ln3/r0;

.field public static final synthetic e:Ln3/r0;

.field public static final synthetic f:Ln3/r0;

.field public static final synthetic g:Ln3/r0;

.field public static final synthetic h:Ln3/r0;

.field public static final synthetic i:Ln3/r0;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ln3/r0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/r0;-><init>(I)V

    sput-object v0, Ln3/r0;->c:Ln3/r0;

    new-instance v0, Ln3/r0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln3/r0;-><init>(I)V

    sput-object v0, Ln3/r0;->d:Ln3/r0;

    new-instance v0, Ln3/r0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln3/r0;-><init>(I)V

    sput-object v0, Ln3/r0;->e:Ln3/r0;

    new-instance v0, Ln3/r0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ln3/r0;-><init>(I)V

    sput-object v0, Ln3/r0;->f:Ln3/r0;

    new-instance v0, Ln3/r0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ln3/r0;-><init>(I)V

    sput-object v0, Ln3/r0;->g:Ln3/r0;

    new-instance v0, Ln3/r0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ln3/r0;-><init>(I)V

    sput-object v0, Ln3/r0;->h:Ln3/r0;

    new-instance v0, Ln3/r0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ln3/r0;-><init>(I)V

    sput-object v0, Ln3/r0;->i:Ln3/r0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln3/r0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Le4/n;

    sget-object v0, Le4/r;->a:Ljava/util/regex/Pattern;

    iget-object p1, p1, Le4/n;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final c()[Ls3/h;
    .locals 7

    iget v0, p0, Ln3/r0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [Ls3/h;

    .line 1
    new-instance v2, La4/h;

    .line 2
    invoke-direct {v2, v1}, La4/h;-><init>(I)V

    aput-object v2, v0, v1

    return-object v0

    :goto_0
    new-array v0, v2, [Ls3/h;

    .line 3
    new-instance v3, Lc4/c0;

    .line 4
    new-instance v4, Lm5/d0;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Lm5/d0;-><init>(J)V

    new-instance v5, Lc4/g;

    invoke-direct {v5}, Lc4/g;-><init>()V

    invoke-direct {v3, v2, v4, v5}, Lc4/c0;-><init>(ILm5/d0;Lc4/d0$c;)V

    aput-object v3, v0, v1

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 8

    iget v0, p0, Ln3/r0;->b:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_9

    .line 1
    :sswitch_0
    invoke-static {v5}, Lj5/i$d;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-static {v1}, Lj5/i$d;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 3
    invoke-static {v4}, Lj5/i$d;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz v0, :cond_0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    .line 4
    :goto_0
    invoke-static {v1}, Lm5/a;->a(Z)V

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lj5/i$d;

    invoke-direct {v1, v0, v3, p1}, Lj5/i$d;-><init>(I[II)V

    return-object v1

    .line 7
    :sswitch_1
    invoke-static {v5}, Ln3/m1;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 8
    invoke-static {v1}, Ln3/m1;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 9
    new-instance v1, Ln3/m1;

    invoke-direct {v1, v0, p1}, Ln3/m1;-><init>(FF)V

    return-object v1

    .line 10
    :sswitch_2
    sget-object v0, Ln3/s0;->N:Ln3/s0;

    .line 11
    new-instance v0, Ln3/s0$a;

    invoke-direct {v0}, Ln3/s0$a;-><init>()V

    if-eqz p1, :cond_1

    .line 12
    const-class v2, Lm5/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sget v6, Lm5/g0;->a:I

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 13
    :cond_1
    invoke-static {v5}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Ln3/s0;->N:Ln3/s0;

    iget-object v7, v6, Ln3/s0;->h:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v7

    .line 14
    :goto_1
    iput-object v2, v0, Ln3/s0$a;->a:Ljava/lang/String;

    .line 15
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Ln3/s0;->i:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 16
    :goto_2
    iput-object v1, v0, Ln3/s0$a;->b:Ljava/lang/String;

    .line 17
    invoke-static {v4}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Ln3/s0;->j:Ljava/lang/String;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    .line 18
    :goto_3
    iput-object v1, v0, Ln3/s0$a;->c:Ljava/lang/String;

    .line 19
    invoke-static {v3}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v6, Ln3/s0;->k:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 20
    iput v1, v0, Ln3/s0$a;->d:I

    const/4 v1, 0x4

    .line 21
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v6, Ln3/s0;->l:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 22
    iput v1, v0, Ln3/s0$a;->e:I

    const/4 v1, 0x5

    .line 23
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v6, Ln3/s0;->m:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 24
    iput v1, v0, Ln3/s0$a;->f:I

    const/4 v1, 0x6

    .line 25
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v6, Ln3/s0;->n:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 26
    iput v1, v0, Ln3/s0$a;->g:I

    const/4 v1, 0x7

    .line 27
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Ln3/s0;->p:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v2

    .line 28
    :goto_4
    iput-object v1, v0, Ln3/s0$a;->h:Ljava/lang/String;

    const/16 v1, 0x8

    .line 29
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lf4/a;

    iget-object v2, v6, Ln3/s0;->q:Lf4/a;

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    move-object v1, v2

    .line 30
    :goto_5
    iput-object v1, v0, Ln3/s0$a;->i:Lf4/a;

    const/16 v1, 0x9

    .line 31
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Ln3/s0;->r:Ljava/lang/String;

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move-object v1, v2

    .line 32
    :goto_6
    iput-object v1, v0, Ln3/s0$a;->j:Ljava/lang/String;

    const/16 v1, 0xa

    .line 33
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v6, Ln3/s0;->s:Ljava/lang/String;

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    move-object v1, v2

    .line 34
    :goto_7
    iput-object v1, v0, Ln3/s0$a;->k:Ljava/lang/String;

    const/16 v1, 0xb

    .line 35
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v6, Ln3/s0;->t:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 36
    iput v1, v0, Ln3/s0$a;->l:I

    .line 37
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :goto_8
    invoke-static {v5}, Ln3/s0;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_a

    .line 39
    iput-object v6, v0, Ln3/s0$a;->m:Ljava/util/List;

    const/16 v1, 0xd

    .line 40
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lr3/d;

    .line 41
    iput-object v1, v0, Ln3/s0$a;->n:Lr3/d;

    const/16 v1, 0xe

    .line 42
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ln3/s0;->N:Ln3/s0;

    iget-wide v3, v2, Ln3/s0;->w:J

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 43
    iput-wide v3, v0, Ln3/s0$a;->o:J

    const/16 v1, 0xf

    .line 44
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->x:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 45
    iput v1, v0, Ln3/s0$a;->p:I

    const/16 v1, 0x10

    .line 46
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->y:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 47
    iput v1, v0, Ln3/s0$a;->q:I

    const/16 v1, 0x11

    .line 48
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->z:F

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 49
    iput v1, v0, Ln3/s0$a;->r:F

    const/16 v1, 0x12

    .line 50
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->A:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 51
    iput v1, v0, Ln3/s0$a;->s:I

    const/16 v1, 0x13

    .line 52
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->B:F

    .line 53
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    .line 54
    iput v1, v0, Ln3/s0$a;->t:F

    const/16 v1, 0x14

    .line 55
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 56
    iput-object v1, v0, Ln3/s0$a;->u:[B

    const/16 v1, 0x15

    .line 57
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->D:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    iput v1, v0, Ln3/s0$a;->v:I

    const/16 v1, 0x16

    .line 59
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 60
    sget-object v3, Ln5/b;->m:Ly0/m;

    invoke-virtual {v3, v1}, Ly0/m;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v1

    check-cast v1, Ln5/b;

    .line 61
    iput-object v1, v0, Ln3/s0$a;->w:Ln5/b;

    :cond_9
    const/16 v1, 0x17

    .line 62
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->F:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 63
    iput v1, v0, Ln3/s0$a;->x:I

    const/16 v1, 0x18

    .line 64
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->G:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 65
    iput v1, v0, Ln3/s0$a;->y:I

    const/16 v1, 0x19

    .line 66
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->H:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 67
    iput v1, v0, Ln3/s0$a;->z:I

    const/16 v1, 0x1a

    .line 68
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->I:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 69
    iput v1, v0, Ln3/s0$a;->A:I

    const/16 v1, 0x1b

    .line 70
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->J:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    iput v1, v0, Ln3/s0$a;->B:I

    const/16 v1, 0x1c

    .line 72
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v3, v2, Ln3/s0;->K:I

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 73
    iput v1, v0, Ln3/s0$a;->C:I

    const/16 v1, 0x1d

    .line 74
    invoke-static {v1}, Ln3/s0;->e(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v2, Ln3/s0;->L:I

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 75
    iput p1, v0, Ln3/s0$a;->D:I

    .line 76
    new-instance p1, Ln3/s0;

    invoke-direct {p1, v0}, Ln3/s0;-><init>(Ln3/s0$a;)V

    return-object p1

    .line 77
    :cond_a
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 78
    :goto_9
    invoke-static {v5}, Ln5/t;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 79
    invoke-static {v1}, Ln5/t;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 80
    invoke-static {v4}, Ln5/t;->b(I)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-virtual {p1, v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 82
    invoke-static {v3}, Ln5/t;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    .line 84
    new-instance v2, Ln5/t;

    invoke-direct {v2, v0, v1, v4, p1}, Ln5/t;-><init>(IIIF)V

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
