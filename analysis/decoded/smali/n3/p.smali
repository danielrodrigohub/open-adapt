.class public final synthetic Ln3/p;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Ls3/l;
.implements Landroidx/lifecycle/w;


# static fields
.field public static final synthetic c:Ln3/p;

.field public static final synthetic d:Ln3/p;

.field public static final synthetic e:Ln3/p;

.field public static final synthetic f:Ln3/p;

.field public static final synthetic g:Ln3/p;

.field public static final synthetic h:Ln3/p;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ln3/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln3/p;-><init>(I)V

    sput-object v0, Ln3/p;->c:Ln3/p;

    new-instance v0, Ln3/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ln3/p;-><init>(I)V

    sput-object v0, Ln3/p;->d:Ln3/p;

    new-instance v0, Ln3/p;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ln3/p;-><init>(I)V

    sput-object v0, Ln3/p;->e:Ln3/p;

    new-instance v0, Ln3/p;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ln3/p;-><init>(I)V

    sput-object v0, Ln3/p;->f:Ln3/p;

    new-instance v0, Ln3/p;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ln3/p;-><init>(I)V

    sput-object v0, Ln3/p;->g:Ln3/p;

    new-instance v0, Ln3/p;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ln3/p;-><init>(I)V

    sput-object v0, Ln3/p;->h:Ln3/p;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ln3/p;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ls9/k;

    .line 1
    sget-object v0, Lo7/g;->h:Lo7/g;

    const-string v1, "it"

    invoke-static {p1, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lo7/g;->l:Ls9/k;

    invoke-static {p1, v1}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    sput-object p1, Lo7/g;->l:Ls9/k;

    .line 4
    invoke-virtual {v0}, Lo7/g;->c()V

    :cond_0
    return-void
.end method

.method public final c()[Ls3/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ls3/h;

    new-instance v1, Lz3/d;

    invoke-direct {v1}, Lz3/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ln3/p;->b:I

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x2

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 1
    :pswitch_1
    invoke-static {v3}, Lq4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    new-array v2, v11, [Lq4/a$a;

    move-object v14, v2

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lq4/a$a;

    .line 3
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 4
    sget-object v12, Lq4/a$a;->o:Ly0/e;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    invoke-virtual {v12, v13}, Ly0/e;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v12

    check-cast v12, Lq4/a$a;

    aput-object v12, v3, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move-object v14, v3

    .line 5
    :goto_1
    invoke-static {v10}, Lq4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 6
    invoke-static {v7}, Lq4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 7
    invoke-static {v6}, Lq4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v19

    .line 8
    new-instance v1, Lq4/a;

    const/4 v13, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v19}, Lq4/a;-><init>(Ljava/lang/Object;[Lq4/a$a;JJI)V

    return-object v1

    .line 9
    :pswitch_2
    invoke-static {v3}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 10
    sget-object v12, Ln3/y0;->o:Ly0/i;

    invoke-virtual {v12, v2}, Ly0/i;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v2

    check-cast v2, Ln3/y0;

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object v14, v3

    .line 11
    :goto_2
    invoke-static {v10}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v2, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 13
    invoke-static {v7}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 14
    invoke-static {v6}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {v1, v2, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    const/4 v2, 0x5

    .line 16
    invoke-static {v2}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    const/4 v2, 0x6

    .line 17
    invoke-static {v2}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    const/4 v2, 0x7

    .line 18
    invoke-static {v2}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 19
    sget-object v3, Ln3/y0$f;->n:Ly0/h;

    invoke-virtual {v3, v2}, Ly0/h;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ln3/y0$f;

    :cond_3
    move-object/from16 v24, v3

    const/16 v2, 0x8

    .line 20
    invoke-static {v2}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/16 v3, 0x9

    .line 21
    invoke-static {v3}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v25

    const/16 v3, 0xa

    .line 22
    invoke-static {v3}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v8, v9}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v27

    const/16 v3, 0xb

    .line 23
    invoke-static {v3}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v29

    const/16 v3, 0xc

    .line 24
    invoke-static {v3}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v30

    const/16 v3, 0xd

    .line 25
    invoke-static {v3}, Ln3/b2$d;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v31

    .line 26
    new-instance v1, Ln3/b2$d;

    move-object v12, v1

    invoke-direct {v1}, Ln3/b2$d;-><init>()V

    .line 27
    sget-object v13, Ln3/b2$d;->z:Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v32}, Ln3/b2$d;->f(Ljava/lang/Object;Ln3/y0;Ljava/lang/Object;JJJZZLn3/y0$f;JJIIJ)Ln3/b2$d;

    .line 28
    iput-boolean v2, v1, Ln3/b2$d;->s:Z

    return-object v1

    .line 29
    :pswitch_3
    new-instance v2, Ln3/q;

    invoke-direct {v2, v1}, Ln3/q;-><init>(Landroid/os/Bundle;)V

    return-object v2

    .line 30
    :goto_3
    invoke-static {v11}, Lj5/p;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 31
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v4, Lp4/t0;->m:Ly0/h;

    invoke-virtual {v4, v2}, Ly0/h;->d(Landroid/os/Bundle;)Ln3/h;

    move-result-object v2

    check-cast v2, Lp4/t0;

    .line 33
    invoke-static {v3}, Lj5/p;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v3, Lj5/p;

    .line 36
    array-length v4, v1

    if-nez v4, :cond_4

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_4

    .line 38
    :cond_4
    new-instance v4, Lw6/a$a;

    invoke-direct {v4, v1}, Lw6/a$a;-><init>([I)V

    move-object v1, v4

    .line 39
    :goto_4
    invoke-direct {v3, v2, v1}, Lj5/p;-><init>(Lp4/t0;Ljava/util/List;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
