.class public final synthetic Ly0/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ln3/h$a;
.implements Lk4/g$a;


# static fields
.field public static final synthetic c:Ly0/e;

.field public static final synthetic d:Ly0/e;

.field public static final synthetic e:Ly0/e;

.field public static final synthetic f:Ly0/e;


# instance fields
.field public final synthetic b:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Ly0/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly0/e;-><init>(I)V

    sput-object v0, Ly0/e;->c:Ly0/e;

    new-instance v0, Ly0/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ly0/e;-><init>(I)V

    sput-object v0, Ly0/e;->d:Ly0/e;

    new-instance v0, Ly0/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ly0/e;-><init>(I)V

    sput-object v0, Ly0/e;->e:Ly0/e;

    new-instance v0, Ly0/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ly0/e;-><init>(I)V

    sput-object v0, Ly0/e;->f:Ly0/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ly0/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIIII)Z
    .locals 3

    sget-object v0, Lz3/d;->u:Ly0/e;

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p2, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p3, v2, :cond_0

    if-ne p4, v1, :cond_0

    if-eq p5, v1, :cond_1

    if-eq p1, v0, :cond_1

    :cond_0
    if-ne p2, v1, :cond_2

    const/16 p2, 0x4c

    if-ne p3, p2, :cond_2

    if-ne p4, p2, :cond_2

    const/16 p2, 0x54

    if-eq p5, p2, :cond_1

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Landroid/os/Bundle;)Ln3/h;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Ly0/e;->b:I

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_13

    :pswitch_1
    const/4 v2, 0x0

    .line 1
    invoke-static {v9}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object v12, v10

    goto :goto_0

    :cond_0
    move-object v12, v2

    .line 2
    :goto_0
    invoke-static {v8}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Landroid/text/Layout$Alignment;

    if-eqz v10, :cond_1

    move-object v13, v10

    goto :goto_1

    :cond_1
    move-object v13, v2

    .line 3
    :goto_1
    invoke-static {v7}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Alignment;

    if-eqz v7, :cond_2

    move-object v14, v7

    goto :goto_2

    :cond_2
    move-object v14, v2

    .line 4
    :goto_2
    invoke-static {v6}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    move-object v15, v6

    goto :goto_3

    :cond_3
    move-object v15, v2

    .line 5
    :goto_3
    invoke-static {v5}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const v6, -0x800001

    const/high16 v7, -0x80000000

    if-eqz v2, :cond_4

    .line 6
    invoke-static {v4}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7
    invoke-static {v5}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v4}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v16, v2

    move/from16 v17, v4

    goto :goto_4

    :cond_4
    move/from16 v16, v6

    move/from16 v17, v7

    .line 8
    :goto_4
    invoke-static {v3}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    invoke-static {v3}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    goto :goto_5

    :cond_5
    move/from16 v18, v7

    :goto_5
    const/4 v2, 0x7

    .line 10
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 11
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    move/from16 v19, v2

    goto :goto_6

    :cond_6
    move/from16 v19, v6

    :goto_6
    const/16 v2, 0x8

    .line 12
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 13
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    goto :goto_7

    :cond_7
    move/from16 v20, v7

    :goto_7
    const/16 v2, 0xa

    .line 14
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x9

    .line 15
    invoke-static {v3}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 16
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 17
    invoke-static {v3}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v2

    move/from16 v21, v3

    goto :goto_8

    :cond_8
    move/from16 v22, v6

    move/from16 v21, v7

    :goto_8
    const/16 v2, 0xb

    .line 18
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 19
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    move/from16 v23, v2

    goto :goto_9

    :cond_9
    move/from16 v23, v6

    :goto_9
    const/16 v2, 0xc

    .line 20
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 21
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    move/from16 v24, v2

    goto :goto_a

    :cond_a
    move/from16 v24, v6

    :goto_a
    const/16 v2, 0xd

    .line 22
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 23
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    goto :goto_b

    :cond_b
    const/high16 v2, -0x1000000

    move/from16 v26, v2

    move v8, v9

    :goto_b
    const/16 v2, 0xe

    .line 24
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_c

    move/from16 v25, v9

    goto :goto_c

    :cond_c
    move/from16 v25, v8

    :goto_c
    const/16 v2, 0xf

    .line 25
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 26
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move/from16 v27, v2

    goto :goto_d

    :cond_d
    move/from16 v27, v7

    :goto_d
    const/16 v2, 0x10

    .line 27
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 28
    invoke-static {v2}, Lz4/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_e

    :cond_e
    const/4 v1, 0x0

    :goto_e
    move/from16 v28, v1

    .line 29
    new-instance v1, Lz4/a;

    move-object v11, v1

    invoke-direct/range {v11 .. v28}, Lz4/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-object v1

    .line 30
    :pswitch_2
    invoke-static {v9}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 31
    invoke-static {v8}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, -0x1

    invoke-virtual {v1, v2, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 32
    invoke-static {v7}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 33
    invoke-static {v6}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 34
    invoke-static {v5}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    .line 35
    invoke-static {v4}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 36
    invoke-static {v3}, Lq4/a$a;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 37
    new-instance v1, Lq4/a$a;

    if-nez v6, :cond_f

    new-array v3, v9, [I

    move-object v14, v3

    goto :goto_f

    :cond_f
    move-object v14, v6

    :goto_f
    if-nez v2, :cond_10

    new-array v2, v9, [Landroid/net/Uri;

    goto :goto_10

    :cond_10
    new-array v3, v9, [Landroid/net/Uri;

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    :goto_10
    move-object v15, v2

    if-nez v5, :cond_11

    new-array v2, v9, [J

    move-object/from16 v16, v2

    goto :goto_11

    :cond_11
    move-object/from16 v16, v5

    :goto_11
    move-object v10, v1

    .line 39
    invoke-direct/range {v10 .. v19}, Lq4/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v1

    .line 40
    :pswitch_3
    sget-object v2, Ln3/c2;->i:Ln3/c2;

    const/16 v2, 0x24

    .line 41
    invoke-static {v9, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_12

    .line 43
    sget-object v1, Lu6/v;->i:Lu6/v$b;

    .line 44
    sget-object v1, Lu6/p0;->l:Lu6/p0;

    goto :goto_12

    .line 45
    :cond_12
    sget-object v2, Ln3/c2$a;->m:Ly0/l;

    invoke-static {v2, v1}, Lm5/b;->a(Ln3/h$a;Ljava/util/List;)Lu6/v;

    move-result-object v1

    .line 46
    :goto_12
    new-instance v2, Ln3/c2;

    invoke-direct {v2, v1}, Ln3/c2;-><init>(Ljava/util/List;)V

    return-object v2

    .line 47
    :goto_13
    sget-object v2, Lj5/q;->H:Lj5/q;

    .line 48
    new-instance v2, Lj5/q$a;

    invoke-direct {v2, v1}, Lj5/q$a;-><init>(Landroid/os/Bundle;)V

    .line 49
    new-instance v1, Lj5/q;

    invoke-direct {v1, v2}, Lj5/q;-><init>(Lj5/q$a;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
