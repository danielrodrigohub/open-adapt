.class public final Ln3/m;
.super Ljava/lang/Object;
.source "DefaultRenderersFactory.java"

# interfaces
.implements Ln3/v1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le4/j;

.field public c:La4/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/m;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Le4/j;

    invoke-direct {p1}, Le4/j;-><init>()V

    iput-object p1, p0, Ln3/m;->b:Le4/j;

    .line 4
    sget-object p1, La4/g;->b:La4/g;

    iput-object p1, p0, Ln3/m;->c:La4/g;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;Ln5/s;Lp3/p;Lz4/n;Lf4/e;)[Ln3/s1;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v3, v0, Ln3/m;->a:Landroid/content/Context;

    iget-object v5, v0, Ln3/m;->c:La4/g;

    .line 3
    new-instance v8, Ln5/g;

    .line 4
    iget-object v4, v0, Ln3/m;->b:Le4/j;

    move-object v2, v8

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 5
    invoke-direct/range {v2 .. v7}, Ln5/g;-><init>(Landroid/content/Context;Le4/l$b;Le4/p;Landroid/os/Handler;Ln5/s;)V

    .line 6
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, v0, Ln3/m;->a:Landroid/content/Context;

    .line 8
    new-instance v3, Lp3/w$e;

    invoke-direct {v3}, Lp3/w$e;-><init>()V

    .line 9
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 10
    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    .line 11
    sget v5, Lm5/g0;->a:I

    const/16 v6, 0x11

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lt v5, v6, :cond_1

    sget-object v6, Lm5/g0;->c:Ljava/lang/String;

    const-string v9, "Amazon"

    .line 12
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "Xiaomi"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v8

    :goto_0
    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "external_surround_sound_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_2

    .line 14
    sget-object v2, Lp3/e;->d:Lp3/e;

    goto :goto_3

    :cond_2
    const/16 v6, 0x1d

    const/16 v9, 0x8

    if-lt v5, v6, :cond_5

    .line 15
    invoke-static {v2}, Lm5/g0;->K(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x17

    if-lt v5, v6, :cond_3

    .line 16
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v7, v8

    :goto_1
    if-eqz v7, :cond_5

    .line 17
    :cond_4
    new-instance v2, Lp3/e;

    .line 18
    invoke-static {}, Lp3/e$a;->a()[I

    move-result-object v4

    invoke-direct {v2, v4, v9}, Lp3/e;-><init>([II)V

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_7

    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    .line 19
    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    new-instance v2, Lp3/e;

    const-string v5, "android.media.extra.ENCODINGS"

    .line 21
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v5

    const-string v6, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 22
    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v5, v4}, Lp3/e;-><init>([II)V

    goto :goto_3

    .line 23
    :cond_7
    :goto_2
    sget-object v2, Lp3/e;->c:Lp3/e;

    .line 24
    :goto_3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iput-object v2, v3, Lp3/w$e;->a:Lp3/e;

    .line 26
    iput-boolean v8, v3, Lp3/w$e;->c:Z

    .line 27
    iput-boolean v8, v3, Lp3/w$e;->d:Z

    .line 28
    iput v8, v3, Lp3/w$e;->e:I

    .line 29
    iget-object v2, v3, Lp3/w$e;->b:Lp3/w$g;

    if-nez v2, :cond_8

    .line 30
    new-instance v2, Lp3/w$g;

    new-array v4, v8, [Lp3/f;

    invoke-direct {v2, v4}, Lp3/w$g;-><init>([Lp3/f;)V

    iput-object v2, v3, Lp3/w$e;->b:Lp3/w$g;

    .line 31
    :cond_8
    new-instance v15, Lp3/w;

    invoke-direct {v15, v3}, Lp3/w;-><init>(Lp3/w$e;)V

    .line 32
    iget-object v10, v0, Ln3/m;->a:Landroid/content/Context;

    iget-object v12, v0, Ln3/m;->c:La4/g;

    .line 33
    new-instance v2, Lp3/a0;

    .line 34
    iget-object v11, v0, Ln3/m;->b:Le4/j;

    move-object v9, v2

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    .line 35
    invoke-direct/range {v9 .. v15}, Lp3/a0;-><init>(Landroid/content/Context;Le4/l$b;Le4/p;Landroid/os/Handler;Lp3/p;Lp3/q;)V

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 38
    new-instance v3, Lz4/o;

    move-object/from16 v4, p4

    invoke-direct {v3, v4, v2}, Lz4/o;-><init>(Lz4/n;Landroid/os/Looper;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 40
    new-instance v3, Lf4/f;

    move-object/from16 v4, p5

    invoke-direct {v3, v4, v2}, Lf4/f;-><init>(Lf4/e;Landroid/os/Looper;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v2, Lo5/b;

    invoke-direct {v2}, Lo5/b;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v2, v8, [Ln3/s1;

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ln3/s1;

    return-object v1
.end method
