.class public final synthetic Ly0/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Lm5/f;
.implements Ls3/l;


# static fields
.field public static final synthetic c:Ly0/h;

.field public static final synthetic d:Ly0/h;

.field public static final synthetic e:Ly0/h;

.field public static final synthetic f:Ly0/h;

.field public static final synthetic g:Ly0/h;

.field public static final synthetic h:Ly0/h;

.field public static final synthetic i:Ly0/h;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ly0/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly0/h;-><init>(I)V

    sput-object v0, Ly0/h;->c:Ly0/h;

    new-instance v0, Ly0/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ly0/h;-><init>(I)V

    sput-object v0, Ly0/h;->d:Ly0/h;

    new-instance v0, Ly0/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0/h;-><init>(I)V

    sput-object v0, Ly0/h;->e:Ly0/h;

    new-instance v0, Ly0/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0/h;-><init>(I)V

    sput-object v0, Ly0/h;->f:Ly0/h;

    new-instance v0, Ly0/h;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0/h;-><init>(I)V

    sput-object v0, Ly0/h;->g:Ly0/h;

    new-instance v0, Ly0/h;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ly0/h;-><init>(I)V

    sput-object v0, Ly0/h;->h:Ly0/h;

    new-instance v0, Ly0/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ly0/h;-><init>(I)V

    sput-object v0, Ly0/h;->i:Ly0/h;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ly0/h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->c()V

    return-void
.end method

.method public final c()[Ls3/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ls3/h;

    new-instance v1, Lc4/a;

    invoke-direct {v1}, Lc4/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 14

    iget v0, p0, Ly0/h;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1
    :pswitch_0
    invoke-static {v4}, Ln3/a2;->b(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 2
    :goto_0
    invoke-static {v0}, Lm5/a;->a(Z)V

    .line 3
    invoke-static {v3}, Ln3/a2;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ln3/a2;

    .line 5
    invoke-static {v2}, Ln3/a2;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {v0, p1}, Ln3/a2;-><init>(Z)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ln3/a2;

    invoke-direct {v0}, Ln3/a2;-><init>()V

    :goto_1
    return-object v0

    .line 7
    :pswitch_1
    new-instance v0, Ln3/y0$f;

    .line 8
    invoke-static {v4}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    invoke-virtual {p1, v4, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 10
    invoke-static {v3}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 11
    invoke-static {v2}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 12
    invoke-static {v1}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v1

    const v2, -0x800001

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v13

    const/4 v1, 0x4

    .line 14
    invoke-static {v1}, Ln3/y0$f;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    move-object v1, v0

    move-wide v2, v7

    move-wide v4, v9

    move-wide v6, v11

    move v8, v13

    move v9, p1

    invoke-direct/range {v1 .. v9}, Ln3/y0$f;-><init>(JJJFF)V

    return-object v0

    .line 16
    :goto_2
    invoke-static {v4}, Lp4/t0;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    .line 17
    sget-object v0, Lu6/v;->i:Lu6/v$b;

    .line 18
    sget-object v0, Lu6/p0;->l:Lu6/p0;

    goto :goto_3

    .line 19
    :cond_2
    sget-object v1, Ln3/s0;->O:Ln3/r0;

    invoke-static {v1, v0}, Lm5/b;->a(Ln3/h$a;Ljava/util/List;)Lu6/v;

    move-result-object v0

    .line 20
    :goto_3
    invoke-static {v3}, Lp4/t0;->c(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance v1, Lp4/t0;

    new-array v2, v4, [Ln3/s0;

    invoke-virtual {v0, v2}, Lu6/t;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln3/s0;

    invoke-direct {v1, p1, v0}, Lp4/t0;-><init>(Ljava/lang/String;[Ln3/s0;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
