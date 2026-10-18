.class public final synthetic Ly0/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Ls3/l;


# static fields
.field public static final synthetic c:Ly0/i;

.field public static final synthetic d:Ly0/i;

.field public static final synthetic e:Ly0/i;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ly0/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly0/i;-><init>(I)V

    sput-object v0, Ly0/i;->c:Ly0/i;

    new-instance v0, Ly0/i;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0/i;-><init>(I)V

    sput-object v0, Ly0/i;->d:Ly0/i;

    new-instance v0, Ly0/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0/i;-><init>(I)V

    sput-object v0, Ly0/i;->e:Ly0/i;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ly0/i;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()[Ls3/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ls3/h;

    new-instance v1, Lw3/b;

    invoke-direct {v1}, Lw3/b;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 10

    iget v0, p0, Ly0/i;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :pswitch_0
    invoke-static {v3}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v2}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Ln3/y0$f;->m:Ln3/y0$f;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Ln3/y0$f;->n:Ly0/h;

    invoke-virtual {v2, v0}, Ly0/h;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v0

    check-cast v0, Ln3/y0$f;

    :goto_0
    move-object v7, v0

    .line 6
    invoke-static {v1}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Ln3/a1;->N:Ln3/a1;

    goto :goto_1

    .line 8
    :cond_1
    sget-object v1, Ln3/a1;->O:Ln3/n;

    invoke-virtual {v1, v0}, Ln3/n;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v0

    check-cast v0, Ln3/a1;

    :goto_1
    move-object v8, v0

    const/4 v0, 0x3

    .line 9
    invoke-static {v0}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    sget-object v0, Ln3/y0$d;->n:Ln3/y0$d;

    goto :goto_2

    .line 11
    :cond_2
    sget-object v1, Ln3/y0$c;->m:Ly0/f;

    invoke-virtual {v1, v0}, Ly0/f;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v0

    check-cast v0, Ln3/y0$d;

    :goto_2
    move-object v6, v0

    const/4 v0, 0x4

    .line 12
    invoke-static {v0}, Ln3/y0;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    .line 13
    sget-object p1, Ln3/y0$i;->k:Ln3/y0$i;

    goto :goto_3

    .line 14
    :cond_3
    sget-object v0, Ln3/y0$i;->l:Ln3/z0;

    invoke-virtual {v0, p1}, Ln3/z0;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object p1

    check-cast p1, Ln3/y0$i;

    :goto_3
    move-object v9, p1

    .line 15
    new-instance p1, Ln3/y0;

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Ln3/y0;-><init>(Ljava/lang/String;Ln3/y0$d;Ln3/y0$f;Ln3/a1;Ln3/y0$i;)V

    return-object p1

    .line 16
    :goto_4
    invoke-static {v3}, Ln3/y1;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v3, v2

    .line 17
    :cond_4
    invoke-static {v3}, Lm5/a;->a(Z)V

    .line 18
    invoke-static {v2}, Ln3/y1;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 19
    invoke-static {v1}, Ln3/y1;->b(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    cmpl-float v1, p1, v2

    if-nez v1, :cond_5

    .line 20
    new-instance p1, Ln3/y1;

    invoke-direct {p1, v0}, Ln3/y1;-><init>(I)V

    goto :goto_5

    .line 21
    :cond_5
    new-instance v1, Ln3/y1;

    invoke-direct {v1, v0, p1}, Ln3/y1;-><init>(IF)V

    move-object p1, v1

    :goto_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
