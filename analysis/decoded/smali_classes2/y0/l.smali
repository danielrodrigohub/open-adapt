.class public final synthetic Ly0/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lm5/o$a;
.implements Ln3/h$a;
.implements Ls3/l;


# static fields
.field public static final synthetic c:Ly0/l;

.field public static final synthetic d:Ly0/l;

.field public static final synthetic e:Ly0/l;

.field public static final synthetic f:Ly0/l;

.field public static final synthetic g:Ly0/l;

.field public static final synthetic h:Ly0/l;

.field public static final synthetic i:Ly0/l;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ly0/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly0/l;-><init>(I)V

    sput-object v0, Ly0/l;->c:Ly0/l;

    new-instance v0, Ly0/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly0/l;-><init>(I)V

    sput-object v0, Ly0/l;->d:Ly0/l;

    new-instance v0, Ly0/l;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0/l;-><init>(I)V

    sput-object v0, Ly0/l;->e:Ly0/l;

    new-instance v0, Ly0/l;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0/l;-><init>(I)V

    sput-object v0, Ly0/l;->f:Ly0/l;

    new-instance v0, Ly0/l;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0/l;-><init>(I)V

    sput-object v0, Ly0/l;->g:Ly0/l;

    new-instance v0, Ly0/l;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ly0/l;-><init>(I)V

    sput-object v0, Ly0/l;->h:Ly0/l;

    new-instance v0, Ly0/l;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ly0/l;-><init>(I)V

    sput-object v0, Ly0/l;->i:Ly0/l;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ly0/l;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()[Ls3/h;
    .locals 3

    iget v0, p0, Ly0/l;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [Ls3/h;

    return-object v0

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ls3/h;

    new-instance v2, Lc4/w;

    invoke-direct {v2}, Lc4/w;-><init>()V

    aput-object v2, v0, v1

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 11

    iget v0, p0, Ly0/l;->b:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object v0, Ln3/c2$a;->m:Ly0/l;

    .line 1
    sget-object v0, Lp4/t0;->m:Ly0/h;

    .line 2
    invoke-static {v4}, Ln3/c2$a;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 3
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v5}, Ly0/h;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v0

    check-cast v0, Lp4/t0;

    .line 5
    invoke-static {v3}, Ln3/c2$a;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iget v5, v0, Lp4/t0;->h:I

    new-array v5, v5, [I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v5

    .line 6
    :goto_0
    invoke-static {v2}, Ln3/c2$a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    iget v5, v0, Lp4/t0;->h:I

    new-array v5, v5, [Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v5

    .line 7
    :goto_1
    invoke-static {v1}, Ln3/c2$a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 8
    new-instance v1, Ln3/c2$a;

    invoke-direct {v1, v0, p1, v3, v2}, Ln3/c2$a;-><init>(Lp4/t0;Z[I[Z)V

    return-object v1

    .line 9
    :pswitch_1
    invoke-static {v4}, Ln3/j1;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v4, v3

    .line 10
    :cond_2
    invoke-static {v4}, Lm5/a;->a(Z)V

    .line 11
    invoke-static {v3}, Ln3/j1;->b(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_3

    .line 12
    new-instance p1, Ln3/j1;

    invoke-direct {p1}, Ln3/j1;-><init>()V

    goto :goto_2

    :cond_3
    new-instance v0, Ln3/j1;

    invoke-direct {v0, p1}, Ln3/j1;-><init>(F)V

    move-object p1, v0

    :goto_2
    return-object p1

    .line 13
    :goto_3
    invoke-static {v4}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-static {v4}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v6, v0

    goto :goto_4

    :cond_4
    move v6, v4

    .line 15
    :goto_4
    invoke-static {v3}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-static {v3}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v7, v0

    goto :goto_5

    :cond_5
    move v7, v4

    :goto_5
    const/4 v0, 0x2

    .line 17
    invoke-static {v0}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 18
    invoke-static {v0}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move v8, v0

    goto :goto_6

    :cond_6
    move v8, v3

    .line 19
    :goto_6
    invoke-static {v2}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 20
    invoke-static {v2}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    :cond_7
    move v9, v3

    .line 21
    invoke-static {v1}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    invoke-static {v1}, Lp3/d;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    :cond_8
    move v10, v4

    .line 23
    new-instance p1, Lp3/d;

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lp3/d;-><init>(IIIII)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ln3/o1$c;

    invoke-interface {p1}, Ln3/o1$c;->k()V

    return-void
.end method
