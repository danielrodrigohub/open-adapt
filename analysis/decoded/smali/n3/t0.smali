.class public final synthetic Ln3/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Lm5/f;
.implements Ls3/l;
.implements Lr4/f$a;


# static fields
.field public static final synthetic c:Ln3/t0;

.field public static final synthetic d:Ln3/t0;

.field public static final synthetic e:Ln3/t0;

.field public static final synthetic f:Ln3/t0;

.field public static final synthetic g:Ln3/t0;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ln3/t0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/t0;-><init>(I)V

    sput-object v0, Ln3/t0;->c:Ln3/t0;

    new-instance v0, Ln3/t0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln3/t0;-><init>(I)V

    sput-object v0, Ln3/t0;->d:Ln3/t0;

    new-instance v0, Ln3/t0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln3/t0;-><init>(I)V

    sput-object v0, Ln3/t0;->e:Ln3/t0;

    new-instance v0, Ln3/t0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ln3/t0;-><init>(I)V

    sput-object v0, Ln3/t0;->f:Ln3/t0;

    new-instance v0, Ln3/t0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ln3/t0;-><init>(I)V

    sput-object v0, Ln3/t0;->g:Ln3/t0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln3/t0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lr3/k$a;

    invoke-virtual {p1}, Lr3/k$a;->b()V

    return-void
.end method

.method public final c()[Ls3/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ls3/h;

    new-instance v1, Ld4/a;

    invoke-direct {v1}, Ld4/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ln3/t0;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {v6}, Ln3/u0;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v6

    .line 2
    :goto_0
    invoke-static {v2}, Lm5/a;->a(Z)V

    .line 3
    invoke-static {v4}, Ln3/u0;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v2, Ln3/u0;

    invoke-static {v3}, Ln3/u0;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v2, v1}, Ln3/u0;-><init>(Z)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance v2, Ln3/u0;

    invoke-direct {v2}, Ln3/u0;-><init>()V

    :goto_1
    return-object v2

    .line 6
    :goto_2
    invoke-static {v6}, Ln3/o1$d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 7
    invoke-static {v4}, Ln3/o1$d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_3

    .line 8
    :cond_2
    sget-object v4, Ln3/y0;->o:Ly0/i;

    invoke-virtual {v4, v2}, Ly0/i;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v2

    check-cast v2, Ln3/y0;

    :goto_3
    move-object v9, v2

    .line 9
    invoke-static {v3}, Ln3/o1$d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v2, 0x3

    .line 10
    invoke-static {v2}, Ln3/o1$d;->b(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    const/4 v2, 0x4

    .line 11
    invoke-static {v2}, Ln3/o1$d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    const/4 v2, 0x5

    .line 12
    invoke-static {v2}, Ln3/o1$d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    const/4 v2, 0x6

    .line 13
    invoke-static {v2}, Ln3/o1$d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 14
    new-instance v1, Ln3/o1$d;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v17}, Ln3/o1$d;-><init>(Ljava/lang/Object;ILn3/y0;Ljava/lang/Object;IJJII)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
